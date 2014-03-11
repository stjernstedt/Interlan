  0.000: patrafee.com INFO Begin testing zone patrafee.com with version 1.3.0.
  0.002: patrafee.com INFO Begin testing delegation for patrafee.com.
 19.353: patrafee.com INFO Name servers listed at parent: ns1.patradomain.com,ns2.patradomain.com,ns3.patradomain.com
 22.834: patrafee.com INFO Name servers listed at child: ns1.patradomain.com,ns2.patradomain.com,ns3.patradomain.com
 22.834: patrafee.com NOTICE No IPv6 name servers found.
 22.867: patrafee.com INFO Parent glue for patrafee.com found: ns1.patradomain.com (80.252.167.197)
 23.322: patrafee.com INFO Parent glue for patrafee.com found: ns2.patradomain.com (193.41.194.9)
 23.566: patrafee.com INFO Parent glue for patrafee.com found: ns3.patradomain.com (62.236.208.161)
 23.611: patrafee.com INFO Checking glue for ns1.patradomain.com (80.252.167.197).
 23.612: patrafee.com INFO Checking glue for ns2.patradomain.com (193.41.194.9).
 23.612: patrafee.com INFO Checking glue for ns3.patradomain.com (62.236.208.161).
 23.612: patrafee.com INFO Parent glue for patrafee.com found: ns1.patradomain.com (80.252.167.197)
 23.612: patrafee.com INFO Parent glue for patrafee.com found: ns2.patradomain.com (193.41.194.9)
 23.638: patrafee.com INFO Parent glue for patrafee.com found: ns3.patradomain.com (62.236.208.161)
 23.796: patrafee.com INFO Done testing delegation for patrafee.com.
 23.796: patrafee.com INFO Begin testing name server ns1.patradomain.com.
 23.796: patrafee.com INFO Begin testing host ns1.patradomain.com.
 24.249: patrafee.com INFO Begin testing address 80.252.167.197.
 42.878: patrafee.com INFO Done testing address 80.252.167.197.
 42.903: patrafee.com INFO Done testing host ns1.patradomain.com.
 43.291: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) answers queries over UDP.
 43.347: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) answers queries over TCP.
 43.368: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) is not recursive.
 43.386: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) authoritative for patrafee.com.
 43.428: patrafee.com INFO Name server ns1.patradomain.com (80.252.167.197) closed for zone transfer of patrafee.com.
 43.446: patrafee.com INFO Legacy name server ID for ns1.patradomain.com (80.252.167.197): hostname.bind = ns1.patradomain.com
 43.463: patrafee.com INFO Legacy name server ID for ns1.patradomain.com (80.252.167.197): version.bind = i really dont like you.
 43.502: patrafee.com NOTICE No answer received from 80.252.167.197 when querying for version.server/CH/TXT.
 43.502: patrafee.com INFO Done testing name server ns1.patradomain.com.
 43.502: patrafee.com INFO Begin testing name server ns2.patradomain.com.
 43.502: patrafee.com INFO Begin testing host ns2.patradomain.com.
 43.866: patrafee.com INFO Begin testing address 193.41.194.9.
 45.587: patrafee.com INFO Done testing address 193.41.194.9.
 45.587: patrafee.com INFO Done testing host ns2.patradomain.com.
 46.268: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) answers queries over UDP.
 46.370: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) answers queries over TCP.
 46.432: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) is not recursive.
 46.492: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) authoritative for patrafee.com.
 46.639: patrafee.com INFO Name server ns2.patradomain.com (193.41.194.9) closed for zone transfer of patrafee.com.
 46.688: patrafee.com INFO Legacy name server ID for ns2.patradomain.com (193.41.194.9): hostname.bind = ns2
 46.739: patrafee.com INFO Legacy name server ID for ns2.patradomain.com (193.41.194.9): version.bind = i really dont like you.
 46.844: patrafee.com NOTICE No answer received from 193.41.194.9 when querying for version.server/CH/TXT.
 46.844: patrafee.com INFO Done testing name server ns2.patradomain.com.
 46.844: patrafee.com INFO Begin testing name server ns3.patradomain.com.
 46.844: patrafee.com INFO Begin testing host ns3.patradomain.com.
 47.266: patrafee.com INFO Begin testing address 62.236.208.161.
 48.955: patrafee.com INFO Done testing address 62.236.208.161.
 48.955: patrafee.com INFO Done testing host ns3.patradomain.com.
 49.574: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) answers queries over UDP.
 49.598: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) answers queries over TCP.
 49.614: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) is not recursive.
 49.627: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) authoritative for patrafee.com.
 49.658: patrafee.com INFO Name server ns3.patradomain.com (62.236.208.161) closed for zone transfer of patrafee.com.
 49.671: patrafee.com INFO Legacy name server ID for ns3.patradomain.com (62.236.208.161): hostname.bind = ns3.patradomain.com
 49.687: patrafee.com INFO Legacy name server ID for ns3.patradomain.com (62.236.208.161): version.bind = i really dont like you.
 49.721: patrafee.com NOTICE No answer received from 62.236.208.161 when querying for version.server/CH/TXT.
 49.721: patrafee.com INFO Done testing name server ns3.patradomain.com.
 49.725: patrafee.com INFO Begin testing zone consistency for patrafee.com.
 52.449: patrafee.com INFO SOA at address 80.252.167.197 has serial 2012072000.
 52.467: patrafee.com INFO SOA at address 62.236.208.161 has serial 2012072000.
 52.533: patrafee.com INFO SOA at address 193.41.194.9 has serial 2012072000.
 52.533: patrafee.com INFO All SOA records have consistent serial numbers.
 52.533: patrafee.com INFO All other fields in the SOA record are consistent among all name servers.
 52.533: patrafee.com INFO Done testing zone consistency for patrafee.com.
 52.533: patrafee.com INFO Begin testing SOA parameters for patrafee.com.
 52.554: patrafee.com INFO Found SOA record for patrafee.com.
 52.555: patrafee.com INFO Begin testing host ns1.patradomain.com.
 53.103: patrafee.com INFO Begin testing address 80.252.167.197.
 53.381: patrafee.com INFO Done testing address 80.252.167.197.
 53.381: patrafee.com INFO Done testing host ns1.patradomain.com.
 53.381: patrafee.com INFO SOA MNAME for patrafee.com valid (ns1.patradomain.com).
 53.381: patrafee.com INFO SOA MNAME for patrafee.com (ns1.patradomain.com) listed as NS.
 53.960: patrafee.com INFO SOA MNAME for patrafee.com (ns1.patradomain.com) is authoritative.
 53.961: patrafee.com INFO Begin testing email address root@patradomain.com.
 54.341: patrafee.com INFO Mail exchangers for root@patradomain.com found mail-b.patradomain.com.
 54.341: patrafee.com INFO Begin testing host mail-b.patradomain.com.
 55.309: patrafee.com INFO Begin testing address 217.151.196.210.
 56.918: patrafee.com INFO Done testing address 217.151.196.210.
 56.931: patrafee.com INFO Done testing host mail-b.patradomain.com.
 57.278: patrafee.com INFO Begin testing mail server mail-b.patradomain.com (217.151.196.210) with root@patradomain.com.
 57.347: patrafee.com INFO SMTP banner: mail-b.patradomain.com ESMTP Sendmail 8.14.3/8.14.3/Debian-9.4; Wed, 12 Sep 2012 16:42:40 +0200; (No UCE/UBE) logging access from: webb8.interlan.se(OK)-webb8.interlan.se [192.71.21.34]
 57.425: patrafee.com INFO SMTP testing of mail-b.patradomain.com (217.151.196.210) with root@patradomain.com succeeded without errors.
 57.425: patrafee.com INFO Done testing mail server mail-b.patradomain.com (217.151.196.210) with root@patradomain.com.
 57.425: patrafee.com INFO Delivery over IPv4 to root@patradomain.com ok.
 57.425: patrafee.com NOTICE Delivery over IPv6 to root@patradomain.com could not be done.
 57.425: patrafee.com INFO Done testing email address root@patradomain.com.
 57.425: patrafee.com INFO Successful attempt to deliver email for SOA RNAME of patrafee.com (root.patradomain.com) using root@patradomain.com.
 57.425: patrafee.com INFO SOA TTL for patrafee.com OK (38400) - recommended >= 3600.
 57.425: patrafee.com NOTICE SOA refresh for patrafee.com too small (10800) - recommended >= 14400.
 57.425: patrafee.com INFO SOA retry for patrafee.com OK (3600) - recommended >= 3600.
 57.426: patrafee.com INFO SOA expire for patrafee.com OK (604800) - recommended >= 604800.
 57.426: patrafee.com INFO SOA minimum for patrafee.com OK (38400) - recommended between 300 and 86400.
 57.426: patrafee.com INFO Done testing SOA parameters for patrafee.com.
 57.426: patrafee.com INFO Begin testing connectivity for patrafee.com.
 58.034: patrafee.com INFO Name server 80.252.167.197 announced by: 21503
 58.565: patrafee.com INFO Name server 62.236.208.161 announced by: 3292
 59.333: patrafee.com INFO Name server 193.41.194.9 announced by: 16101
 59.334: patrafee.com INFO Zone announced by IPv4 ASN: 3292,16101,21503
 59.334: patrafee.com INFO Zone announced by more than one ASN (3).
 59.334: patrafee.com INFO Zone announced by IPv6 ASN: 
 59.334: patrafee.com NOTICE Zone announced by less than two IPv6 ASN (0).
 59.334: patrafee.com INFO Done testing connectivity for patrafee.com.
 59.334: patrafee.com INFO Begin testing DNSSEC for patrafee.com.
 59.390: patrafee.com INFO Did not find DS record for patrafee.com at parent.
 59.555: patrafee.com INFO Servers for patrafee.com have consistent extra processing status.
 59.556: patrafee.com INFO Did not find DNSKEY record for patrafee.com at child.
 59.556: patrafee.com INFO No DNSKEY(s) found at child, other tests skipped.
 59.556: patrafee.com INFO Done testing DNSSEC for patrafee.com.
 59.556: patrafee.com INFO Test completed for zone patrafee.com.
