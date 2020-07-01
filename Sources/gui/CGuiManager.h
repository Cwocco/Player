#ifndef CGUIMANAGER_H
#define CGUIMANAGER_H

#include <QDebug>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>


class CGuiManager
{
public:
    CGuiManager(int argc, char *argv[]);


    int execute() const;
    void terminate() const;

protected:

    void setContext();

    QQmlApplicationEngine   *m_engine;
    QGuiApplication         *m_appGui;

};

#endif // CGUIMANAGER_H
