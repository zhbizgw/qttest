#include "sdkcore.h"
#include <stdio.h>
#include <QDebug>

Sdkcore::Sdkcore()
{
}
void Sdkcore::setColor()
{
    qDebug("zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz");
    sss("yellow");

}
void Sdkcore::setCallback(pcb callback)
{
    sss = callback;
}
