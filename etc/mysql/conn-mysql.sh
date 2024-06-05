#!/bin/bash

host="127.0.0.1"
port=3307
user="root"
pwd="123456"

mysql -h$host -P$port -u$user -p$pwd --default-character-set=utf8mb4 -A
