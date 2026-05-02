#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="ToIceyOS"
iso_label="TOICEY_OS_$(date +%Y%m)"
iso_publisher="ToIcey <https://github.com/ToIcey>"
iso_application="ToIcey OS Live/Rescue System"
iso_version="2026.05.02"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp' 'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
    ["/root"]="0:0:750"
      ["/root/toicey-init.sh"]="0:0:755"
        ["/usr/local/bin/choose-mirror"]="0:0:755"
          ["/usr/local/bin/Installation_guide"]="0:0:755"
            ["/usr/local/bin/livecd-sound"]="0:0:755"
            )
            
