  0.000: internetsrs.com INFO Begin testing zone internetsrs.com with version 1.0.1.
  0.000: internetsrs.com INFO Begin testing delegation for internetsrs.com.
  4.590: internetsrs.com INFO Name servers listed at parent: ns1.wk.se,ns2.wk.se
  4.694: internetsrs.com INFO Name servers listed at child: ns1.wk.se,ns2.wk.se
  4.694: internetsrs.com NOTICE No IPv6 name servers found.
  5.075: internetsrs.com INFO Done testing delegation for internetsrs.com.
  5.075: internetsrs.com INFO Begin testing name server ns1.wk.se.
  5.075: internetsrs.com INFO Begin testing host ns1.wk.se.
  5.076: internetsrs.com INFO Begin testing address 193.0.253.7.
  7.560: internetsrs.com INFO Done testing address 193.0.253.7.
  7.561: internetsrs.com INFO Done testing host ns1.wk.se.
  7.580: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) is not recursive.
  7.599: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) authoritative for internetsrs.com.
  7.618: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) answers queries over UDP.
  7.666: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) answers queries over TCP.
  7.730: internetsrs.com INFO Name server ns1.wk.se (193.0.253.7) closed for zone transfer of internetsrs.com.
  7.748: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for hostname.bind/CH/TXT.
  7.765: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for version.bind/CH/TXT.
  7.782: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for id.server/CH/TXT.
  7.799: internetsrs.com NOTICE No answer received from 193.0.253.7 when querying for version.server/CH/TXT.
  7.799: internetsrs.com INFO Done testing name server ns1.wk.se.
  7.799: internetsrs.com INFO Begin testing name server ns2.wk.se.
  7.799: internetsrs.com INFO Begin testing host ns2.wk.se.
  7.799: internetsrs.com INFO Begin testing address 195.67.116.240.
  8.744: internetsrs.com INFO Done testing address 195.67.116.240.
  8.744: internetsrs.com INFO Done testing host ns2.wk.se.
  8.770: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) is not recursive.
  8.795: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) authoritative for internetsrs.com.
  8.819: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) answers queries over UDP.
  8.895: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) answers queries over TCP.
  8.930: internetsrs.com INFO Name server ns2.wk.se (195.67.116.240) closed for zone transfer of internetsrs.com.
  8.944: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for hostname.bind/CH/TXT.
  8.969: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for version.bind/CH/TXT.
  8.982: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for id.server/CH/TXT.
  8.995: internetsrs.com NOTICE No answer received from 195.67.116.240 when querying for version.server/CH/TXT.
  8.995: internetsrs.com INFO Done testing name server ns2.wk.se.
  8.996: internetsrs.com INFO Begin testing zone consistency for internetsrs.com.
  9.019: internetsrs.com INFO SOA at address 195.67.116.240 has serial 2010010502.
  9.037: internetsrs.com INFO SOA at address 193.0.253.7 has serial 2010010502.
  9.037: internetsrs.com INFO All SOA records have consistent serial numbers.
  9.037: internetsrs.com INFO All SOA records are consistent among all name servers.
  9.037: internetsrs.com INFO Done testing zone consistency for internetsrs.com.
  9.037: internetsrs.com INFO Begin testing SOA parameters for internetsrs.com.
  9.052: internetsrs.com INFO Found SOA record for internetsrs.com.
  9.052: internetsrs.com INFO Begin testing host ns1.wk.se.
  9.053: internetsrs.com INFO Begin testing address 193.0.253.7.
  9.054: internetsrs.com INFO Done testing address 193.0.253.7.
  9.054: internetsrs.com INFO Done testing host ns1.wk.se.
  9.054: internetsrs.com INFO SOA MNAME for internetsrs.com valid (ns1.wk.se).
  9.054: internetsrs.com INFO SOA MNAME for internetsrs.com (ns1.wk.se) listed as NS.
  9.073: internetsrs.com INFO SOA MNAME for internetsrs.com (ns1.wk.se) is authoritative.
  9.074: internetsrs.com INFO Begin testing email address dns@wkscripted.se.
  9.114: internetsrs.com INFO Mail exchangers for dns@wkscripted.se found smtp2.wk.se,smtp3.wk.se.
  9.114: internetsrs.com INFO Begin testing host smtp2.wk.se.
  9.148: internetsrs.com INFO Begin testing address 193.0.253.19.
  9.166: internetsrs.com INFO Done testing address 193.0.253.19.
  9.166: internetsrs.com INFO Done testing host smtp2.wk.se.
  9.167: internetsrs.com INFO Begin testing mail server smtp2.wk.se (193.0.253.19) with dns@wkscripted.se.
  9.216: internetsrs.com INFO SMTP banner: smtp2.wk.se ESMTP
  9.277: internetsrs.com INFO SMTP testing of smtp2.wk.se (193.0.253.19) with dns@wkscripted.se succeeded without errors.
  9.277: internetsrs.com INFO Done testing mail server smtp2.wk.se (193.0.253.19) with dns@wkscripted.se.
  9.278: internetsrs.com INFO Begin testing host smtp3.wk.se.
  9.312: internetsrs.com INFO Begin testing address 195.67.116.240.
  9.314: internetsrs.com INFO Done testing address 195.67.116.240.
  9.314: internetsrs.com INFO Done testing host smtp3.wk.se.
  9.314: internetsrs.com INFO Delivery over IPv4 to dns@wkscripted.se ok.
  9.314: internetsrs.com INFO Delivery over IPv6 to dns@wkscripted.se could not be done.
  9.314: internetsrs.com INFO Done testing email address dns@wkscripted.se.
  9.314: internetsrs.com INFO Successful attempt to deliver email for SOA RNAME of internetsrs.com (dns.wkscripted.se) using dns@wkscripted.se.
  9.315: internetsrs.com INFO SOA TTL for internetsrs.com OK (86400) - recommended >= 3600.
  9.315: internetsrs.com NOTICE SOA refresh for internetsrs.com too small (7200) - recommended >= 14400.
  9.315: internetsrs.com INFO SOA retry for internetsrs.com OK (3600) - recommended >= 3600.
  9.315: internetsrs.com INFO SOA expire for internetsrs.com OK (2419200) - recommended >= 604800.
  9.315: internetsrs.com INFO SOA minimum for internetsrs.com OK (86400) - recommended between 300 and 86400.
  9.315: internetsrs.com INFO Done testing SOA parameters for internetsrs.com.
  9.315: internetsrs.com INFO Begin testing connectivity for internetsrs.com.
  9.619: internetsrs.com INFO Name server 195.67.116.240 announced by: 3301
  9.749: internetsrs.com INFO Name server 193.0.253.7 announced by: 41980
  9.749: internetsrs.com INFO Zone announced by ASN: 41980,3301
  9.749: internetsrs.com INFO Zone announced by more than one ASN (2).
  9.749: internetsrs.com INFO Zone announced by IPv6 ASN: 
  9.749: internetsrs.com NOTICE Zone announced by only one IPv6 ASN (0).
  9.749: internetsrs.com INFO Done testing connectivity for internetsrs.com.
  9.749: internetsrs.com INFO Begin testing DNSSEC for internetsrs.com.
  9.765: internetsrs.com INFO Did not find DS record for internetsrs.com at parent.
  9.845: internetsrs.com INFO Servers for internetsrs.com have consistent extra processing status.
  9.845: internetsrs.com INFO Did not find DNSKEY record for internetsrs.com at child.
  9.845: internetsrs.com INFO No DNSKEY(s) found at child, other tests skipped.
  9.845: internetsrs.com INFO Done testing DNSSEC for internetsrs.com.
  9.845: internetsrs.com INFO Test completed for zone internetsrs.com.
