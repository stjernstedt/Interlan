  0.000: rackfish.com INFO Begin testing zone rackfish.com with version 1.5.0.
  0.001: rackfish.com INFO Begin testing delegation for rackfish.com.
 23.248: rackfish.com INFO Name servers listed at parent: ns.rackfish.net,ns2.rackfish.net,ns3.rackfish.net
 28.180: rackfish.com INFO Name servers listed at child: ns.rackfish.net,ns2.rackfish.net,ns3.rackfish.net
 28.283: rackfish.com INFO Parent glue for rackfish.com found: ns.rackfish.net (194.169.225.4)
 28.686: rackfish.com INFO Parent glue for rackfish.com found: ns2.rackfish.net (194.169.225.5)
 28.831: rackfish.com INFO Parent glue for rackfish.com found: ns3.rackfish.net (50.18.12.66)
 28.880: rackfish.com INFO Checking glue for ns.rackfish.net (194.169.225.4).
 28.880: rackfish.com INFO Checking glue for ns2.rackfish.net (194.169.225.5).
 28.880: rackfish.com INFO Checking glue for ns3.rackfish.net (50.18.12.66).
 28.881: rackfish.com INFO Parent glue for rackfish.com found: ns.rackfish.net (194.169.225.4)
 28.881: rackfish.com INFO Parent glue for rackfish.com found: ns2.rackfish.net (194.169.225.5)
 28.881: rackfish.com INFO Parent glue for rackfish.com found: ns3.rackfish.net (50.18.12.66)
 30.303: rackfish.com INFO It is possible to build a referral packet for rackfish.com that works without EDNS0.
 30.303: rackfish.com INFO Done testing delegation for rackfish.com.
 30.304: rackfish.com INFO Begin testing name server ns.rackfish.net.
 30.304: rackfish.com INFO Begin testing host ns.rackfish.net.
 30.305: rackfish.com INFO Begin testing address 194.169.225.4.
 36.981: rackfish.com INFO Done testing address 194.169.225.4.
 36.984: rackfish.com INFO Begin testing address 2001:9b0:101:3:0:0:0:4.
 52.730: rackfish.com INFO Done testing address 2001:9b0:101:3:0:0:0:4.
 52.730: rackfish.com INFO Done testing host ns.rackfish.net.
 52.739: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) answers queries over UDP.
 52.758: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) answers queries over TCP.
 52.767: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) is not recursive.
 52.809: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) authoritative for rackfish.com.
 52.825: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) closed for zone transfer of rackfish.com.
 52.838: rackfish.com INFO Legacy name server ID for ns.rackfish.net (194.169.225.4): hostname.bind = ns
 52.850: rackfish.com INFO Legacy name server ID for ns.rackfish.net (194.169.225.4): version.bind = 9.7.0-P1
 52.872: rackfish.com NOTICE No answer received from 194.169.225.4 when querying for version.server/CH/TXT.
 52.914: rackfish.com INFO Name server ns.rackfish.net (2001:9b0:101:3:0:0:0:4) answers queries over UDP.
 53.005: rackfish.com INFO Name server ns.rackfish.net (2001:9b0:101:3:0:0:0:4) answers queries over TCP.
 53.054: rackfish.com INFO Name server ns.rackfish.net (2001:9b0:101:3:0:0:0:4) is not recursive.
 53.213: rackfish.com INFO Name server ns.rackfish.net (2001:9b0:101:3:0:0:0:4) authoritative for rackfish.com.
 53.310: rackfish.com INFO Name server ns.rackfish.net (2001:9b0:101:3:0:0:0:4) closed for zone transfer of rackfish.com.
 53.355: rackfish.com INFO Legacy name server ID for ns.rackfish.net (2001:9b0:101:3:0:0:0:4): hostname.bind = ns
 53.391: rackfish.com INFO Legacy name server ID for ns.rackfish.net (2001:9b0:101:3:0:0:0:4): version.bind = 9.7.0-P1
 53.465: rackfish.com NOTICE No answer received from 2001:9b0:101:3:0:0:0:4 when querying for version.server/CH/TXT.
 53.465: rackfish.com INFO Done testing name server ns.rackfish.net.
 53.465: rackfish.com INFO Begin testing name server ns2.rackfish.net.
 53.466: rackfish.com INFO Begin testing host ns2.rackfish.net.
 53.471: rackfish.com INFO Begin testing address 194.169.225.5.
 54.239: rackfish.com INFO Done testing address 194.169.225.5.
 54.240: rackfish.com INFO Begin testing address 2001:9b0:101:3:0:0:0:5.
 54.785: rackfish.com INFO Done testing address 2001:9b0:101:3:0:0:0:5.
 54.785: rackfish.com INFO Done testing host ns2.rackfish.net.
 54.799: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) answers queries over UDP.
 54.818: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) answers queries over TCP.
 54.836: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) is not recursive.
 54.899: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) authoritative for rackfish.com.
 54.915: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) closed for zone transfer of rackfish.com.
 54.922: rackfish.com INFO Legacy name server ID for ns2.rackfish.net (194.169.225.5): hostname.bind = ns2
 54.932: rackfish.com INFO Legacy name server ID for ns2.rackfish.net (194.169.225.5): version.bind = 9.7.0-P1
 54.947: rackfish.com NOTICE No answer received from 194.169.225.5 when querying for version.server/CH/TXT.
 54.983: rackfish.com INFO Name server ns2.rackfish.net (2001:9b0:101:3:0:0:0:5) answers queries over UDP.
 55.050: rackfish.com INFO Name server ns2.rackfish.net (2001:9b0:101:3:0:0:0:5) answers queries over TCP.
 55.090: rackfish.com INFO Name server ns2.rackfish.net (2001:9b0:101:3:0:0:0:5) is not recursive.
 55.243: rackfish.com INFO Name server ns2.rackfish.net (2001:9b0:101:3:0:0:0:5) authoritative for rackfish.com.
 55.344: rackfish.com INFO Name server ns2.rackfish.net (2001:9b0:101:3:0:0:0:5) closed for zone transfer of rackfish.com.
 55.393: rackfish.com INFO Legacy name server ID for ns2.rackfish.net (2001:9b0:101:3:0:0:0:5): hostname.bind = ns2
 55.434: rackfish.com INFO Legacy name server ID for ns2.rackfish.net (2001:9b0:101:3:0:0:0:5): version.bind = 9.7.0-P1
 55.514: rackfish.com NOTICE No answer received from 2001:9b0:101:3:0:0:0:5 when querying for version.server/CH/TXT.
 55.515: rackfish.com INFO Done testing name server ns2.rackfish.net.
 55.515: rackfish.com INFO Begin testing name server ns3.rackfish.net.
 55.519: rackfish.com INFO Begin testing host ns3.rackfish.net.
 56.235: rackfish.com INFO Begin testing address 50.18.12.66.
 82.619: rackfish.com INFO Done testing address 50.18.12.66.
 82.619: rackfish.com INFO Done testing host ns3.rackfish.net.
 83.771: rackfish.com INFO Name server ns3.rackfish.net (50.18.12.66) answers queries over UDP.
 84.136: rackfish.com INFO Name server ns3.rackfish.net (50.18.12.66) answers queries over TCP.
 84.329: rackfish.com INFO Name server ns3.rackfish.net (50.18.12.66) is not recursive.
 85.082: rackfish.com INFO Name server ns3.rackfish.net (50.18.12.66) authoritative for rackfish.com.
 85.632: rackfish.com INFO Name server ns3.rackfish.net (50.18.12.66) closed for zone transfer of rackfish.com.
 85.841: rackfish.com INFO Legacy name server ID for ns3.rackfish.net (50.18.12.66): hostname.bind = ip-10-197-22-150
 86.026: rackfish.com INFO Legacy name server ID for ns3.rackfish.net (50.18.12.66): version.bind = 9.8.1-P1
 86.398: rackfish.com NOTICE No answer received from 50.18.12.66 when querying for version.server/CH/TXT.
 86.398: rackfish.com INFO Done testing name server ns3.rackfish.net.
 86.398: rackfish.com INFO Begin testing zone consistency for rackfish.com.
 88.380: rackfish.com INFO SOA at address 2001:9b0:101:3:0:0:0:4 has serial 2010040634.
 88.564: rackfish.com INFO SOA at address 50.18.12.66 has serial 2010040634.
 88.599: rackfish.com INFO SOA at address 2001:9b0:101:3:0:0:0:5 has serial 2010040634.
 88.660: rackfish.com INFO SOA at address 194.169.225.5 has serial 2010040634.
 88.723: rackfish.com INFO SOA at address 194.169.225.4 has serial 2010040634.
 88.736: rackfish.com INFO All SOA records have consistent serial numbers.
 88.740: rackfish.com INFO All other fields in the SOA record are consistent among all name servers.
 89.741: rackfish.com NOTICE The listed nameservers for rackfish.com all report the same set of nameservers.
 89.742: rackfish.com INFO Done testing zone consistency for rackfish.com.
 89.742: rackfish.com INFO Begin testing SOA parameters for rackfish.com.
 89.772: rackfish.com INFO Found SOA record for rackfish.com.
 89.772: rackfish.com INFO Begin testing host ns.phosworks.net.
