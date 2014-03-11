  0.000: melbourneitcbs.com INFO Begin testing zone melbourneitcbs.com with version 1.3.0.
  0.002: melbourneitcbs.com INFO Begin testing delegation for melbourneitcbs.com.
 13.031: melbourneitcbs.com INFO Name servers listed at parent: ns.domainnetwork.se,ns2.domainnetwork.se,ns3.domainnetwork.com
 15.577: melbourneitcbs.com INFO Name servers listed at child: ns.domainnetwork.se,ns2.domainnetwork.se,ns3.domainnetwork.com
 15.577: melbourneitcbs.com NOTICE No IPv6 name servers found.
 16.061: melbourneitcbs.com INFO Parent glue for melbourneitcbs.com found: ns3.domainnetwork.com (212.81.32.109)
 16.229: melbourneitcbs.com INFO Checking glue for ns3.domainnetwork.com (212.81.32.109).
 16.230: melbourneitcbs.com INFO Parent glue for melbourneitcbs.com found: ns3.domainnetwork.com (212.81.32.109)
 16.285: melbourneitcbs.com INFO Done testing delegation for melbourneitcbs.com.
 16.286: melbourneitcbs.com INFO Begin testing name server ns.domainnetwork.se.
 16.286: melbourneitcbs.com INFO Begin testing host ns.domainnetwork.se.
 16.500: melbourneitcbs.com INFO Begin testing address 203.27.227.61.
 23.394: melbourneitcbs.com INFO Done testing address 203.27.227.61.
 23.394: melbourneitcbs.com INFO Done testing host ns.domainnetwork.se.
 23.819: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) answers queries over UDP.
 24.370: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) answers queries over TCP.
 24.554: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) is not recursive.
 24.735: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) authoritative for melbourneitcbs.com.
 25.566: melbourneitcbs.com INFO Name server ns.domainnetwork.se (203.27.227.61) closed for zone transfer of melbourneitcbs.com.
 26.325: melbourneitcbs.com INFO Done testing name server ns.domainnetwork.se.
 26.326: melbourneitcbs.com INFO Begin testing name server ns2.domainnetwork.se.
 26.326: melbourneitcbs.com INFO Begin testing host ns2.domainnetwork.se.
 26.568: melbourneitcbs.com INFO Begin testing address 202.148.152.225.
 30.720: melbourneitcbs.com INFO Done testing address 202.148.152.225.
 30.720: melbourneitcbs.com INFO Done testing host ns2.domainnetwork.se.
 31.316: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) answers queries over UDP.
 32.384: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) answers queries over TCP.
 32.736: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) is not recursive.
 33.084: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) authoritative for melbourneitcbs.com.
 34.600: melbourneitcbs.com INFO Name server ns2.domainnetwork.se (202.148.152.225) closed for zone transfer of melbourneitcbs.com.
 36.021: melbourneitcbs.com INFO Done testing name server ns2.domainnetwork.se.
 36.024: melbourneitcbs.com INFO Begin testing name server ns3.domainnetwork.com.
 36.024: melbourneitcbs.com INFO Begin testing host ns3.domainnetwork.com.
 36.338: melbourneitcbs.com INFO Begin testing address 212.81.32.109.
 40.964: melbourneitcbs.com INFO Done testing address 212.81.32.109.
 40.965: melbourneitcbs.com INFO Done testing host ns3.domainnetwork.com.
 41.273: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) answers queries over UDP.
 41.385: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) answers queries over TCP.
 41.393: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) is not recursive.
 41.403: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) authoritative for melbourneitcbs.com.
 41.621: melbourneitcbs.com INFO Name server ns3.domainnetwork.com (212.81.32.109) closed for zone transfer of melbourneitcbs.com.
 41.674: melbourneitcbs.com INFO Done testing name server ns3.domainnetwork.com.
 41.674: melbourneitcbs.com INFO Begin testing zone consistency for melbourneitcbs.com.
 43.561: melbourneitcbs.com INFO SOA at address 212.81.32.109 has serial 2012052900.
 43.913: melbourneitcbs.com INFO SOA at address 202.148.152.225 has serial 2012052900.
 44.103: melbourneitcbs.com INFO SOA at address 203.27.227.61 has serial 2012052900.
 44.104: melbourneitcbs.com INFO All SOA records have consistent serial numbers.
 44.104: melbourneitcbs.com INFO All other fields in the SOA record are consistent among all name servers.
 44.104: melbourneitcbs.com INFO Done testing zone consistency for melbourneitcbs.com.
 44.104: melbourneitcbs.com INFO Begin testing SOA parameters for melbourneitcbs.com.
 44.114: melbourneitcbs.com INFO Found SOA record for melbourneitcbs.com.
 44.114: melbourneitcbs.com INFO Begin testing host ns.domainnetwork.se.
 44.503: melbourneitcbs.com INFO Begin testing address 203.27.227.61.
 45.097: melbourneitcbs.com INFO Done testing address 203.27.227.61.
 45.097: melbourneitcbs.com INFO Done testing host ns.domainnetwork.se.
 45.097: melbourneitcbs.com INFO SOA MNAME for melbourneitcbs.com valid (ns.domainnetwork.se).
 45.097: melbourneitcbs.com INFO SOA MNAME for melbourneitcbs.com (ns.domainnetwork.se) listed as NS.
 45.506: melbourneitcbs.com INFO SOA MNAME for melbourneitcbs.com (ns.domainnetwork.se) is authoritative.
 45.507: melbourneitcbs.com INFO Begin testing email address hostmaster@melbourneitcbs.com.
 45.730: melbourneitcbs.com INFO Mail exchangers for hostmaster@melbourneitcbs.com found mx1.bne.server-mail.com,mx2.bne.server-mail.com.
 45.730: melbourneitcbs.com INFO Begin testing host mx1.bne.server-mail.com.
 46.907: melbourneitcbs.com INFO Begin testing address 203.147.156.193.
 55.453: melbourneitcbs.com INFO Done testing address 203.147.156.193.
 55.453: melbourneitcbs.com INFO Done testing host mx1.bne.server-mail.com.
 56.106: melbourneitcbs.com INFO Begin testing mail server mx1.bne.server-mail.com (203.147.156.193) with hostmaster@melbourneitcbs.com.
 56.455: melbourneitcbs.com NOTICE Failed to connect to mx1.bne.server-mail.com (203.147.156.193).
 56.455: melbourneitcbs.com INFO Done testing mail server mx1.bne.server-mail.com (203.147.156.193) with hostmaster@melbourneitcbs.com.
 56.455: melbourneitcbs.com INFO Begin testing host mx2.bne.server-mail.com.
 58.135: melbourneitcbs.com INFO Begin testing address 203.147.156.194.
 66.108: melbourneitcbs.com INFO Done testing address 203.147.156.194.
 66.108: melbourneitcbs.com INFO Done testing host mx2.bne.server-mail.com.
 66.990: melbourneitcbs.com INFO Begin testing mail server mx2.bne.server-mail.com (203.147.156.194) with hostmaster@melbourneitcbs.com.
 68.353: melbourneitcbs.com INFO SMTP banner: bne3-0002mz.server-mail.com bizsmtp ESMTP server ready [EXTERNAL_UNKNOWN]
 69.767: melbourneitcbs.com INFO SMTP testing of mx2.bne.server-mail.com (203.147.156.194) with hostmaster@melbourneitcbs.com succeeded without errors.
 69.767: melbourneitcbs.com INFO Done testing mail server mx2.bne.server-mail.com (203.147.156.194) with hostmaster@melbourneitcbs.com.
 69.767: melbourneitcbs.com INFO Delivery over IPv4 to hostmaster@melbourneitcbs.com ok.
 69.767: melbourneitcbs.com NOTICE Delivery over IPv6 to hostmaster@melbourneitcbs.com could not be done.
 69.767: melbourneitcbs.com INFO Done testing email address hostmaster@melbourneitcbs.com.
 69.768: melbourneitcbs.com INFO Successful attempt to deliver email for SOA RNAME of melbourneitcbs.com (hostmaster.melbourneitcbs.com) using hostmaster@melbourneitcbs.com.
 69.768: melbourneitcbs.com INFO SOA TTL for melbourneitcbs.com OK (86400) - recommended >= 3600.
 69.768: melbourneitcbs.com INFO SOA refresh for melbourneitcbs.com OK (21600) - recommended >= 14400.
 69.768: melbourneitcbs.com INFO SOA retry for melbourneitcbs.com OK (3600) - recommended >= 3600.
 69.768: melbourneitcbs.com INFO SOA expire for melbourneitcbs.com OK (2419200) - recommended >= 604800.
 69.768: melbourneitcbs.com INFO SOA minimum for melbourneitcbs.com OK (86400) - recommended between 300 and 86400.
 69.768: melbourneitcbs.com INFO Done testing SOA parameters for melbourneitcbs.com.
 69.768: melbourneitcbs.com INFO Begin testing connectivity for melbourneitcbs.com.
 70.256: melbourneitcbs.com INFO Name server 212.81.32.109 announced by: 41175
 70.853: melbourneitcbs.com INFO Name server 202.148.152.225 announced by: 7496
 71.410: melbourneitcbs.com INFO Name server 203.27.227.61 announced by: 17543
 71.410: melbourneitcbs.com INFO Zone announced by IPv4 ASN: 41175,17543,7496
 71.410: melbourneitcbs.com INFO Zone announced by more than one ASN (3).
 71.410: melbourneitcbs.com INFO Zone announced by IPv6 ASN: 
 71.410: melbourneitcbs.com NOTICE Zone announced by less than two IPv6 ASN (0).
 71.410: melbourneitcbs.com INFO Done testing connectivity for melbourneitcbs.com.
 71.411: melbourneitcbs.com INFO Begin testing DNSSEC for melbourneitcbs.com.
 71.646: melbourneitcbs.com INFO Did not find DS record for melbourneitcbs.com at parent.
 73.350: melbourneitcbs.com INFO Servers for melbourneitcbs.com have consistent extra processing status.
 73.350: melbourneitcbs.com INFO Did not find DNSKEY record for melbourneitcbs.com at child.
 73.350: melbourneitcbs.com INFO No DNSKEY(s) found at child, other tests skipped.
 73.350: melbourneitcbs.com INFO Done testing DNSSEC for melbourneitcbs.com.
 73.351: melbourneitcbs.com INFO Test completed for zone melbourneitcbs.com.
