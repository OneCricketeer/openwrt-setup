uci -q batch << EOI
set network.lan.dns='192.168.2.232'
commit network
set dhcp.lan.dhcp_option='6,192.168.2.232,0.0.0.0'
commit dhcp
EOI