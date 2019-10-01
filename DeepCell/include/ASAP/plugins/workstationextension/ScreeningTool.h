#ifndef SCREENINGTOOL_H
#define SCREENINGTOOL_H
#include "../interfaces/interfaces.h"
#include "core/Point.h"

class ScreeningWorkstationExtensionPlugin;
class PathologyViewer;
class  ScreeningTool : public  ToolPluginInterface{
    Q_OBJECT
    // Q_PLUGIN_METADATA(IID "Diag.PathologyWorkstation.Screening/1.0")
    // Q_INTERFACES(ToolPluginInterface)
public:
	ScreeningTool(ScreeningWorkstationExtensionPlugin* screeningPlugin, PathologyViewer* viewer);
 	std::string name();
 	

  // 	void mouseMoveEvent(QMouseEvent *event);
  virtual void mouseMoveEvent(QMouseEvent *event);
  virtual void mousePressEvent(QMouseEvent *event);
  virtual void mouseReleaseEvent(QMouseEvent *event);
  virtual void mouseDoubleClickEvent(QMouseEvent *event);
  virtual void keyPressEvent(QKeyEvent *event);
  // 	void mouseReleaseEvent(QMouseEvent *event);
  	QAction* getToolButton();
protected slots:
  void zoomToAnnotation(qreal val);
  void zoomToAnnotationFinished();
protected:
	ScreeningWorkstationExtensionPlugin* _screeningPlugin;
	bool _generating;
 	Point _start;
 	Point _last;
 	bool _startSelectionMove;
 	QPointF _moveStart;
  	QRectF _start_zoom;
  	QRectF _end_zoom;
};

#endif // SCREENINGTOOL_H
