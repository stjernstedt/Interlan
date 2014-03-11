  0.000: eurodns.com INFO Begin testing zone eurodns.com with version 1.5.0.
  0.001: eurodns.com INFO Begin testing delegation for eurodns.com.
 22.360: eurodns.com INFO Name servers listed at parent: ns1.eurodns.com,ns2.eurodns.com,ns3.eurodns.com,ns4.eurodns.com
 27.649: eurodns.com INFO Name servers listed at child: ns1.eurodns.com,ns2.eurodns.com,ns3.eurodns.com,ns4.eurodns.com
 27.824: eurodns.com INFO Parent glue for eurodns.com found: ns1.eurodns.com (80.92.65.2)
 28.241: eurodns.com INFO Parent glue for eurodns.com found: ns1.eurodns.com (2001:b20:1001:4:0:0:0:2)
 28.422: eurodns.com INFO Parent glue for eurodns.com found: ns2.eurodns.com (80.92.89.242)
 28.481: eurodns.com INFO Parent glue for eurodns.com found: ns2.eurodns.com (2001:b20:1001:11:0:0:0:242)
 28.722: eurodns.com INFO Parent glue for eurodns.com found: ns3.eurodns.com (46.105.158.142)
 29.075: eurodns.com INFO Parent glue for eurodns.com found: ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1)
 29.272: eurodns.com INFO Parent glue for eurodns.com found: ns4.eurodns.com (192.174.68.100)
 29.426: eurodns.com INFO Parent glue for eurodns.com found: ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100)
 29.426: eurodns.com INFO Checking glue for ns1.eurodns.com (80.92.65.2).
 29.467: eurodns.com INFO Child glue for eurodns.com found: ns1.eurodns.com (80.92.65.2)
 29.467: eurodns.com INFO Checking glue for ns1.eurodns.com (2001:b20:1001:4:0:0:0:2).
 29.505: eurodns.com INFO Child glue for eurodns.com found: ns1.eurodns.com (2001:b20:1001:4:0:0:0:2)
 29.505: eurodns.com INFO Checking glue for ns2.eurodns.com (80.92.89.242).
 29.557: eurodns.com INFO Child glue for eurodns.com found: ns2.eurodns.com (80.92.89.242)
 29.558: eurodns.com INFO Checking glue for ns2.eurodns.com (2001:b20:1001:11:0:0:0:242).
 29.611: eurodns.com INFO Child glue for eurodns.com found: ns2.eurodns.com (2001:b20:1001:11:0:0:0:242)
 29.611: eurodns.com INFO Checking glue for ns3.eurodns.com (46.105.158.142).
 29.649: eurodns.com INFO Child glue for eurodns.com found: ns3.eurodns.com (46.105.158.142)
 29.650: eurodns.com INFO Checking glue for ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1).
 29.688: eurodns.com INFO Child glue for eurodns.com found: ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1)
 29.688: eurodns.com INFO Checking glue for ns4.eurodns.com (192.174.68.100).
 29.732: eurodns.com INFO Child glue for eurodns.com found: ns4.eurodns.com (192.174.68.100)
 29.732: eurodns.com INFO Checking glue for ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100).
 29.778: eurodns.com INFO Child glue for eurodns.com found: ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100)
 29.786: eurodns.com INFO Parent glue for eurodns.com found: ns1.eurodns.com (80.92.65.2)
 29.786: eurodns.com INFO Parent glue for eurodns.com found: ns1.eurodns.com (2001:b20:1001:4:0:0:0:2)
 29.786: eurodns.com INFO Parent glue for eurodns.com found: ns2.eurodns.com (80.92.89.242)
 29.787: eurodns.com INFO Parent glue for eurodns.com found: ns2.eurodns.com (2001:b20:1001:11:0:0:0:242)
 29.787: eurodns.com INFO Parent glue for eurodns.com found: ns3.eurodns.com (46.105.158.142)
 29.787: eurodns.com INFO Parent glue for eurodns.com found: ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1)
 29.787: eurodns.com INFO Parent glue for eurodns.com found: ns4.eurodns.com (192.174.68.100)
 29.788: eurodns.com INFO Parent glue for eurodns.com found: ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100)
 30.072: eurodns.com INFO It is possible to build a referral packet for eurodns.com that works without EDNS0.
 30.072: eurodns.com INFO Done testing delegation for eurodns.com.
 30.073: eurodns.com INFO Begin testing name server ns1.eurodns.com.
 30.073: eurodns.com INFO Begin testing host ns1.eurodns.com.
 30.126: eurodns.com INFO Begin testing address 80.92.65.2.
 42.638: eurodns.com INFO Done testing address 80.92.65.2.
 42.638: eurodns.com INFO Begin testing address 2001:b20:1001:4:0:0:0:2.
 43.366: eurodns.com INFO Done testing address 2001:b20:1001:4:0:0:0:2.
 43.367: eurodns.com INFO Done testing host ns1.eurodns.com.
 43.411: eurodns.com INFO Name server ns1.eurodns.com (80.92.65.2) answers queries over UDP.
 43.499: eurodns.com INFO Name server ns1.eurodns.com (80.92.65.2) answers queries over TCP.
 43.553: eurodns.com INFO Name server ns1.eurodns.com (80.92.65.2) is not recursive.
 43.769: eurodns.com INFO Name server ns1.eurodns.com (80.92.65.2) authoritative for eurodns.com.
 43.913: eurodns.com INFO Name server ns1.eurodns.com (80.92.65.2) closed for zone transfer of eurodns.com.
 43.989: eurodns.com INFO Legacy name server ID for ns1.eurodns.com (80.92.65.2): hostname.bind = ns1-h.eurodns.com
 44.034: eurodns.com INFO Legacy name server ID for ns1.eurodns.com (80.92.65.2): version.bind = Secured
 44.134: eurodns.com NOTICE No answer received from 80.92.65.2 when querying for version.server/CH/TXT.
 44.215: eurodns.com INFO Name server ns1.eurodns.com (2001:b20:1001:4:0:0:0:2) answers queries over UDP.
 44.382: eurodns.com INFO Name server ns1.eurodns.com (2001:b20:1001:4:0:0:0:2) answers queries over TCP.
 44.486: eurodns.com INFO Name server ns1.eurodns.com (2001:b20:1001:4:0:0:0:2) is not recursive.
 45.042: eurodns.com INFO Name server ns1.eurodns.com (2001:b20:1001:4:0:0:0:2) authoritative for eurodns.com.
 45.311: eurodns.com INFO Name server ns1.eurodns.com (2001:b20:1001:4:0:0:0:2) closed for zone transfer of eurodns.com.
 45.435: eurodns.com INFO Legacy name server ID for ns1.eurodns.com (2001:b20:1001:4:0:0:0:2): hostname.bind = ns1-f.eurodns.com
 45.532: eurodns.com INFO Legacy name server ID for ns1.eurodns.com (2001:b20:1001:4:0:0:0:2): version.bind = Secured
 45.691: eurodns.com NOTICE No answer received from 2001:b20:1001:4:0:0:0:2 when querying for version.server/CH/TXT.
 45.691: eurodns.com INFO Done testing name server ns1.eurodns.com.
 45.691: eurodns.com INFO Begin testing name server ns2.eurodns.com.
 45.691: eurodns.com INFO Begin testing host ns2.eurodns.com.
 45.692: eurodns.com INFO Begin testing address 80.92.89.242.
 46.390: eurodns.com INFO Done testing address 80.92.89.242.
 46.390: eurodns.com INFO Begin testing address 2001:b20:1001:11:0:0:0:242.
 47.133: eurodns.com INFO Done testing address 2001:b20:1001:11:0:0:0:242.
 47.133: eurodns.com INFO Done testing host ns2.eurodns.com.
 47.187: eurodns.com INFO Name server ns2.eurodns.com (80.92.89.242) answers queries over UDP.
 47.286: eurodns.com INFO Name server ns2.eurodns.com (80.92.89.242) answers queries over TCP.
 47.336: eurodns.com INFO Name server ns2.eurodns.com (80.92.89.242) is not recursive.
 47.573: eurodns.com INFO Name server ns2.eurodns.com (80.92.89.242) authoritative for eurodns.com.
 47.722: eurodns.com INFO Name server ns2.eurodns.com (80.92.89.242) closed for zone transfer of eurodns.com.
 47.767: eurodns.com INFO Legacy name server ID for ns2.eurodns.com (80.92.89.242): hostname.bind = ns2-b.eurodns.com
 47.814: eurodns.com INFO Legacy name server ID for ns2.eurodns.com (80.92.89.242): version.bind = Secured
 47.906: eurodns.com NOTICE No answer received from 80.92.89.242 when querying for version.server/CH/TXT.
 47.981: eurodns.com INFO Name server ns2.eurodns.com (2001:b20:1001:11:0:0:0:242) answers queries over UDP.
 48.116: eurodns.com INFO Name server ns2.eurodns.com (2001:b20:1001:11:0:0:0:242) answers queries over TCP.
 48.192: eurodns.com INFO Name server ns2.eurodns.com (2001:b20:1001:11:0:0:0:242) is not recursive.
 48.486: eurodns.com INFO Name server ns2.eurodns.com (2001:b20:1001:11:0:0:0:242) authoritative for eurodns.com.
 48.734: eurodns.com INFO Name server ns2.eurodns.com (2001:b20:1001:11:0:0:0:242) closed for zone transfer of eurodns.com.
 48.811: eurodns.com INFO Legacy name server ID for ns2.eurodns.com (2001:b20:1001:11:0:0:0:242): hostname.bind = ns2-a.eurodns.com
 48.909: eurodns.com INFO Legacy name server ID for ns2.eurodns.com (2001:b20:1001:11:0:0:0:242): version.bind = Secured
 49.054: eurodns.com NOTICE No answer received from 2001:b20:1001:11:0:0:0:242 when querying for version.server/CH/TXT.
 49.055: eurodns.com INFO Done testing name server ns2.eurodns.com.
 49.055: eurodns.com INFO Begin testing name server ns3.eurodns.com.
 49.055: eurodns.com INFO Begin testing host ns3.eurodns.com.
 49.055: eurodns.com INFO Begin testing address 46.105.158.142.
 54.686: eurodns.com INFO Done testing address 46.105.158.142.
 54.686: eurodns.com INFO Begin testing address 2001:41d0:2:e0e9:0:0:0:1.
 55.305: eurodns.com INFO Done testing address 2001:41d0:2:e0e9:0:0:0:1.
 55.305: eurodns.com INFO Done testing host ns3.eurodns.com.
 55.358: eurodns.com INFO Name server ns3.eurodns.com (46.105.158.142) answers queries over UDP.
 55.433: eurodns.com INFO Name server ns3.eurodns.com (46.105.158.142) answers queries over TCP.
 55.475: eurodns.com INFO Name server ns3.eurodns.com (46.105.158.142) is not recursive.
 55.621: eurodns.com INFO Name server ns3.eurodns.com (46.105.158.142) authoritative for eurodns.com.
 55.724: eurodns.com INFO Name server ns3.eurodns.com (46.105.158.142) closed for zone transfer of eurodns.com.
 55.761: eurodns.com INFO Legacy name server ID for ns3.eurodns.com (46.105.158.142): hostname.bind = ns3-c
 55.798: eurodns.com INFO Legacy name server ID for ns3.eurodns.com (46.105.158.142): version.bind = Secured
 55.874: eurodns.com NOTICE No answer received from 46.105.158.142 when querying for version.server/CH/TXT.
 55.959: eurodns.com INFO Name server ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1) answers queries over UDP.
 56.107: eurodns.com INFO Name server ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1) answers queries over TCP.
 56.186: eurodns.com INFO Name server ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1) is not recursive.
 56.488: eurodns.com INFO Name server ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1) authoritative for eurodns.com.
 56.700: eurodns.com INFO Name server ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1) closed for zone transfer of eurodns.com.
 56.772: eurodns.com INFO Legacy name server ID for ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1): hostname.bind = ns3-c
 56.845: eurodns.com INFO Legacy name server ID for ns3.eurodns.com (2001:41d0:2:e0e9:0:0:0:1): version.bind = Secured
 57.033: eurodns.com NOTICE No answer received from 2001:41d0:2:e0e9:0:0:0:1 when querying for version.server/CH/TXT.
 57.033: eurodns.com INFO Done testing name server ns3.eurodns.com.
 57.033: eurodns.com INFO Begin testing name server ns4.eurodns.com.
 57.033: eurodns.com INFO Begin testing host ns4.eurodns.com.
 57.033: eurodns.com INFO Begin testing address 192.174.68.100.
 83.552: eurodns.com INFO Done testing address 192.174.68.100.
 83.552: eurodns.com INFO Begin testing address 2001:67c:1bc:0:0:0:0:100.
 85.071: eurodns.com INFO Done testing address 2001:67c:1bc:0:0:0:0:100.
 85.071: eurodns.com INFO Done testing host ns4.eurodns.com.
 85.239: eurodns.com INFO Name server ns4.eurodns.com (192.174.68.100) answers queries over UDP.
 85.330: eurodns.com INFO Name server ns4.eurodns.com (192.174.68.100) answers queries over TCP.
 85.382: eurodns.com INFO Name server ns4.eurodns.com (192.174.68.100) is not recursive.
 85.582: eurodns.com INFO Name server ns4.eurodns.com (192.174.68.100) authoritative for eurodns.com.
 85.694: eurodns.com INFO Name server ns4.eurodns.com (192.174.68.100) closed for zone transfer of eurodns.com.
 85.797: eurodns.com INFO Legacy name server ID for ns4.eurodns.com (192.174.68.100): version.bind = reg-fra1
 86.059: eurodns.com INFO Name server ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100) answers queries over UDP.
 86.183: eurodns.com INFO Name server ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100) answers queries over TCP.
 86.243: eurodns.com INFO Name server ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100) is not recursive.
 86.555: eurodns.com INFO Name server ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100) authoritative for eurodns.com.
 86.666: eurodns.com INFO Name server ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100) closed for zone transfer of eurodns.com.
 86.809: eurodns.com INFO Legacy name server ID for ns4.eurodns.com (2001:67c:1bc:0:0:0:0:100): version.bind = reg-fra1
 87.028: eurodns.com INFO Done testing name server ns4.eurodns.com.
 87.028: eurodns.com INFO Begin testing zone consistency for eurodns.com.
 87.292: eurodns.com INFO SOA at address 46.105.158.142 has serial 2013060500.
 87.391: eurodns.com INFO SOA at address 2001:b20:1001:4:0:0:0:2 has serial 2013060500.
 87.439: eurodns.com INFO SOA at address 80.92.89.242 has serial 2013060500.
 87.518: eurodns.com INFO SOA at address 2001:67c:1bc:0:0:0:0:100 has serial 2013060500.
 87.590: eurodns.com INFO SOA at address 2001:41d0:2:e0e9:0:0:0:1 has serial 2013060500.
 87.675: eurodns.com INFO SOA at address 2001:b20:1001:11:0:0:0:242 has serial 2013060500.
 87.727: eurodns.com INFO SOA at address 80.92.65.2 has serial 2013060500.
 87.795: eurodns.com INFO SOA at address 192.174.68.100 has serial 2013060500.
 87.795: eurodns.com INFO All SOA records have consistent serial numbers.
 87.795: eurodns.com INFO All other fields in the SOA record are consistent among all name servers.
 88.454: eurodns.com NOTICE The listed nameservers for eurodns.com all report the same set of nameservers.
 88.471: eurodns.com INFO Done testing zone consistency for eurodns.com.
 88.471: eurodns.com INFO Begin testing SOA parameters for eurodns.com.
 88.530: eurodns.com INFO Found SOA record for eurodns.com.
 88.531: eurodns.com INFO Begin testing host ns1.eurodns.com.
 88.531: eurodns.com INFO Begin testing address 80.92.65.2.
 88.532: eurodns.com INFO Done testing address 80.92.65.2.
 88.532: eurodns.com INFO Begin testing address 2001:b20:1001:4:0:0:0:2.
 88.542: eurodns.com INFO Done testing address 2001:b20:1001:4:0:0:0:2.
 88.542: eurodns.com INFO Done testing host ns1.eurodns.com.
 88.542: eurodns.com INFO SOA MNAME for eurodns.com valid (ns1.eurodns.com).
 88.542: eurodns.com INFO SOA MNAME for eurodns.com (ns1.eurodns.com) listed as NS.
 88.597: eurodns.com INFO SOA MNAME for eurodns.com (ns1.eurodns.com) is authoritative.
 88.673: eurodns.com INFO SOA MNAME for eurodns.com (ns1.eurodns.com) is authoritative.
 88.674: eurodns.com INFO Begin testing email address hostmaster@eurodns.com.
 89.383: eurodns.com INFO Mail exchangers for hostmaster@eurodns.com found mail.eurodns.com.
 89.383: eurodns.com INFO All mail servers for hostmaster@eurodns.com are in zone eurodns.com.
 89.384: eurodns.com INFO Begin testing host mail.eurodns.com.
 91.003: eurodns.com INFO Begin testing address 80.92.65.31.
 92.240: eurodns.com INFO Done testing address 80.92.65.31.
 92.240: eurodns.com INFO Done testing host mail.eurodns.com.
 92.934: eurodns.com INFO Done testing email address hostmaster@eurodns.com.
 92.935: eurodns.com INFO Successful attempt to deliver email for SOA RNAME of eurodns.com (hostmaster.eurodns.com) using hostmaster@eurodns.com.
 92.935: eurodns.com INFO SOA TTL for eurodns.com OK (86400) - recommended >= 3600.
 92.935: eurodns.com INFO SOA refresh for eurodns.com OK (86400) - recommended >= 14400.
 92.935: eurodns.com INFO SOA retry for eurodns.com OK (7200) - recommended >= 3600.
 92.935: eurodns.com INFO SOA expire for eurodns.com OK (604800) - recommended >= 604800.
 92.935: eurodns.com INFO SOA minimum for eurodns.com OK (86400) - recommended between 300 and 86400.
 92.935: eurodns.com INFO Done testing SOA parameters for eurodns.com.
 92.935: eurodns.com INFO Begin testing connectivity for eurodns.com.
 96.852: eurodns.com INFO Zone announced by more than one ASN.
100.063: eurodns.com INFO Zone announced by more than one IPv6 ASN.
100.063: eurodns.com INFO Done testing connectivity for eurodns.com.
100.064: eurodns.com INFO Begin testing DNSSEC for eurodns.com.
100.224: eurodns.com INFO Did not find DS record for eurodns.com at parent.
101.156: eurodns.com INFO Servers for eurodns.com have consistent extra processing status.
101.232: eurodns.com INFO Authenticated denial records not found for eurodns.com.
101.269: eurodns.com INFO Did not find DNSKEY record for eurodns.com at child.
101.270: eurodns.com INFO No DNSKEY(s) found at child, other tests skipped.
101.270: eurodns.com INFO Done testing DNSSEC for eurodns.com.
101.271: eurodns.com INFO Test completed for zone eurodns.com.
