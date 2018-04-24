# Write a script which updates all the package sources, then all the packages, and then logs everything in a file named /var/log/update_script.log.
# Create a scheduled task for this script, once per week at 4 AM.

echo " * 4 * * 2 apt-get update && apt-get upgrade >> /var/log/update_script.log" >> /etc/crontab
