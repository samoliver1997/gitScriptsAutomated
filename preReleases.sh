#!/bin/bash

declare -a REPOSITORIOS=(   "qrpoint-frontend" 
                            "qrpoint-webapp" 
                            "go-timesheet" 
                            "qrpoint-mobile-api" 
                            "facile-reports" 
                            "qrpoint-registro-rapido" 
                            "qrpoint-cadastro" 
                            "api-qrpoint" 
                            "qrpoint-colaborador")

for i in "${REPOSITORIOS[@]}"
do
echo "####### Deleta branch releases no repositorio $i #######"
cd /home/sam/qrpoint/repositorios/"$i"
git switch master
git pull
git checkout -b releases
git push -u origin releases
sleep 5
echo " "
done