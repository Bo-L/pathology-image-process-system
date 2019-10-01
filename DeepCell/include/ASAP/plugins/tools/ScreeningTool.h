#ifndef SCREENINGTOOL_H
#define SCREENINGTOOL_H


#include "../interfaces/interfaces.h"

class  ScreeningTool : public  ToolPluginInterface{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "Diag.PathologyWorkstation.Screening/1.0")
    Q_INTERFACES(ToolPluginInterface)
public:
 	std::string name();
  // 	void mouseMoveEvent(QMouseEvent *event);
 	// void mousePressEvent(QMouseEvent *event);
  // 	void mouseReleaseEvent(QMouseEvent *event);
  	QAction* getToolButton();

};

#endif // SCREENINGTOOL_H
