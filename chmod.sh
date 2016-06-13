#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

START_DIR=$(readlink -f $(pwd))
SCRIPT_PATH=$(readlink -f "$0")
dirs=( "$START_DIR" /dev/shm/ftb )

for i in "${dirs[@]}" ; do
  cd "$i"
  echo "OPERATING ON $i"
  echo "********************Ownership********************"
  chown --preserve-root -c -R --from=michael minecraft:minecraft *
  echo "**********************Links**********************"
  sudo -u minecraft find . -type l -exec chmod --preserve-root -f -c 660 {} \;
  echo "**********************Files**********************"
  sudo -u minecraft find . -type f -exec chmod --preserve-root -f -c 660 {} \;
  echo "*******************Directories*******************"
  sudo -u minecraft find . -type d -exec chmod --preserve-root -f -c 770 {} \;
  echo
done

chmod a+x "$SCRIPT_PATH"
