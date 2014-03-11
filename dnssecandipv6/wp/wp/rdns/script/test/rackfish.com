  0.000: rackfish.com INFO Begin testing zone rackfish.com with version 1.0.1.
  0.001: rackfish.com INFO Begin testing delegation for rackfish.com.
  4.063: rackfish.com INFO Name servers listed at parent: ns.rackfish.net,ns2.rackfish.net,ns3.rackfish.net
  4.325: rackfish.com INFO Name servers listed at child: ns.rackfish.net,ns2.rackfish.net,ns3.rackfish.net
  4.504: rackfish.com INFO Parent glue for rackfish.com found: ns.rackfish.net (194.169.225.4)
  4.804: rackfish.com INFO Parent glue for rackfish.com found: ns2.rackfish.net (194.169.225.5)
  5.012: rackfish.com INFO Parent glue for rackfish.com found: ns3.rackfish.net (212.247.181.5)
  5.130: rackfish.com INFO Checking glue for ns.rackfish.net (194.169.225.4).
  5.130: rackfish.com INFO Checking glue for ns2.rackfish.net (194.169.225.5).
  5.130: rackfish.com INFO Checking glue for ns3.rackfish.net (212.247.181.5).
  5.131: rackfish.com INFO Done testing delegation for rackfish.com.
  5.131: rackfish.com INFO Begin testing name server ns.rackfish.net.
  5.131: rackfish.com INFO Begin testing host ns.rackfish.net.
  5.131: rackfish.com INFO Begin testing address 194.169.225.4.
  8.510: rackfish.com INFO Done testing address 194.169.225.4.
  8.511: rackfish.com INFO Begin testing address 2001:9b0:101:3:0:0:0:4.
 10.476: rackfish.com INFO Done testing address 2001:9b0:101:3:0:0:0:4.
 10.476: rackfish.com INFO Done testing host ns.rackfish.net.
 10.489: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) is not recursive.
 10.501: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) authoritative for rackfish.com.
 10.510: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) answers queries over UDP.
 10.525: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) answers queries over TCP.
 10.546: rackfish.com INFO Name server ns.rackfish.net (194.169.225.4) closed for zone transfer of rackfish.com.
 10.558: rackfish.com INFO Legacy name server ID for ns.rackfish.net (194.169.225.4): hostname.bind = ns
 10.567: rackfish.com INFO Legacy name server ID for ns.rackfish.net (194.169.225.4): version.bind = 9.5.0-P2.1
 10.584: rackfish.com NOTICE No answer received from 194.169.225.4 when querying for version.server/CH/TXT.
 10.585: rackfish.com INFO IPv6 disabled - will not test name server at 2001:9b0:101:3:0:0:0:4
 10.585: rackfish.com INFO Done testing name server ns.rackfish.net.
 10.585: rackfish.com INFO Begin testing name server ns2.rackfish.net.
 10.585: rackfish.com INFO Begin testing host ns2.rackfish.net.
 10.586: rackfish.com INFO Begin testing address 194.169.225.5.
 10.617: rackfish.com INFO Done testing address 194.169.225.5.
 10.617: rackfish.com INFO Begin testing address 2001:9b0:101:3:0:0:0:5.
 10.668: rackfish.com INFO Done testing address 2001:9b0:101:3:0:0:0:5.
 10.668: rackfish.com INFO Done testing host ns2.rackfish.net.
 10.679: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) is not recursive.
 10.687: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) authoritative for rackfish.com.
 10.696: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) answers queries over UDP.
 10.711: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) answers queries over TCP.
 10.729: rackfish.com INFO Name server ns2.rackfish.net (194.169.225.5) closed for zone transfer of rackfish.com.
 10.737: rackfish.com INFO Legacy name server ID for ns2.rackfish.net (194.169.225.5): hostname.bind = ns2
 10.745: rackfish.com INFO Legacy name server ID for ns2.rackfish.net (194.169.225.5): version.bind = 9.5.0-P2.1
 10.761: rackfish.com NOTICE No answer received from 194.169.225.5 when querying for version.server/CH/TXT.
 10.761: rackfish.com INFO IPv6 disabled - will not test name server at 2001:9b0:101:3:0:0:0:5
 10.761: rackfish.com INFO Done testing name server ns2.rackfish.net.
 10.762: rackfish.com INFO Begin testing name server ns3.rackfish.net.
 10.762: rackfish.com INFO Begin testing host ns3.rackfish.net.
 10.762: rackfish.com INFO Begin testing address 212.247.181.5.
 11.026: rackfish.com INFO Done testing address 212.247.181.5.
 11.026: rackfish.com INFO Done testing host ns3.rackfish.net.
 11.042: rackfish.com INFO Name server ns3.rackfish.net (212.247.181.5) is not recursive.
 11.052: rackfish.com INFO Name server ns3.rackfish.net (212.247.181.5) authoritative for rackfish.com.
 11.062: rackfish.com INFO Name server ns3.rackfish.net (212.247.181.5) answers queries over UDP.
 11.078: rackfish.com INFO Name server ns3.rackfish.net (212.247.181.5) answers queries over TCP.
 11.096: rackfish.com INFO Name server ns3.rackfish.net (212.247.181.5) closed for zone transfer of rackfish.com.
 11.105: rackfish.com INFO Legacy name server ID for ns3.rackfish.net (212.247.181.5): hostname.bind = ns3
 11.113: rackfish.com INFO Legacy name server ID for ns3.rackfish.net (212.247.181.5): version.bind = 9.5.0-P2.1
 11.130: rackfish.com NOTICE No answer received from 212.247.181.5 when querying for version.server/CH/TXT.
 11.130: rackfish.com INFO Done testing name server ns3.rackfish.net.
 11.130: rackfish.com INFO Begin testing zone consistency for rackfish.com.
 11.146: rackfish.com INFO SOA at address 212.247.181.5 has serial 2010040604.
 11.155: rackfish.com INFO SOA at address 194.169.225.5 has serial 2010040604.
 11.163: rackfish.com INFO SOA at address 194.169.225.4 has serial 2010040604.
 11.163: rackfish.com INFO All SOA records have consistent serial numbers.
 11.163: rackfish.com INFO All SOA records are consistent among all name servers.
 11.163: rackfish.com INFO Done testing zone consistency for rackfish.com.
 11.163: rackfish.com INFO Begin testing SOA parameters for rackfish.com.
 11.173: rackfish.com INFO Found SOA record for rackfish.com.
 11.173: rackfish.com INFO Begin testing host ns.phosworks.net.
 11.173: rackfish.com INFO Begin testing address 194.169.225.4.
 11.174: rackfish.com INFO Done testing address 194.169.225.4.
 11.174: rackfish.com INFO Begin testing address 2001:9b0:101:3:0:0:0:4.
 11.175: rackfish.com INFO Done testing address 2001:9b0:101:3:0:0:0:4.
 11.176: rackfish.com INFO Done testing host ns.phosworks.net.
 11.176: rackfish.com INFO SOA MNAME for rackfish.com valid (ns.phosworks.net).
 11.176: rackfish.com NOTICE SOA MNAME for rackfish.com (ns.phosworks.net) not listed as NS.
 11.184: rackfish.com INFO SOA MNAME for rackfish.com (ns.phosworks.net) is authoritative.
 11.184: rackfish.com INFO IPv6 disabled - will not query SOA MNAME at 2001:9b0:101:3:0:0:0:4
 11.185: rackfish.com INFO Begin testing email address registry@phosworks.net.
 11.196: rackfish.com INFO Mail exchangers for registry@phosworks.net found mail.phosworks.net.
 11.196: rackfish.com INFO Begin testing host mail.phosworks.net.
 11.215: rackfish.com INFO Begin testing address 194.169.225.21.
 11.242: rackfish.com INFO Done testing address 194.169.225.21.
 11.242: rackfish.com INFO Done testing host mail.phosworks.net.
 11.243: rackfish.com INFO Begin testing mail server mail.phosworks.net (194.169.225.21) with registry@phosworks.net.
 11.375: rackfish.com INFO SMTP banner: mailgw.phosworks.net ESMTP
 11.397: rackfish.com INFO SMTP testing of mail.phosworks.net (194.169.225.21) with registry@phosworks.net succeeded without errors.
 11.397: rackfish.com INFO Done testing mail server mail.phosworks.net (194.169.225.21) with registry@phosworks.net.
 11.397: rackfish.com INFO Delivery over IPv4 to registry@phosworks.net ok.
 11.397: rackfish.com INFO Delivery over IPv6 to registry@phosworks.net could not be done.
 11.397: rackfish.com INFO Done testing email address registry@phosworks.net.
 11.397: rackfish.com INFO Successful attempt to deliver email for SOA RNAME of rackfish.com (registry.phosworks.net) using registry@phosworks.net.
 11.397: rackfish.com INFO SOA TTL for rackfish.com OK (3600) - recommended >= 3600.
 11.397: rackfish.com NOTICE SOA refresh for rackfish.com too small (10800) - recommended >= 14400.
 11.397: rackfish.com INFO SOA retry for rackfish.com OK (3600) - recommended >= 3600.
 11.398: rackfish.com INFO SOA expire for rackfish.com OK (604800) - recommended >= 604800.
 11.398: rackfish.com INFO SOA minimum for rackfish.com OK (86400) - recommended between 300 and 86400.
 11.398: rackfish.com INFO Done testing SOA parameters for rackfish.com.
 11.398: rackfish.com INFO Begin testing connectivity for rackfish.com.
 11.743: rackfish.com INFO Name server 212.247.181.5 announced by: 1257
 11.872: rackfish.com INFO Name server 194.169.225.5 announced by: 8473
 12.004: rackfish.com INFO Name server 194.169.225.4 announced by: 8473
 12.004: rackfish.com INFO Zone announced by ASN: 1257,8473
 12.004: rackfish.com INFO Zone announced by more than one ASN (2).
 12.136: rackfish.com INFO Name server 2001:09b0:0101:0003:0000:0000:0000:0004 announced over IPv6 by: 8473
 12.267: rackfish.com INFO Name server 2001:09b0:0101:0003:0000:0000:0000:0005 announced over IPv6 by: 8473
 12.267: rackfish.com INFO Zone announced by IPv6 ASN: 8473
 12.267: rackfish.com NOTICE Zone announced by only one IPv6 ASN (1).
 12.267: rackfish.com INFO Done testing connectivity for rackfish.com.
 12.267: rackfish.com INFO Begin testing DNSSEC for rackfish.com.
 12.545: rackfish.com INFO Did not find DS record for rackfish.com at parent.
 12.590: rackfish.com INFO Servers for rackfish.com have consistent extra processing status.
 12.590: rackfish.com INFO Did not find DNSKEY record for rackfish.com at child.
 12.590: rackfish.com INFO No DNSKEY(s) found at child, other tests skipped.
 12.590: rackfish.com INFO Done testing DNSSEC for rackfish.com.
 12.590: rackfish.com INFO Test completed for zone rackfish.com.
