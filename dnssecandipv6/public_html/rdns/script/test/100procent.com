  0.000: 100procent.com INFO Begin testing zone 100procent.com with version 1.5.0.
  0.001: 100procent.com INFO Begin testing delegation for 100procent.com.
 18.270: 100procent.com INFO Name servers listed at parent: ns.100procent.com,ns2.100procent.com,ns3.100procent.com
 21.685: 100procent.com INFO Name servers listed at child: ns.100procent.com,ns2.100procent.com,ns3.100procent.com
 21.698: 100procent.com NOTICE Too few IPv6 name servers (1).
 21.804: 100procent.com INFO Parent glue for 100procent.com found: ns.100procent.com (62.168.149.3)
 22.066: 100procent.com INFO Parent glue for 100procent.com found: ns2.100procent.com (62.168.149.2)
 22.245: 100procent.com INFO Parent glue for 100procent.com found: ns3.100procent.com (109.74.6.74)
 22.321: 100procent.com INFO Checking glue for ns.100procent.com (62.168.149.3).
 22.384: 100procent.com INFO Child glue for 100procent.com found: ns.100procent.com (62.168.149.3)
 22.384: 100procent.com INFO Checking glue for ns2.100procent.com (62.168.149.2).
 22.416: 100procent.com INFO Child glue for 100procent.com found: ns2.100procent.com (62.168.149.2)
 22.416: 100procent.com INFO Checking glue for ns3.100procent.com (109.74.6.74).
 22.434: 100procent.com INFO Child glue for 100procent.com found: ns3.100procent.com (109.74.6.74)
 22.435: 100procent.com INFO Parent glue for 100procent.com found: ns.100procent.com (62.168.149.3)
 22.435: 100procent.com INFO Parent glue for 100procent.com found: ns2.100procent.com (62.168.149.2)
 22.436: 100procent.com INFO Parent glue for 100procent.com found: ns3.100procent.com (109.74.6.74)
 23.661: 100procent.com INFO It is possible to build a referral packet for 100procent.com that works without EDNS0.
 23.661: 100procent.com INFO Done testing delegation for 100procent.com.
 23.690: 100procent.com INFO Begin testing name server ns.100procent.com.
 23.691: 100procent.com INFO Begin testing host ns.100procent.com.
 24.323: 100procent.com INFO Begin testing address 62.168.149.3.
 33.166: 100procent.com INFO Done testing address 62.168.149.3.
 33.166: 100procent.com INFO Done testing host ns.100procent.com.
 33.682: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) answers queries over UDP.
 33.718: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) answers queries over TCP.
 33.742: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) is not recursive.
 33.820: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) authoritative for 100procent.com.
 33.832: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) closed for zone transfer of 100procent.com.
 33.855: 100procent.com INFO Legacy name server ID for ns.100procent.com (62.168.149.3): hostname.bind = ns.100procent.com
 33.870: 100procent.com INFO Legacy name server ID for ns.100procent.com (62.168.149.3): version.bind = 9.9.9
 33.902: 100procent.com NOTICE No answer received from 62.168.149.3 when querying for version.server/CH/TXT.
 33.902: 100procent.com INFO Done testing name server ns.100procent.com.
 33.902: 100procent.com INFO Begin testing name server ns2.100procent.com.
 33.902: 100procent.com INFO Begin testing host ns2.100procent.com.
 34.244: 100procent.com INFO Begin testing address 62.168.149.2.
 36.203: 100procent.com INFO Done testing address 62.168.149.2.
 36.203: 100procent.com INFO Done testing host ns2.100procent.com.
 36.716: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) answers queries over UDP.
 36.731: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) answers queries over TCP.
 36.735: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) is not recursive.
 36.767: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) authoritative for 100procent.com.
 36.775: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) closed for zone transfer of 100procent.com.
 36.784: 100procent.com INFO Legacy name server ID for ns2.100procent.com (62.168.149.2): hostname.bind = ns2.100procent.com
 36.795: 100procent.com INFO Legacy name server ID for ns2.100procent.com (62.168.149.2): version.bind = 9.9.9
 36.814: 100procent.com NOTICE No answer received from 62.168.149.2 when querying for version.server/CH/TXT.
 36.814: 100procent.com INFO Done testing name server ns2.100procent.com.
 36.814: 100procent.com INFO Begin testing name server ns3.100procent.com.
 36.815: 100procent.com INFO Begin testing host ns3.100procent.com.
 36.815: 100procent.com INFO Begin testing address 109.74.6.74.
 38.155: 100procent.com INFO Done testing address 109.74.6.74.
 38.156: 100procent.com INFO Begin testing address 2a02:750:7:0:0:0:0:ca.
 38.863: 100procent.com INFO Done testing address 2a02:750:7:0:0:0:0:ca.
 38.864: 100procent.com INFO Done testing host ns3.100procent.com.
 38.941: 100procent.com INFO Name server ns3.100procent.com (109.74.6.74) answers queries over UDP.
 39.038: 100procent.com INFO Name server ns3.100procent.com (109.74.6.74) answers queries over TCP.
 39.050: 100procent.com INFO Name server ns3.100procent.com (109.74.6.74) is not recursive.
 39.110: 100procent.com INFO Name server ns3.100procent.com (109.74.6.74) authoritative for 100procent.com.
 39.138: 100procent.com INFO Name server ns3.100procent.com (109.74.6.74) closed for zone transfer of 100procent.com.
 39.162: 100procent.com INFO Legacy name server ID for ns3.100procent.com (109.74.6.74): hostname.bind = ns3.100procent.com
 39.174: 100procent.com INFO Legacy name server ID for ns3.100procent.com (109.74.6.74): version.bind = 9.9.9
 39.198: 100procent.com NOTICE No answer received from 109.74.6.74 when querying for version.server/CH/TXT.
 39.215: 100procent.com INFO Name server ns3.100procent.com (2a02:750:7:0:0:0:0:ca) answers queries over UDP.
 39.252: 100procent.com INFO Name server ns3.100procent.com (2a02:750:7:0:0:0:0:ca) answers queries over TCP.
 39.266: 100procent.com INFO Name server ns3.100procent.com (2a02:750:7:0:0:0:0:ca) is not recursive.
 39.362: 100procent.com INFO Name server ns3.100procent.com (2a02:750:7:0:0:0:0:ca) authoritative for 100procent.com.
 39.398: 100procent.com INFO Name server ns3.100procent.com (2a02:750:7:0:0:0:0:ca) closed for zone transfer of 100procent.com.
 39.414: 100procent.com INFO Legacy name server ID for ns3.100procent.com (2a02:750:7:0:0:0:0:ca): hostname.bind = ns3.100procent.com
 39.421: 100procent.com INFO Legacy name server ID for ns3.100procent.com (2a02:750:7:0:0:0:0:ca): version.bind = 9.9.9
 39.438: 100procent.com NOTICE No answer received from 2a02:750:7:0:0:0:0:ca when querying for version.server/CH/TXT.
 39.438: 100procent.com INFO Done testing name server ns3.100procent.com.
 39.438: 100procent.com INFO Begin testing zone consistency for 100procent.com.
 41.188: 100procent.com INFO SOA at address 109.74.6.74 has serial 2013071501.
 41.233: 100procent.com INFO SOA at address 62.168.149.3 has serial 2013071501.
 41.254: 100procent.com INFO SOA at address 62.168.149.2 has serial 2013071501.
 41.282: 100procent.com INFO SOA at address 2a02:750:7:0:0:0:0:ca has serial 2013071501.
 41.282: 100procent.com INFO All SOA records have consistent serial numbers.
 41.282: 100procent.com INFO All other fields in the SOA record are consistent among all name servers.
 42.362: 100procent.com NOTICE The listed nameservers for 100procent.com all report the same set of nameservers.
 42.362: 100procent.com INFO Done testing zone consistency for 100procent.com.
 42.362: 100procent.com INFO Begin testing SOA parameters for 100procent.com.
 42.385: 100procent.com INFO Found SOA record for 100procent.com.
 42.385: 100procent.com INFO Begin testing host ns.100procent.com.
 42.677: 100procent.com INFO Begin testing address 62.168.149.3.
 43.042: 100procent.com INFO Done testing address 62.168.149.3.
 43.042: 100procent.com INFO Done testing host ns.100procent.com.
 43.042: 100procent.com INFO SOA MNAME for 100procent.com valid (ns.100procent.com).
 43.043: 100procent.com INFO SOA MNAME for 100procent.com (ns.100procent.com) listed as NS.
 43.433: 100procent.com INFO SOA MNAME for 100procent.com (ns.100procent.com) is authoritative.
 43.433: 100procent.com INFO Begin testing email address registry@100procent.com.
 43.967: 100procent.com INFO Mail exchangers for registry@100procent.com found mx02.mail-gw.100procent.com,mx01.mail-gw.100procent.com.
 43.967: 100procent.com INFO All mail servers for registry@100procent.com are in zone 100procent.com.
 43.967: 100procent.com INFO Begin testing host mx02.mail-gw.100procent.com.
 44.586: 100procent.com INFO Begin testing address 62.168.145.71.
 46.867: 100procent.com INFO Done testing address 62.168.145.71.
 46.867: 100procent.com INFO Done testing host mx02.mail-gw.100procent.com.
 47.171: 100procent.com INFO Begin testing host mx01.mail-gw.100procent.com.
 48.328: 100procent.com INFO Begin testing address 62.168.145.70.
 50.067: 100procent.com INFO Done testing address 62.168.145.70.
 50.068: 100procent.com INFO Done testing host mx01.mail-gw.100procent.com.
 50.521: 100procent.com INFO Done testing email address registry@100procent.com.
 50.522: 100procent.com INFO Successful attempt to deliver email for SOA RNAME of 100procent.com (registry.100procent.com) using registry@100procent.com.
 50.522: 100procent.com INFO SOA TTL for 100procent.com OK (3600) - recommended >= 3600.
 50.522: 100procent.com INFO SOA refresh for 100procent.com OK (86400) - recommended >= 14400.
 50.522: 100procent.com INFO SOA retry for 100procent.com OK (7200) - recommended >= 3600.
 50.522: 100procent.com INFO SOA expire for 100procent.com OK (604800) - recommended >= 604800.
 50.522: 100procent.com INFO SOA minimum for 100procent.com OK (300) - recommended between 300 and 86400.
 50.523: 100procent.com INFO Done testing SOA parameters for 100procent.com.
 50.523: 100procent.com INFO Begin testing connectivity for 100procent.com.
 52.647: 100procent.com INFO Zone announced by more than one ASN.
 53.345: 100procent.com NOTICE Zone announced by fewer than two IPv6 ASN.
 53.345: 100procent.com INFO Done testing connectivity for 100procent.com.
 53.345: 100procent.com INFO Begin testing DNSSEC for 100procent.com.
 53.373: 100procent.com INFO Did not find DS record for 100procent.com at parent.
 53.445: 100procent.com INFO Servers for 100procent.com have consistent extra processing status.
 53.464: 100procent.com INFO Authenticated denial records not found for 100procent.com.
 53.477: 100procent.com INFO Did not find DNSKEY record for 100procent.com at child.
 53.477: 100procent.com INFO No DNSKEY(s) found at child, other tests skipped.
 53.478: 100procent.com INFO Done testing DNSSEC for 100procent.com.
 53.479: 100procent.com INFO Test completed for zone 100procent.com.
