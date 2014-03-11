  0.000: verizonbusiness.com INFO Begin testing zone verizonbusiness.com with version 1.5.0.
  0.001: verizonbusiness.com INFO Begin testing delegation for verizonbusiness.com.
 22.887: verizonbusiness.com INFO Name servers listed at parent: auth-ns1.verizonbusiness.com,auth-ns2.verizonbusiness.com,auth01.ns.uu.net,auth200.ns.uu.net,auth210.ns.uu.net,auth50.ns.uu.net,auth61.ns.uu.net
 32.445: verizonbusiness.com INFO Name servers listed at child: auth-ns1.verizonbusiness.com,auth-ns2.verizonbusiness.com,auth01.ns.uu.net,auth200.ns.uu.net,auth210.ns.uu.net,auth50.ns.uu.net,auth61.ns.uu.net
 32.809: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth-ns1.verizonbusiness.com (199.249.19.10)
 32.997: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth-ns2.verizonbusiness.com (199.249.18.65)
 33.856: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth200.ns.uu.net (195.129.12.82)
 34.325: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth210.ns.uu.net (195.129.12.74)
 35.306: verizonbusiness.com INFO Checking glue for auth-ns1.verizonbusiness.com (199.249.19.10).
 35.440: verizonbusiness.com INFO Child glue for verizonbusiness.com found: auth-ns1.verizonbusiness.com (199.249.19.10)
 35.441: verizonbusiness.com INFO Checking glue for auth-ns2.verizonbusiness.com (199.249.18.65).
 35.579: verizonbusiness.com INFO Child glue for verizonbusiness.com found: auth-ns2.verizonbusiness.com (199.249.18.65)
 35.579: verizonbusiness.com INFO Checking glue for auth200.ns.uu.net (195.129.12.82).
 35.579: verizonbusiness.com INFO Checking glue for auth210.ns.uu.net (195.129.12.74).
 35.580: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth-ns1.verizonbusiness.com (199.249.19.10)
 35.580: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth-ns2.verizonbusiness.com (199.249.18.65)
 35.581: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth200.ns.uu.net (195.129.12.82)
 35.582: verizonbusiness.com INFO Parent glue for verizonbusiness.com found: auth210.ns.uu.net (195.129.12.74)
 41.967: verizonbusiness.com INFO It is possible to build a referral packet for verizonbusiness.com that works without EDNS0.
 41.967: verizonbusiness.com INFO Done testing delegation for verizonbusiness.com.
 41.976: verizonbusiness.com INFO Begin testing name server auth-ns1.verizonbusiness.com.
 41.976: verizonbusiness.com INFO Begin testing host auth-ns1.verizonbusiness.com.
 42.513: verizonbusiness.com INFO Begin testing address 199.249.19.10.
 50.363: verizonbusiness.com INFO Done testing address 199.249.19.10.
 50.363: verizonbusiness.com INFO Done testing host auth-ns1.verizonbusiness.com.
 51.020: verizonbusiness.com INFO Name server auth-ns1.verizonbusiness.com (199.249.19.10) answers queries over UDP.
 51.345: verizonbusiness.com INFO Name server auth-ns1.verizonbusiness.com (199.249.19.10) answers queries over TCP.
 51.512: verizonbusiness.com INFO Name server auth-ns1.verizonbusiness.com (199.249.19.10) is not recursive.
 52.157: verizonbusiness.com INFO Name server auth-ns1.verizonbusiness.com (199.249.19.10) authoritative for verizonbusiness.com.
 52.620: verizonbusiness.com INFO Name server auth-ns1.verizonbusiness.com (199.249.19.10) closed for zone transfer of verizonbusiness.com.
 52.778: verizonbusiness.com INFO Legacy name server ID for auth-ns1.verizonbusiness.com (199.249.19.10): hostname.bind = f85omns5
 52.935: verizonbusiness.com INFO Legacy name server ID for auth-ns1.verizonbusiness.com (199.249.19.10): version.bind = 9.6-ESV-R8
 53.256: verizonbusiness.com NOTICE No answer received from 199.249.19.10 when querying for version.server/CH/TXT.
 53.256: verizonbusiness.com INFO Done testing name server auth-ns1.verizonbusiness.com.
 53.256: verizonbusiness.com INFO Begin testing name server auth-ns2.verizonbusiness.com.
 53.257: verizonbusiness.com INFO Begin testing host auth-ns2.verizonbusiness.com.
 53.655: verizonbusiness.com INFO Begin testing address 199.249.18.65.
 55.010: verizonbusiness.com INFO Done testing address 199.249.18.65.
 55.010: verizonbusiness.com INFO Done testing host auth-ns2.verizonbusiness.com.
 55.562: verizonbusiness.com INFO Name server auth-ns2.verizonbusiness.com (199.249.18.65) answers queries over UDP.
 55.838: verizonbusiness.com INFO Name server auth-ns2.verizonbusiness.com (199.249.18.65) answers queries over TCP.
 55.973: verizonbusiness.com INFO Name server auth-ns2.verizonbusiness.com (199.249.18.65) is not recursive.
 56.528: verizonbusiness.com INFO Name server auth-ns2.verizonbusiness.com (199.249.18.65) authoritative for verizonbusiness.com.
 56.927: verizonbusiness.com INFO Name server auth-ns2.verizonbusiness.com (199.249.18.65) closed for zone transfer of verizonbusiness.com.
 57.066: verizonbusiness.com INFO Legacy name server ID for auth-ns2.verizonbusiness.com (199.249.18.65): hostname.bind = f85ndns6
 57.205: verizonbusiness.com INFO Legacy name server ID for auth-ns2.verizonbusiness.com (199.249.18.65): version.bind = 9.6-ESV-R8
 57.478: verizonbusiness.com NOTICE No answer received from 199.249.18.65 when querying for version.server/CH/TXT.
 57.478: verizonbusiness.com INFO Done testing name server auth-ns2.verizonbusiness.com.
 57.478: verizonbusiness.com INFO Begin testing name server auth01.ns.uu.net.
 57.479: verizonbusiness.com INFO Begin testing host auth01.ns.uu.net.
 57.932: verizonbusiness.com INFO Begin testing address 198.6.1.81.
 61.030: verizonbusiness.com INFO Done testing address 198.6.1.81.
 61.030: verizonbusiness.com INFO Done testing host auth01.ns.uu.net.
 61.448: verizonbusiness.com INFO Name server auth01.ns.uu.net (198.6.1.81) answers queries over UDP.
 61.671: verizonbusiness.com INFO Name server auth01.ns.uu.net (198.6.1.81) answers queries over TCP.
 61.785: verizonbusiness.com INFO Name server auth01.ns.uu.net (198.6.1.81) is not recursive.
 62.250: verizonbusiness.com INFO Name server auth01.ns.uu.net (198.6.1.81) authoritative for verizonbusiness.com.
 62.582: verizonbusiness.com INFO Name server auth01.ns.uu.net (198.6.1.81) closed for zone transfer of verizonbusiness.com.
 62.699: verizonbusiness.com INFO Legacy name server ID for auth01.ns.uu.net (198.6.1.81): hostname.bind = dnsnycspa06
 62.812: verizonbusiness.com INFO Legacy name server ID for auth01.ns.uu.net (198.6.1.81): version.bind = Verizon
 62.924: verizonbusiness.com INFO Legacy name server ID for auth01.ns.uu.net (198.6.1.81): id.server = Verizon
 63.037: verizonbusiness.com NOTICE No answer received from 198.6.1.81 when querying for version.server/CH/TXT.
 63.037: verizonbusiness.com INFO Done testing name server auth01.ns.uu.net.
 63.037: verizonbusiness.com INFO Begin testing name server auth200.ns.uu.net.
 63.038: verizonbusiness.com INFO Begin testing host auth200.ns.uu.net.
 63.038: verizonbusiness.com INFO Begin testing address 195.129.12.82.
 68.988: verizonbusiness.com INFO Done testing address 195.129.12.82.
 68.988: verizonbusiness.com INFO Begin testing address 2001:600:1c0:e000:0:0:35:2.
 71.409: verizonbusiness.com INFO Done testing address 2001:600:1c0:e000:0:0:35:2.
 71.409: verizonbusiness.com INFO Done testing host auth200.ns.uu.net.
 71.449: verizonbusiness.com INFO Name server auth200.ns.uu.net (195.129.12.82) answers queries over UDP.
 71.524: verizonbusiness.com INFO Name server auth200.ns.uu.net (195.129.12.82) answers queries over TCP.
 71.566: verizonbusiness.com INFO Name server auth200.ns.uu.net (195.129.12.82) is not recursive.
 71.726: verizonbusiness.com INFO Name server auth200.ns.uu.net (195.129.12.82) authoritative for verizonbusiness.com.
 71.834: verizonbusiness.com INFO Name server auth200.ns.uu.net (195.129.12.82) closed for zone transfer of verizonbusiness.com.
 71.873: verizonbusiness.com NOTICE No answer received from 195.129.12.82 when querying for hostname.bind/CH/TXT.
 71.911: verizonbusiness.com NOTICE No answer received from 195.129.12.82 when querying for version.bind/CH/TXT.
 71.950: verizonbusiness.com NOTICE No answer received from 195.129.12.82 when querying for id.server/CH/TXT.
 71.989: verizonbusiness.com NOTICE No answer received from 195.129.12.82 when querying for version.server/CH/TXT.
 72.106: verizonbusiness.com INFO Name server auth200.ns.uu.net (2001:600:1c0:e000:0:0:35:2) answers queries over UDP.
 75.628: verizonbusiness.com INFO Name server auth200.ns.uu.net (2001:600:1c0:e000:0:0:35:2) answers queries over TCP.
 75.799: verizonbusiness.com INFO Name server auth200.ns.uu.net (2001:600:1c0:e000:0:0:35:2) is not recursive.
 81.967: verizonbusiness.com INFO Name server auth200.ns.uu.net (2001:600:1c0:e000:0:0:35:2) authoritative for verizonbusiness.com.
 87.379: verizonbusiness.com INFO Name server auth200.ns.uu.net (2001:600:1c0:e000:0:0:35:2) closed for zone transfer of verizonbusiness.com.
 93.497: verizonbusiness.com NOTICE No answer received from 2001:600:1c0:e000:0:0:35:2 when querying for version.bind/CH/TXT.
 93.599: verizonbusiness.com NOTICE No answer received from 2001:600:1c0:e000:0:0:35:2 when querying for id.server/CH/TXT.
 99.611: verizonbusiness.com INFO Done testing name server auth200.ns.uu.net.
 99.612: verizonbusiness.com INFO Begin testing name server auth210.ns.uu.net.
 99.617: verizonbusiness.com INFO Begin testing host auth210.ns.uu.net.
 99.617: verizonbusiness.com INFO Begin testing address 195.129.12.74.
