uci batch << EOI
set network.OnePlus7t=wireguard_wg0
set network.OnePlus7t.description='OnePlus7t'
set network.OnePlus7t.route_allowed_ips='1'
set network.OnePlus7t.public_key='DO//zw9bdCdtud/oMKGW1ffxNqYeOr6vHXzmLFsMIVs='
set network.OnePlus7t.allowed_ips='10.0.0.2/32'
set network.OnePlus7t.persistent_keepalive='25'
commit network
EOI