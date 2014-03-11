  0.000: NameISP.com INFO Begin testing zone NameISP.com with version 1.3.0.
  0.002: NameISP.com INFO Begin testing delegation for NameISP.com.
 18.743: NameISP.com INFO Name servers listed at parent: ns1.p21.dynect.net,ns2.p21.dynect.net,ns3.p21.dynect.net,ns4.p21.dynect.net
 22.540: NameISP.com INFO Name servers listed at child: ns1.p21.dynect.net,ns2.p21.dynect.net,ns3.p21.dynect.net,ns4.p21.dynect.net
 24.283: NameISP.com INFO Done testing delegation for NameISP.com.
 24.283: NameISP.com INFO Begin testing name server ns1.p21.dynect.net.
 24.283: NameISP.com INFO Begin testing host ns1.p21.dynect.net.
 24.284: NameISP.com INFO Begin testing address 208.78.70.21.
 31.071: NameISP.com INFO Done testing address 208.78.70.21.
 31.072: NameISP.com INFO Begin testing address 2001:500:90:1:0:0:0:21.
 42.070: NameISP.com INFO Done testing address 2001:500:90:1:0:0:0:21.
 42.070: NameISP.com INFO Done testing host ns1.p21.dynect.net.
 42.102: NameISP.com INFO Name server ns1.p21.dynect.net (208.78.70.21) answers queries over UDP.
 42.178: NameISP.com INFO Name server ns1.p21.dynect.net (208.78.70.21) answers queries over TCP.
 42.214: NameISP.com INFO Name server ns1.p21.dynect.net (208.78.70.21) is not recursive.
 42.252: NameISP.com INFO Name server ns1.p21.dynect.net (208.78.70.21) authoritative for NameISP.com.
 42.449: NameISP.com INFO Name server ns1.p21.dynect.net (208.78.70.21) closed for zone transfer of NameISP.com.
 42.488: NameISP.com INFO Legacy name server ID for ns1.p21.dynect.net (208.78.70.21): hostname.bind = dns4-03-fra.dyndns.com
 42.524: NameISP.com INFO Legacy name server ID for ns1.p21.dynect.net (208.78.70.21): version.bind = 9.6-ESV-R7-P3
 42.601: NameISP.com NOTICE No answer received from 208.78.70.21 when querying for version.server/CH/TXT.
 42.634: NameISP.com INFO Name server ns1.p21.dynect.net (2001:500:90:1:0:0:0:21) answers queries over UDP.
 42.708: NameISP.com INFO Name server ns1.p21.dynect.net (2001:500:90:1:0:0:0:21) answers queries over TCP.
 42.742: NameISP.com INFO Name server ns1.p21.dynect.net (2001:500:90:1:0:0:0:21) is not recursive.
 42.805: NameISP.com INFO Name server ns1.p21.dynect.net (2001:500:90:1:0:0:0:21) authoritative for NameISP.com.
 43.061: NameISP.com INFO Name server ns1.p21.dynect.net (2001:500:90:1:0:0:0:21) closed for zone transfer of NameISP.com.
 43.099: NameISP.com INFO Legacy name server ID for ns1.p21.dynect.net (2001:500:90:1:0:0:0:21): hostname.bind = dns4-01-fra.dyndns.com
 43.139: NameISP.com INFO Legacy name server ID for ns1.p21.dynect.net (2001:500:90:1:0:0:0:21): version.bind = 9.6-ESV-R7-P3
 43.217: NameISP.com NOTICE No answer received from 2001:500:90:1:0:0:0:21 when querying for version.server/CH/TXT.
 43.217: NameISP.com INFO Done testing name server ns1.p21.dynect.net.
 43.217: NameISP.com INFO Begin testing name server ns2.p21.dynect.net.
 43.217: NameISP.com INFO Begin testing host ns2.p21.dynect.net.
 43.637: NameISP.com INFO Begin testing address 204.13.250.21.
 44.601: NameISP.com INFO Done testing address 204.13.250.21.
 44.601: NameISP.com INFO Done testing host ns2.p21.dynect.net.
 44.934: NameISP.com INFO Name server ns2.p21.dynect.net (204.13.250.21) answers queries over UDP.
 44.998: NameISP.com INFO Name server ns2.p21.dynect.net (204.13.250.21) answers queries over TCP.
 45.037: NameISP.com INFO Name server ns2.p21.dynect.net (204.13.250.21) is not recursive.
 45.073: NameISP.com INFO Name server ns2.p21.dynect.net (204.13.250.21) authoritative for NameISP.com.
 45.266: NameISP.com INFO Name server ns2.p21.dynect.net (204.13.250.21) closed for zone transfer of NameISP.com.
 45.297: NameISP.com INFO Legacy name server ID for ns2.p21.dynect.net (204.13.250.21): hostname.bind = dns4-03-ams.dyndns.com
 45.332: NameISP.com INFO Legacy name server ID for ns2.p21.dynect.net (204.13.250.21): version.bind = 9.6-ESV-R7-P3
 45.420: NameISP.com NOTICE No answer received from 204.13.250.21 when querying for version.server/CH/TXT.
 45.421: NameISP.com INFO Done testing name server ns2.p21.dynect.net.
 45.421: NameISP.com INFO Begin testing name server ns3.p21.dynect.net.
 45.421: NameISP.com INFO Begin testing host ns3.p21.dynect.net.
 45.421: NameISP.com INFO Begin testing address 208.78.71.21.
 46.065: NameISP.com INFO Done testing address 208.78.71.21.
 46.065: NameISP.com INFO Begin testing address 2001:500:94:1:0:0:0:21.
 46.688: NameISP.com INFO Done testing address 2001:500:94:1:0:0:0:21.
 46.688: NameISP.com INFO Done testing host ns3.p21.dynect.net.
 46.725: NameISP.com INFO Name server ns3.p21.dynect.net (208.78.71.21) answers queries over UDP.
 46.809: NameISP.com INFO Name server ns3.p21.dynect.net (208.78.71.21) answers queries over TCP.
 46.845: NameISP.com INFO Name server ns3.p21.dynect.net (208.78.71.21) is not recursive.
 46.891: NameISP.com INFO Name server ns3.p21.dynect.net (208.78.71.21) authoritative for NameISP.com.
 47.079: NameISP.com INFO Name server ns3.p21.dynect.net (208.78.71.21) closed for zone transfer of NameISP.com.
 47.119: NameISP.com INFO Legacy name server ID for ns3.p21.dynect.net (208.78.71.21): hostname.bind = dns4-02-fra.dyndns.com
 47.154: NameISP.com INFO Legacy name server ID for ns3.p21.dynect.net (208.78.71.21): version.bind = 9.6-ESV-R7-P3
 47.224: NameISP.com NOTICE No answer received from 208.78.71.21 when querying for version.server/CH/TXT.
 47.260: NameISP.com INFO Name server ns3.p21.dynect.net (2001:500:94:1:0:0:0:21) answers queries over UDP.
 47.328: NameISP.com INFO Name server ns3.p21.dynect.net (2001:500:94:1:0:0:0:21) answers queries over TCP.
 47.365: NameISP.com INFO Name server ns3.p21.dynect.net (2001:500:94:1:0:0:0:21) is not recursive.
 47.401: NameISP.com INFO Name server ns3.p21.dynect.net (2001:500:94:1:0:0:0:21) authoritative for NameISP.com.
 47.589: NameISP.com INFO Name server ns3.p21.dynect.net (2001:500:94:1:0:0:0:21) closed for zone transfer of NameISP.com.
 47.629: NameISP.com INFO Legacy name server ID for ns3.p21.dynect.net (2001:500:94:1:0:0:0:21): hostname.bind = dns4-02-fra.dyndns.com
 47.665: NameISP.com INFO Legacy name server ID for ns3.p21.dynect.net (2001:500:94:1:0:0:0:21): version.bind = 9.6-ESV-R7-P3
 47.742: NameISP.com NOTICE No answer received from 2001:500:94:1:0:0:0:21 when querying for version.server/CH/TXT.
 47.742: NameISP.com INFO Done testing name server ns3.p21.dynect.net.
 47.742: NameISP.com INFO Begin testing name server ns4.p21.dynect.net.
 47.742: NameISP.com INFO Begin testing host ns4.p21.dynect.net.
 48.046: NameISP.com INFO Begin testing address 204.13.251.21.
 48.974: NameISP.com INFO Done testing address 204.13.251.21.
 48.974: NameISP.com INFO Done testing host ns4.p21.dynect.net.
 49.429: NameISP.com INFO Name server ns4.p21.dynect.net (204.13.251.21) answers queries over UDP.
 49.506: NameISP.com INFO Name server ns4.p21.dynect.net (204.13.251.21) answers queries over TCP.
 49.554: NameISP.com INFO Name server ns4.p21.dynect.net (204.13.251.21) is not recursive.
 49.593: NameISP.com INFO Name server ns4.p21.dynect.net (204.13.251.21) authoritative for NameISP.com.
 49.794: NameISP.com INFO Name server ns4.p21.dynect.net (204.13.251.21) closed for zone transfer of NameISP.com.
 49.837: NameISP.com INFO Legacy name server ID for ns4.p21.dynect.net (204.13.251.21): hostname.bind = dns4-01-fra.dyndns.com
 49.877: NameISP.com INFO Legacy name server ID for ns4.p21.dynect.net (204.13.251.21): version.bind = 9.6-ESV-R7-P3
 49.962: NameISP.com NOTICE No answer received from 204.13.251.21 when querying for version.server/CH/TXT.
 49.962: NameISP.com INFO Done testing name server ns4.p21.dynect.net.
 49.963: NameISP.com INFO Begin testing zone consistency for NameISP.com.
 51.836: NameISP.com INFO SOA at address 204.13.251.21 has serial 2012011201.
 51.873: NameISP.com INFO SOA at address 2001:500:94:1:0:0:0:21 has serial 2012011201.
 51.915: NameISP.com INFO SOA at address 204.13.250.21 has serial 2012011201.
 51.958: NameISP.com INFO SOA at address 2001:500:90:1:0:0:0:21 has serial 2012011201.
 52.006: NameISP.com INFO SOA at address 208.78.70.21 has serial 2012011201.
 52.044: NameISP.com INFO SOA at address 208.78.71.21 has serial 2012011201.
 52.044: NameISP.com INFO All SOA records have consistent serial numbers.
 52.044: NameISP.com INFO All other fields in the SOA record are consistent among all name servers.
 52.044: NameISP.com INFO Done testing zone consistency for NameISP.com.
 52.045: NameISP.com INFO Begin testing SOA parameters for NameISP.com.
 52.091: NameISP.com INFO Found SOA record for NameISP.com.
 52.091: NameISP.com INFO Begin testing host ns1.p21.dynect.net.
 52.092: NameISP.com INFO Begin testing address 208.78.70.21.
 52.104: NameISP.com INFO Done testing address 208.78.70.21.
 52.104: NameISP.com INFO Begin testing address 2001:500:90:1:0:0:0:21.
 52.105: NameISP.com INFO Done testing address 2001:500:90:1:0:0:0:21.
 52.106: NameISP.com INFO Done testing host ns1.p21.dynect.net.
 52.106: NameISP.com INFO SOA MNAME for NameISP.com valid (ns1.p21.dynect.net).
 52.106: NameISP.com INFO SOA MNAME for NameISP.com (ns1.p21.dynect.net) listed as NS.
 52.154: NameISP.com INFO SOA MNAME for NameISP.com (ns1.p21.dynect.net) is authoritative.
 52.195: NameISP.com INFO SOA MNAME for NameISP.com (ns1.p21.dynect.net) is authoritative.
 52.195: NameISP.com INFO Begin testing email address registry@NameISP.com.
 52.485: NameISP.com INFO Mail exchangers for registry@NameISP.com found ASPMX.L.GOOGLE.com,ALT1.ASPMX.L.GOOGLE.com,ALT2.ASPMX.L.GOOGLE.com,ASPMX4.GOOGLEMAIL.com,ASPMX5.GOOGLEMAIL.com,ASPMX2.GOOGLEMAIL.com,ASPMX3.GOOGLEMAIL.com.
 52.485: NameISP.com INFO Begin testing host ASPMX.L.GOOGLE.com.
 53.105: NameISP.com INFO Begin testing address 173.194.71.26.
 54.617: NameISP.com INFO Done testing address 173.194.71.26.
 54.617: NameISP.com INFO Begin testing address 2a00:1450:4013:c00:0:0:0:1a.
 55.271: NameISP.com WARNING Could not find reverse address for 2a00:1450:4013:c00:0:0:0:1a (a.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.c.0.3.1.0.4.0.5.4.1.0.0.a.2.ip6.arpa.).
 55.271: NameISP.com INFO Done testing address 2a00:1450:4013:c00:0:0:0:1a.
 55.271: NameISP.com INFO Done testing host ASPMX.L.GOOGLE.com.
 55.271: NameISP.com INFO Begin testing mail server ASPMX.L.GOOGLE.com (173.194.71.26) with registry@NameISP.com.
 55.398: NameISP.com INFO SMTP banner: mx.google.com ESMTP u8si30144299lby.36
 55.470: NameISP.com INFO SMTP testing of ASPMX.L.GOOGLE.com (173.194.71.26) with registry@NameISP.com succeeded without errors.
 55.470: NameISP.com INFO Done testing mail server ASPMX.L.GOOGLE.com (173.194.71.26) with registry@NameISP.com.
 55.470: NameISP.com INFO Begin testing mail server ASPMX.L.GOOGLE.com (2a00:1450:4013:c00:0:0:0:1a) with registry@NameISP.com.
 55.610: NameISP.com INFO SMTP banner: mx.google.com ESMTP c41si15662019eem.50
 55.800: NameISP.com INFO SMTP testing of ASPMX.L.GOOGLE.com (2a00:1450:4013:c00:0:0:0:1a) with registry@NameISP.com succeeded without errors.
 55.800: NameISP.com INFO Done testing mail server ASPMX.L.GOOGLE.com (2a00:1450:4013:c00:0:0:0:1a) with registry@NameISP.com.
 55.801: NameISP.com INFO Begin testing host ALT1.ASPMX.L.GOOGLE.com.
 56.431: NameISP.com INFO Begin testing address 173.194.64.27.
 56.904: NameISP.com WARNING Could not find reverse address for 173.194.64.27 (27.64.194.173.in-addr.arpa.).
 56.904: NameISP.com INFO Done testing address 173.194.64.27.
 56.905: NameISP.com INFO Begin testing address 2a00:1450:8005:0:0:0:0:1b.
 58.138: NameISP.com INFO Done testing address 2a00:1450:8005:0:0:0:0:1b.
 58.138: NameISP.com INFO Done testing host ALT1.ASPMX.L.GOOGLE.com.
 58.139: NameISP.com INFO Begin testing host ALT2.ASPMX.L.GOOGLE.com.
 59.257: NameISP.com INFO Begin testing address 74.125.142.26.
 60.532: NameISP.com INFO Done testing address 74.125.142.26.
 60.532: NameISP.com INFO Begin testing address 2a00:1450:8005:0:0:0:0:1a.
 62.035: NameISP.com INFO Done testing address 2a00:1450:8005:0:0:0:0:1a.
 62.036: NameISP.com INFO Done testing host ALT2.ASPMX.L.GOOGLE.com.
 62.036: NameISP.com INFO Begin testing host ASPMX4.GOOGLEMAIL.com.
 62.677: NameISP.com INFO Begin testing address 74.125.130.26.
 63.985: NameISP.com INFO Done testing address 74.125.130.26.
 63.985: NameISP.com INFO Begin testing address 2a00:1450:4013:c00:0:0:0:1b.
 64.692: NameISP.com WARNING Could not find reverse address for 2a00:1450:4013:c00:0:0:0:1b (b.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.c.0.3.1.0.4.0.5.4.1.0.0.a.2.ip6.arpa.).
 64.692: NameISP.com INFO Done testing address 2a00:1450:4013:c00:0:0:0:1b.
 64.692: NameISP.com INFO Done testing host ASPMX4.GOOGLEMAIL.com.
 64.693: NameISP.com INFO Begin testing host ASPMX5.GOOGLEMAIL.com.
 65.230: NameISP.com INFO Begin testing address 173.194.68.26.
 67.258: NameISP.com INFO Done testing address 173.194.68.26.
 67.258: NameISP.com INFO Begin testing address 2607:f8b0:400d:c00:0:0:0:1b.
 68.328: NameISP.com WARNING Could not find reverse address for 2607:f8b0:400d:c00:0:0:0:1b (b.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.c.0.d.0.0.4.0.b.8.f.7.0.6.2.ip6.arpa.).
 68.328: NameISP.com INFO Done testing address 2607:f8b0:400d:c00:0:0:0:1b.
 68.328: NameISP.com INFO Done testing host ASPMX5.GOOGLEMAIL.com.
 68.341: NameISP.com INFO Begin testing host ASPMX2.GOOGLEMAIL.com.
 69.770: NameISP.com INFO Begin testing address 173.194.64.26.
 70.877: NameISP.com WARNING Could not find reverse address for 173.194.64.26 (26.64.194.173.in-addr.arpa.).
 70.877: NameISP.com INFO Done testing address 173.194.64.26.
 70.878: NameISP.com INFO Begin testing address 2a00:1450:4013:c00:0:0:0:1b.
 70.879: NameISP.com WARNING Could not find reverse address for 2a00:1450:4013:c00:0:0:0:1b (b.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.c.0.3.1.0.4.0.5.4.1.0.0.a.2.ip6.arpa.).
 70.879: NameISP.com INFO Done testing address 2a00:1450:4013:c00:0:0:0:1b.
 70.879: NameISP.com INFO Done testing host ASPMX2.GOOGLEMAIL.com.
 70.879: NameISP.com INFO Begin testing host ASPMX3.GOOGLEMAIL.com.
 72.293: NameISP.com INFO Begin testing address 74.125.142.27.
 74.265: NameISP.com INFO Done testing address 74.125.142.27.
 74.293: NameISP.com INFO Begin testing address 2a00:1450:4013:c00:0:0:0:1b.
 74.294: NameISP.com WARNING Could not find reverse address for 2a00:1450:4013:c00:0:0:0:1b (b.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.c.0.3.1.0.4.0.5.4.1.0.0.a.2.ip6.arpa.).
 74.294: NameISP.com INFO Done testing address 2a00:1450:4013:c00:0:0:0:1b.
 74.294: NameISP.com INFO Done testing host ASPMX3.GOOGLEMAIL.com.
 74.294: NameISP.com INFO Delivery over IPv4 to registry@NameISP.com ok.
 74.294: NameISP.com INFO Delivery over IPv6 to registry@NameISP.com ok.
 74.294: NameISP.com INFO Done testing email address registry@NameISP.com.
 74.294: NameISP.com INFO Successful attempt to deliver email for SOA RNAME of NameISP.com (registry.NameISP.com) using registry@NameISP.com.
 74.295: NameISP.com INFO SOA TTL for NameISP.com OK (3600) - recommended >= 3600.
 74.295: NameISP.com NOTICE SOA refresh for NameISP.com too small (3600) - recommended >= 14400.
 74.295: NameISP.com NOTICE SOA retry for NameISP.com too small (600) - recommended >= 3600.
 74.295: NameISP.com INFO SOA expire for NameISP.com OK (604800) - recommended >= 604800.
 74.295: NameISP.com NOTICE SOA minimum for NameISP.com too small (60) - recommended >= 300.
 74.295: NameISP.com INFO Done testing SOA parameters for NameISP.com.
 74.295: NameISP.com INFO Begin testing connectivity for NameISP.com.
 75.318: NameISP.com INFO Name server 204.13.251.21 announced by: 33517
 76.036: NameISP.com INFO Name server 204.13.250.21 announced by: 33517
 76.847: NameISP.com INFO Name server 208.78.71.21 announced by: 33517
 77.791: NameISP.com INFO Name server 208.78.70.21 announced by: 33517
 77.792: NameISP.com INFO Zone announced by IPv4 ASN: 33517
 77.792: NameISP.com NOTICE Zone announced by less than two IPv4 ASN (1).
 78.498: NameISP.com INFO Name server 2001:0500:0094:0001:0000:0000:0000:0021 announced over IPv6 by: 33517
 79.186: NameISP.com INFO Name server 2001:0500:0090:0001:0000:0000:0000:0021 announced over IPv6 by: 33517
 79.186: NameISP.com INFO Zone announced by IPv6 ASN: 33517
 79.186: NameISP.com NOTICE Zone announced by less than two IPv6 ASN (1).
 79.186: NameISP.com INFO Done testing connectivity for NameISP.com.
 79.187: NameISP.com INFO Begin testing DNSSEC for NameISP.com.
 79.255: NameISP.com INFO Did not find DS record for NameISP.com at parent.
 79.701: NameISP.com INFO Servers for NameISP.com have consistent extra processing status.
 79.701: NameISP.com INFO Did not find DNSKEY record for NameISP.com at child.
 79.701: NameISP.com INFO No DNSKEY(s) found at child, other tests skipped.
 79.701: NameISP.com INFO Done testing DNSSEC for NameISP.com.
 79.701: NameISP.com INFO Test completed for zone NameISP.com.
