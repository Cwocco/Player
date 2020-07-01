#include "CAppManager.h"

CAppManager::CAppManager(int argc, char *argv[])
{
    m_guiManager = std::make_shared<CGuiManager>(argc, argv);
}

void CAppManager::run()
{
    qDebug() << "Run";

    m_guiManager->execute();
}
