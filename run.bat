@ECHO OFF
ECHO Service Office
ECHO API SERVICE
ECHO Sav Arthur
ECHO 07-09.2015 

SETLOCAL
:: start

REM Path to current Programm API Service
SET GOPATH=%CD%
SET GOBIN=%CD%\bin

rem UNIX
rem Компиляция под UNIX платформу
rem SET GOOS=linux
rem SET GOARCH=amd64
rem SET CGO_ENABLED=0 

REM путь к компилятору
SET GOROOT=C:\GO
SET PATH=%GOROOT%\BIN;%PATH%;
CLS

TITLE Run "GO" 
COLOR 0f

REM ECHO "  "                 
REM ECHO ....................................................................
REM ECHO gopath = %gopath%
REM ECHO ....................................................................
REM go clean -r -i
REM go install -a
 
REM Обновление драйвера Gorethinkdb
rem go get -u github.com/dancannon/gorethink
rem go get -u github.com/googollee/go-socket.io

REM go env
REM ECHO Update Gorethinkdb......................
REM d:\ION\RETHINKDB\service\hoservice.go
REM 
REM SET versgo=go version
REM SET BUILD_DATE=

REM ECHO %BUILD_DATE%
REM ECHO %versgo%

REM go   help build
rem  pscp -P 2222 -l user1-pw Gerda  test.txt  user1@10.0.50.16:/home/user1/1/ 

REM Cтарт компиляция и  запуск сервиса
go build -o D:\SERVICE\mainservice.exe 
CD D:\SERVICE\
mainservice.exe

REM Логирование в файл
REM hoservice.exe  >> D:\ION\RETHINKDB\service\log.txt
REM d:\Curl\curl.exe -X POST http://10.0.3.24:5555/admin/adf9bd9ead764bd89a88347f1f3a85b6/2
REM
REM go rem service.go
REM go run service.go
REM go build service.go
REM service.exe

REM go build -o read_csv_file.exe  read_csv_file.go
REM d:\ion\rethinkdb\go\bin\log.txt

rem update to server
rem updatetoserver.bat

ECHO %Date% %Time%  %date:~-10,0% Сервер запущен >> d:\SERVICE\log.txt 


REM go run selectgo.go
REM go run d:\ION\RETHINKDB\GO\main.go
@PAUSE
