#include "calculator_qml.h"

Calculator_QML::Calculator_QML(QObject *parent)
    : QObject{parent}
{
    Calculator_lib calc;
    calc.add(1,2);
}
