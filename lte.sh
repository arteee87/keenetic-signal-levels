#!/bin/sh

CMD=`ndmq -p "show interface UsbQmi0" -x`
RSRQ=`echo "$CMD" | grep -o -P '(?<=<rsrq>).*(?=<)'`
RSRP=`echo "$CMD" | grep -o -P '(?<=<rsrp>).*(?=<)'`
RSSI=`echo "$CMD" | grep -o -P '(?<=<rssi>).*(?=<)'`
SINR=`echo "$CMD" | grep -o -P '(?<=<cinr>).*(?=<)'`

echo "<prtg>
<result>
<channel>RSRQ</channel>
<value>"$RSRQ"</value>
<unit>custom</unit>
<customunit>dB</customunit>
</result>
<result>
<channel>RSRP</channel>
<value>"$RSRP"</value>
<unit>custom</unit>
<customunit>dBm</customunit>
</result>
<result>
<channel>RSSI</channel>
<value>"$RSSI"</value>
<unit>custom</unit>
<customunit>dBm</customunit>
</result>
<result>
<channel>SINR</channel>
<value>"$SINR"</value>
<unit>custom</unit>
<customunit>dB</customunit>
</result>
</prtg>"