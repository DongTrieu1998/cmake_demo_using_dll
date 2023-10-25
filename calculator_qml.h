#ifndef CALCULATOR_QML_H
#define CALCULATOR_QML_H

#include <QObject>
#include "calculator_lib.h"

class Calculator_QML : public QObject
{
    Q_OBJECT
public:
    explicit Calculator_QML(QObject *parent = nullptr);

    Q_INVOKABLE QString add(QString num1, QString num2);
    Q_INVOKABLE QString subtract(QString num1, QString num2);
    Q_INVOKABLE QString multiply(QString num1, QString num2);
    Q_INVOKABLE QString devide(QString num1, QString num2);
    double to_double(QString num);

private:
    Calculator_lib m_calc;
};

#endif // CALCULATOR_QML_H
