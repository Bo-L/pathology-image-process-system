#ifndef SCREENINGWORKSTATIONEXTENSIONPLUGIN_H
#define SCREENINGWORKSTATIONEXTENSIONPLUGIN_H
#include <memory>
#include <QLabel>
#include <QTextEdit>
#include <QTableWidget>
#include <QTreeWidget>
#include "../interfaces/interfaces.h"
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkRequest>
#include <QtNetwork/QNetworkReply>
class QtAnnotation;
class AnnotationService;
class ScreeningWorkstationExtensionPlugin : public WorkstationExtensionPluginInterface
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "Diag.PathologyWorkstation.ScreeningWorkstationExtensionPlugin/1.0")
    Q_INTERFACES(WorkstationExtensionPluginInterface)

private:
     QDockWidget* _dockWidget;
     std::vector<std::shared_ptr<ToolPluginInterface> > _screeningTools;
     QToolBar* mainToolBar;
     QAction* actionSave;
     QAction* actionPrint;
     int first=1;
     QDialog* content;
     QLabel* inspect;
     QLabel* deepcell;
     QLabel* suggest;
     QLabel* result;
     QTextEdit* editResult;
     QTextEdit* editSuggest;
     QTableWidget* tableWidget;
     std::vector<unsigned long long> _backgroundDimensions;
     QTreeWidget* _treeWidget;
    QMenu* pressMenu;
    QAction* pressOfMenu;
     //  coodinate contain Point which in 'Core/Point'   then use coodinate to create the annotation
     //show the result of detect 
    QList<QtAnnotation*> _qtAnnotations;
    QMap<QtAnnotation*, QTreeWidgetItem*> _annotToItem;
    std::shared_ptr<AnnotationService> _annotationService;
    static unsigned int _annotationIndex;
    QtAnnotation* _generatedAnnotation;
    QtAnnotation* _activeAnnotation;
    QSet<QtAnnotation*> _selectedAnnotations;
    bool _detected;
    
public:
     bool initialize(PathologyViewer* viewer);
     ScreeningWorkstationExtensionPlugin();
    ~ScreeningWorkstationExtensionPlugin();
     std::vector<std::shared_ptr<ToolPluginInterface> > getTools();
     QDockWidget* getDockWidget();
     void deleteAnnotation(QtAnnotation* annotation);
     void clearSelection();
     void addAnnotationToSelection(QtAnnotation* annotation);
     void removeAnnotationFromSelection(QtAnnotation* annotation);
     QtAnnotation* getActiveAnnotation();
     QSet<QtAnnotation*> getSelectedAnnotations();
     QtAnnotation* getGeneratedAnnotation();


public slots:
    void onNewImageLoaded(std::weak_ptr<MultiResolutionImage> img, std::string fileName);
    void onImageClosed();
    void onCreateReport();
    void onSaveReport();
    void onPrintReport();
    void startScreen();
	void showResult(QString path);
    void replyFinish(QNetworkReply *reply);
    void onImageDelete();
    void onItemPressedSlot(QTreeWidgetItem* item,int column);
    void onTreeWidgetSelectedItemsChanged();
};

#endif // SCREENINGWORKSTATIONEXTENSIONPLUGIN_H
