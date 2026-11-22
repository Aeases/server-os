#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

firewall-offline-cmd --add-service=mdns
firewall-offline-cmd --list-services | grep -qw mdns
