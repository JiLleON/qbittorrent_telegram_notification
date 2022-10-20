#!/bin/bash
#set -x # if you need more info in console
# Bot token
BOT_TOKEN="ADD_YOUR_TELEGRAM_BOT_TOKEN"

# Your chat id
CHAT_ID="ADD_YOUR_TELEGRAM_CHAT_ID"

# Get variables from qbittorrent
TORRENT_NAME="$1"

# Notification message
MESSAGE="<strong>Download Completed</strong>\n$TORRENT_NAME"

# Sends the notification to the telegram bot
curl -g -S -X POST \
-H 'Content-Type: application/json' \
-d '{"chat_id": "'"$CHAT_ID"'", "text": "'"${MESSAGE}"'", "parse_mode": "HTML"}' \
"https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"# | tee -a notificationsLog.txt # if you need log files 

# Prints a info message in the console
echo "${TORRENT_NAME} Download completed. Telegram notification sent."
