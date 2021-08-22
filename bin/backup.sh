#!/bin/sh

rsync -aH --delete ~/Documents/scanned/ 3610@usw-s003.rsync.net:Scanned/2021/
rsync -aH --delete ~/Pictures/negatives/ 3610@usw-s003.rsync.net:Negatives/2021/
rsync -aH --delete ~/Videos/negatives/ 3610@usw-s003.rsync.net:Videos/Negatives/2021/
