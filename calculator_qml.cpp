#include "calculator_qml.h"

#include <QLocale>

Calculator_QML::Calculator_QML(QObject *parent)
    : QObject{parent}
{

}

QString Calculator_QML::add(QString num1, QString num2)
{
    double new_num1 = to_double(num1);
    double new_num2 = to_double(num2);
    return QString::number(m_calc.add(new_num1, new_num2));
}

QString Calculator_QML::subtract(QString num1, QString num2)
{
    double new_num1 = to_double(num1);
    double new_num2 = to_double(num2);
    return QString::number(m_calc.subtract(new_num1, new_num2));
}

QString Calculator_QML::multiply(QString num1, QString num2)
{
    double new_num1 = to_double(num1);
    double new_num2 = to_double(num2);
    return QString::number(m_calc.multiply(new_num1, new_num2));
}

QString Calculator_QML::devide(QString num1, QString num2)
{
    double new_num1 = to_double(num1);
    double new_num2 = to_double(num2);
    return QString::number(m_calc.divide(new_num1, new_num2));
}

double Calculator_QML::to_double(QString num)
{
    return num.toDouble();
}
