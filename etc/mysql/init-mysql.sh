#!/bin/bash

host="127.0.0.1"
port=3307
user="root"
pwd="123456"

mysql -h$host -P$port -u$user -p$pwd --default-character-set=utf8mb4 -A -e "CREATE DATABASE UnityMMOAccount DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;"
mysql -h$host -P$port -u$user -p$pwd --default-character-set=utf8mb4 -A -e "CREATE DATABASE UnityMMOGame DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;"

mysql -h$host -P$port -u$user -p$pwd --default-character-set=utf8mb4 -A -D UnityMMOAccount < ../../data/UnityMMOAccount.sql
mysql -h$host -P$port -u$user -p$pwd --default-character-set=utf8mb4 -A -D UnityMMOGame < ../../data/UnityMMOGame.sql