#!/bin/bash
rm -rf site
mkdocs build --clean
git add --all
echo "Ingresá mensaje del commit"
read GHCOMMIT
git commit -m  "$GHCOMMIT"
git push origin master
echo "Tareas realizadas correctamente!"
sleep 2
exit
