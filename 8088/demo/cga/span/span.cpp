#include "alfe/main.h"
#include "alfe/vectors.h"
#include "alfe/user.h"
#include "alfe/bitmap.h"

typedef Vector3<float> Point3;
typedef Vector2<float> Point2;

DWORD cgaColours[4] = {0, 0x55ffff, 0xff55ff, 0xffffff};

Point3 cubeCorners[8] = {
    Point3(-1, -1, -1),
    Point3(-1, -1,  1),
    Point3(-1,  1, -1),
    Point3(-1,  1,  1),
    Point3( 1, -1, -1),
    Point3( 1, -1,  1),
    Point3( 1,  1, -1),
    Point3( 1,  1,  1)};

class Quad
{
public:
    Quad(int p0, int p1, int p2, int p3, int colour)
      : _colour(colour)
    {
        _points[0] = p0;
        _points[1] = p1;
        _points[2] = p2;
        _points[3] = p3;
    }
    int _points[4];
    int _colour;
};

Quad cubeFaces[6] = {
    Quad(0, 4, 6, 2, 1),
    Quad(4, 5, 7, 6, 2),
    Quad(5, 1, 3, 7, 1),
    Quad(1, 0, 2, 3, 2),
    Quad(2, 6, 7, 3, 3),
    Quad(0, 1, 5, 4, 3)
};

class Projection
{
public:
    void init(float theta, float phi, float distance, Vector2<float> scale,
        Vector2<float> offset)
    {
        float st = sin(theta);
        float ct = cos(theta);
        float sp = sin(phi);
        float cp = cos(phi);
        Vector2<float> s = scale*distance;
        _xx = s.x*st;
        _xy = -s.y*cp*ct;
        _xz = -sp*ct;
        _yx = s.x*ct;
        _yy = s.y*cp*st;
        _yz = sp*st;
        _zy = s.y*sp;
        _zz = -cp;
        _distance = distance;
        _offset = offset;
    }
    Point2 modelToScreen(Point3 model)
    {
        Point3 r(
            _xx*model.x + _yx*model.y /*+ _zx*model.z*/,
            _xy*model.x + _yy*model.y + _zy*model.z,
            _xz*model.x + _yz*model.y + _zz*model.z + _distance);
        return Point2(r.x/r.z + _offset.x, r.y/r.z + _offset.y); //, r.z);
    }
private:
    float _distance;
    Vector2<float> _offset;
    float _xx;
    float _xy;
    float _xz;
    float _yx;
    float _yy;
    float _yz;
    //float _zx;
    float _zy;
    float _zz;
};

void fillTriangle(Point2 a, Point2 b, Point2 c)
{
    if (a.y > b.y) swap(a, b);
    if (b.y > c.y) swap(b, c);
    if (a.y > b.y) swap(a, b);
    float dab = (b.x - a.x)/(b.y - a.y);
    float dac = (c.x - a.x)/(c.y - a.y);
    float dbc = (c.x - b.x)/(c.y - b.y);

    float xL =

    xL = a.x<<8;
    xR = xL;
    y = y0;

    if (dA > dB) {
        UInt8 count = 1 + b.y - a.y;
        while (count-->0) {
            hLine(xL>>8, xR>>8, y);
            xL += dB;
            xR += dA;
            ++y;
        }
        xR = x1;
        UInt8 count = c.y - b.y;
        while (count-->0) {
            hLine(xL>>8, xR>>8, y);
            xL += dB;
            xR += dC;
            ++y;
        }
    } else {
        UInt8 count = 1 + b.y - a.y;
        while (count-->0) {
            hLine(xL>>8, xR>>8, y);
            xL += dA;
            xR += dB;
            ++y;
        }
        xR = b.x;
        UInt8 count = c.y - b.y;
        while (count-->0) {
            hLine(xL>>8, xR>>8, y);
            xL += dC;
            xR += dB;
            ++y;
        }
    }
}

class SpanWindow;