102.714: rackfish.com INFO Begin testing address 194.169.225.4.
102.760: rackfish.com INFO Done testing address 194.169.225.4.
102.761: rackfish.com INFO Begin testing address 2001:9b0:101:3:0:0:0:4.
102.822: rackfish.com INFO Done testing address 2001:9b0:101:3:0:0:0:4.
102.822: rackfish.com INFO Done testing host ns.phosworks.net.
102.822: rackfish.com INFO SOA MNAME for rackfish.com valid (ns.phosworks.net).
102.822: rackfish.com NOTICE SOA MNAME for rackfish.com (ns.phosworks.net) not listed as NS.
102.897: rackfish.com INFO SOA MNAME for rackfish.com (ns.phosworks.net) is authoritative.
102.980: rackfish.com INFO SOA MNAME for rackfish.com (ns.phosworks.net) is authoritative.
102.980: rackfish.com INFO Begin testing email address registry@phosworks.net.
109.696: rackfish.com INFO Mail exchangers for registry@phosworks.net found smtp-in.sto-hy.se.stejtech.net,smtp-in.sto-ste.se.stejtech.net.
109.697: rackfish.com INFO Begin testing host smtp-in.sto-hy.se.stejtech.net.
110.957: rackfish.com INFO Begin testing address 79.136.102.100.
112.904: rackfish.com INFO Done testing address 79.136.102.100.
112.904: rackfish.com INFO Begin testing address 91.236.208.10.
115.132: rackfish.com INFO Done testing address 91.236.208.10.
115.133: rackfish.com INFO Begin testing address 2001:67c:27e0:2110:0:0:0:1b01.
116.847: rackfish.com INFO Done testing address 2001:67c:27e0:2110:0:0:0:1b01.
116.848: rackfish.com INFO Begin testing address 2001:9b0:1:703:0:0:0:1b01.
118.493: rackfish.com INFO Done testing address 2001:9b0:1:703:0:0:0:1b01.
118.493: rackfish.com INFO Done testing host smtp-in.sto-hy.se.stejtech.net.
118.507: rackfish.com INFO Begin testing host smtp-in.sto-ste.se.stejtech.net.
118.989: rackfish.com INFO Begin testing address 79.136.102.90.
120.706: rackfish.com INFO Done testing address 79.136.102.90.
120.707: rackfish.com INFO Begin testing address 83.140.31.145.
122.028: rackfish.com INFO Done testing address 83.140.31.145.
122.029: rackfish.com INFO Begin testing address 2001:9b0:1:703:0:0:0:b002.
123.495: rackfish.com INFO Done testing address 2001:9b0:1:703:0:0:0:b002.
123.495: rackfish.com INFO Done testing host smtp-in.sto-ste.se.stejtech.net.
123.496: rackfish.com INFO Done testing email address registry@phosworks.net.
123.496: rackfish.com INFO Successful attempt to deliver email for SOA RNAME of rackfish.com (registry.phosworks.net) using registry@phosworks.net.
123.496: rackfish.com INFO SOA TTL for rackfish.com OK (3600) - recommended >= 3600.
123.496: rackfish.com NOTICE SOA refresh for rackfish.com too small (10800) - recommended >= 14400.
123.497: rackfish.com INFO SOA retry for rackfish.com OK (3600) - recommended >= 3600.
123.497: rackfish.com INFO SOA expire for rackfish.com OK (604800) - recommended >= 604800.
123.497: rackfish.com INFO SOA minimum for rackfish.com OK (86400) - recommended between 300 and 86400.
123.497: rackfish.com INFO Done testing SOA parameters for rackfish.com.
123.503: rackfish.com INFO Begin testing connectivity for rackfish.com.
126.067: rackfish.com INFO Zone announced by more than one ASN.
127.285: rackfish.com NOTICE Zone announced by fewer than two IPv6 ASN.
127.285: rackfish.com INFO Done testing connectivity for rackfish.com.
127.285: rackfish.com INFO Begin testing DNSSEC for rackfish.com.
127.569: rackfish.com INFO Did not find DS record for rackfish.com at parent.
128.108: rackfish.com INFO Servers for rackfish.com have consistent extra processing status.
128.124: rackfish.com INFO Authenticated denial records not found for rackfish.com.
128.133: rackfish.com INFO Did not find DNSKEY record for rackfish.com at child.
128.134: rackfish.com INFO No DNSKEY(s) found at child, other tests skipped.
128.134: rackfish.com INFO Done testing DNSSEC for rackfish.com.
128.135: rackfish.com INFO Test completed for zone rackfish.com.
