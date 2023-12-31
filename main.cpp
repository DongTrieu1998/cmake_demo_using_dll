#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include "calculator_qml.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Calculator_QML my_calc;
    engine.rootContext()->setContextProperty("my_calc", &my_calc);
    qmlRegisterType<Calculator_QML>("myCalc.custom", 1, 0, "My_Calc");

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
