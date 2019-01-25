# gateway-nat
Scripts for configuring iptables NAT


Before run `iptables`, please permanently enable the nat functionality in Linux by the following command.

```
echo "1" > /proc/sys/net/ipv4/ip_forward
```
