  0.000: norrbarke-sparbank.com INFO Begin testing zone norrbarke-sparbank.com with version 1.5.0.
  0.001: norrbarke-sparbank.com INFO Begin testing delegation for norrbarke-sparbank.com.
 14.497: norrbarke-sparbank.com INFO Name servers listed at parent: ns1.foreningssparbanken.se,ns2.foreningssparbanken.se
 15.996: norrbarke-sparbank.com INFO Name servers listed at child: ns1.foreningssparbanken.se,ns2.foreningssparbanken.se
 15.997: norrbarke-sparbank.com NOTICE No IPv6 name servers found.
 17.009: norrbarke-sparbank.com INFO It is possible to build a referral packet for norrbarke-sparbank.com that works without EDNS0.
 17.009: norrbarke-sparbank.com INFO Done testing delegation for norrbarke-sparbank.com.
 17.010: norrbarke-sparbank.com INFO Begin testing name server ns1.foreningssparbanken.se.
 17.010: norrbarke-sparbank.com INFO Begin testing host ns1.foreningssparbanken.se.
 17.237: norrbarke-sparbank.com INFO Begin testing address 164.10.45.24.
 22.894: norrbarke-sparbank.com INFO Done testing address 164.10.45.24.
 22.942: norrbarke-sparbank.com INFO Done testing host ns1.foreningssparbanken.se.
 23.182: norrbarke-sparbank.com INFO Name server ns1.foreningssparbanken.se (164.10.45.24) answers queries over UDP.
 23.197: norrbarke-sparbank.com INFO Name server ns1.foreningssparbanken.se (164.10.45.24) answers queries over TCP.
 23.207: norrbarke-sparbank.com INFO Name server ns1.foreningssparbanken.se (164.10.45.24) is not recursive.
 23.246: norrbarke-sparbank.com INFO Name server ns1.foreningssparbanken.se (164.10.45.24) authoritative for norrbarke-sparbank.com.
 23.262: norrbarke-sparbank.com INFO Name server ns1.foreningssparbanken.se (164.10.45.24) closed for zone transfer of norrbarke-sparbank.com.
 47.304: norrbarke-sparbank.com INFO Done testing name server ns1.foreningssparbanken.se.
 47.304: norrbarke-sparbank.com INFO Begin testing name server ns2.foreningssparbanken.se.
 47.304: norrbarke-sparbank.com INFO Begin testing host ns2.foreningssparbanken.se.
 47.617: norrbarke-sparbank.com INFO Begin testing address 164.10.45.25.
 49.054: norrbarke-sparbank.com INFO Done testing address 164.10.45.25.
 49.054: norrbarke-sparbank.com INFO Done testing host ns2.foreningssparbanken.se.
 49.327: norrbarke-sparbank.com INFO Name server ns2.foreningssparbanken.se (164.10.45.25) answers queries over UDP.
 49.343: norrbarke-sparbank.com INFO Name server ns2.foreningssparbanken.se (164.10.45.25) answers queries over TCP.
 49.352: norrbarke-sparbank.com INFO Name server ns2.foreningssparbanken.se (164.10.45.25) is not recursive.
 49.390: norrbarke-sparbank.com INFO Name server ns2.foreningssparbanken.se (164.10.45.25) authoritative for norrbarke-sparbank.com.
 49.407: norrbarke-sparbank.com INFO Name server ns2.foreningssparbanken.se (164.10.45.25) closed for zone transfer of norrbarke-sparbank.com.
 73.451: norrbarke-sparbank.com INFO Done testing name server ns2.foreningssparbanken.se.
 73.451: norrbarke-sparbank.com INFO Begin testing zone consistency for norrbarke-sparbank.com.
 74.453: norrbarke-sparbank.com INFO SOA at address 164.10.45.24 has serial 2013021801.
 74.463: norrbarke-sparbank.com INFO SOA at address 164.10.45.25 has serial 2013021801.
 74.463: norrbarke-sparbank.com INFO All SOA records have consistent serial numbers.
 74.463: norrbarke-sparbank.com INFO All other fields in the SOA record are consistent among all name servers.
 74.929: norrbarke-sparbank.com NOTICE The listed nameservers for norrbarke-sparbank.com all report the same set of nameservers.
 74.930: norrbarke-sparbank.com INFO Done testing zone consistency for norrbarke-sparbank.com.
 74.930: norrbarke-sparbank.com INFO Begin testing SOA parameters for norrbarke-sparbank.com.
 74.938: norrbarke-sparbank.com INFO Found SOA record for norrbarke-sparbank.com.
 74.938: norrbarke-sparbank.com INFO Begin testing host ns1.foreningssparbanken.se.
 75.155: norrbarke-sparbank.com INFO Begin testing address 164.10.45.24.
 75.632: norrbarke-sparbank.com INFO Done testing address 164.10.45.24.
 75.632: norrbarke-sparbank.com INFO Done testing host ns1.foreningssparbanken.se.
 75.632: norrbarke-sparbank.com INFO SOA MNAME for norrbarke-sparbank.com valid (ns1.foreningssparbanken.se).
 75.633: norrbarke-sparbank.com INFO SOA MNAME for norrbarke-sparbank.com (ns1.foreningssparbanken.se) listed as NS.
 75.885: norrbarke-sparbank.com INFO SOA MNAME for norrbarke-sparbank.com (ns1.foreningssparbanken.se) is authoritative.
 75.885: norrbarke-sparbank.com INFO Begin testing email address unixdrift@foreningssparbanken.se.
 76.375: norrbarke-sparbank.com INFO Mail exchangers for unixdrift@foreningssparbanken.se found foreningssparbanken.se.
 76.376: norrbarke-sparbank.com INFO Begin testing host foreningssparbanken.se.
 76.604: norrbarke-sparbank.com INFO Begin testing address 164.10.45.63.
 77.134: norrbarke-sparbank.com WARNING Could not find reverse address for 164.10.45.63 (63.45.10.164.in-addr.arpa.).
 77.134: norrbarke-sparbank.com INFO Done testing address 164.10.45.63.
 77.135: norrbarke-sparbank.com INFO Done testing host foreningssparbanken.se.
 77.374: norrbarke-sparbank.com INFO Done testing email address unixdrift@foreningssparbanken.se.
 77.374: norrbarke-sparbank.com INFO Successful attempt to deliver email for SOA RNAME of norrbarke-sparbank.com (unixdrift.foreningssparbanken.se) using unixdrift@foreningssparbanken.se.
 77.377: norrbarke-sparbank.com INFO SOA TTL for norrbarke-sparbank.com OK (3600) - recommended >= 3600.
 77.377: norrbarke-sparbank.com INFO SOA refresh for norrbarke-sparbank.com OK (21600) - recommended >= 14400.
 77.377: norrbarke-sparbank.com INFO SOA retry for norrbarke-sparbank.com OK (3600) - recommended >= 3600.
 77.377: norrbarke-sparbank.com INFO SOA expire for norrbarke-sparbank.com OK (691200) - recommended >= 604800.
 77.377: norrbarke-sparbank.com INFO SOA minimum for norrbarke-sparbank.com OK (86400) - recommended between 300 and 86400.
 77.378: norrbarke-sparbank.com INFO Done testing SOA parameters for norrbarke-sparbank.com.
 77.378: norrbarke-sparbank.com INFO Begin testing connectivity for norrbarke-sparbank.com.
 78.726: norrbarke-sparbank.com NOTICE Zone announced by fewer than two IPv4 ASN.
 78.727: norrbarke-sparbank.com NOTICE Zone announced by fewer than two IPv6 ASN.
 78.727: norrbarke-sparbank.com INFO Done testing connectivity for norrbarke-sparbank.com.
 78.727: norrbarke-sparbank.com INFO Begin testing DNSSEC for norrbarke-sparbank.com.
 79.032: norrbarke-sparbank.com INFO Did not find DS record for norrbarke-sparbank.com at parent.
 79.063: norrbarke-sparbank.com INFO Servers for norrbarke-sparbank.com have consistent extra processing status.
 79.080: norrbarke-sparbank.com INFO Authenticated denial records not found for norrbarke-sparbank.com.
 79.093: norrbarke-sparbank.com INFO Did not find DNSKEY record for norrbarke-sparbank.com at child.
 79.093: norrbarke-sparbank.com INFO No DNSKEY(s) found at child, other tests skipped.
 79.093: norrbarke-sparbank.com INFO Done testing DNSSEC for norrbarke-sparbank.com.
 79.094: norrbarke-sparbank.com INFO Test completed for zone norrbarke-sparbank.com.
