echo $1;
echo $2;

dt=`date '+%d-%m-%Y-%H:%M:%S'`;

echo $dt;

mysqldump -u root -p$1 test > $2-$dt.sql;

echo "mysqldump created";
