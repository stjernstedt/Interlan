  0.000: markmonitor.com INFO Begin testing zone markmonitor.com with version 1.5.0.
  0.001: markmonitor.com INFO Begin testing delegation for markmonitor.com.
 24.034: markmonitor.com INFO Name servers listed at parent: ns1.markmonitor.com,ns2.markmonitor.com,ns3.markmonitor.com,ns4.markmonitor.com,ns5.markmonitor.com,ns6.markmonitor.com,ns7.markmonitor.com
 33.808: markmonitor.com INFO Name servers listed at child: ns1.markmonitor.com,ns2.markmonitor.com,ns3.markmonitor.com,ns4.markmonitor.com,ns5.markmonitor.com,ns6.markmonitor.com,ns7.markmonitor.com
 33.809: markmonitor.com NOTICE No IPv6 name servers found.
 34.172: markmonitor.com INFO Parent glue for markmonitor.com found: ns1.markmonitor.com (64.124.69.50)
 34.508: markmonitor.com INFO Parent glue for markmonitor.com found: ns2.markmonitor.com (209.66.70.22)
 34.851: markmonitor.com INFO Parent glue for markmonitor.com found: ns3.markmonitor.com (217.68.151.240)
 35.079: markmonitor.com INFO Parent glue for markmonitor.com found: ns4.markmonitor.com (217.68.151.241)
 35.184: markmonitor.com INFO Parent glue for markmonitor.com found: ns5.markmonitor.com (202.167.230.240)
 35.556: markmonitor.com INFO Parent glue for markmonitor.com found: ns6.markmonitor.com (202.167.230.241)
 35.806: markmonitor.com INFO Parent glue for markmonitor.com found: ns7.markmonitor.com (204.228.234.32)
 36.209: markmonitor.com INFO Checking glue for ns1.markmonitor.com (64.124.69.50).
 36.387: markmonitor.com INFO Child glue for markmonitor.com found: ns1.markmonitor.com (64.124.69.50)
 36.387: markmonitor.com INFO Checking glue for ns2.markmonitor.com (209.66.70.22).
 36.526: markmonitor.com INFO Child glue for markmonitor.com found: ns2.markmonitor.com (209.66.70.22)
 36.526: markmonitor.com INFO Checking glue for ns3.markmonitor.com (217.68.151.240).
 36.716: markmonitor.com INFO Child glue for markmonitor.com found: ns3.markmonitor.com (217.68.151.240)
 36.716: markmonitor.com INFO Checking glue for ns4.markmonitor.com (217.68.151.241).
 36.928: markmonitor.com INFO Child glue for markmonitor.com found: ns4.markmonitor.com (217.68.151.241)
 36.929: markmonitor.com INFO Checking glue for ns5.markmonitor.com (202.167.230.240).
 37.070: markmonitor.com INFO Child glue for markmonitor.com found: ns5.markmonitor.com (202.167.230.240)
 37.070: markmonitor.com INFO Checking glue for ns6.markmonitor.com (202.167.230.241).
 37.256: markmonitor.com INFO Child glue for markmonitor.com found: ns6.markmonitor.com (202.167.230.241)
 37.257: markmonitor.com INFO Checking glue for ns7.markmonitor.com (204.228.234.32).
 37.452: markmonitor.com INFO Child glue for markmonitor.com found: ns7.markmonitor.com (204.228.234.32)
 37.452: markmonitor.com INFO Parent glue for markmonitor.com found: ns1.markmonitor.com (64.124.69.50)
 37.453: markmonitor.com INFO Parent glue for markmonitor.com found: ns2.markmonitor.com (209.66.70.22)
 37.453: markmonitor.com INFO Parent glue for markmonitor.com found: ns3.markmonitor.com (217.68.151.240)
 37.453: markmonitor.com INFO Parent glue for markmonitor.com found: ns4.markmonitor.com (217.68.151.241)
 37.454: markmonitor.com INFO Parent glue for markmonitor.com found: ns5.markmonitor.com (202.167.230.240)
 37.454: markmonitor.com INFO Parent glue for markmonitor.com found: ns6.markmonitor.com (202.167.230.241)
 37.455: markmonitor.com INFO Parent glue for markmonitor.com found: ns7.markmonitor.com (204.228.234.32)
 42.652: markmonitor.com INFO It is possible to build a referral packet for markmonitor.com that works without EDNS0.
 42.652: markmonitor.com INFO Done testing delegation for markmonitor.com.
 42.652: markmonitor.com INFO Begin testing name server ns1.markmonitor.com.
 42.653: markmonitor.com INFO Begin testing host ns1.markmonitor.com.
 43.192: markmonitor.com INFO Begin testing address 64.124.69.50.
 58.091: markmonitor.com INFO Done testing address 64.124.69.50.
 58.091: markmonitor.com INFO Done testing host ns1.markmonitor.com.
 59.001: markmonitor.com INFO Name server ns1.markmonitor.com (64.124.69.50) answers queries over UDP.
 59.409: markmonitor.com INFO Name server ns1.markmonitor.com (64.124.69.50) answers queries over TCP.
 59.610: markmonitor.com INFO Name server ns1.markmonitor.com (64.124.69.50) is not recursive.
 60.468: markmonitor.com INFO Name server ns1.markmonitor.com (64.124.69.50) authoritative for markmonitor.com.
 61.023: markmonitor.com INFO Name server ns1.markmonitor.com (64.124.69.50) closed for zone transfer of markmonitor.com.
 61.215: markmonitor.com INFO Legacy name server ID for ns1.markmonitor.com (64.124.69.50): hostname.bind = lnx488
 61.786: markmonitor.com NOTICE No answer received from 64.124.69.50 when querying for version.server/CH/TXT.
 61.787: markmonitor.com INFO Done testing name server ns1.markmonitor.com.
 61.787: markmonitor.com INFO Begin testing name server ns2.markmonitor.com.
 61.787: markmonitor.com INFO Begin testing host ns2.markmonitor.com.
 62.764: markmonitor.com INFO Begin testing address 209.66.70.22.
 64.627: markmonitor.com INFO Done testing address 209.66.70.22.
 64.628: markmonitor.com INFO Done testing host ns2.markmonitor.com.
 65.664: markmonitor.com INFO Name server ns2.markmonitor.com (209.66.70.22) answers queries over UDP.
 66.025: markmonitor.com INFO Name server ns2.markmonitor.com (209.66.70.22) answers queries over TCP.
 66.222: markmonitor.com INFO Name server ns2.markmonitor.com (209.66.70.22) is not recursive.
 66.876: markmonitor.com INFO Name server ns2.markmonitor.com (209.66.70.22) authoritative for markmonitor.com.
 67.250: markmonitor.com INFO Name server ns2.markmonitor.com (209.66.70.22) closed for zone transfer of markmonitor.com.
 67.378: markmonitor.com INFO Legacy name server ID for ns2.markmonitor.com (209.66.70.22): hostname.bind = lnx489
 67.755: markmonitor.com NOTICE No answer received from 209.66.70.22 when querying for version.server/CH/TXT.
 67.755: markmonitor.com INFO Done testing name server ns2.markmonitor.com.
 67.755: markmonitor.com INFO Begin testing name server ns3.markmonitor.com.
 67.755: markmonitor.com INFO Begin testing host ns3.markmonitor.com.
 68.668: markmonitor.com INFO Begin testing address 217.68.151.240.
 86.733: markmonitor.com INFO Done testing address 217.68.151.240.
 86.733: markmonitor.com INFO Done testing host ns3.markmonitor.com.
 87.534: markmonitor.com INFO Name server ns3.markmonitor.com (217.68.151.240) answers queries over UDP.
 87.707: markmonitor.com INFO Name server ns3.markmonitor.com (217.68.151.240) answers queries over TCP.
 87.803: markmonitor.com INFO Name server ns3.markmonitor.com (217.68.151.240) is not recursive.
 88.196: markmonitor.com INFO Name server ns3.markmonitor.com (217.68.151.240) authoritative for markmonitor.com.
 88.301: markmonitor.com INFO Name server ns3.markmonitor.com (217.68.151.240) closed for zone transfer of markmonitor.com.
 88.337: markmonitor.com INFO Legacy name server ID for ns3.markmonitor.com (217.68.151.240): hostname.bind = lnx178
 88.512: markmonitor.com NOTICE No answer received from 217.68.151.240 when querying for version.server/CH/TXT.
 88.512: markmonitor.com INFO Done testing name server ns3.markmonitor.com.
 88.512: markmonitor.com INFO Begin testing name server ns4.markmonitor.com.
 88.513: markmonitor.com INFO Begin testing host ns4.markmonitor.com.
 89.576: markmonitor.com INFO Begin testing address 217.68.151.241.
 90.939: markmonitor.com INFO Done testing address 217.68.151.241.
 90.939: markmonitor.com INFO Done testing host ns4.markmonitor.com.
 91.763: markmonitor.com INFO Name server ns4.markmonitor.com (217.68.151.241) answers queries over UDP.
 91.890: markmonitor.com INFO Name server ns4.markmonitor.com (217.68.151.241) answers queries over TCP.
 92.003: markmonitor.com INFO Name server ns4.markmonitor.com (217.68.151.241) is not recursive.
 92.380: markmonitor.com INFO Name server ns4.markmonitor.com (217.68.151.241) authoritative for markmonitor.com.
 92.531: markmonitor.com INFO Name server ns4.markmonitor.com (217.68.151.241) closed for zone transfer of markmonitor.com.
 92.567: markmonitor.com INFO Legacy name server ID for ns4.markmonitor.com (217.68.151.241): hostname.bind = lnx179
 92.758: markmonitor.com NOTICE No answer received from 217.68.151.241 when querying for version.server/CH/TXT.
 92.758: markmonitor.com INFO Done testing name server ns4.markmonitor.com.
 92.759: markmonitor.com INFO Begin testing name server ns5.markmonitor.com.
 92.759: markmonitor.com INFO Begin testing host ns5.markmonitor.com.
 93.743: markmonitor.com INFO Begin testing address 202.167.230.240.
