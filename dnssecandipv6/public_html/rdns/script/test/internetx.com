  0.000: internetx.com INFO Begin testing zone internetx.com with version 1.5.0.
  0.001: internetx.com INFO Begin testing delegation for internetx.com.
 25.031: internetx.com INFO Name servers listed at parent: nsa.domain-robot.org,nsb.domain-robot.org,nsc.domain-robot.org,nsd.domain-robot.org
 31.964: internetx.com INFO Name servers listed at child: nsa.domain-robot.org,nsb.domain-robot.org,nsc.domain-robot.org,nsd.domain-robot.org
 33.981: internetx.com INFO It is possible to build a referral packet for internetx.com that works without EDNS0.
 33.981: internetx.com INFO Done testing delegation for internetx.com.
 33.982: internetx.com INFO Begin testing name server nsa.domain-robot.org.
 33.982: internetx.com INFO Begin testing host nsa.domain-robot.org.
 33.983: internetx.com INFO Begin testing address 62.116.159.59.
 43.888: internetx.com INFO Done testing address 62.116.159.59.
 43.888: internetx.com INFO Begin testing address 2001:4178:3:a357:62:116:159:59.
 44.651: internetx.com WARNING Could not find reverse address for 2001:4178:3:a357:62:116:159:59 (9.5.0.0.9.5.1.0.6.1.1.0.2.6.0.0.7.5.3.a.3.0.0.0.8.7.1.4.1.0.0.2.ip6.arpa.).
 44.651: internetx.com INFO Done testing address 2001:4178:3:a357:62:116:159:59.
 44.651: internetx.com INFO Done testing host nsa.domain-robot.org.
 44.725: internetx.com INFO Name server nsa.domain-robot.org (62.116.159.59) answers queries over UDP.
 44.913: internetx.com INFO Name server nsa.domain-robot.org (62.116.159.59) answers queries over TCP.
 44.986: internetx.com INFO Name server nsa.domain-robot.org (62.116.159.59) is not recursive.
 45.319: internetx.com INFO Name server nsa.domain-robot.org (62.116.159.59) authoritative for internetx.com.
 45.564: internetx.com INFO Name server nsa.domain-robot.org (62.116.159.59) closed for zone transfer of internetx.com.
 45.700: internetx.com NOTICE No answer received from 62.116.159.59 when querying for version.bind/CH/TXT.
 45.909: internetx.com INFO Name server nsa.domain-robot.org (2001:4178:3:a357:62:116:159:59) answers queries over UDP.
 46.036: internetx.com INFO Name server nsa.domain-robot.org (2001:4178:3:a357:62:116:159:59) answers queries over TCP.
 46.083: internetx.com INFO Name server nsa.domain-robot.org (2001:4178:3:a357:62:116:159:59) is not recursive.
 46.320: internetx.com INFO Name server nsa.domain-robot.org (2001:4178:3:a357:62:116:159:59) authoritative for internetx.com.
 46.487: internetx.com INFO Name server nsa.domain-robot.org (2001:4178:3:a357:62:116:159:59) closed for zone transfer of internetx.com.
 46.611: internetx.com NOTICE No answer received from 2001:4178:3:a357:62:116:159:59 when querying for version.bind/CH/TXT.
 46.705: internetx.com INFO Done testing name server nsa.domain-robot.org.
 46.705: internetx.com INFO Begin testing name server nsb.domain-robot.org.
 46.705: internetx.com INFO Begin testing host nsb.domain-robot.org.
 46.706: internetx.com INFO Begin testing address 83.169.55.31.
 47.904: internetx.com INFO Done testing address 83.169.55.31.
 47.904: internetx.com INFO Begin testing address 217.160.113.91.
 67.069: internetx.com INFO Done testing address 217.160.113.91.
 67.069: internetx.com INFO Begin testing address 2001:8d8:580:401:217:160:113:91.
 68.007: internetx.com WARNING Could not find reverse address for 2001:8d8:580:401:217:160:113:91 (1.9.0.0.3.1.1.0.0.6.1.0.7.1.2.0.1.0.4.0.0.8.5.0.8.d.8.0.1.0.0.2.ip6.arpa.).
 68.007: internetx.com INFO Done testing address 2001:8d8:580:401:217:160:113:91.
 68.007: internetx.com INFO Done testing host nsb.domain-robot.org.
 68.122: internetx.com INFO Name server nsb.domain-robot.org (83.169.55.31) answers queries over UDP.
 68.342: internetx.com INFO Name server nsb.domain-robot.org (83.169.55.31) answers queries over TCP.
 68.511: internetx.com INFO Name server nsb.domain-robot.org (83.169.55.31) is not recursive.
 68.745: internetx.com INFO Name server nsb.domain-robot.org (83.169.55.31) authoritative for internetx.com.
 68.929: internetx.com INFO Name server nsb.domain-robot.org (83.169.55.31) closed for zone transfer of internetx.com.
 69.057: internetx.com NOTICE No answer received from 83.169.55.31 when querying for version.bind/CH/TXT.
 69.257: internetx.com INFO Name server nsb.domain-robot.org (217.160.113.91) answers queries over UDP.
 69.394: internetx.com INFO Name server nsb.domain-robot.org (217.160.113.91) answers queries over TCP.
 69.436: internetx.com INFO Name server nsb.domain-robot.org (217.160.113.91) is not recursive.
 69.782: internetx.com INFO Name server nsb.domain-robot.org (217.160.113.91) authoritative for internetx.com.
 69.938: internetx.com INFO Name server nsb.domain-robot.org (217.160.113.91) closed for zone transfer of internetx.com.
 70.129: internetx.com NOTICE No answer received from 217.160.113.91 when querying for version.bind/CH/TXT.
 70.485: internetx.com INFO Name server nsb.domain-robot.org (2001:8d8:580:401:217:160:113:91) answers queries over UDP.
 70.655: internetx.com INFO Name server nsb.domain-robot.org (2001:8d8:580:401:217:160:113:91) answers queries over TCP.
 70.717: internetx.com INFO Name server nsb.domain-robot.org (2001:8d8:580:401:217:160:113:91) is not recursive.
 71.071: internetx.com INFO Name server nsb.domain-robot.org (2001:8d8:580:401:217:160:113:91) authoritative for internetx.com.
 71.238: internetx.com INFO Name server nsb.domain-robot.org (2001:8d8:580:401:217:160:113:91) closed for zone transfer of internetx.com.
 71.361: internetx.com NOTICE No answer received from 2001:8d8:580:401:217:160:113:91 when querying for version.bind/CH/TXT.
 71.535: internetx.com INFO Done testing name server nsb.domain-robot.org.
 71.535: internetx.com INFO Begin testing name server nsc.domain-robot.org.
 71.536: internetx.com INFO Begin testing host nsc.domain-robot.org.
 71.536: internetx.com INFO Begin testing address 89.146.248.56.
 72.320: internetx.com INFO Done testing address 89.146.248.56.
 72.320: internetx.com INFO Begin testing address 2a01:130:2000:118:89:146:248:56.
 73.590: internetx.com WARNING Could not find reverse address for 2a01:130:2000:118:89:146:248:56 (6.5.0.0.8.4.2.0.6.4.1.0.9.8.0.0.8.1.1.0.0.0.0.2.0.3.1.0.1.0.a.2.ip6.arpa.).
 73.590: internetx.com INFO Done testing address 2a01:130:2000:118:89:146:248:56.
 73.590: internetx.com INFO Done testing host nsc.domain-robot.org.
 75.020: internetx.com INFO Name server nsc.domain-robot.org (89.146.248.56) answers queries over UDP.
 75.124: internetx.com INFO Name server nsc.domain-robot.org (89.146.248.56) answers queries over TCP.
 81.145: internetx.com INFO Name server nsc.domain-robot.org (89.146.248.56) is not recursive.
 83.006: internetx.com INFO Name server nsc.domain-robot.org (89.146.248.56) authoritative for internetx.com.
 88.045: internetx.com INFO Name server nsc.domain-robot.org (89.146.248.56) closed for zone transfer of internetx.com.
 88.117: internetx.com NOTICE No answer received from 89.146.248.56 when querying for version.bind/CH/TXT.
 88.415: internetx.com INFO Name server nsc.domain-robot.org (2a01:130:2000:118:89:146:248:56) answers queries over UDP.
 88.555: internetx.com INFO Name server nsc.domain-robot.org (2a01:130:2000:118:89:146:248:56) answers queries over TCP.
 88.597: internetx.com INFO Name server nsc.domain-robot.org (2a01:130:2000:118:89:146:248:56) is not recursive.
 88.825: internetx.com INFO Name server nsc.domain-robot.org (2a01:130:2000:118:89:146:248:56) authoritative for internetx.com.
 88.982: internetx.com INFO Name server nsc.domain-robot.org (2a01:130:2000:118:89:146:248:56) closed for zone transfer of internetx.com.
 89.065: internetx.com NOTICE No answer received from 2a01:130:2000:118:89:146:248:56 when querying for version.bind/CH/TXT.
 89.218: internetx.com INFO Done testing name server nsc.domain-robot.org.
 89.218: internetx.com INFO Begin testing name server nsd.domain-robot.org.
 89.218: internetx.com INFO Begin testing host nsd.domain-robot.org.
 89.940: internetx.com INFO Begin testing address 74.208.254.55.
