dt=`date '+%d-%m-%Y-%H:%M:%S'`;

mysqldump -u $1 -p$2 $3 > $3-$dt.sql 2>/dev/null;

echo "mysqldump created";
