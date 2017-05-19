#ifndef PIECHART_PLUGIN_H
#define PIECHART_PLUGIN_H

#include <QQmlExtensionPlugin>

class PieChartPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif // PIECHART_PLUGIN_H

