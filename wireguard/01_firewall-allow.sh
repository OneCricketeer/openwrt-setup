uci -q batch << EOI
firewall.wg=rule
firewall.wg.name='Allow-WireGuard'
firewall.wg.target='ACCEPT'
firewall.wg.src='wan'
firewall.wg.dest='lan'
firewall.wg.proto='udp'
firewall.wg.src_port='51820'
firewall.wg.dest_port='51820'
commit firewall
EOI

uci add firewall redirect
uci batch << EOI
set firewall.@redirect[-1]=redirect
set firewall.@redirect[-1].target='DNAT'
set firewall.@redirect[-1].name='wg'
set firewall.@redirect[-1].src='wan'
set firewall.@redirect[-1].dest='lan'
set firewall.@redirect[-1].reflection='0'
set firewall.@redirect[-1].src_dport='51820'
set firewall.@redirect[-1].proto='udp'
set firewall.@redirect[-1].dest_ip='192.168.2.254'
set firewall.@redirect[-1].dest_port='51820'
commit firewall
EOI