101.968: internetx.com INFO Done testing address 74.208.254.55.
101.968: internetx.com INFO Done testing host nsd.domain-robot.org.
102.700: internetx.com INFO Name server nsd.domain-robot.org (74.208.254.55) answers queries over UDP.
103.189: internetx.com INFO Name server nsd.domain-robot.org (74.208.254.55) answers queries over TCP.
103.362: internetx.com INFO Name server nsd.domain-robot.org (74.208.254.55) is not recursive.
104.186: internetx.com INFO Name server nsd.domain-robot.org (74.208.254.55) authoritative for internetx.com.
104.825: internetx.com INFO Name server nsd.domain-robot.org (74.208.254.55) closed for zone transfer of internetx.com.
105.480: internetx.com INFO Done testing name server nsd.domain-robot.org.
105.481: internetx.com INFO Begin testing zone consistency for internetx.com.
106.737: internetx.com INFO SOA at address 2a01:130:2000:118:89:146:248:56 has serial 2013061800.
106.793: internetx.com INFO SOA at address 89.146.248.56 has serial 2013061800.
106.921: internetx.com INFO SOA at address 2001:4178:3:a357:62:116:159:59 has serial 2013061800.
107.082: internetx.com INFO SOA at address 74.208.254.55 has serial 2013061800.
107.142: internetx.com INFO SOA at address 83.169.55.31 has serial 2013061800.
107.218: internetx.com INFO SOA at address 2001:8d8:580:401:217:160:113:91 has serial 2013061800.
107.264: internetx.com INFO SOA at address 217.160.113.91 has serial 2013061800.
107.327: internetx.com INFO SOA at address 62.116.159.59 has serial 2013061800.
107.328: internetx.com INFO All SOA records have consistent serial numbers.
107.328: internetx.com INFO All other fields in the SOA record are consistent among all name servers.
108.514: internetx.com NOTICE The listed nameservers for internetx.com all report the same set of nameservers.
108.514: internetx.com INFO Done testing zone consistency for internetx.com.
108.514: internetx.com INFO Begin testing SOA parameters for internetx.com.
108.558: internetx.com INFO Found SOA record for internetx.com.
108.559: internetx.com INFO Begin testing host nsa.domain-robot.org.
108.559: internetx.com INFO Begin testing address 62.116.159.59.
108.560: internetx.com INFO Done testing address 62.116.159.59.
108.565: internetx.com INFO Begin testing address 2001:4178:3:a357:62:116:159:59.
108.566: internetx.com WARNING Could not find reverse address for 2001:4178:3:a357:62:116:159:59 (9.5.0.0.9.5.1.0.6.1.1.0.2.6.0.0.7.5.3.a.3.0.0.0.8.7.1.4.1.0.0.2.ip6.arpa.).
108.566: internetx.com INFO Done testing address 2001:4178:3:a357:62:116:159:59.
108.566: internetx.com INFO Done testing host nsa.domain-robot.org.
108.566: internetx.com INFO SOA MNAME for internetx.com valid (nsa.domain-robot.org).
108.566: internetx.com INFO SOA MNAME for internetx.com (nsa.domain-robot.org) listed as NS.
108.676: internetx.com INFO SOA MNAME for internetx.com (nsa.domain-robot.org) is authoritative.
108.728: internetx.com INFO SOA MNAME for internetx.com (nsa.domain-robot.org) is authoritative.
108.728: internetx.com INFO Begin testing email address domain-support@internetx.de.
109.073: internetx.com INFO Mail exchangers for domain-support@internetx.de found mx1.internetx.com,mx2.internetx.eu,mx3.internetx.de.
109.073: internetx.com INFO Begin testing host mx1.internetx.com.
114.128: internetx.com INFO Begin testing address 62.116.129.39.
115.557: internetx.com INFO Done testing address 62.116.129.39.
115.557: internetx.com INFO Done testing host mx1.internetx.com.
116.019: internetx.com INFO Begin testing host mx2.internetx.eu.
118.482: internetx.com INFO Begin testing address 195.34.161.35.
119.071: internetx.com INFO Done testing address 195.34.161.35.
119.071: internetx.com INFO Begin testing address 2a01:130:2000:118:195:34:161:35.
120.089: internetx.com INFO Done testing address 2a01:130:2000:118:195:34:161:35.
120.089: internetx.com INFO Done testing host mx2.internetx.eu.
120.089: internetx.com INFO Begin testing host mx3.internetx.de.
121.091: internetx.com INFO Begin testing address 217.160.113.167.
121.770: internetx.com INFO Done testing address 217.160.113.167.
121.770: internetx.com INFO Begin testing address 2001:8d8:580:401:217:160:113:167.
122.621: internetx.com INFO Done testing address 2001:8d8:580:401:217:160:113:167.
122.621: internetx.com INFO Done testing host mx3.internetx.de.
122.621: internetx.com INFO Done testing email address domain-support@internetx.de.
122.621: internetx.com INFO Successful attempt to deliver email for SOA RNAME of internetx.com (domain-support.internetx.de) using domain-support@internetx.de.
122.621: internetx.com NOTICE SOA TTL for internetx.com too small (300) - recommended >= 3600.
122.621: internetx.com INFO SOA refresh for internetx.com OK (39940) - recommended >= 14400.
122.621: internetx.com INFO SOA retry for internetx.com OK (14400) - recommended >= 3600.
122.622: internetx.com INFO SOA expire for internetx.com OK (604800) - recommended >= 604800.
122.622: internetx.com INFO SOA minimum for internetx.com OK (300) - recommended between 300 and 86400.
122.622: internetx.com INFO Done testing SOA parameters for internetx.com.
122.622: internetx.com INFO Begin testing connectivity for internetx.com.
126.359: internetx.com INFO Zone announced by more than one ASN.
129.366: internetx.com INFO Zone announced by more than one IPv6 ASN.
129.366: internetx.com INFO Done testing connectivity for internetx.com.
129.379: internetx.com INFO Begin testing DNSSEC for internetx.com.
130.053: internetx.com INFO Did not find DS record for internetx.com at parent.
131.489: internetx.com INFO Servers for internetx.com have consistent extra processing status.
136.688: internetx.com INFO Authenticated denial records not found for internetx.com.
137.844: internetx.com INFO Did not find DNSKEY record for internetx.com at child.
137.845: internetx.com INFO No DNSKEY(s) found at child, other tests skipped.
137.845: internetx.com INFO Done testing DNSSEC for internetx.com.
137.847: internetx.com INFO Test completed for zone internetx.com.
