  0.000: name.com INFO Begin testing zone name.com with version 1.5.0.
  0.001: name.com INFO Begin testing delegation for name.com.
 23.243: name.com INFO Name servers listed at parent: dns01.name.com,dns02.name.com,ns1.name.com,ns3.name.com
 29.002: name.com INFO Name servers listed at child: dns01.name.com,dns02.name.com,ns1.name.com,ns3.name.com
 29.431: name.com INFO Parent glue for name.com found: dns01.name.com (209.112.113.33)
 29.629: name.com INFO Parent glue for name.com found: dns01.name.com (2001:500:7967:0:0:0:2:33)
 29.813: name.com INFO Parent glue for name.com found: dns02.name.com (209.112.114.33)
 30.023: name.com INFO Parent glue for name.com found: dns02.name.com (2001:500:7967:0:0:0:2:33)
 30.268: name.com INFO Parent glue for name.com found: ns1.name.com (184.173.68.159)
 30.447: name.com INFO Parent glue for name.com found: ns1.name.com (2607:f0d0:1101:16f:0:0:0:2)
 30.499: name.com INFO Parent glue for name.com found: ns3.name.com (184.173.144.32)
 30.631: name.com INFO Parent glue for name.com found: ns3.name.com (2607:f0d0:3003:0:0:0:0:2)
 30.631: name.com INFO Checking glue for dns01.name.com (209.112.113.33).
 30.952: name.com INFO Child glue for name.com found: dns01.name.com (209.112.113.33)
 30.952: name.com INFO Checking glue for dns01.name.com (2001:500:7967:0:0:0:2:33).
 31.279: name.com INFO Child glue for name.com found: dns01.name.com (2001:500:7967:0:0:0:2:33)
 31.280: name.com INFO Checking glue for dns02.name.com (209.112.114.33).
 31.567: name.com INFO Child glue for name.com found: dns02.name.com (209.112.114.33)
 31.570: name.com INFO Checking glue for dns02.name.com (2001:500:7967:0:0:0:2:33).
 31.870: name.com INFO Child glue for name.com found: dns02.name.com (2001:500:7967:0:0:0:2:33)
 31.879: name.com INFO Checking glue for ns1.name.com (184.173.68.159).
 32.232: name.com INFO Child glue for name.com found: ns1.name.com (184.173.68.159)
 32.232: name.com INFO Checking glue for ns1.name.com (2607:f0d0:1101:16f:0:0:0:2).
 32.540: name.com INFO Child glue for name.com found: ns1.name.com (2607:f0d0:1101:16f:0:0:0:2)
 32.540: name.com INFO Checking glue for ns3.name.com (184.173.144.32).
 32.853: name.com INFO Child glue for name.com found: ns3.name.com (184.173.144.32)
 32.853: name.com INFO Checking glue for ns3.name.com (2607:f0d0:3003:0:0:0:0:2).
 33.226: name.com INFO Child glue for name.com found: ns3.name.com (2607:f0d0:3003:0:0:0:0:2)
 33.243: name.com INFO Parent glue for name.com found: dns01.name.com (209.112.113.33)
 33.244: name.com INFO Parent glue for name.com found: dns01.name.com (2001:500:7967:0:0:0:2:33)
 33.244: name.com INFO Parent glue for name.com found: dns02.name.com (209.112.114.33)
 33.244: name.com INFO Parent glue for name.com found: dns02.name.com (2001:500:7967:0:0:0:2:33)
 33.244: name.com INFO Parent glue for name.com found: ns1.name.com (184.173.68.159)
 33.244: name.com INFO Parent glue for name.com found: ns1.name.com (2607:f0d0:1101:16f:0:0:0:2)
 33.245: name.com INFO Parent glue for name.com found: ns3.name.com (184.173.144.32)
 33.245: name.com INFO Parent glue for name.com found: ns3.name.com (2607:f0d0:3003:0:0:0:0:2)
 33.386: name.com INFO It is possible to build a referral packet for name.com that works without EDNS0.
 33.386: name.com INFO Done testing delegation for name.com.
 33.387: name.com INFO Begin testing name server dns01.name.com.
 33.388: name.com INFO Begin testing host dns01.name.com.
 33.388: name.com INFO Begin testing address 209.112.113.33.
 46.060: name.com INFO Done testing address 209.112.113.33.
 46.060: name.com INFO Begin testing address 2001:500:7967:0:0:0:2:33.
 57.270: name.com INFO Done testing address 2001:500:7967:0:0:0:2:33.
 57.270: name.com INFO Done testing host dns01.name.com.
 57.580: name.com INFO Name server dns01.name.com (209.112.113.33) answers queries over UDP.
 58.167: name.com INFO Name server dns01.name.com (209.112.113.33) answers queries over TCP.
 58.462: name.com INFO Name server dns01.name.com (209.112.113.33) is not recursive.
 59.684: name.com INFO Name server dns01.name.com (209.112.113.33) authoritative for name.com.
 60.526: name.com INFO Name server dns01.name.com (209.112.113.33) closed for zone transfer of name.com.
 60.810: name.com NOTICE No answer received from 209.112.113.33 when querying for hostname.bind/CH/TXT.
 61.098: name.com NOTICE No answer received from 209.112.113.33 when querying for version.bind/CH/TXT.
 61.385: name.com NOTICE No answer received from 209.112.113.33 when querying for id.server/CH/TXT.
 61.674: name.com NOTICE No answer received from 209.112.113.33 when querying for version.server/CH/TXT.
 61.861: name.com INFO Name server dns01.name.com (2001:500:7967:0:0:0:2:33) answers queries over UDP.
 62.136: name.com INFO Name server dns01.name.com (2001:500:7967:0:0:0:2:33) answers queries over TCP.
 62.244: name.com INFO Name server dns01.name.com (2001:500:7967:0:0:0:2:33) is not recursive.
 62.859: name.com INFO Name server dns01.name.com (2001:500:7967:0:0:0:2:33) authoritative for name.com.
 63.072: name.com INFO Name server dns01.name.com (2001:500:7967:0:0:0:2:33) closed for zone transfer of name.com.
 63.152: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for hostname.bind/CH/TXT.
 63.267: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for version.bind/CH/TXT.
 63.335: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for id.server/CH/TXT.
 63.423: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for version.server/CH/TXT.
 63.424: name.com INFO Done testing name server dns01.name.com.
 63.424: name.com INFO Begin testing name server dns02.name.com.
 63.424: name.com INFO Begin testing host dns02.name.com.
 63.424: name.com INFO Begin testing address 209.112.114.33.
 74.347: name.com INFO Done testing address 209.112.114.33.
 74.347: name.com INFO Begin testing address 2001:500:7967:0:0:0:2:33.
 74.349: name.com INFO Done testing address 2001:500:7967:0:0:0:2:33.
 74.349: name.com INFO Done testing host dns02.name.com.
 74.485: name.com INFO Name server dns02.name.com (209.112.114.33) answers queries over UDP.
 74.574: name.com INFO Name server dns02.name.com (209.112.114.33) answers queries over TCP.
 74.662: name.com INFO Name server dns02.name.com (209.112.114.33) is not recursive.
 75.279: name.com INFO Name server dns02.name.com (209.112.114.33) authoritative for name.com.
 75.337: name.com INFO Name server dns02.name.com (209.112.114.33) closed for zone transfer of name.com.
 75.373: name.com NOTICE No answer received from 209.112.114.33 when querying for hostname.bind/CH/TXT.
 75.427: name.com NOTICE No answer received from 209.112.114.33 when querying for version.bind/CH/TXT.
 75.450: name.com NOTICE No answer received from 209.112.114.33 when querying for id.server/CH/TXT.
 75.516: name.com NOTICE No answer received from 209.112.114.33 when querying for version.server/CH/TXT.
 75.795: name.com INFO Name server dns02.name.com (2001:500:7967:0:0:0:2:33) answers queries over UDP.
 75.912: name.com INFO Name server dns02.name.com (2001:500:7967:0:0:0:2:33) answers queries over TCP.
 76.080: name.com INFO Name server dns02.name.com (2001:500:7967:0:0:0:2:33) is not recursive.
 76.589: name.com INFO Name server dns02.name.com (2001:500:7967:0:0:0:2:33) authoritative for name.com.
 76.690: name.com INFO Name server dns02.name.com (2001:500:7967:0:0:0:2:33) closed for zone transfer of name.com.
 76.725: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for hostname.bind/CH/TXT.
 76.780: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for version.bind/CH/TXT.
 76.823: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for id.server/CH/TXT.
 76.859: name.com NOTICE No answer received from 2001:500:7967:0:0:0:2:33 when querying for version.server/CH/TXT.
 76.860: name.com INFO Done testing name server dns02.name.com.
 76.860: name.com INFO Begin testing name server ns1.name.com.
 76.860: name.com INFO Begin testing host ns1.name.com.
 76.860: name.com INFO Begin testing address 184.173.68.159.
 80.057: name.com INFO Done testing address 184.173.68.159.
 80.057: name.com INFO Begin testing address 2607:f0d0:1101:16f:0:0:0:2.
 80.872: name.com INFO Done testing address 2607:f0d0:1101:16f:0:0:0:2.
 80.872: name.com INFO Done testing host ns1.name.com.
 81.033: name.com INFO Name server ns1.name.com (184.173.68.159) answers queries over UDP.
 81.509: name.com INFO Name server ns1.name.com (184.173.68.159) answers queries over TCP.
 81.687: name.com INFO Name server ns1.name.com (184.173.68.159) is not recursive.
 82.496: name.com INFO Name server ns1.name.com (184.173.68.159) authoritative for name.com.
 83.147: name.com INFO Name server ns1.name.com (184.173.68.159) closed for zone transfer of name.com.
 83.478: name.com NOTICE No answer received from 184.173.68.159 when querying for version.bind/CH/TXT.
 83.984: name.com INFO Name server ns1.name.com (2607:f0d0:1101:16f:0:0:0:2) answers queries over UDP.
 84.427: name.com INFO Name server ns1.name.com (2607:f0d0:1101:16f:0:0:0:2) answers queries over TCP.
 84.582: name.com INFO Name server ns1.name.com (2607:f0d0:1101:16f:0:0:0:2) is not recursive.
 85.412: name.com INFO Name server ns1.name.com (2607:f0d0:1101:16f:0:0:0:2) authoritative for name.com.
 86.008: name.com INFO Name server ns1.name.com (2607:f0d0:1101:16f:0:0:0:2) closed for zone transfer of name.com.
 86.360: name.com NOTICE No answer received from 2607:f0d0:1101:16f:0:0:0:2 when querying for version.bind/CH/TXT.
 86.677: name.com INFO Done testing name server ns1.name.com.
 86.677: name.com INFO Begin testing name server ns3.name.com.
 86.677: name.com INFO Begin testing host ns3.name.com.
 86.679: name.com INFO Begin testing address 184.173.144.32.
 87.393: name.com INFO Done testing address 184.173.144.32.
 87.393: name.com INFO Begin testing address 2607:f0d0:3003:0:0:0:0:2.
 88.020: name.com INFO Done testing address 2607:f0d0:3003:0:0:0:0:2.
 88.020: name.com INFO Done testing host ns3.name.com.
 88.244: name.com INFO Name server ns3.name.com (184.173.144.32) answers queries over UDP.
 88.620: name.com INFO Name server ns3.name.com (184.173.144.32) answers queries over TCP.
 88.748: name.com INFO Name server ns3.name.com (184.173.144.32) is not recursive.
 89.412: name.com INFO Name server ns3.name.com (184.173.144.32) authoritative for name.com.
 89.915: name.com INFO Name server ns3.name.com (184.173.144.32) closed for zone transfer of name.com.
 90.170: name.com NOTICE No answer received from 184.173.144.32 when querying for version.bind/CH/TXT.
 90.567: name.com INFO Name server ns3.name.com (2607:f0d0:3003:0:0:0:0:2) answers queries over UDP.
 90.912: name.com INFO Name server ns3.name.com (2607:f0d0:3003:0:0:0:0:2) answers queries over TCP.
 91.028: name.com INFO Name server ns3.name.com (2607:f0d0:3003:0:0:0:0:2) is not recursive.
 91.633: name.com INFO Name server ns3.name.com (2607:f0d0:3003:0:0:0:0:2) authoritative for name.com.
 92.095: name.com INFO Name server ns3.name.com (2607:f0d0:3003:0:0:0:0:2) closed for zone transfer of name.com.
 92.343: name.com NOTICE No answer received from 2607:f0d0:3003:0:0:0:0:2 when querying for version.bind/CH/TXT.
 92.570: name.com INFO Done testing name server ns3.name.com.
 92.571: name.com INFO Begin testing zone consistency for name.com.
 93.081: name.com INFO SOA at address 2607:f0d0:1101:16f:0:0:0:2 has serial 2013072182.
 93.451: name.com INFO SOA at address 209.112.113.33 has serial 2013072182.
 93.568: name.com INFO SOA at address 2607:f0d0:3003:0:0:0:0:2 has serial 2013072182.
 93.692: name.com INFO SOA at address 184.173.144.32 has serial 2013072182.
 93.808: name.com INFO SOA at address 209.112.114.33 has serial 2013072182.
 93.961: name.com INFO SOA at address 2001:500:7967:0:0:0:2:33 has serial 2013072182.
 94.168: name.com INFO SOA at address 184.173.68.159 has serial 2013072182.
 94.168: name.com INFO All SOA records have consistent serial numbers.
 94.168: name.com INFO All other fields in the SOA record are consistent among all name servers.
 95.593: name.com NOTICE The listed nameservers for name.com all report the same set of nameservers.
 95.594: name.com INFO Done testing zone consistency for name.com.
 95.594: name.com INFO Begin testing SOA parameters for name.com.
 95.890: name.com INFO Found SOA record for name.com.
 95.890: name.com INFO Begin testing host ns1.name.com.
 95.890: name.com INFO Begin testing address 184.173.68.159.
 95.947: name.com INFO Done testing address 184.173.68.159.
 95.947: name.com INFO Begin testing address 2607:f0d0:1101:16f:0:0:0:2.
 95.948: name.com INFO Done testing address 2607:f0d0:1101:16f:0:0:0:2.
 95.949: name.com INFO Done testing host ns1.name.com.
 95.949: name.com INFO SOA MNAME for name.com valid (ns1.name.com).
 95.949: name.com INFO SOA MNAME for name.com (ns1.name.com) listed as NS.
 96.182: name.com INFO SOA MNAME for name.com (ns1.name.com) is authoritative.
 96.345: name.com INFO SOA MNAME for name.com (ns1.name.com) is authoritative.
 96.345: name.com INFO Begin testing email address support@name.com.
 97.074: name.com INFO Mail exchangers for support@name.com found aspmx.l.google.com,alt1.aspmx.l.google.com,alt2.aspmx.l.google.com,aspmx5.googlemail.com,aspmx2.googlemail.com,aspmx3.googlemail.com,aspmx4.googlemail.com.
 97.074: name.com INFO Begin testing host aspmx.l.google.com.
 98.552: name.com INFO Begin testing address 74.125.143.27.
