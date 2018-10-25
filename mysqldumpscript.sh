echo $1;

cat >.my.cnf <<EOF1
[mysqldump]
user = Swapnil
password = 12345
EOF1


dt=`date '+%d-%m-%Y-%H:%M:%S'`;

echo $dt;

mysqldump newdemo > $1-$dt.sql;

echo "mysqldump created as "$1-$dt".sql";
