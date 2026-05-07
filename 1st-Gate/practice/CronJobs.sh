#!/bin/bash 

# all cron jobs follow this pattern
# * * * * * command_to_execute
# │ │ │ │ │
# │ │ │ │ └── Day of week (0–7) (Sunday = 0 or 7)
# │ │ │ └──── Month (1–12)
# │ │ └────── Day of month (1–31)
# │ └──────── Hour (0–23)
# └────────── Minute (0–59)

# common commands:
# 1. list cron jobs
# crontab -l
# 2. edit cron jobs (adding cronjobs)
# crontab -e
# 3. remove all cron jobs
# crontab -r

# Notes:
# Use absolute paths in commands (cron has limited environment variables)
# Redirect output for debugging:
# * * * * * /path/script.sh >> /path/log.txt 2>&1
# Breakdown:
# * * * * *: run every minute
# /path/script.sh: the script being executed
# >> /path/log.txt: append normal output (stdout) to log.txt
# 2>&1: redirect error output (stderr, file descriptor 2) to wherever normal output (stdout, file descriptor 1) is going

#############################################################################################################################################

# Exercise 1: Automated Log Cleanup

# Scenario:
# Your system generates temporary log files in:
# /var/log/myapp/
# You want to automatically delete .log files older than 7 days every night at 1:00 AM.

# Your Task:
# Create a shell script named:
# cleanup_logs.sh

# The script should:
# - Find .log files older than 7 days
# - Delete them
# - Append deleted filenames to: /var/log/myapp/cleanup.log
# - Create a cron job that runs the script daily at 1:00 AM.

# My solution:
1. cleanup_logs.sh:
#!/bin/bash

logPath="/var/log/myapp/"
logFile="/var/log/myapp/cleanup.log"
#finding files in the path older than 7 days and deleting them!
find "$logPath" -name "*.log" -mtime +7 -delete

2. cronjob:
- run "crontab -e"
0 1 * * * /home/user/cleanup_logs.sh >> /var/log/myapp/cleanup.log 2>&1




#############################################################################################################################################
# Exercise 2: Automated Python Backup System

# Scenario
# You manage a project directory:
# /home/user/projects/
# You need a production-style automated backup system.

# Requirements
# 1. Python Script
#   Create a Python script:
#       backup.py
#       The script should:
#       Compress /home/user/projects/
#       Create a timestamped .tar.gz archive
#   Store backups in:
#       /home/user/backups/
#       Example filename:
#       projects_backup_2026-05-07_0200.tar.gz

# 2. Retention Policy
#   The script must:
#       Automatically delete backups older than 14 days

# 3. Logging
#   Log:
#       backup start time
#       backup success/failure
#       deleted old backups
#   Into:
#       /home/user/backups/backup.log

# 4. Cron Job
#   Schedule it to run: Every day at 2:00 AM

# 5. Bonus Challenges
#   Add:
#       email notification on failure
#       disk space check before backup
#       backup size reporting
#       exclusion list (node_modules, .git, etc.)

# My solution: