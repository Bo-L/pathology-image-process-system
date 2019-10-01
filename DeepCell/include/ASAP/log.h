#ifndef LOG_H
#define LOG_H
#include <QtWidgets>

class Log 

{
public:
	static Log&  getInstance();
    void write(QString input);
//	QTextStream getTextStream();
	~Log();
	

private:	
	Log();
	QString _sFilePath="E:\\log.txt";
	QFile* _qFile;
	QTextStream* _textStream;
	Log(const Log& Source);
	const Log& operator=(const Log&);

	//Log(const Log&);
	// static Log _instance;

};
#endif // LOG_H