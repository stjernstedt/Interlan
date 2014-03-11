  0.000: melbourneitcbs.com INFO Begin testing zone melbourneitcbs.com with version 1.0.1.
  0.000: melbourneitcbs.com INFO Begin testing delegation for melbourneitcbs.com.
  4.821: melbourneitcbs.com INFO Name servers listed at parent: ns.domainnetwork.se,ns2.domainnetwork.se,ns3.domainnetwork.com
  7.082: melbourneitcbs.com INFO Name servers listed at child: ns.domainnetwork.se,ns2.domainnetwork.se,ns3.domainnetwork.com
  7.082: melbourneitcbs.com NOTICE No IPv6 name servers found.
  7.793: melbourneitcbs.com INFO Parent glue for melbourneitcbs.com found: ns3.domainnetwork.com (212.81.32.109)
  7.801: melbourneitcbs.com INFO Checking glue for ns3.domainnetwork.com (212.81.32.109).
  7.802: melbourneitcbs.com INFO Done testing delegation for melbourneitcbs.com.
  7.802: melbourneitcbs.com INFO Begin testing name server ns.domainnetwork.se.
  7.802: melbourneitcbs.com INFO Begin testing host ns.domainnetwork.se.
  7.802: melbourneitcbs.com INFO Begin testing address 203.27.227.61.
 10.803: melbourneitcbs.com INFO Done testing address 203.27.227.61.
 10.803: melbourneitcbs.com INFO Done testing host ns.domainnetwork.se.
 10.989: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) is not recursive.
 11.175: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) authoritative for melbourneitcbs.com.
 11.359: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) answers queries over UDP.
 11.915: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) answers queries over TCP.
 12.739: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) closed for zone transfer of melbourneitcbs.com.
 13.110: melbourneitcbs.com INFO Legacy name server ID for ns.domainnetwork.se (203.27.227.61): version.bind = Served by POWERDNS 2.9.22 $Id: packethandler.cc 1321 2008-12-06 19:44:36Z ahu $
 13.478: melbourneitcbs.com INFO Done testing name server ns.domainnetwork.se.
 13.478: melbourneitcbs.com INFO Begin testing name server ns2.domainnetwork.se.
 13.478: melbourneitcbs.com INFO Begin testing host ns2.domainnetwork.se.
 13.479: melbourneitcbs.com INFO Begin testing address 202.148.152.225.
 15.434: melbourneitcbs.com INFO Done testing address 202.148.152.225.
 15.434: melbourneitcbs.com INFO Done testing host ns2.domainnetwork.se.
 15.781: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) is not recursive.
 16.125: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) authoritative for melbourneitcbs.com.
 16.478: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) answers queries over UDP.
 17.515: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) answers queries over TCP.
 19.014: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) closed for zone transfer of melbourneitcbs.com.
 19.706: melbourneitcbs.com INFO Legacy name server ID for ns2.domainnetwork.se (202.148.152.225): version.bind = Served by POWERDNS 2.9.22 $Id: packethandler.cc 1321 2008-12-06 19:44:36Z ahu $
 20.401: melbourneitcbs.com INFO Done testing name server ns2.domainnetwork.se.
 20.401: melbourneitcbs.com INFO Begin testing name server ns3.domainnetwork.com.
 20.401: melbourneitcbs.com INFO Begin testing host ns3.domainnetwork.com.
 20.402: melbourneitcbs.com INFO Begin testing address 212.81.32.109.
 22.919: melbourneitcbs.com INFO Done testing address 212.81.32.109.
 22.919: melbourneitcbs.com INFO Done testing host ns3.domainnetwork.com.
 22.928: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) is not recursive.
 22.936: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) authoritative for melbourneitcbs.com.
 22.944: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) answers queries over UDP.
 23.056: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) answers queries over TCP.
 23.270: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) closed for zone transfer of melbourneitcbs.com.
 23.285: melbourneitcbs.com INFO Legacy name server ID for ns3.domainnetwork.com (212.81.32.109): version.bind = Served by POWERDNS 2.9.22 $Id: packethandler.cc 1321 2008-12-06 19:44:36Z ahu $
 23.298: melbourneitcbs.com INFO Done testing name server ns3.domainnetwork.com.
 23.298: melbourneitcbs.com INFO Begin testing zone consistency for melbourneitcbs.com.
 23.310: melbourneitcbs.com INFO SOA at address 212.81.32.109 has serial 2010042701.
 23.657: melbourneitcbs.com INFO SOA at address 202.148.152.225 has serial 2010042701.
 23.845: melbourneitcbs.com INFO SOA at address 203.27.227.61 has serial 2010042701.
 23.845: melbourneitcbs.com INFO All SOA records have consistent serial numbers.
 23.845: melbourneitcbs.com INFO All SOA records are consistent among all name servers.
 23.845: melbourneitcbs.com INFO Done testing zone consistency for melbourneitcbs.com.
 23.846: melbourneitcbs.com INFO Begin testing SOA parameters for melbourneitcbs.com.
 23.854: melbourneitcbs.com INFO Found SOA record for melbourneitcbs.com.
 23.854: melbourneitcbs.com INFO Begin testing host ns.domainnetwork.se.
 23.854: melbourneitcbs.com INFO Begin testing address 203.27.227.61.
 23.855: melbourneitcbs.com INFO Done testing address 203.27.227.61.
 23.855: melbourneitcbs.com INFO Done testing host ns.domainnetwork.se.
 23.855: melbourneitcbs.com INFO SOA MNAME for melbourneitcbs.com valid (ns.domainnetwork.se).
 23.856: melbourneitcbs.com INFO SOA MNAME for melbourneitcbs.com (ns.domainnetwork.se) listed as NS.
 24.045: melbourneitcbs.com INFO SOA MNAME for melbourneitcbs.com (ns.domainnetwork.se) is authoritative.
 24.046: melbourneitcbs.com INFO Begin testing email address hostmaster@melbourneitcbs.com.
 24.401: melbourneitcbs.com INFO Mail exchangers for hostmaster@melbourneitcbs.com found mx1.bne.server-mail.com,mx2.bne.server-mail.com.
 24.401: melbourneitcbs.com INFO Begin testing host mx1.bne.server-mail.com.
 25.132: melbourneitcbs.com INFO Begin testing address 203.147.156.193.
 26.244: melbourneitcbs.com INFO Done testing address 203.147.156.193.
 26.244: melbourneitcbs.com INFO Done testing host mx1.bne.server-mail.com.
 26.245: melbourneitcbs.com INFO Begin testing mail server mx1.bne.server-mail.com (203.147.156.193) with hostmaster@melbourneitcbs.com.
 29.684: melbourneitcbs.com INFO SMTP banner: bne3-0002mz.server-mail.com bizsmtp ESMTP server ready
 31.094: melbourneitcbs.com INFO SMTP testing of mx1.bne.server-mail.com (203.147.156.193) with hostmaster@melbourneitcbs.com succeeded without errors.
 31.094: melbourneitcbs.com INFO Done testing mail server mx1.bne.server-mail.com (203.147.156.193) with hostmaster@melbourneitcbs.com.
 31.094: melbourneitcbs.com INFO Begin testing host mx2.bne.server-mail.com.
 31.466: melbourneitcbs.com INFO Begin testing address 203.147.156.194.
 32.019: melbourneitcbs.com INFO Done testing address 203.147.156.194.
 32.019: melbourneitcbs.com INFO Done testing host mx2.bne.server-mail.com.
 32.020: melbourneitcbs.com INFO Delivery over IPv4 to hostmaster@melbourneitcbs.com ok.
 32.020: melbourneitcbs.com INFO Delivery over IPv6 to hostmaster@melbourneitcbs.com could not be done.
 32.020: melbourneitcbs.com INFO Done testing email address hostmaster@melbourneitcbs.com.
 32.020: melbourneitcbs.com INFO Successful attempt to deliver email for SOA RNAME of melbourneitcbs.com (hostmaster.melbourneitcbs.com) using hostmaster@melbourneitcbs.com.
 32.020: melbourneitcbs.com INFO SOA TTL for melbourneitcbs.com OK (86400) - recommended >= 3600.
 32.020: melbourneitcbs.com INFO SOA refresh for melbourneitcbs.com OK (21600) - recommended >= 14400.
 32.020: melbourneitcbs.com INFO SOA retry for melbourneitcbs.com OK (3600) - recommended >= 3600.
 32.020: melbourneitcbs.com INFO SOA expire for melbourneitcbs.com OK (2419200) - recommended >= 604800.
 32.020: melbourneitcbs.com INFO SOA minimum for melbourneitcbs.com OK (86400) - recommended between 300 and 86400.
 32.020: melbourneitcbs.com INFO Done testing SOA parameters for melbourneitcbs.com.
 32.020: melbourneitcbs.com INFO Begin testing connectivity for melbourneitcbs.com.
 32.367: melbourneitcbs.com INFO Name server 212.81.32.109 announced by: 41175
 32.497: melbourneitcbs.com INFO Name server 202.148.152.225 announced by: 7496
 32.632: melbourneitcbs.com INFO Name server 203.27.227.61 announced by: 17543
 32.632: melbourneitcbs.com INFO Zone announced by ASN: 41175,17543,7496
 32.632: melbourneitcbs.com INFO Zone announced by more than one ASN (3).
 32.633: melbourneitcbs.com INFO Zone announced by IPv6 ASN: 
 32.633: melbourneitcbs.com NOTICE Zone announced by only one IPv6 ASN (0).
 32.633: melbourneitcbs.com INFO Done testing connectivity for melbourneitcbs.com.
 32.633: melbourneitcbs.com INFO Begin testing DNSSEC for melbourneitcbs.com.
 32.881: melbourneitcbs.com INFO Did not find DS record for melbourneitcbs.com at parent.
 34.599: melbourneitcbs.com INFO Servers for melbourneitcbs.com have consistent extra processing status.
 34.599: melbourneitcbs.com INFO Did not find DNSKEY record for melbourneitcbs.com at child.
 34.599: melbourneitcbs.com INFO No DNSKEY(s) found at child, other tests skipped.
 34.599: melbourneitcbs.com INFO Done testing DNSSEC for melbourneitcbs.com.
 34.599: melbourneitcbs.com INFO Test completed for zone melbourneitcbs.com.
