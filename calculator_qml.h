#ifndef CALCULATOR_QML_H
#define CALCULATOR_QML_H

#include <QObject>
#include "calculator_lib.h"

class Calculator_QML : public QObject
{
    Q_OBJECT
public:
    explicit Calculator_QML(QObject *parent = nullptr);

signals:

};

#endif // CALCULATOR_QML_H
