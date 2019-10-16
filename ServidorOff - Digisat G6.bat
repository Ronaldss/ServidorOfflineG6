@echo off
@echo.
color 9f
cls
@echo Finalizando aplicativos DigiSat
taskkill /f /im ServidorG6.exe
taskkill /f /im SistemaG6.exe
@echo > nao encontrado = sistema finzalizado ja encontrava-se finalizado.
@echo.
timeout 3 >nul
cls
@echo.
@echo Reinicia o MongoDB e Sincronizador
net stop MongoDBDigisat
net stop SincronizadorDigisat
timeout 2 >nul
del C:\DigiSat\SuiteG6\Servidor\ConfiguracaoServer.xml
del C:\DigiSat\SuiteG6\Sistema\ConfiguracaoClient.xml
timeout 1 >nul
net start MongoDBDigisat
net start SincronizadorDigisat
timeout 3 >nul
cd\
cd DigiSat\SuiteG6\Servidor
start ServidorG6.exe
timeout 3 >nul
cls
@echo.
@echo    ***********************************************
@echo    ***                                         ***
@echo    ***      Processo Finalizado com sucesso    ***
@echo    ***      Por Cptk                           ***
@echo    ***                                         ***
@echo    ***********************************************
@echo.
ipconfig |find "IPv4"
@echo.
@echo -- Bom trabalho --
pause >nul