#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 <<-EOSQL
	CREATE USER ${COVID_DATABASE_USER} WITH password '${COVID_DATABASE_PW}';
	CREATE DATABASE ${COVID_DATABASE_NAME};
	GRANT ALL PRIVILEGES ON DATABASE ${COVID_DATABASE_NAME} TO ${COVID_DATABASE_USER};
EOSQL
