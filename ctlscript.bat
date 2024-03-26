@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\New folder\hypersonic\scripts\ctl.bat (start /MIN /B E:\New folder\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\New folder\ingres\scripts\ctl.bat (start /MIN /B E:\New folder\ingres\scripts\ctl.bat START)
if exist E:\New folder\mysql\scripts\ctl.bat (start /MIN /B E:\New folder\mysql\scripts\ctl.bat START)
if exist E:\New folder\postgresql\scripts\ctl.bat (start /MIN /B E:\New folder\postgresql\scripts\ctl.bat START)
if exist E:\New folder\apache\scripts\ctl.bat (start /MIN /B E:\New folder\apache\scripts\ctl.bat START)
if exist E:\New folder\openoffice\scripts\ctl.bat (start /MIN /B E:\New folder\openoffice\scripts\ctl.bat START)
if exist E:\New folder\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\New folder\apache-tomcat\scripts\ctl.bat START)
if exist E:\New folder\resin\scripts\ctl.bat (start /MIN /B E:\New folder\resin\scripts\ctl.bat START)
if exist E:\New folder\jetty\scripts\ctl.bat (start /MIN /B E:\New folder\jetty\scripts\ctl.bat START)
if exist E:\New folder\subversion\scripts\ctl.bat (start /MIN /B E:\New folder\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\New folder\lucene\scripts\ctl.bat (start /MIN /B E:\New folder\lucene\scripts\ctl.bat START)
if exist E:\New folder\third_application\scripts\ctl.bat (start /MIN /B E:\New folder\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\New folder\third_application\scripts\ctl.bat (start /MIN /B E:\New folder\third_application\scripts\ctl.bat STOP)
if exist E:\New folder\lucene\scripts\ctl.bat (start /MIN /B E:\New folder\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\New folder\subversion\scripts\ctl.bat (start /MIN /B E:\New folder\subversion\scripts\ctl.bat STOP)
if exist E:\New folder\jetty\scripts\ctl.bat (start /MIN /B E:\New folder\jetty\scripts\ctl.bat STOP)
if exist E:\New folder\hypersonic\scripts\ctl.bat (start /MIN /B E:\New folder\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\New folder\resin\scripts\ctl.bat (start /MIN /B E:\New folder\resin\scripts\ctl.bat STOP)
if exist E:\New folder\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\New folder\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\New folder\openoffice\scripts\ctl.bat (start /MIN /B E:\New folder\openoffice\scripts\ctl.bat STOP)
if exist E:\New folder\apache\scripts\ctl.bat (start /MIN /B E:\New folder\apache\scripts\ctl.bat STOP)
if exist E:\New folder\ingres\scripts\ctl.bat (start /MIN /B E:\New folder\ingres\scripts\ctl.bat STOP)
if exist E:\New folder\mysql\scripts\ctl.bat (start /MIN /B E:\New folder\mysql\scripts\ctl.bat STOP)
if exist E:\New folder\postgresql\scripts\ctl.bat (start /MIN /B E:\New folder\postgresql\scripts\ctl.bat STOP)

:end

