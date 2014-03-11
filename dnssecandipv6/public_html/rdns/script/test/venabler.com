  0.000: venabler.com INFO Begin testing zone venabler.com with version 1.5.0.
  0.001: venabler.com INFO Begin testing delegation for venabler.com.
 23.311: venabler.com INFO Name servers listed at parent: mark.inbox.se,max.hkust.se
 25.478: venabler.com INFO Name servers listed at child: mark.inbox.se,max.hkust.se
 25.479: venabler.com NOTICE No IPv6 name servers found.
 27.447: venabler.com INFO It is possible to build a referral packet for venabler.com that works without EDNS0.
 27.447: venabler.com INFO Done testing delegation for venabler.com.
 27.524: venabler.com INFO Begin testing name server mark.inbox.se.
 27.524: venabler.com INFO Begin testing host mark.inbox.se.
 28.055: venabler.com INFO Begin testing address 77.110.43.143.
 40.836: venabler.com INFO Done testing address 77.110.43.143.
 40.836: venabler.com INFO Done testing host mark.inbox.se.
 41.146: venabler.com INFO Name server mark.inbox.se (77.110.43.143) answers queries over UDP.
 41.180: venabler.com INFO Name server mark.inbox.se (77.110.43.143) answers queries over TCP.
 41.242: venabler.com INFO Name server mark.inbox.se (77.110.43.143) is not recursive.
 41.401: venabler.com INFO Name server mark.inbox.se (77.110.43.143) authoritative for venabler.com.
 41.445: venabler.com INFO Name server mark.inbox.se (77.110.43.143) closed for zone transfer of venabler.com.
 41.463: venabler.com NOTICE No answer received from 77.110.43.143 when querying for hostname.bind/CH/TXT.
 41.480: venabler.com NOTICE No answer received from 77.110.43.143 when querying for version.bind/CH/TXT.
 41.500: venabler.com NOTICE No answer received from 77.110.43.143 when querying for id.server/CH/TXT.
 41.530: venabler.com NOTICE No answer received from 77.110.43.143 when querying for version.server/CH/TXT.
 41.530: venabler.com INFO Done testing name server mark.inbox.se.
 41.530: venabler.com INFO Begin testing name server max.hkust.se.
 41.530: venabler.com INFO Begin testing host max.hkust.se.
 41.856: venabler.com INFO Begin testing address 85.11.198.88.
 43.747: venabler.com INFO Done testing address 85.11.198.88.
 43.748: venabler.com INFO Done testing host max.hkust.se.
 44.153: venabler.com INFO Name server max.hkust.se (85.11.198.88) answers queries over UDP.
 44.340: venabler.com INFO Name server max.hkust.se (85.11.198.88) answers queries over TCP.
 44.522: venabler.com INFO Name server max.hkust.se (85.11.198.88) is not recursive.
 44.953: venabler.com INFO Name server max.hkust.se (85.11.198.88) authoritative for venabler.com.
 45.028: venabler.com INFO Name server max.hkust.se (85.11.198.88) closed for zone transfer of venabler.com.
 45.061: venabler.com NOTICE No answer received from 85.11.198.88 when querying for hostname.bind/CH/TXT.
 45.085: venabler.com NOTICE No answer received from 85.11.198.88 when querying for version.bind/CH/TXT.
 45.111: venabler.com NOTICE No answer received from 85.11.198.88 when querying for id.server/CH/TXT.
 45.275: venabler.com NOTICE No answer received from 85.11.198.88 when querying for version.server/CH/TXT.
 45.275: venabler.com INFO Done testing name server max.hkust.se.
 45.275: venabler.com INFO Begin testing zone consistency for venabler.com.
 46.588: venabler.com INFO SOA at address 85.11.198.88 has serial 2013051900.
 46.607: venabler.com INFO SOA at address 77.110.43.143 has serial 2013051900.
 46.615: venabler.com INFO All SOA records have consistent serial numbers.
 46.615: venabler.com INFO All other fields in the SOA record are consistent among all name servers.
 47.473: venabler.com NOTICE The listed nameservers for venabler.com all report the same set of nameservers.
 47.473: venabler.com INFO Done testing zone consistency for venabler.com.
 47.474: venabler.com INFO Begin testing SOA parameters for venabler.com.
 47.495: venabler.com INFO Found SOA record for venabler.com.
 47.495: venabler.com INFO Begin testing host max.hkust.se.
 47.821: venabler.com INFO Begin testing address 85.11.198.88.
 48.087: venabler.com INFO Done testing address 85.11.198.88.
 48.087: venabler.com INFO Done testing host max.hkust.se.
 48.088: venabler.com INFO SOA MNAME for venabler.com valid (max.hkust.se).
 48.088: venabler.com INFO SOA MNAME for venabler.com (max.hkust.se) listed as NS.
 48.568: venabler.com INFO SOA MNAME for venabler.com (max.hkust.se) is authoritative.
 48.568: venabler.com INFO Begin testing email address stone@hkust.se.
 48.858: venabler.com INFO Mail exchangers for stone@hkust.se found bk.hkust.se.
 48.859: venabler.com INFO Begin testing host bk.hkust.se.
 49.424: venabler.com INFO Begin testing address 212.16.178.150.
 51.903: venabler.com INFO Done testing address 212.16.178.150.
 51.903: venabler.com INFO Done testing host bk.hkust.se.
 52.179: venabler.com INFO Done testing email address stone@hkust.se.
 52.180: venabler.com INFO Successful attempt to deliver email for SOA RNAME of venabler.com (stone.hkust.se) using stone@hkust.se.
 52.180: venabler.com INFO SOA TTL for venabler.com OK (14400) - recommended >= 3600.
 52.180: venabler.com INFO SOA refresh for venabler.com OK (86400) - recommended >= 14400.
 52.180: venabler.com INFO SOA retry for venabler.com OK (7200) - recommended >= 3600.
 52.180: venabler.com INFO SOA expire for venabler.com OK (1209600) - recommended >= 604800.
 52.181: venabler.com INFO SOA minimum for venabler.com OK (86400) - recommended between 300 and 86400.
 52.181: venabler.com INFO Done testing SOA parameters for venabler.com.
 52.191: venabler.com INFO Begin testing connectivity for venabler.com.
 53.522: venabler.com INFO Zone announced by more than one ASN.
 53.522: venabler.com NOTICE Zone announced by fewer than two IPv6 ASN.
 53.522: venabler.com INFO Done testing connectivity for venabler.com.
 53.523: venabler.com INFO Begin testing DNSSEC for venabler.com.
 53.628: venabler.com INFO Did not find DS record for venabler.com at parent.
 54.062: venabler.com INFO Servers for venabler.com have consistent extra processing status.
 54.327: venabler.com INFO Authenticated denial records not found for venabler.com.
 54.346: venabler.com INFO Did not find DNSKEY record for venabler.com at child.
 54.346: venabler.com INFO No DNSKEY(s) found at child, other tests skipped.
 54.346: venabler.com INFO Done testing DNSSEC for venabler.com.
 54.347: venabler.com INFO Test completed for zone venabler.com.
