git init
git remote add origin -f https://github.com/ajgreyling/dvdrental
git fetch --all
git reset --hard origin/master
export PGPASSWORD=mysecretpassword
psql -U postgres -h localhost -w -p 2345 -f restore.sql
