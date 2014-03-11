  0.000: vikab.com INFO Begin testing zone vikab.com with version 1.5.0.
  0.001: vikab.com INFO Begin testing delegation for vikab.com.
 22.228: vikab.com INFO Name servers listed at parent: ns1.vikab.com,ns2.vikab.com,ns3.vikab.com
 26.428: vikab.com INFO Name servers listed at child: ns1.vikab.com,ns2.vikab.com,ns3.vikab.com
 26.428: vikab.com NOTICE No IPv6 name servers found.
 26.678: vikab.com INFO Parent glue for vikab.com found: ns1.vikab.com (148.160.17.196)
 26.837: vikab.com INFO Parent glue for vikab.com found: ns2.vikab.com (148.160.17.197)
 27.094: vikab.com INFO Parent glue for vikab.com found: ns3.vikab.com (212.247.61.232)
 27.289: vikab.com INFO Checking glue for ns1.vikab.com (148.160.17.196).
 27.336: vikab.com INFO Child glue for vikab.com found: ns1.vikab.com (148.160.17.196)
 27.336: vikab.com INFO Checking glue for ns2.vikab.com (148.160.17.197).
 27.435: vikab.com INFO Child glue for vikab.com found: ns2.vikab.com (148.160.17.197)
 27.471: vikab.com INFO Checking glue for ns3.vikab.com (212.247.61.232).
 27.508: vikab.com INFO Child glue for vikab.com found: ns3.vikab.com (212.247.61.232)
 27.509: vikab.com INFO Parent glue for vikab.com found: ns1.vikab.com (148.160.17.196)
 27.509: vikab.com INFO Parent glue for vikab.com found: ns2.vikab.com (148.160.17.197)
 27.510: vikab.com INFO Parent glue for vikab.com found: ns3.vikab.com (212.247.61.232)
 29.740: vikab.com INFO It is possible to build a referral packet for vikab.com that works without EDNS0.
 29.740: vikab.com INFO Done testing delegation for vikab.com.
 29.740: vikab.com INFO Begin testing name server ns1.vikab.com.
 29.741: vikab.com INFO Begin testing host ns1.vikab.com.
 30.167: vikab.com INFO Begin testing address 148.160.17.196.
 40.947: vikab.com WARNING Could not find reverse address for 148.160.17.196 (196.17.160.148.in-addr.arpa.).
 40.947: vikab.com INFO Done testing address 148.160.17.196.
 40.947: vikab.com INFO Done testing host ns1.vikab.com.
 41.507: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) answers queries over UDP.
 41.541: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) answers queries over TCP.
 41.577: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) is not recursive.
 41.697: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) authoritative for vikab.com.
 41.949: vikab.com INFO Name server ns1.vikab.com (148.160.17.196) closed for zone transfer of vikab.com.
 41.966: vikab.com NOTICE No answer received from 148.160.17.196 when querying for hostname.bind/CH/TXT.
 59.996: vikab.com INFO Done testing name server ns1.vikab.com.
 59.996: vikab.com INFO Begin testing name server ns2.vikab.com.
 59.996: vikab.com INFO Begin testing host ns2.vikab.com.
 60.562: vikab.com INFO Begin testing address 148.160.17.197.
 61.047: vikab.com WARNING Could not find reverse address for 148.160.17.197 (197.17.160.148.in-addr.arpa.).
 61.048: vikab.com INFO Done testing address 148.160.17.197.
 61.048: vikab.com INFO Done testing host ns2.vikab.com.
 61.469: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) answers queries over UDP.
 61.521: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) answers queries over TCP.
 61.540: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) is not recursive.
 61.621: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) authoritative for vikab.com.
 61.876: vikab.com INFO Name server ns2.vikab.com (148.160.17.197) closed for zone transfer of vikab.com.
 61.914: vikab.com NOTICE No answer received from 148.160.17.197 when querying for hostname.bind/CH/TXT.
 79.958: vikab.com INFO Done testing name server ns2.vikab.com.
 79.958: vikab.com INFO Begin testing name server ns3.vikab.com.
 79.958: vikab.com INFO Begin testing host ns3.vikab.com.
 80.289: vikab.com INFO Begin testing address 212.247.61.232.
 87.898: vikab.com WARNING Could not find reverse address for 212.247.61.232 (232.61.247.212.in-addr.arpa.).
 87.898: vikab.com INFO Done testing address 212.247.61.232.
 87.898: vikab.com INFO Done testing host ns3.vikab.com.
 88.324: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) answers queries over UDP.
 88.372: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) answers queries over TCP.
 88.388: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) is not recursive.
 88.455: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) authoritative for vikab.com.
 88.674: vikab.com INFO Name server ns3.vikab.com (212.247.61.232) closed for zone transfer of vikab.com.
 88.691: vikab.com NOTICE No answer received from 212.247.61.232 when querying for hostname.bind/CH/TXT.
