#ifndef CAPPMANAGER_H
#define CAPPMANAGER_H

#include "../gui/CGuiManager.h"

class CAppManager
{
public:
    CAppManager(int argc, char *argv[]);

    void run();

private:

    std::shared_ptr<CGuiManager>m_guiManager;

};

#endif // CAPPMANAGER_H
