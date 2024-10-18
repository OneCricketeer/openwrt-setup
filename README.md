1. https://firmware-selector.openwrt.org/
2. Select x86_64
3. Pick latest version
4. Customize packages

    Basics
    ```
    kmod-ipt-nat6 luci luci-ssl
    ```

    Dynamic DNS

    ```
    ddns-scripts luci-app-ddns 
    ```


    Wireguard VPN

    ```
    wireguard-tools luci-proto-wireguard luci-app-wireguard luci-proto-wireguard qrencode
    ```

    aria2
    
    ```
    aria2 luci-app-aria2 ariang 
    ```
    
    [usb support](https://openwrt.org/docs/guide-user/storage/usb-drives)
    
    ```
    kmod-usb-storage e2fsprogs kmod-fs-ext4 kmod-fs-exfat block-mount libblkid 
    ```
     samba

    ```
    samba4-server luci-app-samba4
    ```

5. Customize script - Paste in [`uci-defaults.sh`](./uci-defaults.sh)
6. Click Generate
7. Download Combined-EFI
8. Flash to USB
