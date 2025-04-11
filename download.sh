#!/bin/bash

set -ex

# Path to your cookies file
COOKIES_FILE="cookies.txt"

# Create videos directory if it doesn't exist
mkdir -p ./videos

# Download videos from video_url.txt
yt-dlp --cookies "$COOKIES_FILE" \
    --no-check-certificates \
    --force-ipv4 \
    --sleep-requests 1.5 \
    --min-sleep-interval 60 \
    --max-sleep-interval 90 \
    -o "%(id)s.%(ext)s" \
    -S "vcodec:h264,res,acodec:aac" \
    -a "video_url.txt" \
    -P "./videos" \
    --download-archive "downloaded.txt" \
    --verbose >> download_log.txt 2>&1