#include "piechartcontrol.h"
#include <QDebug>
PieChartControl* PieChartControl::m_instance = NULL;
PieChartControl* PieChartControl::instance()
{
    if (NULL == m_instance)
    {
        m_instance = new PieChartControl();
    }
    return m_instance;
}
PieChartControl::PieChartControl()
    :m_color("red")
{
    connect(this, SIGNAL(sendEvent2Control(char*)),this, SLOT(piechartEventCheck(char*)));
    aaa.setCallback(callback1);
}
PieChartControl::~PieChartControl()
{

}

QString PieChartControl::getColor()
{
    return m_color;
}

void PieChartControl::setColor(QString str)
{
    m_color = str;
    emit colorChanged();
}

void PieChartControl::printColorYellow(void)
{
    aaa.setColor();
    //QString 转char*
//    QByteArray ba = str.toLatin1();
//    char *mm = ba.data();
//    QByteArray bb = color.toLatin1();
//    char *nn = bb.data();
//    qDebug("%s %s", mm, nn);
}
static void callback1(char* str)
{
    qDebug("callback1 zzzzzzzzzzzzzzzzzzzzzzzzzzz");
    PieChartControl* aa = PieChartControl::instance();
    emit aa->sendEvent2Control(str);

}
void PieChartControl::piechartEventCheck(char* str)
{
    qDebug("piechartEventCheck zzzzzzzzzzzzzzzzzzzzzzzzzzz %s", str);
    QString nn = QString(QLatin1String(str)); //char *转QString
    m_color = nn;
    emit colorChanged();
}