106.720: vikab.com INFO Done testing name server ns3.vikab.com.
106.720: vikab.com INFO Begin testing zone consistency for vikab.com.
109.603: vikab.com INFO SOA at address 148.160.17.197 has serial 2009041754.
109.620: vikab.com INFO SOA at address 212.247.61.232 has serial 2009041754.
109.643: vikab.com INFO SOA at address 148.160.17.196 has serial 2009041754.
109.643: vikab.com INFO All SOA records have consistent serial numbers.
109.644: vikab.com INFO All other fields in the SOA record are consistent among all name servers.
110.903: vikab.com NOTICE The listed nameservers for vikab.com all report the same set of nameservers.
110.904: vikab.com INFO Done testing zone consistency for vikab.com.
110.904: vikab.com INFO Begin testing SOA parameters for vikab.com.
110.928: vikab.com INFO Found SOA record for vikab.com.
110.928: vikab.com INFO Begin testing host ns1.vikab.com.
111.166: vikab.com INFO Begin testing address 148.160.17.196.
111.168: vikab.com WARNING Could not find reverse address for 148.160.17.196 (196.17.160.148.in-addr.arpa.).
111.168: vikab.com INFO Done testing address 148.160.17.196.
111.169: vikab.com INFO Done testing host ns1.vikab.com.
111.169: vikab.com INFO SOA MNAME for vikab.com valid (ns1.vikab.com).
111.169: vikab.com INFO SOA MNAME for vikab.com (ns1.vikab.com) listed as NS.
111.772: vikab.com INFO SOA MNAME for vikab.com (ns1.vikab.com) is authoritative.
111.772: vikab.com INFO Begin testing email address admin@vikab.com.
112.140: vikab.com INFO Mail exchangers for admin@vikab.com found mx1.vikab.com,mx2.vikab.com.
112.140: vikab.com INFO All mail servers for admin@vikab.com are in zone vikab.com.
112.140: vikab.com INFO Begin testing host mx1.vikab.com.
113.143: vikab.com INFO Begin testing address 212.247.61.231.
115.039: vikab.com INFO Done testing address 212.247.61.231.
115.039: vikab.com INFO Done testing host mx1.vikab.com.
115.623: vikab.com INFO Begin testing host mx2.vikab.com.
120.423: vikab.com INFO Begin testing address 148.160.17.214.
121.304: vikab.com INFO Done testing address 148.160.17.214.
121.304: vikab.com INFO Done testing host mx2.vikab.com.
121.598: vikab.com INFO Done testing email address admin@vikab.com.
121.599: vikab.com INFO Successful attempt to deliver email for SOA RNAME of vikab.com (admin.vikab.com) using admin@vikab.com.
121.599: vikab.com INFO SOA TTL for vikab.com OK (3600) - recommended >= 3600.
121.599: vikab.com NOTICE SOA refresh for vikab.com too small (3600) - recommended >= 14400.
121.599: vikab.com NOTICE SOA retry for vikab.com too small (600) - recommended >= 3600.
121.599: vikab.com INFO SOA expire for vikab.com OK (1814400) - recommended >= 604800.
121.599: vikab.com INFO SOA minimum for vikab.com OK (3600) - recommended between 300 and 86400.
121.600: vikab.com INFO Done testing SOA parameters for vikab.com.
121.600: vikab.com INFO Begin testing connectivity for vikab.com.
123.321: vikab.com INFO Zone announced by more than one ASN.
123.322: vikab.com NOTICE Zone announced by fewer than two IPv6 ASN.
123.322: vikab.com INFO Done testing connectivity for vikab.com.
123.322: vikab.com INFO Begin testing DNSSEC for vikab.com.
123.421: vikab.com INFO Did not find DS record for vikab.com at parent.
123.520: vikab.com INFO Servers for vikab.com have consistent extra processing status.
123.552: vikab.com INFO Authenticated denial records not found for vikab.com.
123.569: vikab.com INFO Did not find DNSKEY record for vikab.com at child.
123.569: vikab.com INFO No DNSKEY(s) found at child, other tests skipped.
123.569: vikab.com INFO Done testing DNSSEC for vikab.com.
123.570: vikab.com INFO Test completed for zone vikab.com.
