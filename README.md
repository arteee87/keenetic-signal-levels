# keenetic-3.7-qmi-lte-levels
a basic script to get lte signal levels with PRTG network moniror (custom ssh script sensor)

Requirements:
- Keenetic os v3.7.x (tested on beta 3.7 beta 2, router is an old black Giga III).
- USB LTE modem in QMI mode, that reports its signal levels with a command "show interface UsbQmi0" in keenetic's CLI.
- Entware installed and it's ssh accessible from your PRTG server/probe.
- Make sure modem also reports its signal into entware with "ndmq -p "show interface UsbQmi0" -x"
- a file manager (like mc)

Installation:
1) Place file S99ltestat at /opt/etc/init.d/
2) chmod 744 +x /opt/etc/init.d/S99ltestat
3) Place file lte.sh at /opt/etc/
4) chmod 744 +x /opt/etc/lte.sh
5) Reboot your router
6) Add a new sensor in your prtg server (custom ssh script), select "lte.sh"

It works for me with the following hardware:
router: zyxel keenetic giga 3
modem: T77W968/DW5821e fw. F1.0.0.5.2.GC.013 035
