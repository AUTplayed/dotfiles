#!/bin/bash
default_client_id=c9a6efb3d7932fd
client_id="${IMGUR_CLIENT_ID:=$default_client_id}"

res=$(curl -s -H "Authorization: Client-ID $client_id" -H "Expect: " -F "image=@$1" https://api.imgur.com/3/image.xml)
url="${res##*<link>}"
url="${url%%</link>*}"
echo "$url" | xclip -selection clipboard
notify-send "Uploaded" "$url"