100.617: name.com INFO Done testing address 74.125.143.27.
100.618: name.com INFO Begin testing address 2a00:1450:4010:c04:0:0:0:1b.
108.871: name.com INFO Done testing address 2a00:1450:4010:c04:0:0:0:1b.
108.871: name.com INFO Done testing host aspmx.l.google.com.
108.891: name.com INFO Begin testing host alt1.aspmx.l.google.com.
110.125: name.com INFO Begin testing address 173.194.64.27.
111.684: name.com INFO Done testing address 173.194.64.27.
111.684: name.com INFO Begin testing address 2607:f8b0:4003:c02:0:0:0:1b.
113.344: name.com INFO Done testing address 2607:f8b0:4003:c02:0:0:0:1b.
113.345: name.com INFO Done testing host alt1.aspmx.l.google.com.
113.345: name.com INFO Begin testing host alt2.aspmx.l.google.com.
114.401: name.com INFO Begin testing address 74.125.140.26.
115.845: name.com INFO Done testing address 74.125.140.26.
115.845: name.com INFO Begin testing address 2607:f8b0:4002:c04:0:0:0:1a.
117.600: name.com INFO Done testing address 2607:f8b0:4002:c04:0:0:0:1a.
117.600: name.com INFO Done testing host alt2.aspmx.l.google.com.
117.600: name.com INFO Begin testing host aspmx5.googlemail.com.
118.694: name.com INFO Begin testing address 173.194.73.26.
120.300: name.com INFO Done testing address 173.194.73.26.
120.300: name.com INFO Begin testing address 2607:f8b0:400c:c01:0:0:0:1a.
122.153: name.com INFO Done testing address 2607:f8b0:400c:c01:0:0:0:1a.
122.153: name.com INFO Done testing host aspmx5.googlemail.com.
122.154: name.com INFO Begin testing host aspmx2.googlemail.com.
123.255: name.com INFO Begin testing address 173.194.64.27.
123.707: name.com INFO Done testing address 173.194.64.27.
123.708: name.com INFO Begin testing address 2607:f8b0:4003:c02:0:0:0:1b.
124.377: name.com INFO Done testing address 2607:f8b0:4003:c02:0:0:0:1b.
124.377: name.com INFO Done testing host aspmx2.googlemail.com.
124.377: name.com INFO Begin testing host aspmx3.googlemail.com.
125.329: name.com INFO Begin testing address 74.125.140.27.
127.252: name.com INFO Done testing address 74.125.140.27.
127.252: name.com INFO Begin testing address 2607:f8b0:4002:c04:0:0:0:1b.
128.637: name.com INFO Done testing address 2607:f8b0:4002:c04:0:0:0:1b.
128.637: name.com INFO Done testing host aspmx3.googlemail.com.
128.638: name.com INFO Begin testing host aspmx4.googlemail.com.
130.007: name.com INFO Begin testing address 173.194.74.27.
131.648: name.com INFO Done testing address 173.194.74.27.
131.648: name.com INFO Begin testing address 2607:f8b0:400d:c02:0:0:0:1b.
133.233: name.com INFO Done testing address 2607:f8b0:400d:c02:0:0:0:1b.
133.233: name.com INFO Done testing host aspmx4.googlemail.com.
133.239: name.com INFO Done testing email address support@name.com.
133.239: name.com INFO Successful attempt to deliver email for SOA RNAME of name.com (support.name.com) using support@name.com.
133.240: name.com INFO SOA TTL for name.com OK (86400) - recommended >= 3600.
133.240: name.com NOTICE SOA refresh for name.com too small (10800) - recommended >= 14400.
133.240: name.com INFO SOA retry for name.com OK (3600) - recommended >= 3600.
133.240: name.com INFO SOA expire for name.com OK (604800) - recommended >= 604800.
133.240: name.com INFO SOA minimum for name.com OK (300) - recommended between 300 and 86400.
133.240: name.com INFO Done testing SOA parameters for name.com.
133.241: name.com INFO Begin testing connectivity for name.com.
136.338: name.com INFO Zone announced by more than one ASN.
139.294: name.com INFO Zone announced by more than one IPv6 ASN.
139.294: name.com INFO Done testing connectivity for name.com.
139.294: name.com INFO Begin testing DNSSEC for name.com.
139.615: name.com INFO Did not find DS record for name.com at parent.
141.961: name.com INFO Servers for name.com have consistent extra processing status.
142.668: name.com INFO Authenticated denial records not found for name.com.
142.954: name.com INFO Did not find DNSKEY record for name.com at child.
142.954: name.com INFO No DNSKEY(s) found at child, other tests skipped.
142.954: name.com INFO Done testing DNSSEC for name.com.
142.959: name.com INFO Test completed for zone name.com.
