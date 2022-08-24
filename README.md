# keenetic v3.7+ qmi signal levels for PRTG monitoring
a (custom ssh script sensor)

Requirements:
- Keenetic os v3.7 and above (tested to work with v3.7 b2 - 3.8.2)
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

Extra:
You can monitor an unlumited amount of modems, but you need to create an additional "lte.sh" (with a diffirent name) for each modem. Then change the polled interface in the lte.sh as it is named in your router (i.e. UsbQmi1, UsbQmi2 ...)

tested with modem T77W968/DW5821e fw. F1.0.0.5.2.GC.013 035
