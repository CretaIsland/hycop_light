@echo off

setlocal

set MY_PROJECT_HOME=D:\Flutter\project\hycop
echo %MY_PROJECT_HOME%

if "%~1"=="clean"   goto clean
if "%~1"=="copy"   goto copy
if "%~1"=="link"   goto link

:clean
rmdir /s /q lib\common
REM rmdir /s /q lib\hycop\enum
rmdir /s /q lib\hycop\model
rmdir /s /q lib\hycop\absModel

del /q  lib\hycop\account\abs_account.dart  
del /q  lib\hycop\account\account_manager.dart  
del /q  lib\hycop\account\firebase_account.dart
del /q lib\hycop\database\firebase_database.dart
REM del /q lib\hycop\storage\firebase_storage.dart
del /q lib\hycop\storage\storage_utils.dart
del /q lib\hycop\utils\hycop_exceptions.dart
goto end

:link
mklink /d  lib\common  %MY_PROJECT_HOME%\lib\common  
REM mklink /d  lib\hycop\enum   %MY_PROJECT_HOME%\lib\hycop\enum 
mklink /d  lib\hycop\model %MY_PROJECT_HOME%\lib\hycop\model 
mklink /d  lib\hycop\absModel    %MY_PROJECT_HOME%\lib\hycop\absModel 

mklink  lib\hycop\account\abs_account.dart  %MY_PROJECT_HOME%\lib\hycop\account\abs_account.dart
mklink  lib\hycop\account\account_manager.dart  %MY_PROJECT_HOME%\lib\hycop\account\account_manager.dart
mklink  lib\hycop\account\firebase_account.dart  %MY_PROJECT_HOME%\lib\hycop\account\firebase_account.dart
mklink  lib\hycop\database\firebase_database.dart  %MY_PROJECT_HOME%\lib\hycop\database\firebase_database.dart
REM mklink  lib\hycop\storage\firebase_storage.dart  %MY_PROJECT_HOME%\lib\hycop\storage\firebase_storage.dart 
mklink  lib\hycop\storage\storage_utils.dart  %MY_PROJECT_HOME%\lib\hycop\storage\storage_utils.dart
mklink  lib\hycop\utils\hycop_exceptions.dart  %MY_PROJECT_HOME%\lib\hycop\utils\hycop_exceptions.dart 
goto end

:copy
xcopy  %MY_PROJECT_HOME%\lib\common  lib\common /E /I
REM xcopy  %MY_PROJECT_HOME%\lib\hycop\enum lib\hycop\enum  /E /I
xcopy  %MY_PROJECT_HOME%\lib\hycop\model lib\hycop\model   /E /I
xcopy  %MY_PROJECT_HOME%\lib\hycop\absModel lib\hycop\absModel /E /I  

xcopy  %MY_PROJECT_HOME%\lib\hycop\account\abs_account.dart lib\hycop\account\.  /Y
xcopy  %MY_PROJECT_HOME%\lib\hycop\account\account_manager.dart lib\hycop\account\.  /Y
xcopy  %MY_PROJECT_HOME%\lib\hycop\account\firebase_account.dart lib\hycop\account\.  /Y
xcopy  %MY_PROJECT_HOME%\lib\hycop\database\firebase_database.dart lib\hycop\database\.   /Y
REM xcopy  %MY_PROJECT_HOME%\lib\hycop\storage\firebase_storage.dart lib\hycop\storage\.   /Y
xcopy  %MY_PROJECT_HOME%\lib\hycop\storage\storage_utils.dart lib\hycop\storage\.   /Y
xcopy  %MY_PROJECT_HOME%\lib\hycop\utils\hycop_exceptions.dart lib\hycop\utils\. /Y   
goto end


:end
endlocal