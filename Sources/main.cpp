#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <iostream>

#include "process/CAppManager.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    try
    {
        qDebug() << "Player got launched.";


        CAppManager *AppManager = new CAppManager(argc, argv);

        AppManager->run();

    }

    catch (std::exception const & e)
    {
        std::cerr  << e.what() << std::endl;
    }

    return (0);
}
