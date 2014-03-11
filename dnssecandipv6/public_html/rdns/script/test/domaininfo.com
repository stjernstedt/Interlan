  0.000: domaininfo.com INFO Begin testing zone domaininfo.com with version 1.5.0.
  0.001: domaininfo.com INFO Begin testing delegation for domaininfo.com.
 21.615: domaininfo.com INFO Name servers listed at parent: dns01.dipcon.com,dns02.ports.se,dns03.ports.se,dns04.ports.net
 28.064: domaininfo.com INFO Name servers listed at child: dns01.dipcon.com,dns02.ports.se,dns03.ports.se,dns04.ports.net
 28.064: domaininfo.com NOTICE No IPv6 name servers found.
 28.144: domaininfo.com INFO Parent glue for domaininfo.com found: dns01.dipcon.com (193.14.90.50)
 29.086: domaininfo.com INFO Parent glue for domaininfo.com found: dns04.ports.net (208.69.58.140)
 29.125: domaininfo.com INFO Checking glue for dns01.dipcon.com (193.14.90.50).
 29.125: domaininfo.com INFO Checking glue for dns04.ports.net (208.69.58.140).
 29.126: domaininfo.com INFO Parent glue for domaininfo.com found: dns01.dipcon.com (193.14.90.50)
 29.126: domaininfo.com INFO Parent glue for domaininfo.com found: dns04.ports.net (208.69.58.140)
 34.399: domaininfo.com INFO It is possible to build a referral packet for domaininfo.com that works without EDNS0.
 34.440: domaininfo.com INFO Done testing delegation for domaininfo.com.
 34.440: domaininfo.com INFO Begin testing name server dns01.dipcon.com.
 34.441: domaininfo.com INFO Begin testing host dns01.dipcon.com.
 35.085: domaininfo.com INFO Begin testing address 193.14.90.50.
 50.502: domaininfo.com INFO Done testing address 193.14.90.50.
 50.502: domaininfo.com INFO Done testing host dns01.dipcon.com.
 55.277: domaininfo.com INFO Name server dns01.dipcon.com (193.14.90.50) answers queries over UDP.
 55.327: domaininfo.com INFO Name server dns01.dipcon.com (193.14.90.50) answers queries over TCP.
 55.364: domaininfo.com INFO Name server dns01.dipcon.com (193.14.90.50) is not recursive.
 55.441: domaininfo.com INFO Name server dns01.dipcon.com (193.14.90.50) authoritative for domaininfo.com.
 55.477: domaininfo.com INFO Name server dns01.dipcon.com (193.14.90.50) closed for zone transfer of domaininfo.com.
 55.496: domaininfo.com INFO Legacy name server ID for dns01.dipcon.com (193.14.90.50): hostname.bind = <HIDDEN>
 61.541: domaininfo.com NOTICE No answer received from 193.14.90.50 when querying for version.server/CH/TXT.
 61.541: domaininfo.com INFO Done testing name server dns01.dipcon.com.
 61.542: domaininfo.com INFO Begin testing name server dns02.ports.se.
 61.542: domaininfo.com INFO Begin testing host dns02.ports.se.
 61.808: domaininfo.com INFO Begin testing address 202.56.13.97.
 71.932: domaininfo.com INFO Done testing address 202.56.13.97.
 71.932: domaininfo.com INFO Done testing host dns02.ports.se.
 72.844: domaininfo.com INFO Name server dns02.ports.se (202.56.13.97) answers queries over UDP.
 73.496: domaininfo.com INFO Name server dns02.ports.se (202.56.13.97) answers queries over TCP.
 73.821: domaininfo.com INFO Name server dns02.ports.se (202.56.13.97) is not recursive.
 75.123: domaininfo.com INFO Name server dns02.ports.se (202.56.13.97) authoritative for domaininfo.com.
 76.113: domaininfo.com INFO Name server dns02.ports.se (202.56.13.97) closed for zone transfer of domaininfo.com.
 76.437: domaininfo.com INFO Legacy name server ID for dns02.ports.se (202.56.13.97): hostname.bind = <HIDDEN>
 76.800: domaininfo.com INFO Legacy name server ID for dns02.ports.se (202.56.13.97): version.bind = <HIDDEN>
 77.454: domaininfo.com NOTICE No answer received from 202.56.13.97 when querying for version.server/CH/TXT.
 77.455: domaininfo.com INFO Done testing name server dns02.ports.se.
 77.455: domaininfo.com INFO Begin testing name server dns03.ports.se.
 77.455: domaininfo.com INFO Begin testing host dns03.ports.se.
 78.010: domaininfo.com INFO Begin testing address 84.40.9.168.
 80.589: domaininfo.com INFO Done testing address 84.40.9.168.
 80.589: domaininfo.com INFO Done testing host dns03.ports.se.
 81.019: domaininfo.com INFO Name server dns03.ports.se (84.40.9.168) answers queries over UDP.
 81.188: domaininfo.com INFO Name server dns03.ports.se (84.40.9.168) answers queries over TCP.
 81.236: domaininfo.com INFO Name server dns03.ports.se (84.40.9.168) is not recursive.
 81.465: domaininfo.com INFO Name server dns03.ports.se (84.40.9.168) authoritative for domaininfo.com.
 81.602: domaininfo.com INFO Name server dns03.ports.se (84.40.9.168) closed for zone transfer of domaininfo.com.
 81.649: domaininfo.com INFO Legacy name server ID for dns03.ports.se (84.40.9.168): hostname.bind = <HIDDEN>
 81.696: domaininfo.com INFO Legacy name server ID for dns03.ports.se (84.40.9.168): version.bind = <HIDDEN>
 81.804: domaininfo.com NOTICE No answer received from 84.40.9.168 when querying for version.server/CH/TXT.
 81.804: domaininfo.com INFO Done testing name server dns03.ports.se.
 81.804: domaininfo.com INFO Begin testing name server dns04.ports.net.
 81.804: domaininfo.com INFO Begin testing host dns04.ports.net.
 82.411: domaininfo.com INFO Begin testing address 208.69.58.140.
 95.524: domaininfo.com INFO Done testing address 208.69.58.140.
 95.525: domaininfo.com INFO Done testing host dns04.ports.net.
 96.393: domaininfo.com INFO Name server dns04.ports.net (208.69.58.140) answers queries over UDP.
 96.636: domaininfo.com INFO Name server dns04.ports.net (208.69.58.140) answers queries over TCP.
 96.758: domaininfo.com INFO Name server dns04.ports.net (208.69.58.140) is not recursive.
 97.255: domaininfo.com INFO Name server dns04.ports.net (208.69.58.140) authoritative for domaininfo.com.
 97.617: domaininfo.com INFO Name server dns04.ports.net (208.69.58.140) closed for zone transfer of domaininfo.com.
 97.748: domaininfo.com INFO Legacy name server ID for dns04.ports.net (208.69.58.140): hostname.bind = <HIDDEN>
 97.871: domaininfo.com INFO Legacy name server ID for dns04.ports.net (208.69.58.140): version.bind = <HIDDEN>
 98.123: domaininfo.com NOTICE No answer received from 208.69.58.140 when querying for version.server/CH/TXT.
 98.123: domaininfo.com INFO Done testing name server dns04.ports.net.
 98.123: domaininfo.com INFO Begin testing zone consistency for domaininfo.com.
