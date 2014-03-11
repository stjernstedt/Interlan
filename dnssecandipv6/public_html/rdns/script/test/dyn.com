  0.000: dyn.com INFO Begin testing zone dyn.com with version 1.5.0.
  0.001: dyn.com INFO Begin testing delegation for dyn.com.
 20.383: dyn.com INFO Name servers listed at parent: ns1.p01.dynect.net,ns2.p01.dynect.net,ns3.p01.dynect.net,ns4.p01.dynect.net
 26.023: dyn.com INFO Name servers listed at child: ns1.p01.dynect.net,ns2.p01.dynect.net,ns3.p01.dynect.net,ns4.p01.dynect.net
 29.990: dyn.com INFO It is possible to build a referral packet for dyn.com that works without EDNS0.
 29.996: dyn.com INFO Done testing delegation for dyn.com.
 29.997: dyn.com INFO Begin testing name server ns1.p01.dynect.net.
 29.997: dyn.com INFO Begin testing host ns1.p01.dynect.net.
 29.998: dyn.com INFO Begin testing address 208.78.70.1.
 42.481: dyn.com INFO Done testing address 208.78.70.1.
 42.481: dyn.com INFO Begin testing address 2001:500:90:1:0:0:0:1.
 46.907: dyn.com INFO Done testing address 2001:500:90:1:0:0:0:1.
 46.907: dyn.com INFO Done testing host ns1.p01.dynect.net.
 46.979: dyn.com INFO Name server ns1.p01.dynect.net (208.78.70.1) answers queries over UDP.
 47.044: dyn.com INFO Name server ns1.p01.dynect.net (208.78.70.1) answers queries over TCP.
 47.078: dyn.com INFO Name server ns1.p01.dynect.net (208.78.70.1) is not recursive.
 47.251: dyn.com INFO Name server ns1.p01.dynect.net (208.78.70.1) authoritative for dyn.com.
 47.455: dyn.com INFO Name server ns1.p01.dynect.net (208.78.70.1) closed for zone transfer of dyn.com.
 47.489: dyn.com INFO Legacy name server ID for ns1.p01.dynect.net (208.78.70.1): hostname.bind = dns4-03-fra.dyndns.com
 47.523: dyn.com INFO Legacy name server ID for ns1.p01.dynect.net (208.78.70.1): version.bind = 9.9.2-P1+Dyn-24a
 47.606: dyn.com NOTICE No answer received from 208.78.70.1 when querying for version.server/CH/TXT.
 47.648: dyn.com INFO Name server ns1.p01.dynect.net (2001:500:90:1:0:0:0:1) answers queries over UDP.
 47.720: dyn.com INFO Name server ns1.p01.dynect.net (2001:500:90:1:0:0:0:1) answers queries over TCP.
 47.757: dyn.com INFO Name server ns1.p01.dynect.net (2001:500:90:1:0:0:0:1) is not recursive.
 47.922: dyn.com INFO Name server ns1.p01.dynect.net (2001:500:90:1:0:0:0:1) authoritative for dyn.com.
 48.130: dyn.com INFO Name server ns1.p01.dynect.net (2001:500:90:1:0:0:0:1) closed for zone transfer of dyn.com.
 48.169: dyn.com INFO Legacy name server ID for ns1.p01.dynect.net (2001:500:90:1:0:0:0:1): hostname.bind = dns4-01-fra.dyndns.com
 48.227: dyn.com INFO Legacy name server ID for ns1.p01.dynect.net (2001:500:90:1:0:0:0:1): version.bind = 9.9.2-P1+Dyn-24a
 48.314: dyn.com NOTICE No answer received from 2001:500:90:1:0:0:0:1 when querying for version.server/CH/TXT.
 48.314: dyn.com INFO Done testing name server ns1.p01.dynect.net.
 48.315: dyn.com INFO Begin testing name server ns2.p01.dynect.net.
 48.315: dyn.com INFO Begin testing host ns2.p01.dynect.net.
 48.898: dyn.com INFO Begin testing address 204.13.250.1.
 50.196: dyn.com INFO Done testing address 204.13.250.1.
 50.197: dyn.com INFO Done testing host ns2.p01.dynect.net.
 50.957: dyn.com INFO Name server ns2.p01.dynect.net (204.13.250.1) answers queries over UDP.
 51.030: dyn.com INFO Name server ns2.p01.dynect.net (204.13.250.1) answers queries over TCP.
 51.091: dyn.com INFO Name server ns2.p01.dynect.net (204.13.250.1) is not recursive.
 51.254: dyn.com INFO Name server ns2.p01.dynect.net (204.13.250.1) authoritative for dyn.com.
 51.439: dyn.com INFO Name server ns2.p01.dynect.net (204.13.250.1) closed for zone transfer of dyn.com.
 51.472: dyn.com INFO Legacy name server ID for ns2.p01.dynect.net (204.13.250.1): hostname.bind = dns4-04-ams.dyndns.com
 51.506: dyn.com INFO Legacy name server ID for ns2.p01.dynect.net (204.13.250.1): version.bind = 9.9.2-P1+Dyn-24a
 51.583: dyn.com NOTICE No answer received from 204.13.250.1 when querying for version.server/CH/TXT.
 51.583: dyn.com INFO Done testing name server ns2.p01.dynect.net.
 51.583: dyn.com INFO Begin testing name server ns3.p01.dynect.net.
 51.583: dyn.com INFO Begin testing host ns3.p01.dynect.net.
 51.584: dyn.com INFO Begin testing address 208.78.71.1.
 52.291: dyn.com INFO Done testing address 208.78.71.1.
 52.291: dyn.com INFO Begin testing address 2001:500:94:1:0:0:0:1.
 52.980: dyn.com INFO Done testing address 2001:500:94:1:0:0:0:1.
 52.980: dyn.com INFO Done testing host ns3.p01.dynect.net.
 53.027: dyn.com INFO Name server ns3.p01.dynect.net (208.78.71.1) answers queries over UDP.
 53.094: dyn.com INFO Name server ns3.p01.dynect.net (208.78.71.1) answers queries over TCP.
 53.136: dyn.com INFO Name server ns3.p01.dynect.net (208.78.71.1) is not recursive.
 53.279: dyn.com INFO Name server ns3.p01.dynect.net (208.78.71.1) authoritative for dyn.com.
 53.484: dyn.com INFO Name server ns3.p01.dynect.net (208.78.71.1) closed for zone transfer of dyn.com.
 53.523: dyn.com INFO Legacy name server ID for ns3.p01.dynect.net (208.78.71.1): hostname.bind = dns4-04-fra.dyndns.com
 53.562: dyn.com INFO Legacy name server ID for ns3.p01.dynect.net (208.78.71.1): version.bind = 9.9.2-P1+Dyn-24a
 53.641: dyn.com NOTICE No answer received from 208.78.71.1 when querying for version.server/CH/TXT.
 53.684: dyn.com INFO Name server ns3.p01.dynect.net (2001:500:94:1:0:0:0:1) answers queries over UDP.
 53.754: dyn.com INFO Name server ns3.p01.dynect.net (2001:500:94:1:0:0:0:1) answers queries over TCP.
 53.791: dyn.com INFO Name server ns3.p01.dynect.net (2001:500:94:1:0:0:0:1) is not recursive.
 53.959: dyn.com INFO Name server ns3.p01.dynect.net (2001:500:94:1:0:0:0:1) authoritative for dyn.com.
 54.164: dyn.com INFO Name server ns3.p01.dynect.net (2001:500:94:1:0:0:0:1) closed for zone transfer of dyn.com.
 54.208: dyn.com INFO Legacy name server ID for ns3.p01.dynect.net (2001:500:94:1:0:0:0:1): hostname.bind = dns4-02-fra.dyndns.com
 54.250: dyn.com INFO Legacy name server ID for ns3.p01.dynect.net (2001:500:94:1:0:0:0:1): version.bind = 9.9.2-P1+Dyn-24a
 54.335: dyn.com NOTICE No answer received from 2001:500:94:1:0:0:0:1 when querying for version.server/CH/TXT.
 54.335: dyn.com INFO Done testing name server ns3.p01.dynect.net.
 54.336: dyn.com INFO Begin testing name server ns4.p01.dynect.net.
 54.336: dyn.com INFO Begin testing host ns4.p01.dynect.net.
 55.037: dyn.com INFO Begin testing address 204.13.251.1.
 56.187: dyn.com INFO Done testing address 204.13.251.1.
 56.188: dyn.com INFO Done testing host ns4.p01.dynect.net.
 56.672: dyn.com INFO Name server ns4.p01.dynect.net (204.13.251.1) answers queries over UDP.
 56.739: dyn.com INFO Name server ns4.p01.dynect.net (204.13.251.1) answers queries over TCP.
 56.774: dyn.com INFO Name server ns4.p01.dynect.net (204.13.251.1) is not recursive.
 56.929: dyn.com INFO Name server ns4.p01.dynect.net (204.13.251.1) authoritative for dyn.com.
 57.120: dyn.com INFO Name server ns4.p01.dynect.net (204.13.251.1) closed for zone transfer of dyn.com.
 57.159: dyn.com INFO Legacy name server ID for ns4.p01.dynect.net (204.13.251.1): hostname.bind = dns4-04-fra.dyndns.com
 57.194: dyn.com INFO Legacy name server ID for ns4.p01.dynect.net (204.13.251.1): version.bind = 9.9.2-P1+Dyn-24a
 57.272: dyn.com NOTICE No answer received from 204.13.251.1 when querying for version.server/CH/TXT.
 57.272: dyn.com INFO Done testing name server ns4.p01.dynect.net.
 57.273: dyn.com INFO Begin testing zone consistency for dyn.com.
 59.192: dyn.com INFO SOA at address 208.78.71.1 has serial 362.
 59.241: dyn.com INFO SOA at address 2001:500:94:1:0:0:0:1 has serial 362.
 59.293: dyn.com INFO SOA at address 2001:500:90:1:0:0:0:1 has serial 362.
 59.336: dyn.com INFO SOA at address 208.78.70.1 has serial 362.
 59.372: dyn.com INFO SOA at address 204.13.251.1 has serial 362.
 59.407: dyn.com INFO SOA at address 204.13.250.1 has serial 362.
 59.408: dyn.com INFO All SOA records have consistent serial numbers.
 59.408: dyn.com INFO All other fields in the SOA record are consistent among all name servers.
 60.395: dyn.com NOTICE The listed nameservers for dyn.com all report the same set of nameservers.
 60.395: dyn.com INFO Done testing zone consistency for dyn.com.
 60.395: dyn.com INFO Begin testing SOA parameters for dyn.com.
 60.434: dyn.com INFO Found SOA record for dyn.com.
 60.435: dyn.com INFO Begin testing host ns1.p01.dynect.net.
 60.435: dyn.com INFO Begin testing address 208.78.70.1.
 60.445: dyn.com INFO Done testing address 208.78.70.1.
 60.445: dyn.com INFO Begin testing address 2001:500:90:1:0:0:0:1.
 60.465: dyn.com INFO Done testing address 2001:500:90:1:0:0:0:1.
 60.465: dyn.com INFO Done testing host ns1.p01.dynect.net.
 60.465: dyn.com INFO SOA MNAME for dyn.com valid (ns1.p01.dynect.net).
 60.466: dyn.com INFO SOA MNAME for dyn.com (ns1.p01.dynect.net) listed as NS.
 60.507: dyn.com INFO SOA MNAME for dyn.com (ns1.p01.dynect.net) is authoritative.
 60.550: dyn.com INFO SOA MNAME for dyn.com (ns1.p01.dynect.net) is authoritative.
 60.550: dyn.com INFO Begin testing email address hostmaster@dyndns.com.
 60.949: dyn.com INFO Mail exchangers for hostmaster@dyndns.com found mail.dyndns.com,mx2.mailhop.org.
 60.949: dyn.com INFO Begin testing host mail.dyndns.com.
 61.698: dyn.com INFO Begin testing address 216.146.45.10.
 63.143: dyn.com INFO Done testing address 216.146.45.10.
 63.143: dyn.com INFO Done testing host mail.dyndns.com.
 63.570: dyn.com INFO Begin testing host mx2.mailhop.org.
 64.594: dyn.com INFO Begin testing address 216.146.33.7.
 66.604: dyn.com INFO Done testing address 216.146.33.7.
 66.604: dyn.com INFO Begin testing address 216.146.33.6.
 68.675: dyn.com INFO Done testing address 216.146.33.6.
 68.675: dyn.com INFO Done testing host mx2.mailhop.org.
 69.493: dyn.com INFO Done testing email address hostmaster@dyndns.com.
 69.493: dyn.com INFO Successful attempt to deliver email for SOA RNAME of dyn.com (hostmaster.dyndns.com) using hostmaster@dyndns.com.
 69.493: dyn.com INFO SOA TTL for dyn.com OK (3600) - recommended >= 3600.
 69.493: dyn.com NOTICE SOA refresh for dyn.com too small (3600) - recommended >= 14400.
 69.493: dyn.com NOTICE SOA retry for dyn.com too small (600) - recommended >= 3600.
 69.493: dyn.com INFO SOA expire for dyn.com OK (604800) - recommended >= 604800.
 69.493: dyn.com NOTICE SOA minimum for dyn.com too small (60) - recommended >= 300.
 69.493: dyn.com INFO Done testing SOA parameters for dyn.com.
 69.494: dyn.com INFO Begin testing connectivity for dyn.com.
 73.183: dyn.com NOTICE Zone announced by fewer than two IPv4 ASN.
 75.129: dyn.com NOTICE Zone announced by fewer than two IPv6 ASN.
 75.129: dyn.com INFO Done testing connectivity for dyn.com.
 75.129: dyn.com INFO Begin testing DNSSEC for dyn.com.
 75.232: dyn.com INFO Did not find DS record for dyn.com at parent.
 75.639: dyn.com INFO Servers for dyn.com have consistent extra processing status.
 75.707: dyn.com INFO Authenticated denial records not found for dyn.com.
 75.744: dyn.com INFO Did not find DNSKEY record for dyn.com at child.
 75.744: dyn.com INFO No DNSKEY(s) found at child, other tests skipped.
 75.744: dyn.com INFO Done testing DNSSEC for dyn.com.
 75.745: dyn.com INFO Test completed for zone dyn.com.
