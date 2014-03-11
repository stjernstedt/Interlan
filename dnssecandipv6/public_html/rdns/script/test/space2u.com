  0.000: space2u.com INFO Begin testing zone space2u.com with version 1.5.0.
  0.001: space2u.com INFO Begin testing delegation for space2u.com.
 22.890: space2u.com INFO Name servers listed at parent: ns3.space2u.com,ns4.space2u.com
 25.453: space2u.com INFO Name servers listed at child: ns3.space2u.com,ns4.space2u.com
 25.453: space2u.com NOTICE No IPv6 name servers found.
 25.542: space2u.com INFO Parent glue for space2u.com found: ns3.space2u.com (62.20.1.130)
 25.821: space2u.com INFO Parent glue for space2u.com found: ns4.space2u.com (94.254.0.69)
 26.029: space2u.com INFO Checking glue for ns3.space2u.com (62.20.1.130).
 26.158: space2u.com INFO Child glue for space2u.com found: ns3.space2u.com (62.20.1.130)
 26.158: space2u.com INFO Checking glue for ns4.space2u.com (94.254.0.69).
 26.429: space2u.com INFO Child glue for space2u.com found: ns4.space2u.com (94.254.0.69)
 26.429: space2u.com INFO Parent glue for space2u.com found: ns3.space2u.com (62.20.1.130)
 26.430: space2u.com INFO Parent glue for space2u.com found: ns4.space2u.com (94.254.0.69)
 27.746: space2u.com INFO It is possible to build a referral packet for space2u.com that works without EDNS0.
 27.803: space2u.com INFO Done testing delegation for space2u.com.
 27.804: space2u.com INFO Begin testing name server ns3.space2u.com.
 27.804: space2u.com INFO Begin testing host ns3.space2u.com.
 28.437: space2u.com INFO Begin testing address 62.20.1.130.
 38.219: space2u.com INFO Done testing address 62.20.1.130.
 38.220: space2u.com INFO Done testing host ns3.space2u.com.
 38.664: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) answers queries over UDP.
 38.703: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) answers queries over TCP.
 38.718: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) is not recursive.
 38.787: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) authoritative for space2u.com.
 38.836: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) closed for zone transfer of space2u.com.
 38.870: space2u.com INFO Legacy name server ID for ns3.space2u.com (62.20.1.130): version.bind = space2u
 38.897: space2u.com INFO Done testing name server ns3.space2u.com.
 38.897: space2u.com INFO Begin testing name server ns4.space2u.com.
 38.897: space2u.com INFO Begin testing host ns4.space2u.com.
 39.532: space2u.com INFO Begin testing address 94.254.0.69.
 41.386: space2u.com INFO Done testing address 94.254.0.69.
 41.386: space2u.com INFO Done testing host ns4.space2u.com.
 41.889: space2u.com INFO Name server ns4.space2u.com (94.254.0.69) answers queries over UDP.
 41.932: space2u.com INFO Name server ns4.space2u.com (94.254.0.69) answers queries over TCP.
 41.976: space2u.com INFO Name server ns4.space2u.com (94.254.0.69) is not recursive.
 42.122: space2u.com INFO Name server ns4.space2u.com (94.254.0.69) authoritative for space2u.com.
 42.169: space2u.com INFO Name server ns4.space2u.com (94.254.0.69) closed for zone transfer of space2u.com.
 42.186: space2u.com INFO Legacy name server ID for ns4.space2u.com (94.254.0.69): hostname.bind = ns4
 42.421: space2u.com INFO Legacy name server ID for ns4.space2u.com (94.254.0.69): version.bind = space2u
 42.491: space2u.com NOTICE No answer received from 94.254.0.69 when querying for version.server/CH/TXT.
 42.492: space2u.com INFO Done testing name server ns4.space2u.com.
 42.492: space2u.com INFO Begin testing zone consistency for space2u.com.
 44.279: space2u.com INFO SOA at address 94.254.0.69 has serial 2013072901.
 44.297: space2u.com INFO SOA at address 62.20.1.130 has serial 2013072901.
 44.297: space2u.com INFO All SOA records have consistent serial numbers.
 44.297: space2u.com INFO All other fields in the SOA record are consistent among all name servers.
 45.298: space2u.com NOTICE The listed nameservers for space2u.com all report the same set of nameservers.
 45.298: space2u.com INFO Done testing zone consistency for space2u.com.
 45.299: space2u.com INFO Begin testing SOA parameters for space2u.com.
 45.318: space2u.com INFO Found SOA record for space2u.com.
 45.319: space2u.com INFO Begin testing host ns3.space2u.com.
 45.657: space2u.com INFO Begin testing address 62.20.1.130.
 46.088: space2u.com INFO Done testing address 62.20.1.130.
 46.088: space2u.com INFO Done testing host ns3.space2u.com.
 46.088: space2u.com INFO SOA MNAME for space2u.com valid (ns3.space2u.com).
 46.089: space2u.com INFO SOA MNAME for space2u.com (ns3.space2u.com) listed as NS.
 46.534: space2u.com INFO SOA MNAME for space2u.com (ns3.space2u.com) is authoritative.
 46.534: space2u.com INFO Begin testing email address info@space2u.com.
 46.895: space2u.com INFO Mail exchangers for info@space2u.com found mail-core.space2u.com.
 46.895: space2u.com INFO All mail servers for info@space2u.com are in zone space2u.com.
 46.895: space2u.com INFO Begin testing host mail-core.space2u.com.
 47.488: space2u.com INFO Begin testing address 62.20.1.181.
 49.215: space2u.com INFO Done testing address 62.20.1.181.
 49.215: space2u.com INFO Done testing host mail-core.space2u.com.
 49.703: space2u.com INFO Done testing email address info@space2u.com.
 49.703: space2u.com INFO Successful attempt to deliver email for SOA RNAME of space2u.com (info.space2u.com) using info@space2u.com.
 49.703: space2u.com INFO SOA TTL for space2u.com OK (86400) - recommended >= 3600.
 49.703: space2u.com INFO SOA refresh for space2u.com OK (28800) - recommended >= 14400.
 49.704: space2u.com INFO SOA retry for space2u.com OK (7200) - recommended >= 3600.
 49.704: space2u.com INFO SOA expire for space2u.com OK (604800) - recommended >= 604800.
 49.704: space2u.com INFO SOA minimum for space2u.com OK (300) - recommended between 300 and 86400.
 49.704: space2u.com INFO Done testing SOA parameters for space2u.com.
 49.704: space2u.com INFO Begin testing connectivity for space2u.com.
 50.801: space2u.com INFO Zone announced by more than one ASN.
 50.802: space2u.com NOTICE Zone announced by fewer than two IPv6 ASN.
 50.802: space2u.com INFO Done testing connectivity for space2u.com.
 50.802: space2u.com INFO Begin testing DNSSEC for space2u.com.
 51.128: space2u.com INFO Did not find DS record for space2u.com at parent.
 51.229: space2u.com INFO Servers for space2u.com have consistent extra processing status.
 51.259: space2u.com INFO Authenticated denial records not found for space2u.com.
 51.275: space2u.com INFO Did not find DNSKEY record for space2u.com at child.
 51.275: space2u.com INFO No DNSKEY(s) found at child, other tests skipped.
 51.276: space2u.com INFO Done testing DNSSEC for space2u.com.
 51.276: space2u.com INFO Test completed for zone space2u.com.
