  0.000: perho.com INFO Begin testing zone perho.com with version 1.6.1.
  0.405: perho.com INFO Begin testing delegation for perho.com.
 18.734: perho.com INFO Name servers listed at parent: ns.kase.fi,ns2.kase.fi
 19.663: perho.com INFO Name servers listed at child: ns.kase.fi,ns2.kase.fi
 20.394: perho.com INFO It is possible to build a referral packet for perho.com that works without EDNS0.
 20.394: perho.com INFO Previously used name servers for perho.com: 
 20.394: perho.com INFO Done testing delegation for perho.com.
 20.412: perho.com INFO Begin testing name server ns.kase.fi.
 20.412: perho.com INFO Begin testing host ns.kase.fi.
 20.413: perho.com INFO Begin testing address 89.190.2.2.
 25.534: perho.com INFO Done testing address 89.190.2.2.
 25.534: perho.com INFO Begin testing address 2a03:7c00:feed:beef:0:0:0:babe.
 26.146: perho.com INFO Done testing address 2a03:7c00:feed:beef:0:0:0:babe.
 26.146: perho.com INFO Done testing host ns.kase.fi.
 26.181: perho.com INFO Name server ns.kase.fi (89.190.2.2) answers queries over UDP.
 26.274: perho.com INFO Name server ns.kase.fi (89.190.2.2) answers queries over TCP.
 26.310: perho.com INFO Name server ns.kase.fi (89.190.2.2) is not recursive.
 26.479: perho.com INFO Name server ns.kase.fi (89.190.2.2) authoritative for perho.com.
 26.584: perho.com INFO Name server ns.kase.fi (89.190.2.2) closed for zone transfer of perho.com.
 26.638: perho.com NOTICE No answer received from 89.190.2.2 when querying for hostname.bind/CH/TXT.
 26.678: perho.com NOTICE No answer received from 89.190.2.2 when querying for version.bind/CH/TXT.
 26.704: perho.com NOTICE No answer received from 89.190.2.2 when querying for id.server/CH/TXT.
 26.756: perho.com NOTICE No answer received from 89.190.2.2 when querying for version.server/CH/TXT.
 26.800: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) answers queries over UDP.
 26.863: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) answers queries over TCP.
 26.942: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) is not recursive.
 27.195: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) authoritative for perho.com.
 27.309: perho.com INFO Name server ns.kase.fi (2a03:7c00:feed:beef:0:0:0:babe) closed for zone transfer of perho.com.
 27.344: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for hostname.bind/CH/TXT.
 27.384: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for version.bind/CH/TXT.
 27.412: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for id.server/CH/TXT.
 27.459: perho.com NOTICE No answer received from 2a03:7c00:feed:beef:0:0:0:babe when querying for version.server/CH/TXT.
 27.459: perho.com INFO Done testing name server ns.kase.fi.
 27.459: perho.com INFO Begin testing name server ns2.kase.fi.
 27.460: perho.com INFO Begin testing host ns2.kase.fi.
 27.460: perho.com INFO Begin testing address 89.190.3.2.
 28.039: perho.com INFO Done testing address 89.190.3.2.
 28.039: perho.com INFO Begin testing address 2a03:7c00:feed:cafe:0:0:0:babe.
 28.693: perho.com INFO Done testing address 2a03:7c00:feed:cafe:0:0:0:babe.
 28.693: perho.com INFO Done testing host ns2.kase.fi.
 28.760: perho.com INFO Name server ns2.kase.fi (89.190.3.2) answers queries over UDP.
 28.849: perho.com INFO Name server ns2.kase.fi (89.190.3.2) answers queries over TCP.
 28.887: perho.com INFO Name server ns2.kase.fi (89.190.3.2) is not recursive.
 29.039: perho.com INFO Name server ns2.kase.fi (89.190.3.2) authoritative for perho.com.
 29.113: perho.com INFO Name server ns2.kase.fi (89.190.3.2) closed for zone transfer of perho.com.
 29.155: perho.com NOTICE No answer received from 89.190.3.2 when querying for hostname.bind/CH/TXT.
 29.206: perho.com NOTICE No answer received from 89.190.3.2 when querying for version.bind/CH/TXT.
 29.232: perho.com NOTICE No answer received from 89.190.3.2 when querying for id.server/CH/TXT.
 29.285: perho.com NOTICE No answer received from 89.190.3.2 when querying for version.server/CH/TXT.
 29.315: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) answers queries over UDP.
 29.379: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) answers queries over TCP.
 29.446: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) is not recursive.
 29.665: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) authoritative for perho.com.
 29.785: perho.com INFO Name server ns2.kase.fi (2a03:7c00:feed:cafe:0:0:0:babe) closed for zone transfer of perho.com.
 29.817: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for hostname.bind/CH/TXT.
 29.845: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for version.bind/CH/TXT.
 29.873: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for id.server/CH/TXT.
 29.913: perho.com NOTICE No answer received from 2a03:7c00:feed:cafe:0:0:0:babe when querying for version.server/CH/TXT.
 29.914: perho.com INFO Done testing name server ns2.kase.fi.
 29.914: perho.com INFO Begin testing zone consistency for perho.com.
 30.013: perho.com INFO SOA at address 89.190.3.2 has serial 2014012703.
 30.043: perho.com INFO SOA at address 2a03:7c00:feed:cafe:0:0:0:babe has serial 2014012703.
 30.108: perho.com INFO SOA at address 2a03:7c00:feed:beef:0:0:0:babe has serial 2014012703.
 30.151: perho.com INFO SOA at address 89.190.2.2 has serial 2014012703.
 30.151: perho.com INFO All SOA records have consistent serial numbers.
 30.151: perho.com INFO All other fields in the SOA record are consistent among all name servers.
 30.334: perho.com NOTICE The listed nameservers for perho.com all report the same set of nameservers.
 30.334: perho.com INFO Done testing zone consistency for perho.com.
 30.334: perho.com INFO Begin testing SOA parameters for perho.com.
 30.364: perho.com INFO Found SOA record for perho.com.
 30.364: perho.com INFO Begin testing host ns.kase.fi.
 30.365: perho.com INFO Begin testing address 89.190.2.2.
 30.403: perho.com INFO Done testing address 89.190.2.2.
 30.403: perho.com INFO Begin testing address 2a03:7c00:feed:beef:0:0:0:babe.
 30.404: perho.com INFO Done testing address 2a03:7c00:feed:beef:0:0:0:babe.
 30.405: perho.com INFO Done testing host ns.kase.fi.
 30.405: perho.com INFO SOA MNAME for perho.com valid (ns.kase.fi).
 30.405: perho.com INFO SOA MNAME for perho.com (ns.kase.fi) listed as NS.
 30.443: perho.com INFO SOA MNAME for perho.com (ns.kase.fi) is authoritative.
 30.504: perho.com INFO SOA MNAME for perho.com (ns.kase.fi) is authoritative.
 30.505: perho.com INFO Begin testing email address hostmaster@kase.fi.
 30.813: perho.com INFO Mail exchangers for hostmaster@kase.fi found filsu.kase.fi,mail.kase.fi.
 30.813: perho.com INFO Begin testing host filsu.kase.fi.
 31.226: perho.com INFO Begin testing address 89.190.3.9.
 31.522: perho.com INFO Done testing address 89.190.3.9.
 31.522: perho.com INFO Begin testing address 2a03:7c00:feed:cafe:0:0:0:25.
 32.335: perho.com INFO Done testing address 2a03:7c00:feed:cafe:0:0:0:25.
 32.335: perho.com INFO Done testing host filsu.kase.fi.
 32.335: perho.com INFO Begin testing host mail.kase.fi.
 32.779: perho.com INFO Begin testing address 89.190.2.10.
 33.326: perho.com INFO Done testing address 89.190.2.10.
 33.326: perho.com INFO Begin testing address 2a03:7c00:feed:beef:0:0:0:10.
 33.597: perho.com INFO Done testing address 2a03:7c00:feed:beef:0:0:0:10.
 33.597: perho.com INFO Done testing host mail.kase.fi.
 33.598: perho.com INFO Done testing email address hostmaster@kase.fi.
 33.598: perho.com INFO Successful attempt to deliver email for SOA RNAME of perho.com (hostmaster.kase.fi) using hostmaster@kase.fi.
 33.598: perho.com INFO SOA TTL for perho.com OK (3600) - recommended >= 3600.
 33.598: perho.com NOTICE SOA refresh for perho.com too small (3600) - recommended >= 14400.
 33.598: perho.com NOTICE SOA retry for perho.com too small (1200) - recommended >= 3600.
 33.598: perho.com INFO SOA expire for perho.com OK (3600000) - recommended >= 604800.
 33.598: perho.com INFO SOA minimum for perho.com OK (86400) - recommended between 300 and 86400.
 33.598: perho.com INFO Done testing SOA parameters for perho.com.
 33.598: perho.com INFO Begin testing connectivity for perho.com.
 34.581: perho.com NOTICE Zone announced by fewer than two IPv4 ASN.
 35.427: perho.com NOTICE Zone announced by fewer than two IPv6 ASN.
 35.427: perho.com INFO Done testing connectivity for perho.com.
 35.427: perho.com INFO Begin testing DNSSEC for perho.com.
 35.729: perho.com INFO Did not find DS record for perho.com at parent.
 35.954: perho.com INFO Servers for perho.com have consistent extra processing status.
 36.007: perho.com INFO Authenticated denial records not found for perho.com.
 36.034: perho.com INFO Did not find DNSKEY record for perho.com at child.
 36.034: perho.com INFO No DNSKEY(s) found at child, other tests skipped.
 36.034: perho.com INFO Done testing DNSSEC for perho.com.
 36.034: perho.com INFO Test completed for zone perho.com.
