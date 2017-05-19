#include "piechart_plugin.h"
#include "piechart.h"

#include <qqml.h>

void PieChartPlugin::registerTypes(const char *uri)
{
    // @uri Charts
    qmlRegisterType<PieChart>(uri, 1, 0, "PieChart");
}


