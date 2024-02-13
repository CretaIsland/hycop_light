@echo off

setlocal

if "%~1"=="clean"   goto clean
if "%~1"=="copy"   goto copy
if "%~1"=="link"   goto link


:clean
rmdir /s /q lib\common
rmdir /s /q lib\hycop\enum
rmdir /s /q lib\hycop\model
rmdir /s /q lib\hycop\absModel

del /q  lib\hycop\account\abs_account.dart  
del /q  lib\hycop\account\account_manager.dart  
del /q  lib\hycop\account\firebase_account.dart
del /q lib\hycop\database\firebase_database.dart
del /q lib\hycop\storage\firebase_storage.dart
del /q lib\hycop\storage\storage_utils.dart
del /q lib\hycop\utils\hycop_exceptions.dart
goto end

:link
mklink /d  lib\common  D:\Flutter\project\hycop\lib\common  
mklink /d  lib\hycop\enum   D:\Flutter\project\hycop\lib\hycop\enum 
mklink /d  lib\hycop\model D:\Flutter\project\hycop\lib\hycop\model 
mklink /d  lib\hycop\absModel    D:\Flutter\project\hycop\lib\hycop\absModel 

mklink  lib\hycop\account\abs_account.dart  D:\Flutter\project\hycop\lib\hycop\account\abs_account.dart
mklink  lib\hycop\account\account_manager.dart  D:\Flutter\project\hycop\lib\hycop\account\account_manager.dart
mklink  lib\hycop\account\firebase_account.dart  D:\Flutter\project\hycop\lib\hycop\account\firebase_account.dart
mklink  lib\hycop\database\firebase_database.dart  D:\Flutter\project\hycop\lib\hycop\database\firebase_database.dart
mklink  lib\hycop\storage\firebase_storage.dart  D:\Flutter\project\hycop\lib\hycop\storage\firebase_storage.dart 
mklink  lib\hycop\storage\storage_utils.dart  D:\Flutter\project\hycop\lib\hycop\storage\storage_utils.dart
mklink  lib\hycop\utils\hycop_exceptions.dart  D:\Flutter\project\hycop\lib\hycop\utils\hycop_exceptions.dart 
goto end

:copy
xcopy  D:\Flutter\project\hycop\lib\common  lib\common /E /I
xcopy  D:\Flutter\project\hycop\lib\hycop\enum lib\hycop\enum  /E /I
xcopy  D:\Flutter\project\hycop\lib\hycop\model lib\hycop\model   /E /I
xcopy  D:\Flutter\project\hycop\lib\hycop\absModel lib\hycop\absModel /E /I  

xcopy  D:\Flutter\project\hycop\lib\hycop\account\abs_account.dart lib\hycop\account\.  /Y
xcopy  D:\Flutter\project\hycop\lib\hycop\account\account_manager.dart lib\hycop\account\.  /Y
xcopy  D:\Flutter\project\hycop\lib\hycop\account\firebase_account.dart lib\hycop\account\.  /Y
xcopy  D:\Flutter\project\hycop\lib\hycop\database\firebase_database.dart lib\hycop\database\.   /Y
xcopy  D:\Flutter\project\hycop\lib\hycop\storage\firebase_storage.dart lib\hycop\storage\.   /Y
xcopy  D:\Flutter\project\hycop\lib\hycop\storage\storage_utils.dart lib\hycop\storage\.   /Y
xcopy  D:\Flutter\project\hycop\lib\hycop\utils\hycop_exceptions.dart lib\hycop\utils\. /Y   
goto end


:end
endlocal