100.185: verizonbusiness.com INFO Done testing address 195.129.12.74.
100.186: verizonbusiness.com INFO Begin testing address 2001:600:1c0:e001:0:0:35:2.
101.024: verizonbusiness.com INFO Done testing address 2001:600:1c0:e001:0:0:35:2.
101.024: verizonbusiness.com INFO Done testing host auth210.ns.uu.net.
101.072: verizonbusiness.com INFO Name server auth210.ns.uu.net (195.129.12.74) answers queries over UDP.
101.164: verizonbusiness.com INFO Name server auth210.ns.uu.net (195.129.12.74) answers queries over TCP.
101.212: verizonbusiness.com INFO Name server auth210.ns.uu.net (195.129.12.74) is not recursive.
101.430: verizonbusiness.com INFO Name server auth210.ns.uu.net (195.129.12.74) authoritative for verizonbusiness.com.
101.562: verizonbusiness.com INFO Name server auth210.ns.uu.net (195.129.12.74) closed for zone transfer of verizonbusiness.com.
101.619: verizonbusiness.com NOTICE No answer received from 195.129.12.74 when querying for hostname.bind/CH/TXT.
101.665: verizonbusiness.com NOTICE No answer received from 195.129.12.74 when querying for version.bind/CH/TXT.
101.724: verizonbusiness.com NOTICE No answer received from 195.129.12.74 when querying for id.server/CH/TXT.
101.777: verizonbusiness.com NOTICE No answer received from 195.129.12.74 when querying for version.server/CH/TXT.
105.885: verizonbusiness.com INFO Name server auth210.ns.uu.net (2001:600:1c0:e001:0:0:35:2) answers queries over UDP.
107.084: verizonbusiness.com INFO Name server auth210.ns.uu.net (2001:600:1c0:e001:0:0:35:2) answers queries over TCP.
107.204: verizonbusiness.com INFO Name server auth210.ns.uu.net (2001:600:1c0:e001:0:0:35:2) is not recursive.
113.352: verizonbusiness.com INFO Name server auth210.ns.uu.net (2001:600:1c0:e001:0:0:35:2) authoritative for verizonbusiness.com.
118.470: verizonbusiness.com INFO Name server auth210.ns.uu.net (2001:600:1c0:e001:0:0:35:2) closed for zone transfer of verizonbusiness.com.
122.585: verizonbusiness.com NOTICE No answer received from 2001:600:1c0:e001:0:0:35:2 when querying for hostname.bind/CH/TXT.
126.706: verizonbusiness.com NOTICE No answer received from 2001:600:1c0:e001:0:0:35:2 when querying for version.bind/CH/TXT.
130.826: verizonbusiness.com NOTICE No answer received from 2001:600:1c0:e001:0:0:35:2 when querying for id.server/CH/TXT.
130.928: verizonbusiness.com NOTICE No answer received from 2001:600:1c0:e001:0:0:35:2 when querying for version.server/CH/TXT.
130.928: verizonbusiness.com INFO Done testing name server auth210.ns.uu.net.
130.928: verizonbusiness.com INFO Begin testing name server auth50.ns.uu.net.
130.929: verizonbusiness.com INFO Begin testing host auth50.ns.uu.net.
131.373: verizonbusiness.com INFO Begin testing address 198.6.1.161.
132.449: verizonbusiness.com INFO Done testing address 198.6.1.161.
132.450: verizonbusiness.com INFO Done testing host auth50.ns.uu.net.
132.896: verizonbusiness.com INFO Name server auth50.ns.uu.net (198.6.1.161) answers queries over UDP.
133.166: verizonbusiness.com INFO Name server auth50.ns.uu.net (198.6.1.161) answers queries over TCP.
133.303: verizonbusiness.com INFO Name server auth50.ns.uu.net (198.6.1.161) is not recursive.
133.842: verizonbusiness.com INFO Name server auth50.ns.uu.net (198.6.1.161) authoritative for verizonbusiness.com.
134.236: verizonbusiness.com INFO Name server auth50.ns.uu.net (198.6.1.161) closed for zone transfer of verizonbusiness.com.
134.372: verizonbusiness.com INFO Legacy name server ID for auth50.ns.uu.net (198.6.1.161): hostname.bind = dnschispa04
134.510: verizonbusiness.com INFO Legacy name server ID for auth50.ns.uu.net (198.6.1.161): version.bind = Verizon
134.649: verizonbusiness.com INFO Legacy name server ID for auth50.ns.uu.net (198.6.1.161): id.server = Verizon
134.786: verizonbusiness.com NOTICE No answer received from 198.6.1.161 when querying for version.server/CH/TXT.
134.786: verizonbusiness.com INFO Done testing name server auth50.ns.uu.net.
134.786: verizonbusiness.com INFO Begin testing name server auth61.ns.uu.net.
134.786: verizonbusiness.com INFO Begin testing host auth61.ns.uu.net.
135.080: verizonbusiness.com INFO Begin testing address 198.6.1.182.
136.309: verizonbusiness.com INFO Done testing address 198.6.1.182.
136.310: verizonbusiness.com INFO Done testing host auth61.ns.uu.net.
136.758: verizonbusiness.com INFO Name server auth61.ns.uu.net (198.6.1.182) answers queries over UDP.
137.118: verizonbusiness.com INFO Name server auth61.ns.uu.net (198.6.1.182) answers queries over TCP.
137.306: verizonbusiness.com INFO Name server auth61.ns.uu.net (198.6.1.182) is not recursive.
138.036: verizonbusiness.com INFO Name server auth61.ns.uu.net (198.6.1.182) authoritative for verizonbusiness.com.
138.573: verizonbusiness.com INFO Name server auth61.ns.uu.net (198.6.1.182) closed for zone transfer of verizonbusiness.com.
138.758: verizonbusiness.com INFO Legacy name server ID for auth61.ns.uu.net (198.6.1.182): hostname.bind = dnslaxspa02
138.940: verizonbusiness.com INFO Legacy name server ID for auth61.ns.uu.net (198.6.1.182): version.bind = Verizon
139.123: verizonbusiness.com INFO Legacy name server ID for auth61.ns.uu.net (198.6.1.182): id.server = Verizon
139.308: verizonbusiness.com NOTICE No answer received from 198.6.1.182 when querying for version.server/CH/TXT.
139.308: verizonbusiness.com INFO Done testing name server auth61.ns.uu.net.
139.309: verizonbusiness.com INFO Begin testing zone consistency for verizonbusiness.com.
143.356: verizonbusiness.com INFO SOA at address 199.249.18.65 has serial 733.
143.497: verizonbusiness.com INFO SOA at address 198.6.1.161 has serial 733.
143.544: verizonbusiness.com INFO SOA at address 195.129.12.74 has serial 733.
143.587: verizonbusiness.com INFO SOA at address 195.129.12.82 has serial 733.
143.702: verizonbusiness.com INFO SOA at address 198.6.1.81 has serial 733.
143.862: verizonbusiness.com INFO SOA at address 199.249.19.10 has serial 733.
144.051: verizonbusiness.com INFO SOA at address 198.6.1.182 has serial 733.
144.052: verizonbusiness.com INFO All SOA records have consistent serial numbers.
144.052: verizonbusiness.com INFO All other fields in the SOA record are consistent among all name servers.
155.485: verizonbusiness.com NOTICE The listed nameservers for verizonbusiness.com all report the same set of nameservers.
155.485: verizonbusiness.com INFO Done testing zone consistency for verizonbusiness.com.
155.485: verizonbusiness.com INFO Begin testing SOA parameters for verizonbusiness.com.
155.625: verizonbusiness.com INFO Found SOA record for verizonbusiness.com.
155.625: verizonbusiness.com INFO Begin testing host omzdns3.vzbi.com.
157.394: verizonbusiness.com ERROR Host name omzdns3.vzbi.com refers to a CNAME.
157.394: verizonbusiness.com INFO Done testing host omzdns3.vzbi.com.
157.394: verizonbusiness.com WARNING Error while checking SOA MNAME for verizonbusiness.com (omzdns3.vzbi.com).
157.395: verizonbusiness.com NOTICE SOA MNAME for verizonbusiness.com (omzdns3.vzbi.com) not listed as NS.
163.406: verizonbusiness.com INFO SOA MNAME for verizonbusiness.com (omzdns3.vzbi.com) is authoritative.
163.407: verizonbusiness.com INFO Begin testing email address hostmaster@verizonbusiness.com.
163.822: verizonbusiness.com INFO Mail exchangers for hostmaster@verizonbusiness.com found fldsmtpe03.verizon.com,fldsmtpe04.verizon.com,fldsmtpe01.verizon.com,fldsmtpe02.verizon.com,omzsmtpe02.verizonbusiness.com,omzsmtpe01.verizonbusiness.com.
163.822: verizonbusiness.com INFO Begin testing host fldsmtpe03.verizon.com.
165.058: verizonbusiness.com INFO Begin testing address 140.108.26.142.
168.062: verizonbusiness.com INFO Done testing address 140.108.26.142.
168.063: verizonbusiness.com INFO Done testing host fldsmtpe03.verizon.com.
168.425: verizonbusiness.com INFO Begin testing host fldsmtpe04.verizon.com.
169.359: verizonbusiness.com INFO Begin testing address 140.108.26.143.
170.252: verizonbusiness.com INFO Done testing address 140.108.26.143.
170.253: verizonbusiness.com INFO Done testing host fldsmtpe04.verizon.com.
170.957: verizonbusiness.com INFO Begin testing host fldsmtpe01.verizon.com.
171.894: verizonbusiness.com INFO Begin testing address 140.108.26.140.
173.459: verizonbusiness.com INFO Done testing address 140.108.26.140.
173.459: verizonbusiness.com INFO Done testing host fldsmtpe01.verizon.com.
173.850: verizonbusiness.com INFO Begin testing host fldsmtpe02.verizon.com.
175.253: verizonbusiness.com INFO Begin testing address 140.108.26.141.
176.369: verizonbusiness.com INFO Done testing address 140.108.26.141.
176.369: verizonbusiness.com INFO Done testing host fldsmtpe02.verizon.com.
177.075: verizonbusiness.com INFO Begin testing host omzsmtpe02.verizonbusiness.com.
177.992: verizonbusiness.com INFO Begin testing address 199.249.25.209.
179.206: verizonbusiness.com INFO Done testing address 199.249.25.209.
179.206: verizonbusiness.com INFO Done testing host omzsmtpe02.verizonbusiness.com.
179.786: verizonbusiness.com INFO Begin testing host omzsmtpe01.verizonbusiness.com.
180.937: verizonbusiness.com INFO Begin testing address 199.249.25.210.
182.046: verizonbusiness.com INFO Done testing address 199.249.25.210.
182.046: verizonbusiness.com INFO Done testing host omzsmtpe01.verizonbusiness.com.
182.470: verizonbusiness.com INFO Done testing email address hostmaster@verizonbusiness.com.
182.470: verizonbusiness.com INFO Successful attempt to deliver email for SOA RNAME of verizonbusiness.com (hostmaster.verizonbusiness.com) using hostmaster@verizonbusiness.com.
182.471: verizonbusiness.com INFO SOA TTL for verizonbusiness.com OK (3600) - recommended >= 3600.
182.471: verizonbusiness.com NOTICE SOA refresh for verizonbusiness.com too small (3600) - recommended >= 14400.
182.471: verizonbusiness.com NOTICE SOA retry for verizonbusiness.com too small (900) - recommended >= 3600.
182.471: verizonbusiness.com INFO SOA expire for verizonbusiness.com OK (1555200) - recommended >= 604800.
182.471: verizonbusiness.com INFO SOA minimum for verizonbusiness.com OK (600) - recommended between 300 and 86400.
182.471: verizonbusiness.com INFO Done testing SOA parameters for verizonbusiness.com.
182.472: verizonbusiness.com INFO Begin testing connectivity for verizonbusiness.com.
187.109: verizonbusiness.com INFO Zone announced by more than one ASN.
188.447: verizonbusiness.com NOTICE Zone announced by fewer than two IPv6 ASN.
188.447: verizonbusiness.com INFO Done testing connectivity for verizonbusiness.com.
188.448: verizonbusiness.com INFO Begin testing DNSSEC for verizonbusiness.com.
188.751: verizonbusiness.com INFO Did not find DS record for verizonbusiness.com at parent.
191.221: verizonbusiness.com INFO Servers for verizonbusiness.com have consistent extra processing status.
191.498: verizonbusiness.com INFO Authenticated denial records not found for verizonbusiness.com.
191.636: verizonbusiness.com INFO Did not find DNSKEY record for verizonbusiness.com at child.
191.636: verizonbusiness.com INFO No DNSKEY(s) found at child, other tests skipped.
191.636: verizonbusiness.com INFO Done testing DNSSEC for verizonbusiness.com.
191.638: verizonbusiness.com INFO Test completed for zone verizonbusiness.com.
