  0.000: nmugroup.com INFO Begin testing zone nmugroup.com with version 1.5.0.
  0.001: nmugroup.com INFO Begin testing delegation for nmugroup.com.
 24.545: nmugroup.com INFO Name servers listed at parent: ephemera.nmugroup.se,origo.nmugroup.com,unit.nmugroup.com
 29.033: nmugroup.com INFO Name servers listed at child: ephemera.nmugroup.se,origo.nmugroup.com,unit.nmugroup.com
 29.382: nmugroup.com INFO Parent glue for nmugroup.com found: origo.nmugroup.com (89.236.16.162)
 29.737: nmugroup.com INFO Parent glue for nmugroup.com found: origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2)
 29.932: nmugroup.com INFO Parent glue for nmugroup.com found: unit.nmugroup.com (217.10.116.210)
 30.324: nmugroup.com INFO Parent glue for nmugroup.com found: unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2)
 30.324: nmugroup.com INFO Checking glue for origo.nmugroup.com (89.236.16.162).
 30.343: nmugroup.com INFO Child glue for nmugroup.com found: origo.nmugroup.com (89.236.16.162)
 30.343: nmugroup.com INFO Checking glue for origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2).
 30.363: nmugroup.com INFO Child glue for nmugroup.com found: origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2)
 30.363: nmugroup.com INFO Checking glue for unit.nmugroup.com (217.10.116.210).
 30.385: nmugroup.com INFO Child glue for nmugroup.com found: unit.nmugroup.com (217.10.116.210)
 30.386: nmugroup.com INFO Checking glue for unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2).
 30.399: nmugroup.com INFO Child glue for nmugroup.com found: unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2)
 30.399: nmugroup.com INFO Parent glue for nmugroup.com found: origo.nmugroup.com (89.236.16.162)
 30.400: nmugroup.com INFO Parent glue for nmugroup.com found: origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2)
 30.400: nmugroup.com INFO Parent glue for nmugroup.com found: unit.nmugroup.com (217.10.116.210)
 30.400: nmugroup.com INFO Parent glue for nmugroup.com found: unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2)
 30.959: nmugroup.com INFO It is possible to build a referral packet for nmugroup.com that works without EDNS0.
 30.959: nmugroup.com INFO Done testing delegation for nmugroup.com.
 30.960: nmugroup.com INFO Begin testing name server ephemera.nmugroup.se.
 30.960: nmugroup.com INFO Begin testing host ephemera.nmugroup.se.
 31.300: nmugroup.com INFO Begin testing address 213.180.83.99.
 42.360: nmugroup.com INFO Done testing address 213.180.83.99.
 42.360: nmugroup.com INFO Done testing host ephemera.nmugroup.se.
 42.935: nmugroup.com INFO Name server ephemera.nmugroup.se (213.180.83.99) answers queries over UDP.
 43.006: nmugroup.com INFO Name server ephemera.nmugroup.se (213.180.83.99) answers queries over TCP.
 43.103: nmugroup.com INFO Name server ephemera.nmugroup.se (213.180.83.99) is not recursive.
 43.257: nmugroup.com INFO Name server ephemera.nmugroup.se (213.180.83.99) authoritative for nmugroup.com.
 43.291: nmugroup.com NOTICE Name server ephemera.nmugroup.se (213.180.83.99) open for zone transfer of nmugroup.com.
 43.318: nmugroup.com INFO Legacy name server ID for ephemera.nmugroup.se (213.180.83.99): hostname.bind = ephemera.nmugroup.se
 43.339: nmugroup.com INFO Legacy name server ID for ephemera.nmugroup.se (213.180.83.99): version.bind = 9.7.3
 43.360: nmugroup.com NOTICE No answer received from 213.180.83.99 when querying for version.server/CH/TXT.
 43.360: nmugroup.com INFO Done testing name server ephemera.nmugroup.se.
 43.361: nmugroup.com INFO Begin testing name server origo.nmugroup.com.
 43.361: nmugroup.com INFO Begin testing host origo.nmugroup.com.
 43.361: nmugroup.com INFO Begin testing address 89.236.16.162.
 45.595: nmugroup.com INFO Done testing address 89.236.16.162.
 45.596: nmugroup.com INFO Begin testing address 2001:7a0:8001:0:0:0:0:2.
 46.184: nmugroup.com INFO Done testing address 2001:7a0:8001:0:0:0:0:2.
 46.184: nmugroup.com INFO Done testing host origo.nmugroup.com.
 46.344: nmugroup.com INFO Name server origo.nmugroup.com (89.236.16.162) answers queries over UDP.
 46.425: nmugroup.com INFO Name server origo.nmugroup.com (89.236.16.162) answers queries over TCP.
 46.483: nmugroup.com INFO Name server origo.nmugroup.com (89.236.16.162) is not recursive.
 46.648: nmugroup.com INFO Name server origo.nmugroup.com (89.236.16.162) authoritative for nmugroup.com.
 46.737: nmugroup.com NOTICE Name server origo.nmugroup.com (89.236.16.162) open for zone transfer of nmugroup.com.
 46.767: nmugroup.com INFO Legacy name server ID for origo.nmugroup.com (89.236.16.162): hostname.bind = origo
 46.799: nmugroup.com INFO Legacy name server ID for origo.nmugroup.com (89.236.16.162): version.bind = 9.7.3
 46.864: nmugroup.com NOTICE No answer received from 89.236.16.162 when querying for version.server/CH/TXT.
 46.888: nmugroup.com INFO Name server origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2) answers queries over UDP.
 46.938: nmugroup.com INFO Name server origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2) answers queries over TCP.
 46.959: nmugroup.com INFO Name server origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2) is not recursive.
 47.182: nmugroup.com INFO Name server origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2) authoritative for nmugroup.com.
 47.269: nmugroup.com NOTICE Name server origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2) open for zone transfer of nmugroup.com.
 47.342: nmugroup.com INFO Legacy name server ID for origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2): hostname.bind = origo
 47.380: nmugroup.com INFO Legacy name server ID for origo.nmugroup.com (2001:7a0:8001:0:0:0:0:2): version.bind = 9.7.3
 47.429: nmugroup.com NOTICE No answer received from 2001:7a0:8001:0:0:0:0:2 when querying for version.server/CH/TXT.
 47.429: nmugroup.com INFO Done testing name server origo.nmugroup.com.
 47.429: nmugroup.com INFO Begin testing name server unit.nmugroup.com.
 47.429: nmugroup.com INFO Begin testing host unit.nmugroup.com.
 47.430: nmugroup.com INFO Begin testing address 217.10.116.210.
 49.817: nmugroup.com INFO Done testing address 217.10.116.210.
 49.847: nmugroup.com INFO Begin testing address 2001:4db8:e004:0:0:0:0:2.
 50.470: nmugroup.com INFO Done testing address 2001:4db8:e004:0:0:0:0:2.
 50.471: nmugroup.com INFO Done testing host unit.nmugroup.com.
 50.531: nmugroup.com INFO Name server unit.nmugroup.com (217.10.116.210) answers queries over UDP.
 50.578: nmugroup.com INFO Name server unit.nmugroup.com (217.10.116.210) answers queries over TCP.
 50.623: nmugroup.com INFO Name server unit.nmugroup.com (217.10.116.210) is not recursive.
 50.737: nmugroup.com INFO Name server unit.nmugroup.com (217.10.116.210) authoritative for nmugroup.com.
 50.812: nmugroup.com NOTICE Name server unit.nmugroup.com (217.10.116.210) open for zone transfer of nmugroup.com.
 50.846: nmugroup.com INFO Legacy name server ID for unit.nmugroup.com (217.10.116.210): hostname.bind = unit
 50.873: nmugroup.com INFO Legacy name server ID for unit.nmugroup.com (217.10.116.210): version.bind = 9.8.4-rpz2+rl005.12-P1
 50.910: nmugroup.com NOTICE No answer received from 217.10.116.210 when querying for version.server/CH/TXT.
 50.934: nmugroup.com INFO Name server unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2) answers queries over UDP.
 51.016: nmugroup.com INFO Name server unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2) answers queries over TCP.
 51.046: nmugroup.com INFO Name server unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2) is not recursive.
 51.166: nmugroup.com INFO Name server unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2) authoritative for nmugroup.com.
 51.242: nmugroup.com NOTICE Name server unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2) open for zone transfer of nmugroup.com.
 51.271: nmugroup.com INFO Legacy name server ID for unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2): hostname.bind = unit
 51.292: nmugroup.com INFO Legacy name server ID for unit.nmugroup.com (2001:4db8:e004:0:0:0:0:2): version.bind = 9.8.4-rpz2+rl005.12-P1
 51.335: nmugroup.com NOTICE No answer received from 2001:4db8:e004:0:0:0:0:2 when querying for version.server/CH/TXT.
 51.335: nmugroup.com INFO Done testing name server unit.nmugroup.com.
 51.335: nmugroup.com INFO Begin testing zone consistency for nmugroup.com.
 52.238: nmugroup.com INFO SOA at address 213.180.83.99 has serial 2013053001.
 52.269: nmugroup.com INFO SOA at address 217.10.116.210 has serial 2013053001.
 52.301: nmugroup.com INFO SOA at address 89.236.16.162 has serial 2013053001.
 52.333: nmugroup.com INFO SOA at address 2001:4db8:e004:0:0:0:0:2 has serial 2013053001.
 52.369: nmugroup.com INFO SOA at address 2001:7a0:8001:0:0:0:0:2 has serial 2013053001.
 52.369: nmugroup.com INFO All SOA records have consistent serial numbers.
 52.369: nmugroup.com INFO All other fields in the SOA record are consistent among all name servers.
 53.128: nmugroup.com NOTICE The listed nameservers for nmugroup.com all report the same set of nameservers.
 53.128: nmugroup.com INFO Done testing zone consistency for nmugroup.com.
 53.129: nmugroup.com INFO Begin testing SOA parameters for nmugroup.com.
 53.147: nmugroup.com INFO Found SOA record for nmugroup.com.
 53.148: nmugroup.com INFO Begin testing host origo.nmugroup.com.
 53.148: nmugroup.com INFO Begin testing address 89.236.16.162.
 53.161: nmugroup.com INFO Done testing address 89.236.16.162.
 53.161: nmugroup.com INFO Begin testing address 2001:7a0:8001:0:0:0:0:2.
 53.162: nmugroup.com INFO Done testing address 2001:7a0:8001:0:0:0:0:2.
 53.163: nmugroup.com INFO Done testing host origo.nmugroup.com.
 53.163: nmugroup.com INFO SOA MNAME for nmugroup.com valid (origo.nmugroup.com).
 53.167: nmugroup.com INFO SOA MNAME for nmugroup.com (origo.nmugroup.com) listed as NS.
 53.200: nmugroup.com INFO SOA MNAME for nmugroup.com (origo.nmugroup.com) is authoritative.
 53.265: nmugroup.com INFO SOA MNAME for nmugroup.com (origo.nmugroup.com) is authoritative.
 53.265: nmugroup.com INFO Begin testing email address dns@nmugroup.com.
 53.619: nmugroup.com INFO Mail exchangers for dns@nmugroup.com found glom.nmugroup.com,unit.nmugroup.com.
 53.619: nmugroup.com INFO All mail servers for dns@nmugroup.com are in zone nmugroup.com.
 53.624: nmugroup.com INFO Begin testing host glom.nmugroup.com.
 54.796: nmugroup.com INFO Begin testing address 89.236.16.166.
 55.946: nmugroup.com INFO Done testing address 89.236.16.166.
 55.946: nmugroup.com INFO Begin testing address 2001:7a0:8001:0:0:0:0:4.
 56.670: nmugroup.com INFO Done testing address 2001:7a0:8001:0:0:0:0:4.
 56.670: nmugroup.com INFO Done testing host glom.nmugroup.com.
 56.671: nmugroup.com INFO Begin testing host unit.nmugroup.com.
 56.671: nmugroup.com INFO Begin testing address 217.10.116.210.
 56.672: nmugroup.com INFO Done testing address 217.10.116.210.
 56.673: nmugroup.com INFO Begin testing address 2001:4db8:e004:0:0:0:0:2.
 56.689: nmugroup.com INFO Done testing address 2001:4db8:e004:0:0:0:0:2.
 56.690: nmugroup.com INFO Done testing host unit.nmugroup.com.
 56.690: nmugroup.com INFO Done testing email address dns@nmugroup.com.
 56.690: nmugroup.com INFO Successful attempt to deliver email for SOA RNAME of nmugroup.com (dns.nmugroup.com) using dns@nmugroup.com.
 56.690: nmugroup.com INFO SOA TTL for nmugroup.com OK (172800) - recommended >= 3600.
 56.690: nmugroup.com INFO SOA refresh for nmugroup.com OK (86400) - recommended >= 14400.
 56.690: nmugroup.com INFO SOA retry for nmugroup.com OK (7200) - recommended >= 3600.
 56.690: nmugroup.com INFO SOA expire for nmugroup.com OK (3600000) - recommended >= 604800.
 56.690: nmugroup.com INFO SOA minimum for nmugroup.com OK (3600) - recommended between 300 and 86400.
 56.691: nmugroup.com INFO Done testing SOA parameters for nmugroup.com.
 56.691: nmugroup.com INFO Begin testing connectivity for nmugroup.com.
 58.802: nmugroup.com INFO Zone announced by more than one ASN.
 60.249: nmugroup.com INFO Zone announced by more than one IPv6 ASN.
 60.249: nmugroup.com INFO Done testing connectivity for nmugroup.com.
 60.250: nmugroup.com INFO Begin testing DNSSEC for nmugroup.com.
 60.529: nmugroup.com INFO Did not find DS record for nmugroup.com at parent.
 60.750: nmugroup.com INFO Servers for nmugroup.com have consistent extra processing status.
 60.789: nmugroup.com INFO Authenticated denial records not found for nmugroup.com.
 60.802: nmugroup.com INFO Did not find DNSKEY record for nmugroup.com at child.
 60.802: nmugroup.com INFO No DNSKEY(s) found at child, other tests skipped.
 60.802: nmugroup.com INFO Done testing DNSSEC for nmugroup.com.
 60.803: nmugroup.com INFO Test completed for zone nmugroup.com.