102.905: markmonitor.com INFO Done testing address 202.167.230.240.
102.905: markmonitor.com INFO Done testing host ns5.markmonitor.com.
104.260: markmonitor.com INFO Name server ns5.markmonitor.com (202.167.230.240) answers queries over UDP.
105.024: markmonitor.com INFO Name server ns5.markmonitor.com (202.167.230.240) answers queries over TCP.
105.378: markmonitor.com INFO Name server ns5.markmonitor.com (202.167.230.240) is not recursive.
106.948: markmonitor.com INFO Name server ns5.markmonitor.com (202.167.230.240) authoritative for markmonitor.com.
108.018: markmonitor.com INFO Name server ns5.markmonitor.com (202.167.230.240) closed for zone transfer of markmonitor.com.
108.375: markmonitor.com INFO Legacy name server ID for ns5.markmonitor.com (202.167.230.240): hostname.bind = lnx240
109.387: markmonitor.com NOTICE No answer received from 202.167.230.240 when querying for version.server/CH/TXT.
109.388: markmonitor.com INFO Done testing name server ns5.markmonitor.com.
109.388: markmonitor.com INFO Begin testing name server ns6.markmonitor.com.
109.388: markmonitor.com INFO Begin testing host ns6.markmonitor.com.
109.990: markmonitor.com INFO Begin testing address 202.167.230.241.
111.747: markmonitor.com INFO Done testing address 202.167.230.241.
111.747: markmonitor.com INFO Done testing host ns6.markmonitor.com.
112.761: markmonitor.com INFO Name server ns6.markmonitor.com (202.167.230.241) answers queries over UDP.
113.497: markmonitor.com INFO Name server ns6.markmonitor.com (202.167.230.241) answers queries over TCP.
113.853: markmonitor.com INFO Name server ns6.markmonitor.com (202.167.230.241) is not recursive.
115.372: markmonitor.com INFO Name server ns6.markmonitor.com (202.167.230.241) authoritative for markmonitor.com.
116.429: markmonitor.com INFO Name server ns6.markmonitor.com (202.167.230.241) closed for zone transfer of markmonitor.com.
116.769: markmonitor.com INFO Legacy name server ID for ns6.markmonitor.com (202.167.230.241): hostname.bind = lnx239
117.843: markmonitor.com NOTICE No answer received from 202.167.230.241 when querying for version.server/CH/TXT.
117.843: markmonitor.com INFO Done testing name server ns6.markmonitor.com.
117.844: markmonitor.com INFO Begin testing name server ns7.markmonitor.com.
117.844: markmonitor.com INFO Begin testing host ns7.markmonitor.com.
118.488: markmonitor.com INFO Begin testing address 204.228.234.32.
123.961: markmonitor.com INFO Done testing address 204.228.234.32.
123.961: markmonitor.com INFO Done testing host ns7.markmonitor.com.
124.663: markmonitor.com INFO Name server ns7.markmonitor.com (204.228.234.32) answers queries over UDP.
125.065: markmonitor.com INFO Name server ns7.markmonitor.com (204.228.234.32) answers queries over TCP.
125.279: markmonitor.com INFO Name server ns7.markmonitor.com (204.228.234.32) is not recursive.
126.083: markmonitor.com INFO Name server ns7.markmonitor.com (204.228.234.32) authoritative for markmonitor.com.
126.657: markmonitor.com INFO Name server ns7.markmonitor.com (204.228.234.32) closed for zone transfer of markmonitor.com.
126.869: markmonitor.com INFO Legacy name server ID for ns7.markmonitor.com (204.228.234.32): hostname.bind = lnx490
127.475: markmonitor.com NOTICE No answer received from 204.228.234.32 when querying for version.server/CH/TXT.
127.476: markmonitor.com INFO Done testing name server ns7.markmonitor.com.
127.476: markmonitor.com INFO Begin testing zone consistency for markmonitor.com.
135.833: markmonitor.com INFO SOA at address 202.167.230.241 has serial 2013070801.
136.041: markmonitor.com INFO SOA at address 204.228.234.32 has serial 2013070801.
136.263: markmonitor.com INFO SOA at address 209.66.70.22 has serial 2013070801.
136.640: markmonitor.com INFO SOA at address 202.167.230.240 has serial 2013070801.
136.695: markmonitor.com INFO SOA at address 217.68.151.240 has serial 2013070801.
136.747: markmonitor.com INFO SOA at address 217.68.151.241 has serial 2013070801.
137.015: markmonitor.com INFO SOA at address 64.124.69.50 has serial 2013070801.
137.016: markmonitor.com INFO All SOA records have consistent serial numbers.
137.016: markmonitor.com INFO All other fields in the SOA record are consistent among all name servers.
145.104: markmonitor.com NOTICE The listed nameservers for markmonitor.com all report the same set of nameservers.
145.104: markmonitor.com INFO Done testing zone consistency for markmonitor.com.
145.105: markmonitor.com INFO Begin testing SOA parameters for markmonitor.com.
145.234: markmonitor.com INFO Found SOA record for markmonitor.com.
145.234: markmonitor.com INFO Begin testing host ns1.markmonitor.com.
146.309: markmonitor.com INFO Begin testing address 64.124.69.50.
147.223: markmonitor.com INFO Done testing address 64.124.69.50.
147.223: markmonitor.com INFO Done testing host ns1.markmonitor.com.
147.223: markmonitor.com INFO SOA MNAME for markmonitor.com valid (ns1.markmonitor.com).
147.223: markmonitor.com INFO SOA MNAME for markmonitor.com (ns1.markmonitor.com) listed as NS.
148.508: markmonitor.com INFO SOA MNAME for markmonitor.com (ns1.markmonitor.com) is authoritative.
148.508: markmonitor.com INFO Begin testing email address hostmaster@markmonitor.com.
149.425: markmonitor.com INFO Mail exchangers for hostmaster@markmonitor.com found markmonitor.com.s7a1.psmtp.com,markmonitor.com.s7a2.psmtp.com,markmonitor.com.s7b1.psmtp.com,markmonitor.com.s7b2.psmtp.com.
149.425: markmonitor.com INFO Begin testing host markmonitor.com.s7a1.psmtp.com.
150.872: markmonitor.com INFO Begin testing address 64.18.6.10.
152.783: markmonitor.com INFO Done testing address 64.18.6.10.
152.783: markmonitor.com INFO Done testing host markmonitor.com.s7a1.psmtp.com.
153.377: markmonitor.com INFO Begin testing host markmonitor.com.s7a2.psmtp.com.
154.436: markmonitor.com INFO Begin testing address 64.18.6.11.
156.792: markmonitor.com INFO Done testing address 64.18.6.11.
156.792: markmonitor.com INFO Done testing host markmonitor.com.s7a2.psmtp.com.
157.598: markmonitor.com INFO Begin testing host markmonitor.com.s7b1.psmtp.com.
158.804: markmonitor.com INFO Begin testing address 64.18.6.13.
160.645: markmonitor.com INFO Done testing address 64.18.6.13.
160.645: markmonitor.com INFO Done testing host markmonitor.com.s7b1.psmtp.com.
161.322: markmonitor.com INFO Begin testing host markmonitor.com.s7b2.psmtp.com.
162.733: markmonitor.com INFO Begin testing address 64.18.6.14.
165.093: markmonitor.com INFO Done testing address 64.18.6.14.
165.093: markmonitor.com INFO Done testing host markmonitor.com.s7b2.psmtp.com.
165.803: markmonitor.com INFO Done testing email address hostmaster@markmonitor.com.
165.804: markmonitor.com INFO Successful attempt to deliver email for SOA RNAME of markmonitor.com (hostmaster.markmonitor.com) using hostmaster@markmonitor.com.
165.804: markmonitor.com INFO SOA TTL for markmonitor.com OK (10800) - recommended >= 3600.
165.804: markmonitor.com NOTICE SOA refresh for markmonitor.com too small (10800) - recommended >= 14400.
165.804: markmonitor.com INFO SOA retry for markmonitor.com OK (3600) - recommended >= 3600.
165.804: markmonitor.com INFO SOA expire for markmonitor.com OK (604800) - recommended >= 604800.
165.804: markmonitor.com INFO SOA minimum for markmonitor.com OK (10800) - recommended between 300 and 86400.
165.804: markmonitor.com INFO Done testing SOA parameters for markmonitor.com.
165.804: markmonitor.com INFO Begin testing connectivity for markmonitor.com.
171.547: markmonitor.com INFO Zone announced by more than one ASN.
171.575: markmonitor.com NOTICE Zone announced by fewer than two IPv6 ASN.
171.575: markmonitor.com INFO Done testing connectivity for markmonitor.com.
171.575: markmonitor.com INFO Begin testing DNSSEC for markmonitor.com.
172.223: markmonitor.com INFO Did not find DS record for markmonitor.com at parent.
174.755: markmonitor.com INFO Servers for markmonitor.com have consistent extra processing status.
175.003: markmonitor.com INFO Authenticated denial records not found for markmonitor.com.
175.129: markmonitor.com INFO Did not find DNSKEY record for markmonitor.com at child.
175.130: markmonitor.com INFO No DNSKEY(s) found at child, other tests skipped.
175.130: markmonitor.com INFO Done testing DNSSEC for markmonitor.com.
175.131: markmonitor.com INFO Test completed for zone markmonitor.com.