class SpanBitmapWindow : public BitmapWindow
{
public:
    SpanBitmapWindow() : _theta(0), _phi(0)
    {
    }
    void setSpanWindow(SpanWindow* window)
    {
        _spanWindow = window;
    }
    void paint()
    {
        _spanWindow->restart();
    }
    virtual void draw()
    {
        if (!_bitmap.valid())
            _bitmap = Bitmap<DWORD>(Vector(320, 200));

        _bitmap.fill(0);
        Projection p;
        _theta += 0.01;
        if (_theta >= tau)
            _theta -= tau;
        _phi += 0.01*(sqrt(5.0) + 1)/2;
        if (_phi >= tau)
            _phi -= tau;
        float ys = 99.5/sqrt(3.0);
        float xs = 6*ys/5;
        p.init(_theta, _phi, 5, Vector2<float>(xs, ys),
            Vector2<float>(159.5, 99.5));

        Point corners[8];
        for (int i = 0; i < 8; ++i)
            corners[i] = p.modelToScreen(cubeCorners[i]);

        for (int i = 0; i < 6; ++i) {
            Quad* face = &cubeFaces[i];
            Point p0 = corners[face->_points[0]];
            Point p1 = corners[face->_points[1]];
            Point p2 = corners[face->_points[2]];
            Point p3 = corners[face->_points[3]];
            Point e1 = p1 - p0;
            Point e2 = p2 - p0;
            float d = e1.x*e2.y - e1.y*e1.x;
            if (d > 0) {

            }
        }


        _bitmap = setNextBitmap(_bitmap);
    }
private:
    void horizontalLine(int xL, int xR, int y, int c)
    {
        DWORD* p =
            reinterpret_cast<DWORD*>(_bitmap.data() + y*_bitmap.stride()) + xL;
        for (int x = xL; x < xR; ++x) {
            *p = cgaColours[c];
            ++p;
        }
    }
    void fillTrapezoid(int yStart, int yEnd, float xL, float xR, float dL,
        float dR, int c)
    {
        for (int y = yStart; y < yEnd; ++y) {
            horizontalLine(static_cast<int>(ceil(xL)),
                static_cast<int>(ceil(xR)), y, c);
            xL += dL;
            xR += dR;
        }
    }
    void fillTriangle(Point2 a, Point2 b, Point2 c, int colour)
    {
        if (a.y > b.y) swap(a, b);
        if (b.y > c.y) swap(b, c);
        if (a.y > b.y) swap(a, b);
        float dab = (b.x - a.x)/(b.y - a.y);
        float dac = (c.x - a.x)/(c.y - a.y);
        float dbc = (c.x - b.x)/(c.y - b.y);

        int ya = static_cast<int>(ceil(a.y));
        int yb = static_cast<int>(ceil(b.y));
        int yc = static_cast<int>(ceil(c.y));
        if (dab < dac) {
            fillTrapezoid(ya, yb, (ya - a.y)*dab, (ya - a.y)*dac, dab, dac,
                colour);
            fillTrapezoid(yb, yc, (yb - a.y)*dab, (yb - a.y)*dac, dab, dac,
                colour);
        }
        else {
            fillTrapezoid(ya, yb, (ya - a.y)*dac, (ya - a.y)*dab, dac, dab,
                colour);
            fillTrapezoid(yb, yc, (yb - a.y)*dac, (yb - a.y)*dab, dac, dab,
                colour);
        }
    }


    SpanWindow* _spanWindow;
    Bitmap<DWORD> _bitmap;
    float _theta;
    float _phi;
};

class SpanWindow : public RootWindow
{
public:
    SpanWindow()
    {
        _bitmap.setSpanWindow(this);

        add(&_bitmap);
        add(&_animated);

        _animated.setDrawWindow(&_bitmap);
        _animated.setRate(60);
    }
    void restart() { _animated.restart(); }
    void create()
    {
        setText("CGA Span buffer");
        setInnerSize(Vector(320, 200));
        _bitmap.setTopLeft(Vector(0, 0));
        RootWindow::create();
        _animated.start();
    }
private:
    SpanBitmapWindow _bitmap;
    AnimatedWindow _animated;
};

class Program : public WindowProgram<SpanWindow>
{
};
