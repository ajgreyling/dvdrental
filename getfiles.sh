git init
git remote add origin -f https://github.com/ajgreyling/dvdrental
git pull origin master
export PGPASSWORD=mysecretpassword
psql -U postgres -h localhost -w -p 2345 -f restore.sql

