#include <QtGui/QGuiApplication>
#include "qtquick2applicationviewer.h"
#include "piechartcontrol.h"
#include <QtQml>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QtQuick2ApplicationViewer viewer;
    PieChartControl* gPieChartControl = PieChartControl::instance();
    viewer.rootContext()->setContextProperty("PieChartControl", gPieChartControl);
    viewer.setMainQmlFile(QStringLiteral("qml/test/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
