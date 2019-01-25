#!/bin/bash
# 192.168.27.73 is the gateway
pro='tcp'
NAT_Host='192.168.27.73'
NAT_Port=10005
Dst_Host='192.168.27.92'
Dst_Port=22
iptables -t nat -A PREROUTING  -m $pro -p $pro --dport $NAT_Port -j DNAT --to-destination $Dst_Host:$Dst_Port
iptables -t nat -A POSTROUTING -m $pro -p $pro --dport $Dst_Port -d $Dst_Host -j SNAT --to-source $NAT_Host

