  0.000: tele2.com INFO Begin testing zone tele2.com with version 1.3.0.
  0.002: tele2.com INFO Begin testing delegation for tele2.com.
 18.569: tele2.com INFO Name servers listed at parent: falun.dns.swip.net,pitea.dns.swip.net
 21.606: tele2.com INFO Name servers listed at child: falun.dns.swip.net,pitea.dns.swip.net
 21.606: tele2.com NOTICE No IPv6 name servers found.
 22.349: tele2.com INFO Done testing delegation for tele2.com.
 22.350: tele2.com INFO Begin testing name server falun.dns.swip.net.
 22.350: tele2.com INFO Begin testing host falun.dns.swip.net.
 22.724: tele2.com INFO Begin testing address 192.71.220.13.
 35.120: tele2.com INFO Done testing address 192.71.220.13.
 35.120: tele2.com INFO Done testing host falun.dns.swip.net.
 35.379: tele2.com INFO Name server falun.dns.swip.net (192.71.220.13) answers queries over UDP.
 35.401: tele2.com INFO Name server falun.dns.swip.net (192.71.220.13) answers queries over TCP.
 35.410: tele2.com INFO Name server falun.dns.swip.net (192.71.220.13) is not recursive.
 35.421: tele2.com INFO Name server falun.dns.swip.net (192.71.220.13) authoritative for tele2.com.
 35.438: tele2.com INFO Name server falun.dns.swip.net (192.71.220.13) closed for zone transfer of tele2.com.
 35.446: tele2.com INFO Legacy name server ID for falun.dns.swip.net (192.71.220.13): hostname.bind = authns1
 35.461: tele2.com INFO Legacy name server ID for falun.dns.swip.net (192.71.220.13): version.bind = PONG 0.2alpha
 35.474: tele2.com NOTICE No answer received from 192.71.220.13 when querying for version.server/CH/TXT.
 35.474: tele2.com INFO Done testing name server falun.dns.swip.net.
 35.474: tele2.com INFO Begin testing name server pitea.dns.swip.net.
 35.475: tele2.com INFO Begin testing host pitea.dns.swip.net.
 36.064: tele2.com INFO Begin testing address 192.71.180.43.
 36.769: tele2.com INFO Done testing address 192.71.180.43.
 36.770: tele2.com INFO Done testing host pitea.dns.swip.net.
 37.201: tele2.com INFO Name server pitea.dns.swip.net (192.71.180.43) answers queries over UDP.
 37.221: tele2.com INFO Name server pitea.dns.swip.net (192.71.180.43) answers queries over TCP.
 37.235: tele2.com INFO Name server pitea.dns.swip.net (192.71.180.43) is not recursive.
 37.243: tele2.com INFO Name server pitea.dns.swip.net (192.71.180.43) authoritative for tele2.com.
 37.264: tele2.com INFO Name server pitea.dns.swip.net (192.71.180.43) closed for zone transfer of tele2.com.
 37.277: tele2.com INFO Legacy name server ID for pitea.dns.swip.net (192.71.180.43): hostname.bind = authns2
 37.285: tele2.com INFO Legacy name server ID for pitea.dns.swip.net (192.71.180.43): version.bind = PONG 0.2alpha
 37.298: tele2.com NOTICE No answer received from 192.71.180.43 when querying for version.server/CH/TXT.
 37.299: tele2.com INFO Done testing name server pitea.dns.swip.net.
 37.299: tele2.com INFO Begin testing zone consistency for tele2.com.
 38.645: tele2.com INFO SOA at address 192.71.180.43 has serial 2012090301.
 38.652: tele2.com INFO SOA at address 192.71.220.13 has serial 2012090301.
 38.652: tele2.com INFO All SOA records have consistent serial numbers.
 38.652: tele2.com INFO All other fields in the SOA record are consistent among all name servers.
 38.652: tele2.com INFO Done testing zone consistency for tele2.com.
 38.653: tele2.com INFO Begin testing SOA parameters for tele2.com.
 38.670: tele2.com INFO Found SOA record for tele2.com.
 38.671: tele2.com INFO Begin testing host falun.dns.swip.net.
 38.955: tele2.com INFO Begin testing address 192.71.220.13.
 39.300: tele2.com INFO Done testing address 192.71.220.13.
 39.300: tele2.com INFO Done testing host falun.dns.swip.net.
 39.300: tele2.com INFO SOA MNAME for tele2.com valid (falun.dns.swip.net).
 39.301: tele2.com INFO SOA MNAME for tele2.com (falun.dns.swip.net) listed as NS.
 39.580: tele2.com INFO SOA MNAME for tele2.com (falun.dns.swip.net) is authoritative.
 39.581: tele2.com INFO Begin testing email address hostmaster@tele2.com.
 39.931: tele2.com INFO Mail exchangers for hostmaster@tele2.com found gw1-in.tele2.se,gw2-in.tele2.se.
 39.931: tele2.com INFO Begin testing host gw1-in.tele2.se.
 41.249: tele2.com INFO Begin testing address 193.12.60.45.
 42.243: tele2.com INFO Done testing address 193.12.60.45.
 42.243: tele2.com INFO Done testing host gw1-in.tele2.se.
 42.486: tele2.com INFO Begin testing mail server gw1-in.tele2.se (193.12.60.45) with hostmaster@tele2.com.
 43.018: tele2.com INFO SMTP banner: gw1-in.tele2.se ESMTP
 43.072: tele2.com INFO SMTP testing of gw1-in.tele2.se (193.12.60.45) with hostmaster@tele2.com succeeded without errors.
 43.073: tele2.com INFO Done testing mail server gw1-in.tele2.se (193.12.60.45) with hostmaster@tele2.com.
 43.073: tele2.com INFO Begin testing host gw2-in.tele2.se.
 43.693: tele2.com INFO Begin testing address 193.12.60.46.
 44.745: tele2.com INFO Done testing address 193.12.60.46.
 44.745: tele2.com INFO Done testing host gw2-in.tele2.se.
 45.010: tele2.com INFO Delivery over IPv4 to hostmaster@tele2.com ok.
 45.010: tele2.com NOTICE Delivery over IPv6 to hostmaster@tele2.com could not be done.
 45.010: tele2.com INFO Done testing email address hostmaster@tele2.com.
 45.010: tele2.com INFO Successful attempt to deliver email for SOA RNAME of tele2.com (hostmaster.tele2.com) using hostmaster@tele2.com.
 45.010: tele2.com INFO SOA TTL for tele2.com OK (3600) - recommended >= 3600.
 45.011: tele2.com INFO SOA refresh for tele2.com OK (28800) - recommended >= 14400.
 45.011: tele2.com INFO SOA retry for tele2.com OK (7200) - recommended >= 3600.
 45.011: tele2.com INFO SOA expire for tele2.com OK (604800) - recommended >= 604800.
 45.011: tele2.com INFO SOA minimum for tele2.com OK (3600) - recommended between 300 and 86400.
 45.011: tele2.com INFO Done testing SOA parameters for tele2.com.
 45.011: tele2.com INFO Begin testing connectivity for tele2.com.
 45.711: tele2.com INFO Name server 192.71.180.43 announced by: 1257
 46.556: tele2.com INFO Name server 192.71.220.13 announced by: 1257
 46.556: tele2.com INFO Zone announced by IPv4 ASN: 1257
 46.556: tele2.com NOTICE Zone announced by less than two IPv4 ASN (1).
 46.556: tele2.com INFO Zone announced by IPv6 ASN: 
 46.556: tele2.com NOTICE Zone announced by less than two IPv6 ASN (0).
 46.557: tele2.com INFO Done testing connectivity for tele2.com.
 46.557: tele2.com INFO Begin testing DNSSEC for tele2.com.
 46.929: tele2.com INFO Did not find DS record for tele2.com at parent.
 46.965: tele2.com INFO Servers for tele2.com have consistent extra processing status.
 46.965: tele2.com INFO Did not find DNSKEY record for tele2.com at child.
 46.965: tele2.com INFO No DNSKEY(s) found at child, other tests skipped.
 46.965: tele2.com INFO Done testing DNSSEC for tele2.com.
 46.965: tele2.com INFO Test completed for zone tele2.com.
