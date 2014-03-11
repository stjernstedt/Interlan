  0.000: patrafee.com INFO Begin testing zone patrafee.com with version 1.0.1.
  0.001: patrafee.com INFO Begin testing delegation for patrafee.com.
  3.945: patrafee.com INFO Name servers listed at parent: ns1.patradomain.com,ns2.patradomain.com,ns3.patradomain.com
  4.102: patrafee.com INFO Name servers listed at child: ns1.patradomain.com,ns2.patradomain.com,ns3.patradomain.com
  4.102: patrafee.com NOTICE No IPv6 name servers found.
  4.246: patrafee.com INFO Parent glue for patrafee.com found: ns1.patradomain.com (80.252.167.197)
  4.420: patrafee.com INFO Parent glue for patrafee.com found: ns2.patradomain.com (193.41.194.9)
  4.596: patrafee.com INFO Parent glue for patrafee.com found: ns3.patradomain.com (62.236.208.161)
  4.631: patrafee.com INFO Checking glue for ns1.patradomain.com (80.252.167.197).
  4.631: patrafee.com INFO Checking glue for ns2.patradomain.com (193.41.194.9).
  4.631: patrafee.com INFO Checking glue for ns3.patradomain.com (62.236.208.161).
  4.631: patrafee.com INFO Done testing delegation for patrafee.com.
  4.631: patrafee.com INFO Begin testing name server ns1.patradomain.com.
  4.632: patrafee.com INFO Begin testing host ns1.patradomain.com.
  4.632: patrafee.com INFO Begin testing address 80.252.167.197.
  8.007: patrafee.com INFO Done testing address 80.252.167.197.
  8.007: patrafee.com INFO Done testing host ns1.patradomain.com.
  8.019: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) is not recursive.
  8.033: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) authoritative for patrafee.com.
  8.048: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) answers queries over UDP.
  8.084: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) answers queries over TCP.
  8.129: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) closed for zone transfer of patrafee.com.
  8.144: patrafee.com INFO Legacy name server ID for ns1.patradomain.com (80.252.167.197): hostname.bind = ns1.patradomain.com
  8.156: patrafee.com INFO Legacy name server ID for ns1.patradomain.com (80.252.167.197): version.bind = i really dont like you.
  8.180: patrafee.com NOTICE No answer received from 80.252.167.197 when querying for version.server/CH/TXT.
  8.180: patrafee.com INFO Done testing name server ns1.patradomain.com.
  8.180: patrafee.com INFO Begin testing name server ns2.patradomain.com.
  8.180: patrafee.com INFO Begin testing host ns2.patradomain.com.
  8.180: patrafee.com INFO Begin testing address 193.41.194.9.
  8.523: patrafee.com INFO Done testing address 193.41.194.9.
  8.523: patrafee.com INFO Done testing host ns2.patradomain.com.
  8.581: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) is not recursive.
  8.639: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) authoritative for patrafee.com.
  8.698: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) answers queries over UDP.
  8.817: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) answers queries over TCP.
  8.981: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) closed for zone transfer of patrafee.com.
  9.039: patrafee.com INFO Legacy name server ID for ns2.patradomain.com (193.41.194.9): hostname.bind = ns2
  9.098: patrafee.com INFO Legacy name server ID for ns2.patradomain.com (193.41.194.9): version.bind = i really dont like you.
  9.211: patrafee.com NOTICE No answer received from 193.41.194.9 when querying for version.server/CH/TXT.
  9.211: patrafee.com INFO Done testing name server ns2.patradomain.com.
  9.211: patrafee.com INFO Begin testing name server ns3.patradomain.com.
  9.211: patrafee.com INFO Begin testing host ns3.patradomain.com.
  9.212: patrafee.com INFO Begin testing address 62.236.208.161.
  9.940: patrafee.com INFO Done testing address 62.236.208.161.
  9.940: patrafee.com INFO Done testing host ns3.patradomain.com.
  9.954: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) is not recursive.
  9.968: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) authoritative for patrafee.com.
  9.983: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) answers queries over UDP.
 10.008: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) answers queries over TCP.
 10.041: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) closed for zone transfer of patrafee.com.
 10.055: patrafee.com INFO Legacy name server ID for ns3.patradomain.com (62.236.208.161): hostname.bind = ns3.patradomain.com
 10.074: patrafee.com INFO Legacy name server ID for ns3.patradomain.com (62.236.208.161): version.bind = i really dont like you.
 10.099: patrafee.com NOTICE No answer received from 62.236.208.161 when querying for version.server/CH/TXT.
 10.100: patrafee.com INFO Done testing name server ns3.patradomain.com.
 10.100: patrafee.com INFO Begin testing zone consistency for patrafee.com.
 10.119: patrafee.com INFO SOA at address 80.252.167.197 has serial 2010090705.
 10.134: patrafee.com INFO SOA at address 62.236.208.161 has serial 2010090705.
 10.195: patrafee.com INFO SOA at address 193.41.194.9 has serial 2010090705.
 10.195: patrafee.com INFO All SOA records have consistent serial numbers.
 10.195: patrafee.com INFO All SOA records are consistent among all name servers.
 10.195: patrafee.com INFO Done testing zone consistency for patrafee.com.
 10.196: patrafee.com INFO Begin testing SOA parameters for patrafee.com.
 10.208: patrafee.com INFO Found SOA record for patrafee.com.
 10.209: patrafee.com INFO Begin testing host ns1.patradomain.com.
 10.209: patrafee.com INFO Begin testing address 80.252.167.197.
 10.210: patrafee.com INFO Done testing address 80.252.167.197.
 10.210: patrafee.com INFO Done testing host ns1.patradomain.com.
 10.210: patrafee.com INFO SOA MNAME for patrafee.com valid (ns1.patradomain.com).
 10.210: patrafee.com INFO SOA MNAME for patrafee.com (ns1.patradomain.com) listed as NS.
 10.224: patrafee.com INFO SOA MNAME for patrafee.com (ns1.patradomain.com) is authoritative.
 10.224: patrafee.com INFO Begin testing email address root@patradomain.com.
 10.241: patrafee.com INFO Mail exchangers for root@patradomain.com found mail.patradomain.com.
 10.242: patrafee.com INFO Begin testing host mail.patradomain.com.
 10.269: patrafee.com INFO Begin testing address 80.252.167.204.
 10.365: patrafee.com INFO Done testing address 80.252.167.204.
 10.365: patrafee.com INFO Done testing host mail.patradomain.com.
 10.366: patrafee.com INFO Begin testing mail server mail.patradomain.com (80.252.167.204) with root@patradomain.com.
 10.466: patrafee.com INFO SMTP banner: mirkk.org ESMTP Sendmail 8.14.3/8.14.3; Tue, 7 Sep 2010 16:22:58 +0200
 10.558: patrafee.com INFO SMTP testing of mail.patradomain.com (80.252.167.204) with root@patradomain.com succeeded without errors.
 10.558: patrafee.com INFO Done testing mail server mail.patradomain.com (80.252.167.204) with root@patradomain.com.
 10.559: patrafee.com INFO Delivery over IPv4 to root@patradomain.com ok.
 10.559: patrafee.com INFO Delivery over IPv6 to root@patradomain.com could not be done.
 10.559: patrafee.com INFO Done testing email address root@patradomain.com.
 10.559: patrafee.com INFO Successful attempt to deliver email for SOA RNAME of patrafee.com (root.patradomain.com) using root@patradomain.com.
 10.559: patrafee.com INFO SOA TTL for patrafee.com OK (38400) - recommended >= 3600.
 10.559: patrafee.com NOTICE SOA refresh for patrafee.com too small (10800) - recommended >= 14400.
 10.559: patrafee.com INFO SOA retry for patrafee.com OK (3600) - recommended >= 3600.
 10.559: patrafee.com INFO SOA expire for patrafee.com OK (604800) - recommended >= 604800.
 10.559: patrafee.com INFO SOA minimum for patrafee.com OK (38400) - recommended between 300 and 86400.
 10.559: patrafee.com INFO Done testing SOA parameters for patrafee.com.
 10.560: patrafee.com INFO Begin testing connectivity for patrafee.com.
 10.787: patrafee.com INFO Name server 80.252.167.197 announced by: 21503
 10.916: patrafee.com INFO Name server 62.236.208.161 announced by: 3292
 11.050: patrafee.com INFO Name server 193.41.194.9 announced by: 16101
 11.051: patrafee.com INFO Zone announced by ASN: 3292,16101,21503
 11.051: patrafee.com INFO Zone announced by more than one ASN (3).
 11.051: patrafee.com INFO Zone announced by IPv6 ASN: 
 11.051: patrafee.com NOTICE Zone announced by only one IPv6 ASN (0).
 11.051: patrafee.com INFO Done testing connectivity for patrafee.com.
 11.051: patrafee.com INFO Begin testing DNSSEC for patrafee.com.
 11.068: patrafee.com INFO Did not find DS record for patrafee.com at parent.
 11.238: patrafee.com INFO Servers for patrafee.com have consistent extra processing status.
 11.239: patrafee.com INFO Did not find DNSKEY record for patrafee.com at child.
 11.239: patrafee.com INFO No DNSKEY(s) found at child, other tests skipped.
 11.239: patrafee.com INFO Done testing DNSSEC for patrafee.com.
 11.239: patrafee.com INFO Test completed for zone patrafee.com.
