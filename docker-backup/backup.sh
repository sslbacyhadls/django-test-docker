sqlite3 /data/db.sqlite3 ".backup /backup-dir/db.sqlite3.$(date +'%Y-%m-%d-%H:%M')"

if [ $( ls /backup-dir/ | wc | awk '{ print $1;}' ) -gt 10 ]
then
    rm -f /backup-dir/$(ls -t /backup-dir/ | tail -1)
fi