#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail
wget --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36" "https://developers.hp.com/sites/default/files/2025-11/hplip-3.25.8-plugin.run" -O /tmp/plugin.run
cd /tmp
chmod +x plugin.run
./plugin.run --noexec --target /tmp/plugin
cd plugin
python installPlugin.py