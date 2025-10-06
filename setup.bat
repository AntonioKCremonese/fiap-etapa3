@echo off
REM Script para clonar os repositórios necessários e subir o docker-compose

IF NOT EXIST "fiap-hosp-scheduling" (
    git clone https://github.com/AntonioKCremonese/fiap-hosp-scheduling.git fiap-hosp-scheduling
)
IF NOT EXIST "notification" (
    git clone https://github.com/AntonioKCremonese/fiap-hosp-notification.git notification
)

docker-compose up --build

