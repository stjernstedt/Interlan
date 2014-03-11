  0.000: vikab.com INFO Begin testing zone vikab.com with version 1.0.1.
  0.000: vikab.com INFO Begin testing delegation for vikab.com.
  4.195: vikab.com INFO Name servers listed at parent: ns1.vikab.com,ns2.vikab.com,ns3.vikab.com
  4.332: vikab.com INFO Name servers listed at child: ns1.vikab.com,ns2.vikab.com,ns3.vikab.com
  4.332: vikab.com NOTICE No IPv6 name servers found.
  4.343: vikab.com INFO Parent glue for vikab.com found: ns1.vikab.com (148.160.17.196)
  4.539: vikab.com INFO Parent glue for vikab.com found: ns2.vikab.com (148.160.17.197)
  4.700: vikab.com INFO Parent glue for vikab.com found: ns3.vikab.com (212.247.61.232)
  4.820: vikab.com INFO Checking glue for ns1.vikab.com (148.160.17.196).
  4.837: vikab.com INFO Child glue for vikab.com found: ns1.vikab.com (148.160.17.196)
  4.837: vikab.com INFO Checking glue for ns2.vikab.com (148.160.17.197).
  4.853: vikab.com INFO Child glue for vikab.com found: ns2.vikab.com (148.160.17.197)
  4.854: vikab.com INFO Checking glue for ns3.vikab.com (212.247.61.232).
  4.870: vikab.com INFO Child glue for vikab.com found: ns3.vikab.com (212.247.61.232)
  4.870: vikab.com INFO Done testing delegation for vikab.com.
  4.870: vikab.com INFO Begin testing name server ns1.vikab.com.
  4.871: vikab.com INFO Begin testing host ns1.vikab.com.
  4.871: vikab.com INFO Begin testing address 148.160.17.196.
  6.032: vikab.com WARNING Could not find reverse address for 148.160.17.196 (196.17.160.148.in-addr.arpa.).
  6.032: vikab.com INFO Done testing address 148.160.17.196.
  6.032: vikab.com INFO Done testing host ns1.vikab.com.
  6.050: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) is not recursive.
  6.068: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) authoritative for vikab.com.
  6.086: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) answers queries over UDP.
  6.122: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) answers queries over TCP.
  6.330: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) closed for zone transfer of vikab.com.
  6.346: vikab.com NOTICE No answer received from 148.160.17.196 when querying for hostname.bind/CH/TXT.
 24.351: vikab.com INFO Done testing name server ns1.vikab.com.
 24.351: vikab.com INFO Begin testing name server ns2.vikab.com.
 24.351: vikab.com INFO Begin testing host ns2.vikab.com.
 24.352: vikab.com INFO Begin testing address 148.160.17.197.
 24.368: vikab.com WARNING Could not find reverse address for 148.160.17.197 (197.17.160.148.in-addr.arpa.).
 24.368: vikab.com INFO Done testing address 148.160.17.197.
 24.368: vikab.com INFO Done testing host ns2.vikab.com.
 24.387: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) is not recursive.
 24.405: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) authoritative for vikab.com.
 24.422: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) answers queries over UDP.
 24.457: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) answers queries over TCP.
 24.646: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) closed for zone transfer of vikab.com.
 24.662: vikab.com NOTICE No answer received from 148.160.17.197 when querying for hostname.bind/CH/TXT.
 42.663: vikab.com INFO Done testing name server ns2.vikab.com.
 42.663: vikab.com INFO Begin testing name server ns3.vikab.com.
 42.663: vikab.com INFO Begin testing host ns3.vikab.com.
 42.663: vikab.com INFO Begin testing address 212.247.61.232.
 44.655: vikab.com WARNING Could not find reverse address for 212.247.61.232 (232.61.247.212.in-addr.arpa.).
 44.655: vikab.com INFO Done testing address 212.247.61.232.
 44.655: vikab.com INFO Done testing host ns3.vikab.com.
 44.672: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) is not recursive.
 44.691: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) authoritative for vikab.com.
 44.708: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) answers queries over UDP.
 44.761: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) answers queries over TCP.
 44.987: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) closed for zone transfer of vikab.com.
 45.003: vikab.com NOTICE No answer received from 212.247.61.232 when querying for hostname.bind/CH/TXT.
 63.002: vikab.com INFO Done testing name server ns3.vikab.com.
 63.003: vikab.com INFO Begin testing zone consistency for vikab.com.
 63.023: vikab.com INFO SOA at address 148.160.17.197 has serial 2009041716.
 63.039: vikab.com INFO SOA at address 212.247.61.232 has serial 2009041716.
 63.055: vikab.com INFO SOA at address 148.160.17.196 has serial 2009041716.
 63.055: vikab.com INFO All SOA records have consistent serial numbers.
 63.055: vikab.com INFO All SOA records are consistent among all name servers.
 63.055: vikab.com INFO Done testing zone consistency for vikab.com.
 63.055: vikab.com INFO Begin testing SOA parameters for vikab.com.
 63.073: vikab.com INFO Found SOA record for vikab.com.
 63.073: vikab.com INFO Begin testing host ns1.vikab.com.
 63.074: vikab.com INFO Begin testing address 148.160.17.196.
 63.075: vikab.com WARNING Could not find reverse address for 148.160.17.196 (196.17.160.148.in-addr.arpa.).
 63.075: vikab.com INFO Done testing address 148.160.17.196.
 63.075: vikab.com INFO Done testing host ns1.vikab.com.
 63.075: vikab.com INFO SOA MNAME for vikab.com valid (ns1.vikab.com).
 63.075: vikab.com INFO SOA MNAME for vikab.com (ns1.vikab.com) listed as NS.
 63.093: vikab.com INFO SOA MNAME for vikab.com (ns1.vikab.com) is authoritative.
 63.093: vikab.com INFO Begin testing email address admin@vikab.com.
 63.112: vikab.com INFO Mail exchangers for admin@vikab.com found mx1.vikab.com,mx2.vikab.com.
 63.112: vikab.com INFO All mail servers for admin@vikab.com are in zone vikab.com.
 63.112: vikab.com INFO Begin testing host mx1.vikab.com.
 63.143: vikab.com INFO Begin testing address 212.247.61.231.
 63.159: vikab.com INFO Done testing address 212.247.61.231.
 63.159: vikab.com INFO Done testing host mx1.vikab.com.
 63.160: vikab.com INFO Begin testing mail server mx1.vikab.com (212.247.61.231) with admin@vikab.com.
 63.305: vikab.com INFO SMTP banner: mx1.vikab.com ESMTP Halon Mail Gateway (H/OS)
 63.490: vikab.com INFO SMTP testing of mx1.vikab.com (212.247.61.231) with admin@vikab.com succeeded without errors.
 63.490: vikab.com INFO Done testing mail server mx1.vikab.com (212.247.61.231) with admin@vikab.com.
 63.490: vikab.com INFO Begin testing host mx2.vikab.com.
 63.524: vikab.com INFO Begin testing address 148.160.17.214.
 63.541: vikab.com INFO Done testing address 148.160.17.214.
 63.542: vikab.com INFO Done testing host mx2.vikab.com.
 63.542: vikab.com INFO Delivery over IPv4 to admin@vikab.com ok.
 63.542: vikab.com INFO Delivery over IPv6 to admin@vikab.com could not be done.
 63.542: vikab.com INFO Done testing email address admin@vikab.com.
 63.542: vikab.com INFO Successful attempt to deliver email for SOA RNAME of vikab.com (admin.vikab.com) using admin@vikab.com.
 63.542: vikab.com INFO SOA TTL for vikab.com OK (3600) - recommended >= 3600.
 63.543: vikab.com NOTICE SOA refresh for vikab.com too small (3600) - recommended >= 14400.
 63.543: vikab.com NOTICE SOA retry for vikab.com too small (600) - recommended >= 3600.
 63.543: vikab.com INFO SOA expire for vikab.com OK (1814400) - recommended >= 604800.
 63.543: vikab.com INFO SOA minimum for vikab.com OK (3600) - recommended between 300 and 86400.
 63.543: vikab.com INFO Done testing SOA parameters for vikab.com.
 63.543: vikab.com INFO Begin testing connectivity for vikab.com.
 63.861: vikab.com INFO Name server 212.247.61.232 announced by: 1257
 64.003: vikab.com INFO Name server 148.160.17.196 announced by: 44743
 64.136: vikab.com INFO Name server 148.160.17.197 announced by: 44743
 64.136: vikab.com INFO Zone announced by ASN: 44743,1257
 64.136: vikab.com INFO Zone announced by more than one ASN (2).
 64.136: vikab.com INFO Zone announced by IPv6 ASN: 
 64.136: vikab.com NOTICE Zone announced by only one IPv6 ASN (0).
 64.136: vikab.com INFO Done testing connectivity for vikab.com.
 64.137: vikab.com INFO Begin testing DNSSEC for vikab.com.
 64.363: vikab.com INFO Did not find DS record for vikab.com at parent.
 64.454: vikab.com INFO Servers for vikab.com have consistent extra processing status.
 64.454: vikab.com INFO Did not find DNSKEY record for vikab.com at child.
 64.454: vikab.com INFO No DNSKEY(s) found at child, other tests skipped.
 64.455: vikab.com INFO Done testing DNSSEC for vikab.com.
 64.455: vikab.com INFO Test completed for zone vikab.com.
