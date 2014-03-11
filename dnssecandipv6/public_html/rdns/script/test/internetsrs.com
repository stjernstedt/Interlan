  0.000: internetsrs.com INFO Begin testing zone internetsrs.com with version 1.5.0.
  0.001: internetsrs.com INFO Begin testing delegation for internetsrs.com.
 23.455: internetsrs.com INFO Name servers listed at parent: ns1.wk.se,ns2.wk.se
 25.235: internetsrs.com INFO Name servers listed at child: ns1.wk.se,ns2.wk.se
 25.235: internetsrs.com NOTICE No IPv6 name servers found.
 26.868: internetsrs.com INFO It is possible to build a referral packet for internetsrs.com that works without EDNS0.
 26.868: internetsrs.com INFO Done testing delegation for internetsrs.com.
 26.868: internetsrs.com INFO Begin testing name server ns1.wk.se.
 26.881: internetsrs.com INFO Begin testing host ns1.wk.se.
 27.173: internetsrs.com INFO Begin testing address 193.0.253.7.
 33.168: internetsrs.com INFO Done testing address 193.0.253.7.
 33.168: internetsrs.com INFO Done testing host ns1.wk.se.
 33.694: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) answers queries over UDP.
 33.763: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) answers queries over TCP.
 33.813: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) is not recursive.
 33.975: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) authoritative for internetsrs.com.
 34.124: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) closed for zone transfer of internetsrs.com.
 34.206: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for hostname.bind/CH/TXT.
 34.229: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for version.bind/CH/TXT.
 34.253: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for id.server/CH/TXT.
 34.277: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for version.server/CH/TXT.
 34.284: internetsrs.com INFO Done testing name server ns1.wk.se.
 34.284: internetsrs.com INFO Begin testing name server ns2.wk.se.
 34.284: internetsrs.com INFO Begin testing host ns2.wk.se.
 34.562: internetsrs.com INFO Begin testing address 195.67.116.240.
 37.832: internetsrs.com INFO Done testing address 195.67.116.240.
 37.832: internetsrs.com INFO Done testing host ns2.wk.se.
 38.160: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) answers queries over UDP.
 38.214: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) answers queries over TCP.
 38.248: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) is not recursive.
 38.350: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) authoritative for internetsrs.com.
 38.384: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) closed for zone transfer of internetsrs.com.
 38.396: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for hostname.bind/CH/TXT.
 38.407: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for version.bind/CH/TXT.
 38.432: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for id.server/CH/TXT.
 38.445: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for version.server/CH/TXT.
 38.445: internetsrs.com INFO Done testing name server ns2.wk.se.
 38.445: internetsrs.com INFO Begin testing zone consistency for internetsrs.com.
 39.866: internetsrs.com INFO SOA at address 195.67.116.240 has serial 2013061201.
 39.889: internetsrs.com INFO SOA at address 193.0.253.7 has serial 2013061201.
 39.889: internetsrs.com INFO All SOA records have consistent serial numbers.
 39.889: internetsrs.com INFO All other fields in the SOA record are consistent among all name servers.
 40.797: internetsrs.com NOTICE The listed nameservers for internetsrs.com all report the same set of nameservers.
 40.798: internetsrs.com INFO Done testing zone consistency for internetsrs.com.
 40.798: internetsrs.com INFO Begin testing SOA parameters for internetsrs.com.
 40.810: internetsrs.com INFO Found SOA record for internetsrs.com.
 40.810: internetsrs.com INFO Begin testing host ns1.wk.se.
 41.255: internetsrs.com INFO Begin testing address 193.0.253.7.
 41.531: internetsrs.com INFO Done testing address 193.0.253.7.
 41.534: internetsrs.com INFO Done testing host ns1.wk.se.
 41.534: internetsrs.com INFO SOA MNAME for internetsrs.com valid (ns1.wk.se).
 41.534: internetsrs.com INFO SOA MNAME for internetsrs.com (ns1.wk.se) listed as NS.
 41.894: internetsrs.com INFO SOA MNAME for internetsrs.com (ns1.wk.se) is authoritative.
 41.895: internetsrs.com INFO Begin testing email address dns@wkscripted.se.
 42.238: internetsrs.com INFO Mail exchangers for dns@wkscripted.se found smtp2.wk.se,smtp3.wk.se.
 42.239: internetsrs.com INFO Begin testing host smtp2.wk.se.
 42.838: internetsrs.com INFO Begin testing address 193.0.253.19.
 43.506: internetsrs.com INFO Done testing address 193.0.253.19.
 43.507: internetsrs.com INFO Done testing host smtp2.wk.se.
 43.748: internetsrs.com INFO Begin testing host smtp3.wk.se.
 44.455: internetsrs.com INFO Begin testing address 195.67.116.240.
 44.762: internetsrs.com INFO Done testing address 195.67.116.240.
 44.763: internetsrs.com INFO Done testing host smtp3.wk.se.
 45.043: internetsrs.com INFO Done testing email address dns@wkscripted.se.
 45.043: internetsrs.com INFO Successful attempt to deliver email for SOA RNAME of internetsrs.com (dns.wkscripted.se) using dns@wkscripted.se.
 45.043: internetsrs.com INFO SOA TTL for internetsrs.com OK (86400) - recommended >= 3600.
 45.043: internetsrs.com NOTICE SOA refresh for internetsrs.com too small (7200) - recommended >= 14400.
 45.044: internetsrs.com INFO SOA retry for internetsrs.com OK (3600) - recommended >= 3600.
 45.044: internetsrs.com INFO SOA expire for internetsrs.com OK (2419200) - recommended >= 604800.
 45.044: internetsrs.com INFO SOA minimum for internetsrs.com OK (86400) - recommended between 300 and 86400.
 45.044: internetsrs.com INFO Done testing SOA parameters for internetsrs.com.
 45.044: internetsrs.com INFO Begin testing connectivity for internetsrs.com.
 46.720: internetsrs.com INFO Zone announced by more than one ASN.
 46.721: internetsrs.com NOTICE Zone announced by fewer than two IPv6 ASN.
 46.721: internetsrs.com INFO Done testing connectivity for internetsrs.com.
 46.721: internetsrs.com INFO Begin testing DNSSEC for internetsrs.com.
 46.816: internetsrs.com INFO Did not find DS record for internetsrs.com at parent.
 46.918: internetsrs.com INFO Servers for internetsrs.com have consistent extra processing status.
 46.957: internetsrs.com INFO Authenticated denial records not found for internetsrs.com.
 47.011: internetsrs.com INFO Did not find DNSKEY record for internetsrs.com at child.
 47.011: internetsrs.com INFO No DNSKEY(s) found at child, other tests skipped.
 47.011: internetsrs.com INFO Done testing DNSSEC for internetsrs.com.
 47.012: internetsrs.com INFO Test completed for zone internetsrs.com.
