Install `wireguard-tools`.

Get the public key

```sh
grep wg0.private_key wireguard/00_interface.sh | cut -d= -f2- | tr -d "'" | wg pubkey
```

---

## Key rotation

Create a new private key

```sh
wg genkey
```

## References

- https://www.youtube.com/watch?v=Bo2AsW4BMOo&t=532s
- https://openwrt.org/docs/guide-user/services/vpn/wireguard/road-warrior