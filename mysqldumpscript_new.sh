echo "your Database "$1;
echo "Mysqldump name "$2;

cat > ~/.my.cnf <<EOF1
[mysqldump]
user=Swapnil
password=12345
EOF1

dt=`date '+%d-%m-%Y-%H:%M:%S'`;
echo $1;
echo $dt;

#mysqldump -u Swapnil -p $1 > $2".sql"
mysqldump $1 > $2-$dt.sql;

echo "mysqldump created as "$1-$dt".sql";