103.665: domaininfo.com INFO SOA at address 202.56.13.97 has serial 2013070317.
103.680: domaininfo.com INFO SOA at address 193.14.90.50 has serial 2013070317.
103.726: domaininfo.com INFO SOA at address 84.40.9.168 has serial 2013070317.
103.849: domaininfo.com INFO SOA at address 208.69.58.140 has serial 2013070317.
103.850: domaininfo.com INFO All SOA records have consistent serial numbers.
103.850: domaininfo.com INFO All other fields in the SOA record are consistent among all name servers.
106.827: domaininfo.com NOTICE The listed nameservers for domaininfo.com all report the same set of nameservers.
106.832: domaininfo.com INFO Done testing zone consistency for domaininfo.com.
106.832: domaininfo.com INFO Begin testing SOA parameters for domaininfo.com.
107.181: domaininfo.com INFO Found SOA record for domaininfo.com.
107.182: domaininfo.com INFO Begin testing host dns01.dipcon.com.
107.786: domaininfo.com INFO Begin testing address 193.14.90.50.
108.371: domaininfo.com INFO Done testing address 193.14.90.50.
108.371: domaininfo.com INFO Done testing host dns01.dipcon.com.
108.383: domaininfo.com INFO SOA MNAME for domaininfo.com valid (dns01.dipcon.com).
108.383: domaininfo.com INFO SOA MNAME for domaininfo.com (dns01.dipcon.com) listed as NS.
109.213: domaininfo.com INFO SOA MNAME for domaininfo.com (dns01.dipcon.com) is authoritative.
109.214: domaininfo.com INFO Begin testing email address registry@ports.net.
109.968: domaininfo.com INFO Mail exchangers for registry@ports.net found mx12a.antispameurope.com,mx12b.antispameurope.com,mx12c.antispameurope.com,mx12d.antispameurope.com.
109.968: domaininfo.com INFO Begin testing host mx12a.antispameurope.com.
113.507: domaininfo.com INFO Begin testing address 217.64.175.109.
116.137: domaininfo.com INFO Done testing address 217.64.175.109.
116.137: domaininfo.com INFO Begin testing address 217.64.175.110.
117.476: domaininfo.com INFO Done testing address 217.64.175.110.
117.477: domaininfo.com INFO Begin testing address 217.64.175.111.
119.553: domaininfo.com INFO Done testing address 217.64.175.111.
119.554: domaininfo.com INFO Begin testing address 217.64.175.112.
121.360: domaininfo.com INFO Done testing address 217.64.175.112.
121.360: domaininfo.com INFO Begin testing address 83.246.65.115.
125.066: domaininfo.com INFO Done testing address 83.246.65.115.
125.066: domaininfo.com INFO Begin testing address 83.246.65.117.
127.161: domaininfo.com INFO Done testing address 83.246.65.117.
127.162: domaininfo.com INFO Begin testing address 83.246.65.128.
128.646: domaininfo.com INFO Done testing address 83.246.65.128.
128.647: domaininfo.com INFO Begin testing address 83.246.65.129.
130.216: domaininfo.com INFO Done testing address 83.246.65.129.
130.216: domaininfo.com INFO Begin testing address 83.246.65.130.
131.615: domaininfo.com INFO Done testing address 83.246.65.130.
131.616: domaininfo.com INFO Begin testing address 83.246.65.31.
133.663: domaininfo.com INFO Done testing address 83.246.65.31.
133.668: domaininfo.com INFO Begin testing address 83.246.65.32.
135.329: domaininfo.com INFO Done testing address 83.246.65.32.
135.329: domaininfo.com INFO Begin testing address 217.64.175.101.
136.945: domaininfo.com INFO Done testing address 217.64.175.101.
136.945: domaininfo.com INFO Begin testing address 217.64.175.102.
138.712: domaininfo.com INFO Done testing address 217.64.175.102.
138.712: domaininfo.com INFO Begin testing address 217.64.175.103.
140.848: domaininfo.com INFO Done testing address 217.64.175.103.
140.848: domaininfo.com INFO Begin testing address 217.64.175.104.
142.956: domaininfo.com INFO Done testing address 217.64.175.104.
142.956: domaininfo.com INFO Begin testing address 217.64.175.105.
144.862: domaininfo.com INFO Done testing address 217.64.175.105.
144.862: domaininfo.com INFO Begin testing address 217.64.175.106.
146.953: domaininfo.com INFO Done testing address 217.64.175.106.
146.953: domaininfo.com INFO Begin testing address 217.64.175.107.
149.338: domaininfo.com INFO Done testing address 217.64.175.107.
149.339: domaininfo.com INFO Begin testing address 217.64.175.108.
151.526: domaininfo.com INFO Done testing address 217.64.175.108.
151.557: domaininfo.com INFO Done testing host mx12a.antispameurope.com.
152.020: domaininfo.com INFO Begin testing host mx12b.antispameurope.com.
153.141: domaininfo.com INFO Begin testing address 217.64.175.107.
153.142: domaininfo.com INFO Done testing address 217.64.175.107.
153.142: domaininfo.com INFO Begin testing address 217.64.175.102.
153.208: domaininfo.com INFO Done testing address 217.64.175.102.
153.208: domaininfo.com INFO Begin testing address 217.64.175.103.
153.209: domaininfo.com INFO Done testing address 217.64.175.103.
153.209: domaininfo.com INFO Begin testing address 217.64.175.104.
153.210: domaininfo.com INFO Done testing address 217.64.175.104.
153.210: domaininfo.com INFO Done testing host mx12b.antispameurope.com.
154.014: domaininfo.com INFO Begin testing host mx12c.antispameurope.com.
155.718: domaininfo.com INFO Begin testing address 217.64.175.111.
155.756: domaininfo.com INFO Done testing address 217.64.175.111.
155.756: domaininfo.com INFO Begin testing address 83.246.65.109.
157.988: domaininfo.com INFO Done testing address 83.246.65.109.
157.988: domaininfo.com INFO Begin testing address 83.246.65.101.
159.687: domaininfo.com INFO Done testing address 83.246.65.101.
159.687: domaininfo.com INFO Begin testing address 83.246.65.115.
160.306: domaininfo.com INFO Done testing address 83.246.65.115.
160.306: domaininfo.com INFO Begin testing address 83.246.65.103.
162.823: domaininfo.com INFO Done testing address 83.246.65.103.
162.823: domaininfo.com INFO Begin testing address 217.64.175.101.
162.828: domaininfo.com INFO Done testing address 217.64.175.101.
162.829: domaininfo.com INFO Begin testing address 217.64.175.105.
162.830: domaininfo.com INFO Done testing address 217.64.175.105.
162.830: domaininfo.com INFO Begin testing address 83.246.65.106.
164.873: domaininfo.com INFO Done testing address 83.246.65.106.
164.873: domaininfo.com INFO Done testing host mx12c.antispameurope.com.
165.288: domaininfo.com INFO Begin testing host mx12d.antispameurope.com.
166.540: domaininfo.com INFO Begin testing address 217.64.175.109.
166.542: domaininfo.com INFO Done testing address 217.64.175.109.
166.542: domaininfo.com INFO Begin testing address 217.64.175.108.
166.543: domaininfo.com INFO Done testing address 217.64.175.108.
166.543: domaininfo.com INFO Begin testing address 217.64.175.110.
166.604: domaininfo.com INFO Done testing address 217.64.175.110.
166.604: domaininfo.com INFO Begin testing address 83.246.65.124.
168.613: domaininfo.com INFO Done testing address 83.246.65.124.
168.613: domaininfo.com INFO Done testing host mx12d.antispameurope.com.
169.219: domaininfo.com INFO Done testing email address registry@ports.net.
169.220: domaininfo.com INFO Successful attempt to deliver email for SOA RNAME of domaininfo.com (registry.ports.net) using registry@ports.net.
169.220: domaininfo.com NOTICE SOA TTL for domaininfo.com too small (60) - recommended >= 3600.
169.220: domaininfo.com NOTICE SOA refresh for domaininfo.com too small (1800) - recommended >= 14400.
169.220: domaininfo.com NOTICE SOA retry for domaininfo.com too small (600) - recommended >= 3600.
169.220: domaininfo.com INFO SOA expire for domaininfo.com OK (2419200) - recommended >= 604800.
169.220: domaininfo.com NOTICE SOA minimum for domaininfo.com too small (60) - recommended >= 300.
169.220: domaininfo.com INFO Done testing SOA parameters for domaininfo.com.
169.221: domaininfo.com INFO Begin testing connectivity for domaininfo.com.
173.089: domaininfo.com INFO Zone announced by more than one ASN.
173.089: domaininfo.com NOTICE Zone announced by fewer than two IPv6 ASN.
173.089: domaininfo.com INFO Done testing connectivity for domaininfo.com.
173.090: domaininfo.com INFO Begin testing DNSSEC for domaininfo.com.
173.534: domaininfo.com INFO Did not find DS record for domaininfo.com at parent.
174.718: domaininfo.com INFO Servers for domaininfo.com have consistent extra processing status.
175.368: domaininfo.com INFO Authenticated denial records not found for domaininfo.com.
175.700: domaininfo.com INFO Did not find DNSKEY record for domaininfo.com at child.
175.700: domaininfo.com INFO No DNSKEY(s) found at child, other tests skipped.
175.700: domaininfo.com INFO Done testing DNSSEC for domaininfo.com.
175.701: domaininfo.com INFO Test completed for zone domaininfo.com.
