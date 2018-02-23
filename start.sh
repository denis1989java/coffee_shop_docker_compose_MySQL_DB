#!/bin/bash 

cd MySQL/
docker build -t coffeemysql .
cd ../
docker-compose -f docker-compose.yml up -d
sleep 20
docker exec -i coffeeshop_db_1 mysql -uroot -proot < coffee.sql