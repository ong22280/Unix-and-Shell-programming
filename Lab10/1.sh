if [ $# -eq 0 ]; then
    echo "Usage: $0 id ..." 1>&2
    exit 1
fi
for id; 
do
    awk -F: '{print $1, $5}' /etc/passwd | grep "$id"
done
