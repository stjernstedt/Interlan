  0.000: oderland.com INFO Begin testing zone oderland.com with version 1.3.0.
  0.002: oderland.com INFO Begin testing delegation for oderland.com.
 19.014: oderland.com INFO Name servers listed at parent: dns1.oderland.com,dns2.oderland.com,dns3.oderland.com
 23.193: oderland.com INFO Name servers listed at child: dns1.oderland.com,dns2.oderland.com,dns3.oderland.com
 23.194: oderland.com NOTICE No IPv6 name servers found.
 23.363: oderland.com INFO Parent glue for oderland.com found: dns1.oderland.com (91.201.61.4)
 23.461: oderland.com INFO Parent glue for oderland.com found: dns2.oderland.com (91.201.63.191)
 23.909: oderland.com INFO Parent glue for oderland.com found: dns3.oderland.com (109.123.105.78)
 23.999: oderland.com INFO Checking glue for dns1.oderland.com (91.201.61.4).
 24.036: oderland.com INFO Child glue for oderland.com found: dns1.oderland.com (91.201.61.4)
 24.092: oderland.com INFO Checking glue for dns2.oderland.com (91.201.63.191).
 24.119: oderland.com INFO Child glue for oderland.com found: dns2.oderland.com (91.201.63.191)
 24.119: oderland.com INFO Checking glue for dns3.oderland.com (109.123.105.78).
 24.254: oderland.com INFO Child glue for oderland.com found: dns3.oderland.com (109.123.105.78)
 24.255: oderland.com INFO Parent glue for oderland.com found: dns1.oderland.com (91.201.61.4)
 24.255: oderland.com INFO Parent glue for oderland.com found: dns2.oderland.com (91.201.63.191)
 24.255: oderland.com INFO Parent glue for oderland.com found: dns3.oderland.com (109.123.105.78)
 24.328: oderland.com INFO Done testing delegation for oderland.com.
 24.328: oderland.com INFO Begin testing name server dns1.oderland.com.
 24.329: oderland.com INFO Begin testing host dns1.oderland.com.
 24.698: oderland.com INFO Begin testing address 91.201.61.4.
 31.058: oderland.com INFO Done testing address 91.201.61.4.
 31.059: oderland.com INFO Done testing host dns1.oderland.com.
 31.600: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) answers queries over UDP.
 31.655: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) answers queries over TCP.
 31.681: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) is not recursive.
 31.704: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) authoritative for oderland.com.
 31.747: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) closed for zone transfer of oderland.com.
 31.771: oderland.com INFO Legacy name server ID for dns1.oderland.com (91.201.61.4): hostname.bind = dns1.oderland.com
 31.788: oderland.com INFO Legacy name server ID for dns1.oderland.com (91.201.61.4): version.bind = 9.3.6-P1-RedHat-9.3.6-16.P1.el5_7.1
 31.833: oderland.com NOTICE No answer received from 91.201.61.4 when querying for version.server/CH/TXT.
 31.833: oderland.com INFO Done testing name server dns1.oderland.com.
 31.833: oderland.com INFO Begin testing name server dns2.oderland.com.
 31.834: oderland.com INFO Begin testing host dns2.oderland.com.
 32.279: oderland.com INFO Begin testing address 91.201.63.191.
 33.149: oderland.com INFO Done testing address 91.201.63.191.
 33.150: oderland.com INFO Done testing host dns2.oderland.com.
 33.479: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) answers queries over UDP.
 33.512: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) answers queries over TCP.
 33.534: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) is not recursive.
 33.563: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) authoritative for oderland.com.
 33.621: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) closed for zone transfer of oderland.com.
 33.649: oderland.com INFO Legacy name server ID for dns2.oderland.com (91.201.63.191): hostname.bind = dns2.oderland.com
 33.667: oderland.com INFO Legacy name server ID for dns2.oderland.com (91.201.63.191): version.bind = 9.3.6-P1-RedHat-9.3.6-16.P1.el5_7.1
 33.705: oderland.com NOTICE No answer received from 91.201.63.191 when querying for version.server/CH/TXT.
 33.705: oderland.com INFO Done testing name server dns2.oderland.com.
 33.706: oderland.com INFO Begin testing name server dns3.oderland.com.
 33.706: oderland.com INFO Begin testing host dns3.oderland.com.
 34.027: oderland.com INFO Begin testing address 109.123.105.78.
 36.125: oderland.com INFO Done testing address 109.123.105.78.
 36.126: oderland.com INFO Done testing host dns3.oderland.com.
 36.836: oderland.com INFO Name server dns3.oderland.com (109.123.105.78) answers queries over UDP.
 36.945: oderland.com INFO Name server dns3.oderland.com (109.123.105.78) answers queries over TCP.
 36.987: oderland.com INFO Name server dns3.oderland.com (109.123.105.78) is not recursive.
 37.049: oderland.com INFO Name server dns3.oderland.com (109.123.105.78) authoritative for oderland.com.
 37.262: oderland.com INFO Name server dns3.oderland.com (109.123.105.78) closed for zone transfer of oderland.com.
 37.309: oderland.com INFO Legacy name server ID for dns3.oderland.com (109.123.105.78): hostname.bind = dns3.oderland.com
 37.361: oderland.com INFO Legacy name server ID for dns3.oderland.com (109.123.105.78): version.bind = 9.3.6-P1-RedHat-9.3.6-16.P1.el5_7.1
 37.465: oderland.com NOTICE No answer received from 109.123.105.78 when querying for version.server/CH/TXT.
 37.465: oderland.com INFO Done testing name server dns3.oderland.com.
 37.465: oderland.com INFO Begin testing zone consistency for oderland.com.
 40.348: oderland.com INFO SOA at address 109.123.105.78 has serial 2012083011.
 40.377: oderland.com INFO SOA at address 91.201.61.4 has serial 2012083011.
 40.400: oderland.com INFO SOA at address 91.201.63.191 has serial 2012083011.
 40.400: oderland.com INFO All SOA records have consistent serial numbers.
 40.400: oderland.com INFO All other fields in the SOA record are consistent among all name servers.
 40.405: oderland.com INFO Done testing zone consistency for oderland.com.
 40.405: oderland.com INFO Begin testing SOA parameters for oderland.com.
 40.427: oderland.com INFO Found SOA record for oderland.com.
 40.428: oderland.com INFO Begin testing host dns1.oderland.com.
 40.731: oderland.com INFO Begin testing address 91.201.61.4.
 41.064: oderland.com INFO Done testing address 91.201.61.4.
 41.064: oderland.com INFO Done testing host dns1.oderland.com.
 41.064: oderland.com INFO SOA MNAME for oderland.com valid (dns1.oderland.com).
 41.065: oderland.com INFO SOA MNAME for oderland.com (dns1.oderland.com) listed as NS.
 41.508: oderland.com INFO SOA MNAME for oderland.com (dns1.oderland.com) is authoritative.
 41.525: oderland.com INFO Begin testing email address registry@oderland.se.
 41.748: oderland.com INFO Mail exchangers for registry@oderland.se found vsp02.oderland.com,vsp01.oderland.com.
 41.748: oderland.com INFO All mail servers for registry@oderland.se are in zone oderland.com.
 41.748: oderland.com INFO Begin testing host vsp02.oderland.com.
 42.695: oderland.com INFO Begin testing address 91.201.63.250.
 44.342: oderland.com INFO Done testing address 91.201.63.250.
 44.342: oderland.com INFO Done testing host vsp02.oderland.com.
 44.938: oderland.com INFO Begin testing mail server vsp02.oderland.com (91.201.63.250) with registry@oderland.se.
 45.220: oderland.com INFO SMTP banner: vsp01.oderland.com ESMTP Halon Mail Gateway (H/OS)
 45.477: oderland.com INFO SMTP testing of vsp02.oderland.com (91.201.63.250) with registry@oderland.se succeeded without errors.
 45.477: oderland.com INFO Done testing mail server vsp02.oderland.com (91.201.63.250) with registry@oderland.se.
 45.478: oderland.com INFO Begin testing host vsp01.oderland.com.
 46.352: oderland.com INFO Begin testing address 91.201.63.252.
 47.531: oderland.com INFO Done testing address 91.201.63.252.
 47.531: oderland.com INFO Done testing host vsp01.oderland.com.
 47.913: oderland.com INFO Delivery over IPv4 to registry@oderland.se ok.
 47.914: oderland.com NOTICE Delivery over IPv6 to registry@oderland.se could not be done.
 47.914: oderland.com INFO Done testing email address registry@oderland.se.
 47.914: oderland.com INFO Successful attempt to deliver email for SOA RNAME of oderland.com (registry.oderland.se) using registry@oderland.se.
 47.914: oderland.com INFO SOA TTL for oderland.com OK (14400) - recommended >= 3600.
 47.914: oderland.com INFO SOA refresh for oderland.com OK (14400) - recommended >= 14400.
 47.914: oderland.com NOTICE SOA refresh for oderland.com lower than retry (14400 vs 86400).
 47.914: oderland.com INFO SOA retry for oderland.com OK (86400) - recommended >= 3600.
 47.914: oderland.com INFO SOA expire for oderland.com OK (3600000) - recommended >= 604800.
 47.914: oderland.com INFO SOA minimum for oderland.com OK (86400) - recommended between 300 and 86400.
 47.914: oderland.com INFO Done testing SOA parameters for oderland.com.
 47.915: oderland.com INFO Begin testing connectivity for oderland.com.
 48.606: oderland.com INFO Name server 91.201.63.191 announced by: 44136
 49.223: oderland.com INFO Name server 109.123.105.78 announced by: 13213
 49.729: oderland.com INFO Name server 91.201.61.4 announced by: 44136
 49.729: oderland.com INFO Zone announced by IPv4 ASN: 13213,44136
 49.729: oderland.com INFO Zone announced by more than one ASN (2).
 49.729: oderland.com INFO Zone announced by IPv6 ASN: 
 49.729: oderland.com NOTICE Zone announced by less than two IPv6 ASN (0).
 49.729: oderland.com INFO Done testing connectivity for oderland.com.
 49.729: oderland.com INFO Begin testing DNSSEC for oderland.com.
 49.813: oderland.com INFO Did not find DS record for oderland.com at parent.
 49.969: oderland.com INFO Servers for oderland.com have consistent extra processing status.
 49.970: oderland.com INFO Did not find DNSKEY record for oderland.com at child.
 49.970: oderland.com INFO No DNSKEY(s) found at child, other tests skipped.
 49.970: oderland.com INFO Done testing DNSSEC for oderland.com.
 49.970: oderland.com INFO Test completed for zone oderland.com.
