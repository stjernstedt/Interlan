  0.000: dyndns.com INFO Begin testing zone dyndns.com with version 1.5.0.
  0.001: dyndns.com INFO Begin testing delegation for dyndns.com.
 19.838: dyndns.com INFO Name servers listed at parent: ns1.dynamicnetworkservices.net,ns2.dynamicnetworkservices.net,ns3.dynamicnetworkservices.net,ns4.dynamicnetworkservices.net
 24.675: dyndns.com INFO Name servers listed at child: ns1.dynamicnetworkservices.net,ns2.dynamicnetworkservices.net,ns3.dynamicnetworkservices.net,ns4.dynamicnetworkservices.net
 24.735: dyndns.com INFO Parent glue for dyndns.com found: ns1.dynamicnetworkservices.net (208.78.70.100)
 25.156: dyndns.com INFO Parent glue for dyndns.com found: ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100)
 25.287: dyndns.com INFO Parent glue for dyndns.com found: ns2.dynamicnetworkservices.net (204.13.250.100)
 25.585: dyndns.com INFO Parent glue for dyndns.com found: ns3.dynamicnetworkservices.net (208.78.71.100)
 25.660: dyndns.com INFO Parent glue for dyndns.com found: ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100)
 25.909: dyndns.com INFO Parent glue for dyndns.com found: ns4.dynamicnetworkservices.net (204.13.251.100)
 26.141: dyndns.com INFO Checking glue for ns1.dynamicnetworkservices.net (208.78.70.100).
 26.228: dyndns.com INFO Checking glue for ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100).
 26.229: dyndns.com INFO Checking glue for ns2.dynamicnetworkservices.net (204.13.250.100).
 26.229: dyndns.com INFO Checking glue for ns3.dynamicnetworkservices.net (208.78.71.100).
 26.229: dyndns.com INFO Checking glue for ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100).
 26.229: dyndns.com INFO Checking glue for ns4.dynamicnetworkservices.net (204.13.251.100).
 26.230: dyndns.com INFO Parent glue for dyndns.com found: ns1.dynamicnetworkservices.net (208.78.70.100)
 26.230: dyndns.com INFO Parent glue for dyndns.com found: ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100)
 26.230: dyndns.com INFO Parent glue for dyndns.com found: ns2.dynamicnetworkservices.net (204.13.250.100)
 26.230: dyndns.com INFO Parent glue for dyndns.com found: ns3.dynamicnetworkservices.net (208.78.71.100)
 26.231: dyndns.com INFO Parent glue for dyndns.com found: ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100)
 26.231: dyndns.com INFO Parent glue for dyndns.com found: ns4.dynamicnetworkservices.net (204.13.251.100)
 28.580: dyndns.com INFO It is possible to build a referral packet for dyndns.com that works without EDNS0.
 28.580: dyndns.com INFO Done testing delegation for dyndns.com.
 28.609: dyndns.com INFO Begin testing name server ns1.dynamicnetworkservices.net.
 28.609: dyndns.com INFO Begin testing host ns1.dynamicnetworkservices.net.
 28.610: dyndns.com INFO Begin testing address 208.78.70.100.
 38.086: dyndns.com INFO Done testing address 208.78.70.100.
 38.087: dyndns.com INFO Begin testing address 2001:500:90:0:0:0:0:100.
 38.791: dyndns.com INFO Done testing address 2001:500:90:0:0:0:0:100.
 38.791: dyndns.com INFO Done testing host ns1.dynamicnetworkservices.net.
 38.847: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (208.78.70.100) answers queries over UDP.
 38.948: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (208.78.70.100) answers queries over TCP.
 38.990: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (208.78.70.100) is not recursive.
 39.158: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (208.78.70.100) authoritative for dyndns.com.
 39.347: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (208.78.70.100) closed for zone transfer of dyndns.com.
 39.387: dyndns.com INFO Legacy name server ID for ns1.dynamicnetworkservices.net (208.78.70.100): hostname.bind = dns8-01-fra.dyndns.com
 39.425: dyndns.com INFO Legacy name server ID for ns1.dynamicnetworkservices.net (208.78.70.100): version.bind = 9.6-ESV-R8
 39.504: dyndns.com NOTICE No answer received from 208.78.70.100 when querying for version.server/CH/TXT.
 39.562: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100) answers queries over UDP.
 39.655: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100) answers queries over TCP.
 39.712: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100) is not recursive.
 39.937: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100) authoritative for dyndns.com.
 40.151: dyndns.com INFO Name server ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100) closed for zone transfer of dyndns.com.
 40.193: dyndns.com INFO Legacy name server ID for ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100): hostname.bind = dns8-01-fra.dyndns.com
 40.229: dyndns.com INFO Legacy name server ID for ns1.dynamicnetworkservices.net (2001:500:90:0:0:0:0:100): version.bind = 9.6-ESV-R8
 40.336: dyndns.com NOTICE No answer received from 2001:500:90:0:0:0:0:100 when querying for version.server/CH/TXT.
 40.336: dyndns.com INFO Done testing name server ns1.dynamicnetworkservices.net.
 40.337: dyndns.com INFO Begin testing name server ns2.dynamicnetworkservices.net.
 40.337: dyndns.com INFO Begin testing host ns2.dynamicnetworkservices.net.
 40.661: dyndns.com INFO Begin testing address 204.13.250.100.
 41.554: dyndns.com INFO Done testing address 204.13.250.100.
 41.554: dyndns.com INFO Done testing host ns2.dynamicnetworkservices.net.
 42.073: dyndns.com INFO Name server ns2.dynamicnetworkservices.net (204.13.250.100) answers queries over UDP.
 42.164: dyndns.com INFO Name server ns2.dynamicnetworkservices.net (204.13.250.100) answers queries over TCP.
 42.226: dyndns.com INFO Name server ns2.dynamicnetworkservices.net (204.13.250.100) is not recursive.
 42.551: dyndns.com INFO Name server ns2.dynamicnetworkservices.net (204.13.250.100) authoritative for dyndns.com.
 42.727: dyndns.com INFO Name server ns2.dynamicnetworkservices.net (204.13.250.100) closed for zone transfer of dyndns.com.
 42.774: dyndns.com INFO Legacy name server ID for ns2.dynamicnetworkservices.net (204.13.250.100): hostname.bind = dns8-01-ams.dyndns.com
 42.808: dyndns.com INFO Legacy name server ID for ns2.dynamicnetworkservices.net (204.13.250.100): version.bind = 9.6-ESV-R8
 42.880: dyndns.com NOTICE No answer received from 204.13.250.100 when querying for version.server/CH/TXT.
 42.881: dyndns.com INFO Done testing name server ns2.dynamicnetworkservices.net.
 42.881: dyndns.com INFO Begin testing name server ns3.dynamicnetworkservices.net.
 42.881: dyndns.com INFO Begin testing host ns3.dynamicnetworkservices.net.
 42.881: dyndns.com INFO Begin testing address 208.78.71.100.
 43.420: dyndns.com INFO Done testing address 208.78.71.100.
 43.421: dyndns.com INFO Begin testing address 2001:500:94:0:0:0:0:100.
 47.924: dyndns.com INFO Done testing address 2001:500:94:0:0:0:0:100.
 47.924: dyndns.com INFO Done testing host ns3.dynamicnetworkservices.net.
 48.018: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (208.78.71.100) answers queries over UDP.
 48.115: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (208.78.71.100) answers queries over TCP.
 48.161: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (208.78.71.100) is not recursive.
 48.505: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (208.78.71.100) authoritative for dyndns.com.
 48.705: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (208.78.71.100) closed for zone transfer of dyndns.com.
 48.748: dyndns.com INFO Legacy name server ID for ns3.dynamicnetworkservices.net (208.78.71.100): hostname.bind = dns8-01-fra.dyndns.com
 48.829: dyndns.com INFO Legacy name server ID for ns3.dynamicnetworkservices.net (208.78.71.100): version.bind = 9.6-ESV-R8
 48.963: dyndns.com NOTICE No answer received from 208.78.71.100 when querying for version.server/CH/TXT.
 49.011: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100) answers queries over UDP.
 49.114: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100) answers queries over TCP.
 49.165: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100) is not recursive.
 49.470: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100) authoritative for dyndns.com.
 49.672: dyndns.com INFO Name server ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100) closed for zone transfer of dyndns.com.
 49.746: dyndns.com INFO Legacy name server ID for ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100): hostname.bind = dns8-01-fra.dyndns.com
 49.795: dyndns.com INFO Legacy name server ID for ns3.dynamicnetworkservices.net (2001:500:94:0:0:0:0:100): version.bind = 9.6-ESV-R8
 49.895: dyndns.com NOTICE No answer received from 2001:500:94:0:0:0:0:100 when querying for version.server/CH/TXT.
 49.895: dyndns.com INFO Done testing name server ns3.dynamicnetworkservices.net.
 49.895: dyndns.com INFO Begin testing name server ns4.dynamicnetworkservices.net.
 49.896: dyndns.com INFO Begin testing host ns4.dynamicnetworkservices.net.
 50.734: dyndns.com INFO Begin testing address 204.13.251.100.
 51.747: dyndns.com INFO Done testing address 204.13.251.100.
 51.747: dyndns.com INFO Done testing host ns4.dynamicnetworkservices.net.
 52.168: dyndns.com INFO Name server ns4.dynamicnetworkservices.net (204.13.251.100) answers queries over UDP.
 52.234: dyndns.com INFO Name server ns4.dynamicnetworkservices.net (204.13.251.100) answers queries over TCP.
 52.274: dyndns.com INFO Name server ns4.dynamicnetworkservices.net (204.13.251.100) is not recursive.
 52.511: dyndns.com INFO Name server ns4.dynamicnetworkservices.net (204.13.251.100) authoritative for dyndns.com.
 52.695: dyndns.com INFO Name server ns4.dynamicnetworkservices.net (204.13.251.100) closed for zone transfer of dyndns.com.
 52.736: dyndns.com INFO Legacy name server ID for ns4.dynamicnetworkservices.net (204.13.251.100): hostname.bind = dns8-01-fra.dyndns.com
 52.772: dyndns.com INFO Legacy name server ID for ns4.dynamicnetworkservices.net (204.13.251.100): version.bind = 9.6-ESV-R8
 52.839: dyndns.com NOTICE No answer received from 204.13.251.100 when querying for version.server/CH/TXT.
 52.840: dyndns.com INFO Done testing name server ns4.dynamicnetworkservices.net.
 52.840: dyndns.com INFO Begin testing zone consistency for dyndns.com.
 54.516: dyndns.com INFO SOA at address 2001:500:90:0:0:0:0:100 has serial 2013073002.
 54.592: dyndns.com INFO SOA at address 2001:500:94:0:0:0:0:100 has serial 2013073002.
 54.637: dyndns.com INFO SOA at address 208.78.71.100 has serial 2013073002.
 54.687: dyndns.com INFO SOA at address 204.13.251.100 has serial 2013073002.
 54.751: dyndns.com INFO SOA at address 204.13.250.100 has serial 2013073002.
 54.810: dyndns.com INFO SOA at address 208.78.70.100 has serial 2013073002.
 54.810: dyndns.com INFO All SOA records have consistent serial numbers.
 54.811: dyndns.com INFO All other fields in the SOA record are consistent among all name servers.
 56.301: dyndns.com NOTICE The listed nameservers for dyndns.com all report the same set of nameservers.
 56.301: dyndns.com INFO Done testing zone consistency for dyndns.com.
 56.301: dyndns.com INFO Begin testing SOA parameters for dyndns.com.
 56.357: dyndns.com INFO Found SOA record for dyndns.com.
 56.357: dyndns.com INFO Begin testing host ns0.dynamicnetworkservices.net.
 57.529: dyndns.com INFO Begin testing address 208.78.68.100.
 58.757: dyndns.com INFO Done testing address 208.78.68.100.
 58.757: dyndns.com INFO Done testing host ns0.dynamicnetworkservices.net.
 58.757: dyndns.com INFO SOA MNAME for dyndns.com valid (ns0.dynamicnetworkservices.net).
 58.765: dyndns.com NOTICE SOA MNAME for dyndns.com (ns0.dynamicnetworkservices.net) not listed as NS.
 59.264: dyndns.com INFO SOA MNAME for dyndns.com (ns0.dynamicnetworkservices.net) is authoritative.
 59.264: dyndns.com INFO Begin testing email address hostmaster@dyndns.com.
 60.032: dyndns.com INFO Mail exchangers for hostmaster@dyndns.com found mail.dyndns.com,mx2.mailhop.org.
 60.032: dyndns.com INFO Begin testing host mail.dyndns.com.
 61.174: dyndns.com INFO Begin testing address 216.146.45.10.
 62.618: dyndns.com INFO Done testing address 216.146.45.10.
 62.619: dyndns.com INFO Done testing host mail.dyndns.com.
 62.923: dyndns.com INFO Begin testing host mx2.mailhop.org.
 71.541: dyndns.com INFO Begin testing address 216.146.33.5.
 73.817: dyndns.com INFO Done testing address 216.146.33.5.
 73.818: dyndns.com INFO Begin testing address 216.146.33.7.
 75.624: dyndns.com INFO Done testing address 216.146.33.7.
 75.624: dyndns.com INFO Done testing host mx2.mailhop.org.
 76.032: dyndns.com INFO Done testing email address hostmaster@dyndns.com.
 76.032: dyndns.com INFO Successful attempt to deliver email for SOA RNAME of dyndns.com (hostmaster.dyndns.com) using hostmaster@dyndns.com.
 76.032: dyndns.com INFO SOA TTL for dyndns.com OK (86400) - recommended >= 3600.
 76.032: dyndns.com NOTICE SOA refresh for dyndns.com too small (10800) - recommended >= 14400.
 76.038: dyndns.com NOTICE SOA retry for dyndns.com too small (1800) - recommended >= 3600.
 76.038: dyndns.com INFO SOA expire for dyndns.com OK (604800) - recommended >= 604800.
 76.038: dyndns.com INFO SOA minimum for dyndns.com OK (1800) - recommended between 300 and 86400.
 76.038: dyndns.com INFO Done testing SOA parameters for dyndns.com.
 76.039: dyndns.com INFO Begin testing connectivity for dyndns.com.
 79.701: dyndns.com NOTICE Zone announced by fewer than two IPv4 ASN.
 81.161: dyndns.com NOTICE Zone announced by fewer than two IPv6 ASN.
 81.161: dyndns.com INFO Done testing connectivity for dyndns.com.
 81.161: dyndns.com INFO Begin testing DNSSEC for dyndns.com.
 81.290: dyndns.com INFO Did not find DS record for dyndns.com at parent.
 81.857: dyndns.com INFO Servers for dyndns.com have consistent extra processing status.
 81.928: dyndns.com INFO Authenticated denial records not found for dyndns.com.
 81.970: dyndns.com INFO Did not find DNSKEY record for dyndns.com at child.
 81.970: dyndns.com INFO No DNSKEY(s) found at child, other tests skipped.
 81.970: dyndns.com INFO Done testing DNSSEC for dyndns.com.
 81.971: dyndns.com INFO Test completed for zone dyndns.com.
