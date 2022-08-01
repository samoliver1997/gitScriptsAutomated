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
echo "####### Cria branch hotfix no repositorio $i #######"
cd /home/sam/qrpoint/repositorios/"$i"
git switch master
git pull
git checkout -b hotfix
git push -u origin hotfix
sleep 5
echo " "
done
