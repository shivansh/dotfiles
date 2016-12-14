#!/bin/bash
# Update atom from downloaded deb file

rm -f /tmp/atom.deb
curl -L https://atom.io/download/deb > /tmp/atom.deb
dpkg --install /tmp/atom.deb

# Don't need su handling apm commands.
apm upgrade --confirm false

exit 0
