#ifndef SDKCORE_H
#define SDKCORE_H

typedef void(*pcb)(char *);

class Sdkcore
{

public:
    Sdkcore();
public:
    void setColor();
public:
    void setCallback(pcb callback);
private:
    pcb sss;
};

#endif // SDKCORE_H
