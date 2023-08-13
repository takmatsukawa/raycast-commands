#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Timestamp
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⌚

# MMM D, YYYY h:mm A
date +"%b %-d, %Y %-l:%M %p" | /usr/bin/pbcopy
echo "Copied to Clipboard"