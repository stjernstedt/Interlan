  0.000: perho.com INFO Begin testing zone perho.com with version 1.5.0.
  1.871: perho.com INFO Begin testing delegation for perho.com.
 81.835: perho.com INFO Name servers listed at parent: ns.kase.fi,ns2.kase.fi
 93.555: perho.com INFO Name servers listed at child: ns.kase.fi,ns2.kase.fi
 97.053: perho.com INFO It is possible to build a referral packet for perho.com that works without EDNS0.
 97.054: perho.com INFO Previously used name servers for perho.com: 
 97.054: perho.com INFO Done testing delegation for perho.com.
 97.055: perho.com INFO Begin testing name server ns.kase.fi.
 97.055: perho.com INFO Begin testing host ns.kase.fi.
 97.303: perho.com INFO Begin testing address 89.190.2.2.
121.339: perho.com INFO Done testing address 89.190.2.2.
121.339: perho.com INFO Begin testing address 2a03:7c00:feed:beef:0:0:0:babe.
124.374: perho.com INFO Done testing address 2a03:7c00:feed:beef:0:0:0:babe.
124.375: perho.com INFO Done testing host ns.kase.fi.
124.842: perho.com INFO Name server ns.kase.fi (89.190.2.2) answers queries over UDP.
125.282: perho.com INFO Name server ns.kase.fi (89.190.2.2) answers queries over TCP.
125.776: perho.com INFO Name server ns.kase.fi (89.190.2.2) is not recursive.
127.040: perho.com INFO Name server ns.kase.fi (89.190.2.2) authoritative for perho.com.
127.311: perho.com INFO Name server ns.kase.fi (89.190.2.2) closed for zone transfer of perho.com.
127.540: perho.com NOTICE No answer received from 89.190.2.2 when querying for hostname.bind/CH/TXT.
127.760: perho.com NOTICE No answer received from 89.190.2.2 when querying for version.bind/CH/TXT.
127.996: perho.com NOTICE No answer received from 89.190.2.2 when querying for id.server/CH/TXT.
128.227: perho.com NOTICE No answer received from 89.190.2.2 when querying for version.server/CH/TXT.
128.716: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) answers queries over UDP.
129.213: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) answers queries over TCP.
129.624: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) is not recursive.
130.974: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) authoritative for perho.com.
131.405: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) closed for zone transfer of perho.com.
131.692: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for hostname.bind/CH/TXT.
132.208: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for version.bind/CH/TXT.
132.463: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for id.server/CH/TXT.
132.756: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for version.server/CH/TXT.
132.756: perho.com INFO Done testing name server ns.kase.fi.
132.756: perho.com INFO Begin testing name server ns2.kase.fi.
132.756: perho.com INFO Begin testing host ns2.kase.fi.
132.756: perho.com INFO Begin testing address 89.190.3.2.
135.182: perho.com INFO Done testing address 89.190.3.2.
135.182: perho.com INFO Begin testing address 2a03:7c00:feed:cafe:0:0:0:babe.
137.856: perho.com INFO Done testing address 2a03:7c00:feed:cafe:0:0:0:babe.
137.856: perho.com INFO Done testing host ns2.kase.fi.
138.194: perho.com INFO Name server ns2.kase.fi (89.190.3.2) answers queries over UDP.
138.812: perho.com INFO Name server ns2.kase.fi (89.190.3.2) answers queries over TCP.
139.096: perho.com INFO Name server ns2.kase.fi (89.190.3.2) is not recursive.
140.118: perho.com INFO Name server ns2.kase.fi (89.190.3.2) authoritative for perho.com.
140.505: perho.com INFO Name server ns2.kase.fi (89.190.3.2) closed for zone transfer of perho.com.
140.740: perho.com NOTICE No answer received from 89.190.3.2 when querying for hostname.bind/CH/TXT.
140.903: perho.com NOTICE No answer received from 89.190.3.2 when querying for version.bind/CH/TXT.
141.144: perho.com NOTICE No answer received from 89.190.3.2 when querying for id.server/CH/TXT.
141.377: perho.com NOTICE No answer received from 89.190.3.2 when querying for version.server/CH/TXT.
142.104: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) answers queries over UDP.
142.718: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) answers queries over TCP.
143.368: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) is not recursive.
145.662: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) authoritative for perho.com.
146.275: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) closed for zone transfer of perho.com.
146.652: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for hostname.bind/CH/TXT.
147.076: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for version.bind/CH/TXT.
147.700: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for id.server/CH/TXT.
148.100: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for version.server/CH/TXT.
148.100: perho.com INFO Done testing name server ns2.kase.fi.
148.100: perho.com INFO Begin testing zone consistency for perho.com.
149.018: perho.com INFO SOA at address 89.190.3.2 has serial 2013050601.
149.702: perho.com INFO SOA at address 2a03:7c00:feed:cafe:0:0:0:babe has serial 2013050601.
150.403: perho.com INFO SOA at address 2a03:7c00:feed:beef:0:0:0:babe has serial 2013050601.
151.131: perho.com INFO SOA at address 89.190.2.2 has serial 2013050601.
151.131: perho.com INFO All SOA records have consistent serial numbers.
151.131: perho.com INFO All other fields in the SOA record are consistent among all name servers.
153.781: perho.com NOTICE The listed nameservers for perho.com all report the same set of nameservers.
153.781: perho.com INFO Done testing zone consistency for perho.com.
153.782: perho.com INFO Begin testing SOA parameters for perho.com.
154.354: perho.com INFO Found SOA record for perho.com.
154.354: perho.com INFO Begin testing host ns.kase.fi.
154.771: perho.com INFO Begin testing address 89.190.2.2.
154.860: perho.com INFO Done testing address 89.190.2.2.
154.860: perho.com INFO Begin testing address 2a03:7c00:feed:beef:0:0:0:babe.
154.862: perho.com INFO Done testing address 2a03:7c00:feed:beef:0:0:0:babe.
154.862: perho.com INFO Done testing host ns.kase.fi.
154.862: perho.com INFO SOA MNAME for perho.com valid (ns.kase.fi).
154.862: perho.com INFO SOA MNAME for perho.com (ns.kase.fi) listed as NS.
155.486: perho.com INFO SOA MNAME for perho.com (ns.kase.fi) is authoritative.
156.126: perho.com INFO SOA MNAME for perho.com (ns.kase.fi) is authoritative.
156.126: perho.com INFO Begin testing email address hostmaster@kase.fi.
159.802: perho.com INFO Mail exchangers for hostmaster@kase.fi found filsu.kase.fi,mail.kase.fi.
159.802: perho.com INFO Begin testing host filsu.kase.fi.
165.486: perho.com INFO Begin testing address 89.190.3.9.
168.222: perho.com INFO Done testing address 89.190.3.9.
168.223: perho.com INFO Begin testing address 2a03:7c00:feed:cafe:0:0:0:25.
171.226: perho.com INFO Done testing address 2a03:7c00:feed:cafe:0:0:0:25.
171.226: perho.com INFO Done testing host filsu.kase.fi.
171.227: perho.com INFO Begin testing host mail.kase.fi.
178.001: perho.com INFO Begin testing address 89.190.2.10.
180.646: perho.com INFO Done testing address 89.190.2.10.
180.647: perho.com INFO Begin testing address 2a03:7c00:feed:beef:0:0:0:25.
184.646: perho.com INFO Done testing address 2a03:7c00:feed:beef:0:0:0:25.
184.647: perho.com INFO Done testing host mail.kase.fi.
184.647: perho.com INFO Done testing email address hostmaster@kase.fi.
184.647: perho.com INFO Successful attempt to deliver email for SOA RNAME of perho.com (hostmaster.kase.fi) using hostmaster@kase.fi.
184.747: perho.com INFO SOA TTL for perho.com OK (259200) - recommended >= 3600.
184.747: perho.com NOTICE SOA refresh for perho.com too small (3600) - recommended >= 14400.
184.747: perho.com NOTICE SOA retry for perho.com too small (1200) - recommended >= 3600.
184.748: perho.com INFO SOA expire for perho.com OK (3600000) - recommended >= 604800.
184.748: perho.com INFO SOA minimum for perho.com OK (86400) - recommended between 300 and 86400.
184.748: perho.com INFO Done testing SOA parameters for perho.com.
184.748: perho.com INFO Begin testing connectivity for perho.com.
191.149: perho.com NOTICE Zone announced by fewer than two IPv4 ASN.
198.398: perho.com NOTICE Zone announced by fewer than two IPv6 ASN.
198.398: perho.com INFO Done testing connectivity for perho.com.
198.398: perho.com INFO Begin testing DNSSEC for perho.com.
199.338: perho.com INFO Did not find DS record for perho.com at parent.
200.900: perho.com INFO Servers for perho.com have consistent extra processing status.
201.218: perho.com INFO Authenticated denial records not found for perho.com.
201.516: perho.com INFO Did not find DNSKEY record for perho.com at child.
201.516: perho.com INFO No DNSKEY(s) found at child, other tests skipped.
201.516: perho.com INFO Done testing DNSSEC for perho.com.
201.516: perho.com INFO Test completed for zone perho.com.
