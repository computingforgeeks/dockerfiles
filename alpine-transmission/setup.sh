set -ex

# Install required packages, don't cache
apk add --no-cache transmission-daemon transmission-cli

# Create needed directories
mkdir -p /transmission/{downloads,watch,incomplete,config}

# Do a clean up
rm /setup.sh
