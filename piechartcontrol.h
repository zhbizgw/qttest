#ifndef PIECHARTCONTROL_H
#define PIECHARTCONTROL_H

#include <QObject>
#include "sdkcore.h"

class PieChartControl : public QObject
{
    Q_OBJECT
public:
    Q_PROPERTY(QString color READ getColor WRITE setColor NOTIFY colorChanged)
public:
    Q_INVOKABLE void printColorYellow(void);
public:
    QString getColor();
    void setColor(QString str);

signals:
    void colorChanged();
    void sendEvent2Control(char* str);
public slots:
    void piechartEventCheck(char* str);
private:
    PieChartControl();
    virtual ~PieChartControl();
    static PieChartControl* m_instance;
public:
    static PieChartControl* instance();
private:
    QString m_color;
    Sdkcore aaa;
};
static void callback1(char* str);
#endif // PIECHARTCONTROL_H
