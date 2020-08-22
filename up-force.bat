@echo off

docker-compose --project-name DevOps up --detach --build --force-recreate

PAUSE