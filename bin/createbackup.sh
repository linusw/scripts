#!/bin/sh

# Script to back up a home directory in a time-stamped
# archive. Written by Linus Walleij

BCKNAME=`date +%Y-%m-%d`
BCKNAME="backup_${BCKNAME}.tar.bz2"
echo "Backup name: ${BCKNAME}"
cd ${HOME}
tar cfjX /tmp/${BCKNAME} etc/exclude-from-backup .
