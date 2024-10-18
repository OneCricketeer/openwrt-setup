# https://openwrt.org/docs/guide-user/firewall/fw3_configurations/intercept_dns#dns_redirection
uci -q del firewall.dns_int
uci batch << EOI 
set firewall.dns_int.name="Redirect-DNS"
set firewall.dns_int.src_ip="!192.168.2.232”
set firewall.dns_int.dest_ip="192.168.2.232”
commit firewall
EOI

uci -q del firewall.dns_masq
uci batch << EOI 
set firewall.dns_masq="nat"
set firewall.dns_masq.name="Masquerade-DNS-PiHole”
set firewall.dns_masq.src="lan"
set firewall.dns_masq.dest_ip="192.168.2.232”
set firewall.dns_masq.dest_port="53"
set firewall.dns_masq.proto="tcp udp"
set firewall.dns_masq.target="MASQUERADE"
commit firewall
EOI