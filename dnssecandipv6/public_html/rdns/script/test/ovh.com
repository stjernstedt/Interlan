  0.000: ovh.com INFO Begin testing zone ovh.com with version 1.5.0.
  0.001: ovh.com INFO Begin testing delegation for ovh.com.
 24.368: ovh.com INFO Name servers listed at parent: dns.ovh.net,dns10.ovh.net,dns200.anycast.me,ns.ovh.net,ns10.ovh.net,ns200.anycast.me
 40.621: ovh.com INFO Name servers listed at child: dns.ovh.net,dns10.ovh.net,dns200.anycast.me,ns.ovh.net,ns10.ovh.net,ns200.anycast.me
 41.408: ovh.com INFO Parent glue for ovh.com found: dns10.ovh.net (213.251.188.129)
 41.510: ovh.com INFO Parent glue for ovh.com found: dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1)
 42.213: ovh.com INFO Parent glue for ovh.com found: ns10.ovh.net (213.251.128.129)
 42.316: ovh.com INFO Parent glue for ovh.com found: ns10.ovh.net (2001:41d0:1:1981:0:0:0:1)
 42.743: ovh.com INFO Checking glue for dns10.ovh.net (213.251.188.129).
 42.743: ovh.com INFO Checking glue for dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1).
 42.764: ovh.com INFO Checking glue for ns10.ovh.net (213.251.128.129).
 42.764: ovh.com INFO Checking glue for ns10.ovh.net (2001:41d0:1:1981:0:0:0:1).
 42.765: ovh.com INFO Parent glue for ovh.com found: dns10.ovh.net (213.251.188.129)
 42.766: ovh.com INFO Parent glue for ovh.com found: dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1)
 42.787: ovh.com INFO Parent glue for ovh.com found: ns10.ovh.net (213.251.128.129)
 42.788: ovh.com INFO Parent glue for ovh.com found: ns10.ovh.net (2001:41d0:1:1981:0:0:0:1)
 49.343: ovh.com INFO It is possible to build a referral packet for ovh.com that works without EDNS0.
 49.343: ovh.com INFO Done testing delegation for ovh.com.
 49.358: ovh.com INFO Begin testing name server dns.ovh.net.
 49.358: ovh.com INFO Begin testing host dns.ovh.net.
 49.807: ovh.com INFO Begin testing address 213.186.33.102.
 55.580: ovh.com INFO Done testing address 213.186.33.102.
 55.580: ovh.com INFO Done testing host dns.ovh.net.
 56.303: ovh.com INFO Name server dns.ovh.net (213.186.33.102) answers queries over UDP.
 56.385: ovh.com INFO Name server dns.ovh.net (213.186.33.102) answers queries over TCP.
 56.459: ovh.com INFO Name server dns.ovh.net (213.186.33.102) is not recursive.
 56.627: ovh.com INFO Name server dns.ovh.net (213.186.33.102) authoritative for ovh.com.
 56.751: ovh.com INFO Name server dns.ovh.net (213.186.33.102) closed for zone transfer of ovh.com.
 56.796: ovh.com INFO Legacy name server ID for dns.ovh.net (213.186.33.102): hostname.bind = dns.ovh.net
 56.849: ovh.com INFO Legacy name server ID for dns.ovh.net (213.186.33.102): version.bind = [Secured]
 56.933: ovh.com NOTICE No answer received from 213.186.33.102 when querying for version.server/CH/TXT.
 56.934: ovh.com INFO Done testing name server dns.ovh.net.
 56.934: ovh.com INFO Begin testing name server dns10.ovh.net.
 56.934: ovh.com INFO Begin testing host dns10.ovh.net.
 56.935: ovh.com INFO Begin testing address 213.251.188.129.
 57.608: ovh.com INFO Done testing address 213.251.188.129.
 57.608: ovh.com INFO Begin testing address 2001:41d0:1:4a81:0:0:0:1.
 58.219: ovh.com INFO Done testing address 2001:41d0:1:4a81:0:0:0:1.
 58.219: ovh.com INFO Done testing host dns10.ovh.net.
 58.311: ovh.com INFO Name server dns10.ovh.net (213.251.188.129) answers queries over UDP.
 58.435: ovh.com INFO Name server dns10.ovh.net (213.251.188.129) answers queries over TCP.
 58.477: ovh.com INFO Name server dns10.ovh.net (213.251.188.129) is not recursive.
 58.680: ovh.com INFO Name server dns10.ovh.net (213.251.188.129) authoritative for ovh.com.
 58.808: ovh.com INFO Name server dns10.ovh.net (213.251.188.129) closed for zone transfer of ovh.com.
 58.860: ovh.com INFO Legacy name server ID for dns10.ovh.net (213.251.188.129): hostname.bind = dns10.ovh.net
 58.908: ovh.com INFO Legacy name server ID for dns10.ovh.net (213.251.188.129): version.bind = [Secured]
 58.992: ovh.com NOTICE No answer received from 213.251.188.129 when querying for version.server/CH/TXT.
 59.064: ovh.com INFO Name server dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1) answers queries over UDP.
 59.237: ovh.com INFO Name server dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1) answers queries over TCP.
 59.318: ovh.com INFO Name server dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1) is not recursive.
 59.622: ovh.com INFO Name server dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1) authoritative for ovh.com.
 59.833: ovh.com INFO Name server dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1) closed for zone transfer of ovh.com.
 59.910: ovh.com INFO Legacy name server ID for dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1): hostname.bind = dns10.ovh.net
 59.994: ovh.com INFO Legacy name server ID for dns10.ovh.net (2001:41d0:1:4a81:0:0:0:1): version.bind = [Secured]
 60.140: ovh.com NOTICE No answer received from 2001:41d0:1:4a81:0:0:0:1 when querying for version.server/CH/TXT.
 60.140: ovh.com INFO Done testing name server dns10.ovh.net.
 60.140: ovh.com INFO Begin testing name server dns200.anycast.me.
 60.141: ovh.com INFO Begin testing host dns200.anycast.me.
 60.542: ovh.com INFO Begin testing address 46.105.198.200.
 64.944: ovh.com INFO Done testing address 46.105.198.200.
 64.944: ovh.com INFO Done testing host dns200.anycast.me.
 65.676: ovh.com INFO Name server dns200.anycast.me (46.105.198.200) answers queries over UDP.
 65.797: ovh.com INFO Name server dns200.anycast.me (46.105.198.200) answers queries over TCP.
 65.877: ovh.com INFO Name server dns200.anycast.me (46.105.198.200) is not recursive.
 66.175: ovh.com INFO Name server dns200.anycast.me (46.105.198.200) authoritative for ovh.com.
 66.281: ovh.com INFO Name server dns200.anycast.me (46.105.198.200) closed for zone transfer of ovh.com.
 66.341: ovh.com INFO Legacy name server ID for dns200.anycast.me (46.105.198.200): hostname.bind = dns200-ams.anycast.me
 66.403: ovh.com INFO Legacy name server ID for dns200.anycast.me (46.105.198.200): version.bind = [Secured]
 66.568: ovh.com NOTICE No answer received from 46.105.198.200 when querying for version.server/CH/TXT.
 66.568: ovh.com INFO Done testing name server dns200.anycast.me.
 66.568: ovh.com INFO Begin testing name server ns.ovh.net.
 66.568: ovh.com INFO Begin testing host ns.ovh.net.
 67.623: ovh.com INFO Begin testing address 213.251.128.136.
 69.447: ovh.com INFO Done testing address 213.251.128.136.
 69.447: ovh.com INFO Done testing host ns.ovh.net.
 70.396: ovh.com INFO Name server ns.ovh.net (213.251.128.136) answers queries over UDP.
 70.518: ovh.com INFO Name server ns.ovh.net (213.251.128.136) answers queries over TCP.
 70.604: ovh.com INFO Name server ns.ovh.net (213.251.128.136) is not recursive.
 70.979: ovh.com INFO Name server ns.ovh.net (213.251.128.136) authoritative for ovh.com.
 71.124: ovh.com INFO Name server ns.ovh.net (213.251.128.136) closed for zone transfer of ovh.com.
 71.161: ovh.com INFO Legacy name server ID for ns.ovh.net (213.251.128.136): hostname.bind = ns.ovh.net
 71.208: ovh.com INFO Legacy name server ID for ns.ovh.net (213.251.128.136): version.bind = [Secured]
 71.408: ovh.com NOTICE No answer received from 213.251.128.136 when querying for version.server/CH/TXT.
 71.408: ovh.com INFO Done testing name server ns.ovh.net.
 71.408: ovh.com INFO Begin testing name server ns10.ovh.net.
 71.408: ovh.com INFO Begin testing host ns10.ovh.net.
 71.409: ovh.com INFO Begin testing address 213.251.128.129.
 72.356: ovh.com INFO Done testing address 213.251.128.129.
 72.356: ovh.com INFO Begin testing address 2001:41d0:1:1981:0:0:0:1.
 72.992: ovh.com INFO Done testing address 2001:41d0:1:1981:0:0:0:1.
 72.992: ovh.com INFO Done testing host ns10.ovh.net.
 73.104: ovh.com INFO Name server ns10.ovh.net (213.251.128.129) answers queries over UDP.
 73.231: ovh.com INFO Name server ns10.ovh.net (213.251.128.129) answers queries over TCP.
 73.302: ovh.com INFO Name server ns10.ovh.net (213.251.128.129) is not recursive.
 73.606: ovh.com INFO Name server ns10.ovh.net (213.251.128.129) authoritative for ovh.com.
 73.744: ovh.com INFO Name server ns10.ovh.net (213.251.128.129) closed for zone transfer of ovh.com.
 73.780: ovh.com INFO Legacy name server ID for ns10.ovh.net (213.251.128.129): hostname.bind = ns10.ovh.net
 73.824: ovh.com INFO Legacy name server ID for ns10.ovh.net (213.251.128.129): version.bind = [Secured]
 73.996: ovh.com NOTICE No answer received from 213.251.128.129 when querying for version.server/CH/TXT.
 74.080: ovh.com INFO Name server ns10.ovh.net (2001:41d0:1:1981:0:0:0:1) answers queries over UDP.
 74.233: ovh.com INFO Name server ns10.ovh.net (2001:41d0:1:1981:0:0:0:1) answers queries over TCP.
 74.295: ovh.com INFO Name server ns10.ovh.net (2001:41d0:1:1981:0:0:0:1) is not recursive.
 74.643: ovh.com INFO Name server ns10.ovh.net (2001:41d0:1:1981:0:0:0:1) authoritative for ovh.com.
 74.827: ovh.com INFO Name server ns10.ovh.net (2001:41d0:1:1981:0:0:0:1) closed for zone transfer of ovh.com.
 74.890: ovh.com INFO Legacy name server ID for ns10.ovh.net (2001:41d0:1:1981:0:0:0:1): hostname.bind = ns10.ovh.net
 74.954: ovh.com INFO Legacy name server ID for ns10.ovh.net (2001:41d0:1:1981:0:0:0:1): version.bind = [Secured]
 75.088: ovh.com NOTICE No answer received from 2001:41d0:1:1981:0:0:0:1 when querying for version.server/CH/TXT.
 75.088: ovh.com INFO Done testing name server ns10.ovh.net.
 75.088: ovh.com INFO Begin testing name server ns200.anycast.me.
 75.088: ovh.com INFO Begin testing host ns200.anycast.me.
 75.555: ovh.com INFO Begin testing address 46.105.223.200.
 76.965: ovh.com INFO Done testing address 46.105.223.200.
 76.965: ovh.com INFO Done testing host ns200.anycast.me.
 77.588: ovh.com INFO Name server ns200.anycast.me (46.105.223.200) answers queries over UDP.
 77.663: ovh.com INFO Name server ns200.anycast.me (46.105.223.200) answers queries over TCP.
 77.695: ovh.com INFO Name server ns200.anycast.me (46.105.223.200) is not recursive.
 77.926: ovh.com INFO Name server ns200.anycast.me (46.105.223.200) authoritative for ovh.com.
 78.025: ovh.com INFO Name server ns200.anycast.me (46.105.223.200) closed for zone transfer of ovh.com.
 78.058: ovh.com INFO Legacy name server ID for ns200.anycast.me (46.105.223.200): hostname.bind = ns200-ams.anycast.me
 78.128: ovh.com INFO Legacy name server ID for ns200.anycast.me (46.105.223.200): version.bind = [Secured]
 78.234: ovh.com NOTICE No answer received from 46.105.223.200 when querying for version.server/CH/TXT.
 78.237: ovh.com INFO Done testing name server ns200.anycast.me.
 78.237: ovh.com INFO Begin testing zone consistency for ovh.com.
 83.825: ovh.com INFO SOA at address 2001:41d0:1:1981:0:0:0:1 has serial 2013070201.
 83.868: ovh.com INFO SOA at address 213.251.188.129 has serial 2013070201.
 83.952: ovh.com INFO SOA at address 46.105.223.200 has serial 2013070201.
 84.027: ovh.com INFO SOA at address 213.251.128.129 has serial 2013070201.
 84.100: ovh.com INFO SOA at address 46.105.198.200 has serial 2013070201.
 84.171: ovh.com INFO SOA at address 2001:41d0:1:4a81:0:0:0:1 has serial 2013070201.
 84.246: ovh.com INFO SOA at address 213.186.33.102 has serial 2013070201.
 84.302: ovh.com INFO SOA at address 213.251.128.136 has serial 2013070201.
 84.302: ovh.com INFO All SOA records have consistent serial numbers.
 84.302: ovh.com INFO All other fields in the SOA record are consistent among all name servers.
 87.889: ovh.com NOTICE The listed nameservers for ovh.com all report the same set of nameservers.
 87.889: ovh.com INFO Done testing zone consistency for ovh.com.
 87.890: ovh.com INFO Begin testing SOA parameters for ovh.com.
 88.000: ovh.com INFO Found SOA record for ovh.com.
 88.000: ovh.com INFO Begin testing host dns.ovh.net.
 88.728: ovh.com INFO Begin testing address 213.186.33.102.
 89.458: ovh.com INFO Done testing address 213.186.33.102.
 89.459: ovh.com INFO Done testing host dns.ovh.net.
 89.459: ovh.com INFO SOA MNAME for ovh.com valid (dns.ovh.net).
 89.471: ovh.com INFO SOA MNAME for ovh.com (dns.ovh.net) listed as NS.
 90.123: ovh.com INFO SOA MNAME for ovh.com (dns.ovh.net) is authoritative.
 90.123: ovh.com INFO Begin testing email address tech@ovh.net.
 90.930: ovh.com INFO Mail exchangers for tech@ovh.net found mx1.kmx.ovh.net,mx2.kmx.ovh.net.
 90.930: ovh.com INFO Begin testing host mx1.kmx.ovh.net.
 92.649: ovh.com INFO Begin testing address 91.121.124.107.
 95.065: ovh.com INFO Done testing address 91.121.124.107.
 95.065: ovh.com INFO Done testing host mx1.kmx.ovh.net.
 95.919: ovh.com INFO Begin testing host mx2.kmx.ovh.net.
 97.230: ovh.com INFO Begin testing address 91.121.124.129.
 99.351: ovh.com INFO Done testing address 91.121.124.129.
 99.351: ovh.com INFO Done testing host mx2.kmx.ovh.net.
 99.979: ovh.com INFO Done testing email address tech@ovh.net.
 99.979: ovh.com INFO Successful attempt to deliver email for SOA RNAME of ovh.com (tech.ovh.net) using tech@ovh.net.
 99.980: ovh.com INFO SOA TTL for ovh.com OK (86400) - recommended >= 3600.
 99.980: ovh.com INFO SOA refresh for ovh.com OK (86400) - recommended >= 14400.
 99.980: ovh.com INFO SOA retry for ovh.com OK (3600) - recommended >= 3600.
 99.980: ovh.com INFO SOA expire for ovh.com OK (3600000) - recommended >= 604800.
 99.980: ovh.com INFO SOA minimum for ovh.com OK (600) - recommended between 300 and 86400.
 99.980: ovh.com INFO Done testing SOA parameters for ovh.com.
 99.981: ovh.com INFO Begin testing connectivity for ovh.com.
106.483: ovh.com NOTICE Zone announced by fewer than two IPv4 ASN.
108.218: ovh.com NOTICE Zone announced by fewer than two IPv6 ASN.
108.218: ovh.com INFO Done testing connectivity for ovh.com.
108.218: ovh.com INFO Begin testing DNSSEC for ovh.com.
108.250: ovh.com INFO Did not find DS record for ovh.com at parent.
108.975: ovh.com INFO Servers for ovh.com have consistent extra processing status.
109.055: ovh.com INFO Authenticated denial records not found for ovh.com.
109.107: ovh.com INFO Did not find DNSKEY record for ovh.com at child.
109.107: ovh.com INFO No DNSKEY(s) found at child, other tests skipped.
109.108: ovh.com INFO Done testing DNSSEC for ovh.com.
109.108: ovh.com INFO Test completed for zone ovh.com.
