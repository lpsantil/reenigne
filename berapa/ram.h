class RAM : public Component
{
public:
    static String typeName() { return "RAM"; }
    RAM()
    {
        connector("parityError", &_parityError);
        config("rowBits", &_rowBits);
        config("bytes", &_ramSize);
        config("decayTime", &_decayTime, ConcretePersistenceType(second));
        persist("data", this, Value(PersistDataType()));
        persist("decay", &_decayTimes,
            Value(ArrayType(Tick::Type(), 0), List<Value>()));
    }
    bool decayed(Tick tick, int address) { return (tick >= decay(address)); }
    UInt8 read(Tick tick, int address)
    {
        if (decayed(tick, address)) {
            // RAM has decayed! On a real machine this would not always signal
            // an NMI but we'll make the NMI happen every time to make DRAM
            // decay problems easier to find.

            // TODO: In the config file we might want to have an option for
            // "realistic mode" to prevent this from being used to detect the
            // emulator.
            //if (_nmiSwitch->nmiOn() && (_ppi->portB() & 0x10) != 0)
            //    _cpu->nmi();
            return _decayValue;
        }
        decay(address) = tick + _decayTicks;
        if (address >= _ramSize)
            return _decayValue;
        return _data[address];
    }
    void write(Tick tick, int address, UInt8 data)
    {
        decay(address) = tick + _decayTicks;
        if (address < _ramSize)
            _data[address] = data;
    }
    UInt8 memory(int address) { return _data[address]; }
    void maintain(Tick ticks)
    {
        for (auto& r : _decayTimes) {
            if (r > 0)
                r -= ticks;
        }
    }
    void load(const Value& value)
    {
        _data.allocate(_ramSize);
        _decayTimes.allocate(1 << _rowBits);
        Component::load(value);
        _rowMask = (1 << _rowBits) - 1;
        if (_decayTime == 0) {
            // DRAM decay time in seconds.
            // 2ms for 4116 and 2118
            // 4ms for 4164
            // 8ms for 41256
            _decayTime = Rational(1 << _rowBits, 1000 * 64);
        }
        _decayTicks = (_simulator->ticksPerSecond() * _decayTime).floor();
    }

    String name() const { return "ram"; }

private:
    class PersistDataType : public NamedNullary<::Type, PersistDataType>
    {
    public:
        static String name() { return "RAMData"; }
    private:
        class Body : public NamedNullary<::Type, PersistDataType>::Body
        {
        public:
            String serialize(void* p, int width, int used, int indent,
                int delta) const
            {
                auto ram = static_cast<RAM*>(p);
                auto data = &(ram->_data);
                String s("###\n");
                for (int y = 0; y < data->count(); y += 0x20) {
                    String line;
                    bool gotData = false;
                    for (int x = 0; x < 0x20; x += 4) {
                        const UInt8* p = &((*data)[y + x]);
                        UInt32 v = (p[0]<<24) + (p[1]<<16) + (p[2]<<8) + p[3];
                        if (v != ram->_decayValue)
                            gotData = true;
                        line += " " + hex(v, 8, false);
                    }
                    if (gotData) {
                        if (indent == 0)
                            return "*";
                        s += hex(y, 5, false) + ":" + line + "\n";
                    }
                }
                return s + "###";
            }
            void deserialize(const Value& value, void* p) const
            {
                auto ram = static_cast<RAM*>(p);
                auto data = &(ram->_data);
                CharacterSource source(value.value<String>());
                Space::parse(&source);
                for (int i = 0; i < data->count(); ++i)
                    (*data)[i] = ram->_decayValue;
                do {
                    Span span;
                    int t = parseHexadecimalCharacter(&source, &span);
                    if (t == -1)
                        break;
                    int a = t;
                    for (int i = 0; i < 4; ++i) {
                        t = parseHexadecimalCharacter(&source, &span);
                        if (t < 0)
                            span.throwError("Expected hexadecimal character");
                        a = (a << 4) + t;
                    }
                    Space::assertCharacter(&source, ':', &span);
                    for (int i = 0; i < 16; ++i) {
                        t = parseHexadecimalCharacter(&source, &span);
                        if (t < 0)
                            span.throwError("Expected hexadecimal character");
                        int t2 = parseHexadecimalCharacter(&source, &span);
                        if (t2 < 0)
                            span.throwError("Expected hexadecimal character");
                        if (a < data->count())
                            (*data)[a] = (t << 4) + t2;
                        else
                            span.throwError("Address out of range");
                        ++a;
                        Space::parse(&source);
                    }
                } while (true);
                CharacterSource s2(source);
                if (s2.get() != -1) {
                    source.location().throwError(
                        "Expected hexadecimal character");
                }
            }
        };
    };

    Tick& decay(int address) { return _decayTimes[address & _rowMask]; }

    OutputConnector<bool> _parityError;
    Array<UInt8> _data;
    Array<Tick> _decayTimes;
    Tick _tick;
    Rational _decayTime;
    Tick _decayTicks;
    int _ramSize;
    int _rowMask;
    int _rowBits;
    UInt8 _decayValue;
};
