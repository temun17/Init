# Write a script which monitors the modifications made to the /etc/crontab file and sends an e-mail to root if the file is modified.
# Create a scheduled task to run this script everyday at midnight.

echo "0 0 * * * $(pwd)/04.sh" >> /etc/crontab

IFS= read -r line
md5='md5 etc/crontab | awk '{print$1}''

$IFS < $md5
if [$md5 == $line]
	echo "File has not been correctly modified"
else
	ehco "md5" | main -s "crontab was modified!" root

fi

# man md5sum
