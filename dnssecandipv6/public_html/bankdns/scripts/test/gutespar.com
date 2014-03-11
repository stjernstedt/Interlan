  0.000: gutespar.com INFO Begin testing zone gutespar.com with version 1.5.0.
  0.003: gutespar.com INFO Begin testing delegation for gutespar.com.
 13.742: gutespar.com INFO Name servers listed at parent: ns1.surf-town.net,ns3.surf-town.net
 16.735: gutespar.com INFO Name servers listed at child: ns1.surf-town.net,ns2.surf-town.net,ns3.surf-town.net
 16.735: gutespar.com NOTICE Additional name server listed at child: ns2.surf-town.net
 16.735: gutespar.com NOTICE No IPv6 name servers found.
 16.776: gutespar.com INFO Parent glue for gutespar.com found: ns1.surf-town.net (212.97.132.11)
 16.976: gutespar.com INFO Parent glue for gutespar.com found: ns3.surf-town.net (212.97.129.67)
 17.165: gutespar.com INFO Checking glue for ns1.surf-town.net (212.97.132.11).
 17.165: gutespar.com INFO Checking glue for ns3.surf-town.net (212.97.129.67).
 17.166: gutespar.com INFO Parent glue for gutespar.com found: ns1.surf-town.net (212.97.132.11)
 17.167: gutespar.com INFO Parent glue for gutespar.com found: ns3.surf-town.net (212.97.129.67)
 18.580: gutespar.com INFO It is possible to build a referral packet for gutespar.com that works without EDNS0.
 18.580: gutespar.com INFO Done testing delegation for gutespar.com.
 18.581: gutespar.com INFO Begin testing name server ns1.surf-town.net.
 18.581: gutespar.com INFO Begin testing host ns1.surf-town.net.
 18.852: gutespar.com INFO Begin testing address 212.97.132.11.
 23.855: gutespar.com INFO Done testing address 212.97.132.11.
 23.856: gutespar.com INFO Done testing host ns1.surf-town.net.
 24.242: gutespar.com INFO Name server ns1.surf-town.net (212.97.132.11) answers queries over UDP.
 24.297: gutespar.com INFO Name server ns1.surf-town.net (212.97.132.11) answers queries over TCP.
 24.321: gutespar.com INFO Name server ns1.surf-town.net (212.97.132.11) is not recursive.
 24.408: gutespar.com INFO Name server ns1.surf-town.net (212.97.132.11) authoritative for gutespar.com.
 24.455: gutespar.com INFO Name server ns1.surf-town.net (212.97.132.11) closed for zone transfer of gutespar.com.
 24.473: gutespar.com NOTICE No answer received from 212.97.132.11 when querying for hostname.bind/CH/TXT.
 24.491: gutespar.com NOTICE No answer received from 212.97.132.11 when querying for version.bind/CH/TXT.
 24.508: gutespar.com NOTICE No answer received from 212.97.132.11 when querying for id.server/CH/TXT.
 24.526: gutespar.com NOTICE No answer received from 212.97.132.11 when querying for version.server/CH/TXT.
 24.526: gutespar.com INFO Done testing name server ns1.surf-town.net.
 24.526: gutespar.com INFO Begin testing name server ns2.surf-town.net.
 24.527: gutespar.com INFO Begin testing host ns2.surf-town.net.
 24.880: gutespar.com INFO Begin testing address 212.97.132.12.
 25.636: gutespar.com INFO Done testing address 212.97.132.12.
 25.636: gutespar.com INFO Done testing host ns2.surf-town.net.
 26.059: gutespar.com INFO Name server ns2.surf-town.net (212.97.132.12) answers queries over UDP.
 26.111: gutespar.com INFO Name server ns2.surf-town.net (212.97.132.12) answers queries over TCP.
 26.129: gutespar.com INFO Name server ns2.surf-town.net (212.97.132.12) is not recursive.
 26.220: gutespar.com INFO Name server ns2.surf-town.net (212.97.132.12) authoritative for gutespar.com.
 26.267: gutespar.com INFO Name server ns2.surf-town.net (212.97.132.12) closed for zone transfer of gutespar.com.
 26.286: gutespar.com NOTICE No answer received from 212.97.132.12 when querying for hostname.bind/CH/TXT.
 26.303: gutespar.com NOTICE No answer received from 212.97.132.12 when querying for version.bind/CH/TXT.
 26.321: gutespar.com NOTICE No answer received from 212.97.132.12 when querying for id.server/CH/TXT.
 26.339: gutespar.com NOTICE No answer received from 212.97.132.12 when querying for version.server/CH/TXT.
 26.339: gutespar.com INFO Done testing name server ns2.surf-town.net.
 26.339: gutespar.com INFO Begin testing name server ns3.surf-town.net.
 26.339: gutespar.com INFO Begin testing host ns3.surf-town.net.
 26.761: gutespar.com INFO Begin testing address 212.97.129.67.
 28.319: gutespar.com INFO Done testing address 212.97.129.67.
 28.327: gutespar.com INFO Done testing host ns3.surf-town.net.
 28.627: gutespar.com INFO Name server ns3.surf-town.net (212.97.129.67) answers queries over UDP.
 28.680: gutespar.com INFO Name server ns3.surf-town.net (212.97.129.67) answers queries over TCP.
 28.701: gutespar.com INFO Name server ns3.surf-town.net (212.97.129.67) is not recursive.
 28.798: gutespar.com INFO Name server ns3.surf-town.net (212.97.129.67) authoritative for gutespar.com.
 28.848: gutespar.com INFO Name server ns3.surf-town.net (212.97.129.67) closed for zone transfer of gutespar.com.
 28.868: gutespar.com NOTICE No answer received from 212.97.129.67 when querying for hostname.bind/CH/TXT.
 28.888: gutespar.com NOTICE No answer received from 212.97.129.67 when querying for version.bind/CH/TXT.
 28.907: gutespar.com NOTICE No answer received from 212.97.129.67 when querying for id.server/CH/TXT.
 28.926: gutespar.com NOTICE No answer received from 212.97.129.67 when querying for version.server/CH/TXT.
 28.927: gutespar.com INFO Done testing name server ns3.surf-town.net.
 28.927: gutespar.com INFO Begin testing zone consistency for gutespar.com.
 30.564: gutespar.com INFO SOA at address 212.97.132.11 has serial 1255597674.
 30.590: gutespar.com INFO SOA at address 212.97.129.67 has serial 1255597674.
 30.611: gutespar.com INFO SOA at address 212.97.132.12 has serial 1255597674.
 30.612: gutespar.com INFO All SOA records have consistent serial numbers.
 30.612: gutespar.com INFO All other fields in the SOA record are consistent among all name servers.
 31.436: gutespar.com NOTICE The listed nameservers for gutespar.com all report the same set of nameservers.
 31.436: gutespar.com INFO Done testing zone consistency for gutespar.com.
 31.436: gutespar.com INFO Begin testing SOA parameters for gutespar.com.
 31.457: gutespar.com INFO Found SOA record for gutespar.com.
 31.458: gutespar.com INFO Begin testing host ns1.surf-town.net.
 31.805: gutespar.com INFO Begin testing address 212.97.132.11.
 32.072: gutespar.com INFO Done testing address 212.97.132.11.
 32.072: gutespar.com INFO Done testing host ns1.surf-town.net.
 32.072: gutespar.com INFO SOA MNAME for gutespar.com valid (ns1.surf-town.net).
 32.072: gutespar.com INFO SOA MNAME for gutespar.com (ns1.surf-town.net) listed as NS.
 32.373: gutespar.com INFO SOA MNAME for gutespar.com (ns1.surf-town.net) is authoritative.
 32.373: gutespar.com INFO Begin testing email address hostmaster@surf-town.net.
 32.716: gutespar.com INFO Mail exchangers for hostmaster@surf-town.net found mail.cohaesio.com.
 32.716: gutespar.com INFO Begin testing host mail.cohaesio.com.
 33.501: gutespar.com INFO Begin testing address 212.97.128.130.
 34.945: gutespar.com INFO Done testing address 212.97.128.130.
 34.945: gutespar.com INFO Done testing host mail.cohaesio.com.
 35.297: gutespar.com INFO Done testing email address hostmaster@surf-town.net.
 35.297: gutespar.com INFO Successful attempt to deliver email for SOA RNAME of gutespar.com (hostmaster.surf-town.net) using hostmaster@surf-town.net.
 35.297: gutespar.com INFO SOA TTL for gutespar.com OK (86400) - recommended >= 3600.
 35.297: gutespar.com NOTICE SOA refresh for gutespar.com too small (10800) - recommended >= 14400.
 35.298: gutespar.com INFO SOA retry for gutespar.com OK (3600) - recommended >= 3600.
 35.298: gutespar.com INFO SOA expire for gutespar.com OK (604800) - recommended >= 604800.
 35.298: gutespar.com INFO SOA minimum for gutespar.com OK (86400) - recommended between 300 and 86400.
 35.298: gutespar.com INFO Done testing SOA parameters for gutespar.com.
 35.298: gutespar.com INFO Begin testing connectivity for gutespar.com.
 37.185: gutespar.com NOTICE Zone announced by fewer than two IPv4 ASN.
 37.185: gutespar.com NOTICE Zone announced by fewer than two IPv6 ASN.
 37.185: gutespar.com INFO Done testing connectivity for gutespar.com.
 37.186: gutespar.com INFO Begin testing DNSSEC for gutespar.com.
 37.261: gutespar.com INFO Did not find DS record for gutespar.com at parent.
 37.416: gutespar.com INFO Servers for gutespar.com have consistent extra processing status.
 37.471: gutespar.com INFO Authenticated denial records not found for gutespar.com.
 37.491: gutespar.com INFO Did not find DNSKEY record for gutespar.com at child.
 37.491: gutespar.com INFO No DNSKEY(s) found at child, other tests skipped.
 37.491: gutespar.com INFO Done testing DNSSEC for gutespar.com.
 37.492: gutespar.com INFO Test completed for zone gutespar.com.
