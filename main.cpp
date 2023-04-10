#include "mainwindow.h"
#include <QApplication>

// single box2d header includes all others
#include <box2d/include/box2d.h>

int main(int argc, char *argv[])
{
    b2World world(b2Vec2(0.f, 9.81f));
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
