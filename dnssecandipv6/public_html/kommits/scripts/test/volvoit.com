  0.000: volvoit.com INFO Begin testing zone volvoit.com with version 1.2.
  0.001: volvoit.com INFO Begin testing delegation for volvoit.com.
 10.331: volvoit.com INFO Name servers listed at parent: gate.volvo.se,gatekeeper.volvo.com,gatekeeper.volvo.se
 12.606: volvoit.com INFO Name servers listed at child: gate.volvo.se,gatekeeper.volvo.com,gatekeeper.volvo.se
 12.606: volvoit.com NOTICE No IPv6 name servers found.
 13.004: volvoit.com INFO Parent glue for volvoit.com found: gatekeeper.volvo.com (204.235.196.33)
 13.509: volvoit.com INFO Checking glue for gatekeeper.volvo.com (204.235.196.33).
 13.510: volvoit.com INFO Parent glue for volvoit.com found: gatekeeper.volvo.com (204.235.196.33)
 13.511: volvoit.com INFO Done testing delegation for volvoit.com.
 13.511: volvoit.com INFO Begin testing name server gate.volvo.se.
 13.512: volvoit.com INFO Begin testing host gate.volvo.se.
 13.512: volvoit.com INFO Begin testing address 192.138.110.253.
 18.445: volvoit.com INFO Done testing address 192.138.110.253.
 18.445: volvoit.com INFO Done testing host gate.volvo.se.
 18.486: volvoit.com INFO Name server gate.volvo.se (192.138.110.253) answers queries over UDP.
 18.560: volvoit.com INFO Name server gate.volvo.se (192.138.110.253) answers queries over TCP.
 18.598: volvoit.com INFO Name server gate.volvo.se (192.138.110.253) is not recursive.
 18.636: volvoit.com INFO Name server gate.volvo.se (192.138.110.253) authoritative for volvoit.com.
 18.741: volvoit.com INFO Name server gate.volvo.se (192.138.110.253) closed for zone transfer of volvoit.com.
 18.781: volvoit.com INFO Legacy name server ID for gate.volvo.se (192.138.110.253): hostname.bind = gate.volvo.se
 18.893: volvoit.com NOTICE No answer received from 192.138.110.253 when querying for version.server/CH/TXT.
 18.894: volvoit.com INFO Done testing name server gate.volvo.se.
 18.894: volvoit.com INFO Begin testing name server gatekeeper.volvo.com.
 18.894: volvoit.com INFO Begin testing host gatekeeper.volvo.com.
 18.895: volvoit.com INFO Begin testing address 204.235.196.33.
 19.374: volvoit.com INFO Done testing address 204.235.196.33.
 19.374: volvoit.com INFO Done testing host gatekeeper.volvo.com.
 19.508: volvoit.com INFO Name server gatekeeper.volvo.com (204.235.196.33) answers queries over UDP.
 19.766: volvoit.com INFO Name server gatekeeper.volvo.com (204.235.196.33) answers queries over TCP.
 19.895: volvoit.com INFO Name server gatekeeper.volvo.com (204.235.196.33) is not recursive.
 20.030: volvoit.com INFO Name server gatekeeper.volvo.com (204.235.196.33) authoritative for volvoit.com.
 20.418: volvoit.com INFO Name server gatekeeper.volvo.com (204.235.196.33) closed for zone transfer of volvoit.com.
 20.555: volvoit.com INFO Legacy name server ID for gatekeeper.volvo.com (204.235.196.33): hostname.bind = gatekeeper.volvo.com
 20.953: volvoit.com NOTICE No answer received from 204.235.196.33 when querying for version.server/CH/TXT.
 20.953: volvoit.com INFO Done testing name server gatekeeper.volvo.com.
 20.954: volvoit.com INFO Begin testing name server gatekeeper.volvo.se.
 20.954: volvoit.com INFO Begin testing host gatekeeper.volvo.se.
 20.955: volvoit.com INFO Begin testing address 192.138.110.250.
 21.346: volvoit.com INFO Done testing address 192.138.110.250.
 21.346: volvoit.com INFO Done testing host gatekeeper.volvo.se.
 21.386: volvoit.com INFO Name server gatekeeper.volvo.se (192.138.110.250) answers queries over UDP.
 21.459: volvoit.com INFO Name server gatekeeper.volvo.se (192.138.110.250) answers queries over TCP.
 21.499: volvoit.com INFO Name server gatekeeper.volvo.se (192.138.110.250) is not recursive.
 21.537: volvoit.com INFO Name server gatekeeper.volvo.se (192.138.110.250) authoritative for volvoit.com.
 21.643: volvoit.com INFO Name server gatekeeper.volvo.se (192.138.110.250) closed for zone transfer of volvoit.com.
 21.682: volvoit.com INFO Legacy name server ID for gatekeeper.volvo.se (192.138.110.250): hostname.bind = gatekeeper.volvo.se
 21.796: volvoit.com NOTICE No answer received from 192.138.110.250 when querying for version.server/CH/TXT.
 21.797: volvoit.com INFO Done testing name server gatekeeper.volvo.se.
 21.797: volvoit.com INFO Begin testing zone consistency for volvoit.com.
 21.840: volvoit.com INFO SOA at address 192.138.110.253 has serial 2008120160.
 21.879: volvoit.com INFO SOA at address 192.138.110.250 has serial 2008120160.
 22.014: volvoit.com INFO SOA at address 204.235.196.33 has serial 2008120160.
 22.014: volvoit.com INFO All SOA records have consistent serial numbers.
 22.014: volvoit.com INFO All SOA records are consistent among all name servers.
 22.014: volvoit.com INFO Done testing zone consistency for volvoit.com.
 22.015: volvoit.com INFO Begin testing SOA parameters for volvoit.com.
 22.150: volvoit.com INFO Found SOA record for volvoit.com.
 22.151: volvoit.com INFO Begin testing host gate.volvo.se.
 22.151: volvoit.com INFO Begin testing address 192.138.110.253.
 22.153: volvoit.com INFO Done testing address 192.138.110.253.
 22.153: volvoit.com INFO Done testing host gate.volvo.se.
 22.154: volvoit.com INFO SOA MNAME for volvoit.com valid (gate.volvo.se).
 22.154: volvoit.com INFO SOA MNAME for volvoit.com (gate.volvo.se) listed as NS.
 22.194: volvoit.com INFO SOA MNAME for volvoit.com (gate.volvo.se) is authoritative.
 22.194: volvoit.com INFO Begin testing email address hostmaster@volvo.com.
 22.460: volvoit.com INFO Mail exchangers for hostmaster@volvo.com found mail-gw1.it.volvo.com,mail-gw4.it.volvo.com,mail-gw2.it.volvo.com,mail-gw3.it.volvo.com.
 22.460: volvoit.com INFO Begin testing host mail-gw1.it.volvo.com.
 23.195: volvoit.com INFO Begin testing address 192.138.110.14.
 23.583: volvoit.com INFO Done testing address 192.138.110.14.
 23.583: volvoit.com INFO Done testing host mail-gw1.it.volvo.com.
 23.584: volvoit.com INFO Begin testing mail server mail-gw1.it.volvo.com (192.138.110.14) with hostmaster@volvo.com.
 24.185: volvoit.com INFO SMTP banner: mail-gw1.it.volvo.com ESMTP
 24.323: volvoit.com INFO SMTP testing of mail-gw1.it.volvo.com (192.138.110.14) with hostmaster@volvo.com succeeded without errors.
 24.323: volvoit.com INFO Done testing mail server mail-gw1.it.volvo.com (192.138.110.14) with hostmaster@volvo.com.
 24.324: volvoit.com INFO Begin testing host mail-gw4.it.volvo.com.
 24.878: volvoit.com INFO Begin testing address 192.138.117.78.
 25.221: volvoit.com INFO Done testing address 192.138.117.78.
 25.221: volvoit.com INFO Done testing host mail-gw4.it.volvo.com.
 25.222: volvoit.com INFO Begin testing host mail-gw2.it.volvo.com.
 25.861: volvoit.com INFO Begin testing address 192.138.110.15.
 26.251: volvoit.com INFO Done testing address 192.138.110.15.
 26.252: volvoit.com INFO Done testing host mail-gw2.it.volvo.com.
 26.252: volvoit.com INFO Begin testing host mail-gw3.it.volvo.com.
 27.067: volvoit.com INFO Begin testing address 192.138.110.232.
 27.480: volvoit.com INFO Done testing address 192.138.110.232.
 27.480: volvoit.com INFO Done testing host mail-gw3.it.volvo.com.
 27.481: volvoit.com INFO Delivery over IPv4 to hostmaster@volvo.com ok.
 27.481: volvoit.com INFO Delivery over IPv6 to hostmaster@volvo.com could not be done.
 27.481: volvoit.com INFO Done testing email address hostmaster@volvo.com.
 27.481: volvoit.com INFO Successful attempt to deliver email for SOA RNAME of volvoit.com (hostmaster.volvo.com) using hostmaster@volvo.com.
 27.481: volvoit.com INFO SOA TTL for volvoit.com OK (3600) - recommended >= 3600.
 27.481: volvoit.com NOTICE SOA refresh for volvoit.com too small (10800) - recommended >= 14400.
 27.482: volvoit.com INFO SOA retry for volvoit.com OK (3600) - recommended >= 3600.
 27.482: volvoit.com INFO SOA expire for volvoit.com OK (2592000) - recommended >= 604800.
 27.482: volvoit.com INFO SOA minimum for volvoit.com OK (600) - recommended between 300 and 86400.
 27.482: volvoit.com INFO Done testing SOA parameters for volvoit.com.
 27.483: volvoit.com INFO Begin testing connectivity for volvoit.com.
 28.082: volvoit.com INFO Name server 204.235.196.33 announced by: 2386
 28.851: volvoit.com INFO Name server 192.138.110.253 announced by: 25252
 29.339: volvoit.com INFO Name server 192.138.110.250 announced by: 25252
 29.340: volvoit.com INFO Zone announced by IPv4 ASN: 2386,25252
 29.340: volvoit.com INFO Zone announced by more than one ASN (2).
 29.340: volvoit.com INFO Zone announced by IPv6 ASN: 
 29.340: volvoit.com NOTICE Zone announced by less than two IPv6 ASN (0).
 29.340: volvoit.com INFO Done testing connectivity for volvoit.com.
 29.341: volvoit.com INFO Begin testing DNSSEC for volvoit.com.
 29.389: volvoit.com INFO Did not find DS record for volvoit.com at parent.
 29.800: volvoit.com INFO Servers for volvoit.com have consistent extra processing status.
 29.800: volvoit.com INFO Did not find DNSKEY record for volvoit.com at child.
 29.800: volvoit.com INFO No DNSKEY(s) found at child, other tests skipped.
 29.801: volvoit.com INFO Done testing DNSSEC for volvoit.com.
 29.801: volvoit.com INFO Test completed for zone volvoit.com.
