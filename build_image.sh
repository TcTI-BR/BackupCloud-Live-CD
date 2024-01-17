#!/bin/bash

set -e

./create_splash.sh
cd image_root
lb clean
lb config --apt apt --apt-recommends false --tasksel none --apt-indices false --distribution bookworm --memtest none --mirror-binary http://ftp.uni-stuttgart.de/debian/ --mirror-bootstrap http://ftp.uni-stuttgart.de/debian/ --architectures amd64 --mirror-chroot http://ftp.uni-stuttgart.de/debian/ --linux-flavours "amd64" --debian-installer false --firmware-binary true --system live --compression xz --bootappend-live "boot=live components username=urbackup" --iso-application "Central do Backup - BackupCloud" --iso-preparer="Central do Backup <contato@centraldobackup.com.br>" --iso-publisher="Central do Backup <contato@centraldobackup.com.br" --zsync false --iso-volume "Central do Backup - BackupCloud" --archive-areas "main contrib non-free non-free-firmware" --parent-archive-areas "main contrib non-free non-free-firmware" --parent-distribution bookworm --initsystem systemd --firmware-chroot true --security false
lb build
