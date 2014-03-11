  0.000: hp.com INFO Begin testing zone hp.com with version 1.0.1.
  0.002: hp.com INFO Begin testing delegation for hp.com.
  5.444: hp.com INFO Name servers listed at parent: ns1.hp.com,ns2.hp.com,ns3.hp.com,ns4.hp.com,ns5.hp.com,ns6.hp.com
  7.814: hp.com INFO Name servers listed at child: ns1.hp.com,ns2.hp.com,ns3.hp.com,ns4.hp.com,ns5.hp.com,ns6.hp.com
  7.815: hp.com NOTICE No IPv6 name servers found.
  7.894: hp.com INFO Parent glue for hp.com found: ns1.hp.com (15.219.145.12)
  8.158: hp.com INFO Parent glue for hp.com found: ns2.hp.com (15.219.160.12)
  8.301: hp.com INFO Parent glue for hp.com found: ns3.hp.com (15.203.209.12)
  8.518: hp.com INFO Parent glue for hp.com found: ns4.hp.com (15.203.224.14)
  9.048: hp.com INFO Parent glue for hp.com found: ns5.hp.com (15.195.192.37)
  9.195: hp.com INFO Parent glue for hp.com found: ns6.hp.com (15.195.208.12)
  9.224: hp.com INFO Checking glue for ns1.hp.com (15.219.145.12).
  9.401: hp.com INFO Child glue for hp.com found: ns1.hp.com (15.219.145.12)
  9.402: hp.com INFO Checking glue for ns2.hp.com (15.219.160.12).
  9.577: hp.com INFO Child glue for hp.com found: ns2.hp.com (15.219.160.12)
  9.578: hp.com INFO Checking glue for ns3.hp.com (15.203.209.12).
  9.754: hp.com INFO Child glue for hp.com found: ns3.hp.com (15.203.209.12)
  9.755: hp.com INFO Checking glue for ns4.hp.com (15.203.224.14).
  9.932: hp.com INFO Child glue for hp.com found: ns4.hp.com (15.203.224.14)
  9.934: hp.com INFO Checking glue for ns5.hp.com (15.195.192.37).
 10.118: hp.com INFO Child glue for hp.com found: ns5.hp.com (15.195.192.37)
 10.119: hp.com INFO Checking glue for ns6.hp.com (15.195.208.12).
 10.295: hp.com INFO Child glue for hp.com found: ns6.hp.com (15.195.208.12)
 10.295: hp.com INFO Done testing delegation for hp.com.
 10.296: hp.com INFO Begin testing name server ns1.hp.com.
 10.297: hp.com INFO Begin testing host ns1.hp.com.
 10.298: hp.com INFO Begin testing address 15.219.145.12.
 12.718: hp.com INFO Done testing address 15.219.145.12.
 12.718: hp.com INFO Done testing host ns1.hp.com.
 12.889: hp.com INFO Name server ns1.hp.com (15.219.145.12) is not recursive.
 13.063: hp.com INFO Name server ns1.hp.com (15.219.145.12) authoritative for hp.com.
 13.238: hp.com INFO Name server ns1.hp.com (15.219.145.12) answers queries over UDP.
 13.574: hp.com INFO Name server ns1.hp.com (15.219.145.12) answers queries over TCP.
 14.056: hp.com INFO Name server ns1.hp.com (15.219.145.12) closed for zone transfer of hp.com.
 14.222: hp.com NOTICE No answer received from 15.219.145.12 when querying for hostname.bind/CH/TXT.
 20.399: hp.com NOTICE No answer received from 15.219.145.12 when querying for id.server/CH/TXT.
 20.566: hp.com NOTICE No answer received from 15.219.145.12 when querying for version.server/CH/TXT.
 20.567: hp.com INFO Done testing name server ns1.hp.com.
 20.568: hp.com INFO Begin testing name server ns2.hp.com.
 20.569: hp.com INFO Begin testing host ns2.hp.com.
 20.571: hp.com INFO Begin testing address 15.219.160.12.
 22.098: hp.com INFO Done testing address 15.219.160.12.
 22.100: hp.com INFO Done testing host ns2.hp.com.
 22.276: hp.com INFO Name server ns2.hp.com (15.219.160.12) is not recursive.
 22.459: hp.com INFO Name server ns2.hp.com (15.219.160.12) authoritative for hp.com.
 22.642: hp.com INFO Name server ns2.hp.com (15.219.160.12) answers queries over UDP.
 22.996: hp.com INFO Name server ns2.hp.com (15.219.160.12) answers queries over TCP.
 23.503: hp.com INFO Name server ns2.hp.com (15.219.160.12) closed for zone transfer of hp.com.
 23.674: hp.com NOTICE No answer received from 15.219.160.12 when querying for hostname.bind/CH/TXT.
 29.857: hp.com NOTICE No answer received from 15.219.160.12 when querying for id.server/CH/TXT.
 30.032: hp.com NOTICE No answer received from 15.219.160.12 when querying for version.server/CH/TXT.
 30.033: hp.com INFO Done testing name server ns2.hp.com.
 30.033: hp.com INFO Begin testing name server ns3.hp.com.
 30.033: hp.com INFO Begin testing host ns3.hp.com.
 30.034: hp.com INFO Begin testing address 15.203.209.12.
 31.225: hp.com INFO Done testing address 15.203.209.12.
 31.226: hp.com INFO Done testing host ns3.hp.com.
 31.377: hp.com INFO Name server ns3.hp.com (15.203.209.12) is not recursive.
 31.535: hp.com INFO Name server ns3.hp.com (15.203.209.12) authoritative for hp.com.
 31.693: hp.com INFO Name server ns3.hp.com (15.203.209.12) answers queries over UDP.
 31.990: hp.com INFO Name server ns3.hp.com (15.203.209.12) answers queries over TCP.
 32.416: hp.com INFO Name server ns3.hp.com (15.203.209.12) closed for zone transfer of hp.com.
 32.565: hp.com NOTICE No answer received from 15.203.209.12 when querying for hostname.bind/CH/TXT.
 38.720: hp.com NOTICE No answer received from 15.203.209.12 when querying for id.server/CH/TXT.
 38.868: hp.com NOTICE No answer received from 15.203.209.12 when querying for version.server/CH/TXT.
 38.870: hp.com INFO Done testing name server ns3.hp.com.
 38.872: hp.com INFO Begin testing name server ns4.hp.com.
 38.873: hp.com INFO Begin testing host ns4.hp.com.
 38.876: hp.com INFO Begin testing address 15.203.224.14.
 39.730: hp.com INFO Done testing address 15.203.224.14.
 39.731: hp.com INFO Done testing host ns4.hp.com.
 39.900: hp.com INFO Name server ns4.hp.com (15.203.224.14) is not recursive.
 40.076: hp.com INFO Name server ns4.hp.com (15.203.224.14) authoritative for hp.com.
 40.252: hp.com INFO Name server ns4.hp.com (15.203.224.14) answers queries over UDP.
 40.587: hp.com INFO Name server ns4.hp.com (15.203.224.14) answers queries over TCP.
 41.072: hp.com INFO Name server ns4.hp.com (15.203.224.14) closed for zone transfer of hp.com.
 41.240: hp.com NOTICE No answer received from 15.203.224.14 when querying for hostname.bind/CH/TXT.
 47.412: hp.com NOTICE No answer received from 15.203.224.14 when querying for id.server/CH/TXT.
 47.583: hp.com NOTICE No answer received from 15.203.224.14 when querying for version.server/CH/TXT.
 47.583: hp.com INFO Done testing name server ns4.hp.com.
 47.583: hp.com INFO Begin testing name server ns5.hp.com.
 47.584: hp.com INFO Begin testing host ns5.hp.com.
 47.585: hp.com INFO Begin testing address 15.195.192.37.
 49.448: hp.com INFO Done testing address 15.195.192.37.
 49.449: hp.com INFO Done testing host ns5.hp.com.
 49.574: hp.com INFO Name server ns5.hp.com (15.195.192.37) is not recursive.
 49.705: hp.com INFO Name server ns5.hp.com (15.195.192.37) authoritative for hp.com.
 49.838: hp.com INFO Name server ns5.hp.com (15.195.192.37) answers queries over UDP.
 50.087: hp.com INFO Name server ns5.hp.com (15.195.192.37) answers queries over TCP.
 50.441: hp.com INFO Name server ns5.hp.com (15.195.192.37) closed for zone transfer of hp.com.
 50.564: hp.com NOTICE No answer received from 15.195.192.37 when querying for hostname.bind/CH/TXT.
 56.693: hp.com NOTICE No answer received from 15.195.192.37 when querying for id.server/CH/TXT.
 56.815: hp.com NOTICE No answer received from 15.195.192.37 when querying for version.server/CH/TXT.
 56.816: hp.com INFO Done testing name server ns5.hp.com.
 56.818: hp.com INFO Begin testing name server ns6.hp.com.
 56.820: hp.com INFO Begin testing host ns6.hp.com.
 56.822: hp.com INFO Begin testing address 15.195.208.12.
 57.675: hp.com INFO Done testing address 15.195.208.12.
 57.676: hp.com INFO Done testing host ns6.hp.com.
 57.803: hp.com INFO Name server ns6.hp.com (15.195.208.12) is not recursive.
 57.936: hp.com INFO Name server ns6.hp.com (15.195.208.12) authoritative for hp.com.
 58.069: hp.com INFO Name server ns6.hp.com (15.195.208.12) answers queries over UDP.
 58.320: hp.com INFO Name server ns6.hp.com (15.195.208.12) answers queries over TCP.
 58.674: hp.com INFO Name server ns6.hp.com (15.195.208.12) closed for zone transfer of hp.com.
 58.807: hp.com NOTICE No answer received from 15.195.208.12 when querying for hostname.bind/CH/TXT.
 64.936: hp.com NOTICE No answer received from 15.195.208.12 when querying for id.server/CH/TXT.
 65.060: hp.com NOTICE No answer received from 15.195.208.12 when querying for version.server/CH/TXT.
 65.061: hp.com INFO Done testing name server ns6.hp.com.
 65.064: hp.com INFO Begin testing zone consistency for hp.com.
 65.214: hp.com INFO SOA at address 15.195.192.37 has serial 1012722.
 65.369: hp.com INFO SOA at address 15.203.209.12 has serial 1012722.
 65.563: hp.com INFO SOA at address 15.219.160.12 has serial 1012722.
 65.693: hp.com INFO SOA at address 15.195.208.12 has serial 1012722.
 65.874: hp.com INFO SOA at address 15.203.224.14 has serial 1012722.
 66.049: hp.com INFO SOA at address 15.219.145.12 has serial 1012722.
 66.050: hp.com INFO All SOA records have consistent serial numbers.
 66.051: hp.com INFO All SOA records are consistent among all name servers.
 66.051: hp.com INFO Done testing zone consistency for hp.com.
 66.052: hp.com INFO Begin testing SOA parameters for hp.com.
 66.232: hp.com INFO Found SOA record for hp.com.
 66.233: hp.com INFO Begin testing host charon.core.hp.com.
 66.771: hp.com INFO Begin testing address 15.203.209.10.
 67.285: hp.com INFO Done testing address 15.203.209.10.
 67.285: hp.com INFO Done testing host charon.core.hp.com.
 67.286: hp.com INFO SOA MNAME for hp.com valid (charon.core.hp.com).
 67.286: hp.com NOTICE SOA MNAME for hp.com (charon.core.hp.com) not listed as NS.
 67.435: hp.com NOTICE No answer received from 15.203.209.10 when querying for hp.com/IN/SOA.
 67.437: hp.com INFO SOA MNAME for hp.com (charon.core.hp.com) is authoritative.
 67.440: hp.com INFO Begin testing email address hostmaster@hp.com.
 67.632: hp.com INFO Mail exchangers for hostmaster@hp.com found smtp.hp.com.
 67.633: hp.com INFO All mail servers for hostmaster@hp.com are in zone hp.com.
 67.635: hp.com INFO Begin testing host smtp.hp.com.
 68.258: hp.com INFO Begin testing address 15.193.32.72.
 68.772: hp.com INFO Done testing address 15.193.32.72.
 68.773: hp.com INFO Done testing host smtp.hp.com.
 69.087: hp.com WARNING Delivery over IPv4 to hostmaster@hp.com could not be done.
 69.088: hp.com INFO Delivery over IPv6 to hostmaster@hp.com could not be done.
 69.089: hp.com INFO Done testing email address hostmaster@hp.com.
 69.089: hp.com WARNING Failed to deliver email for SOA RNAME of hp.com (hostmaster.hp.com) using hostmaster@hp.com.
 69.090: hp.com INFO SOA TTL for hp.com OK (7200) - recommended >= 3600.
 69.090: hp.com NOTICE SOA refresh for hp.com too small (3600) - recommended >= 14400.
 69.092: hp.com NOTICE SOA retry for hp.com too small (900) - recommended >= 3600.
 69.094: hp.com INFO SOA expire for hp.com OK (604800) - recommended >= 604800.
 69.095: hp.com INFO SOA minimum for hp.com OK (600) - recommended between 300 and 86400.
 69.096: hp.com INFO Done testing SOA parameters for hp.com.
 69.098: hp.com INFO Begin testing connectivity for hp.com.
 69.515: hp.com INFO Name server 15.219.160.12 announced by: 71
 69.683: hp.com INFO Name server 15.195.208.12 announced by: 7430,71
 69.685: hp.com WARNING Name server 15.195.208.12 announced by multiple AS.
 69.830: hp.com INFO Name server 15.203.224.14 announced by: 71
 69.992: hp.com INFO Name server 15.195.192.37 announced by: 7430,71
 69.993: hp.com WARNING Name server 15.195.192.37 announced by multiple AS.
 70.159: hp.com INFO Name server 15.203.209.12 announced by: 71
 70.331: hp.com INFO Name server 15.219.145.12 announced by: 71
 70.333: hp.com INFO Zone announced by ASN: 7430,71
 70.334: hp.com INFO Zone announced by more than one ASN (2).
 70.336: hp.com INFO Zone announced by IPv6 ASN: 
 70.337: hp.com NOTICE Zone announced by only one IPv6 ASN (0).
 70.338: hp.com INFO Done testing connectivity for hp.com.
 70.341: hp.com INFO Begin testing DNSSEC for hp.com.
 70.728: hp.com INFO Did not find DS record for hp.com at parent.
 72.494: hp.com INFO Servers for hp.com have consistent extra processing status.
 72.494: hp.com INFO Did not find DNSKEY record for hp.com at child.
 72.494: hp.com INFO No DNSKEY(s) found at child, other tests skipped.
 72.495: hp.com INFO Done testing DNSSEC for hp.com.
 72.495: hp.com INFO Test completed for zone hp.com.
