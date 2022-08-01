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
echo "####### Deleta branch hotfix no repositorio $i #######"
cd /home/sam/qrpoint/repositorios/"$i"
git fetch
git switch staging
git branch -D hotfix
git push origin --delete hotfix
sleep 5
echo " "
done
