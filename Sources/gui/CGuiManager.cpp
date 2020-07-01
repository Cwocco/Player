#include "CGuiManager.h"

CGuiManager::CGuiManager(int argc, char *argv[])
{
    qDebug() << "CGuiManager constructor";

    m_appGui = new QGuiApplication(argc, argv);
    m_engine = new QQmlApplicationEngine();

    // Set context will connect our qml with our c++ objects
    //setContext();

    m_engine->load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
}

int CGuiManager::execute() const
{
    if (m_appGui)
        return (m_appGui->exec());
    return 0;
}

void CGuiManager::terminate() const
{
    m_appGui->exit();
}

void CGuiManager::setContext()
{
    //here we gonna set context so we can use object in QML

}
