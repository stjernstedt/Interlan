  0.000: comlaude.com INFO Begin testing zone comlaude.com with version 1.5.0.
  0.001: comlaude.com INFO Begin testing delegation for comlaude.com.
 23.245: comlaude.com INFO Name servers listed at parent: dns1.comlaude-dns.com,dns2.comlaude-dns.net,dns3.comlaude-dns.co.uk,dns4.comlaude-dns.eu
 28.302: comlaude.com INFO Name servers listed at child: dns1.comlaude-dns.com,dns2.comlaude-dns.net,dns3.comlaude-dns.co.uk,dns4.comlaude-dns.eu
 28.507: comlaude.com INFO Parent glue for comlaude.com found: dns1.comlaude-dns.com (156.154.64.49)
 28.678: comlaude.com INFO Parent glue for comlaude.com found: dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49)
 28.800: comlaude.com INFO Parent glue for comlaude.com found: dns2.comlaude-dns.net (156.154.65.49)
 28.848: comlaude.com INFO Parent glue for comlaude.com found: dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49)
 29.375: comlaude.com INFO Checking glue for dns1.comlaude-dns.com (156.154.64.49).
 29.375: comlaude.com INFO Checking glue for dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49).
 29.375: comlaude.com INFO Checking glue for dns2.comlaude-dns.net (156.154.65.49).
 29.376: comlaude.com INFO Checking glue for dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49).
 29.376: comlaude.com INFO Parent glue for comlaude.com found: dns1.comlaude-dns.com (156.154.64.49)
 29.376: comlaude.com INFO Parent glue for comlaude.com found: dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49)
 29.377: comlaude.com INFO Parent glue for comlaude.com found: dns2.comlaude-dns.net (156.154.65.49)
 29.377: comlaude.com INFO Parent glue for comlaude.com found: dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49)
 30.734: comlaude.com INFO It is possible to build a referral packet for comlaude.com that works without EDNS0.
 30.734: comlaude.com INFO Done testing delegation for comlaude.com.
 30.735: comlaude.com INFO Begin testing name server dns1.comlaude-dns.com.
 30.735: comlaude.com INFO Begin testing host dns1.comlaude-dns.com.
 30.735: comlaude.com INFO Begin testing address 156.154.64.49.
 45.871: comlaude.com INFO Done testing address 156.154.64.49.
 45.872: comlaude.com INFO Begin testing address 2001:502:f3ff:0:0:0:0:49.
 52.892: comlaude.com INFO Done testing address 2001:502:f3ff:0:0:0:0:49.
 52.892: comlaude.com INFO Done testing host dns1.comlaude-dns.com.
 52.931: comlaude.com INFO Name server dns1.comlaude-dns.com (156.154.64.49) answers queries over UDP.
 53.014: comlaude.com INFO Name server dns1.comlaude-dns.com (156.154.64.49) answers queries over TCP.
 53.068: comlaude.com INFO Name server dns1.comlaude-dns.com (156.154.64.49) is not recursive.
 53.237: comlaude.com INFO Name server dns1.comlaude-dns.com (156.154.64.49) authoritative for comlaude.com.
 53.338: comlaude.com INFO Name server dns1.comlaude-dns.com (156.154.64.49) closed for zone transfer of comlaude.com.
 53.375: comlaude.com NOTICE No answer received from 156.154.64.49 when querying for hostname.bind/CH/TXT.
 53.426: comlaude.com INFO Legacy name server ID for dns1.comlaude-dns.com (156.154.64.49): version.bind = UltraDNS Resolver
 53.467: comlaude.com NOTICE No answer received from 156.154.64.49 when querying for id.server/CH/TXT.
 53.505: comlaude.com NOTICE No answer received from 156.154.64.49 when querying for version.server/CH/TXT.
 53.546: comlaude.com INFO Name server dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49) answers queries over UDP.
 53.628: comlaude.com INFO Name server dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49) answers queries over TCP.
 53.670: comlaude.com INFO Name server dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49) is not recursive.
 53.828: comlaude.com INFO Name server dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49) authoritative for comlaude.com.
 53.934: comlaude.com INFO Name server dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49) closed for zone transfer of comlaude.com.
 53.980: comlaude.com NOTICE No answer received from 2001:502:f3ff:0:0:0:0:49 when querying for hostname.bind/CH/TXT.
 54.019: comlaude.com INFO Legacy name server ID for dns1.comlaude-dns.com (2001:502:f3ff:0:0:0:0:49): version.bind = UltraDNS Resolver
 54.076: comlaude.com NOTICE No answer received from 2001:502:f3ff:0:0:0:0:49 when querying for id.server/CH/TXT.
 54.124: comlaude.com NOTICE No answer received from 2001:502:f3ff:0:0:0:0:49 when querying for version.server/CH/TXT.
 54.124: comlaude.com INFO Done testing name server dns1.comlaude-dns.com.
 54.125: comlaude.com INFO Begin testing name server dns2.comlaude-dns.net.
 54.125: comlaude.com INFO Begin testing host dns2.comlaude-dns.net.
 54.126: comlaude.com INFO Begin testing address 156.154.65.49.
 54.748: comlaude.com INFO Done testing address 156.154.65.49.
 54.749: comlaude.com INFO Begin testing address 2610:a1:1014:0:0:0:0:49.
 56.560: comlaude.com INFO Done testing address 2610:a1:1014:0:0:0:0:49.
 56.561: comlaude.com INFO Done testing host dns2.comlaude-dns.net.
 56.599: comlaude.com INFO Name server dns2.comlaude-dns.net (156.154.65.49) answers queries over UDP.
 56.670: comlaude.com INFO Name server dns2.comlaude-dns.net (156.154.65.49) answers queries over TCP.
 56.706: comlaude.com INFO Name server dns2.comlaude-dns.net (156.154.65.49) is not recursive.
 56.866: comlaude.com INFO Name server dns2.comlaude-dns.net (156.154.65.49) authoritative for comlaude.com.
 56.968: comlaude.com INFO Name server dns2.comlaude-dns.net (156.154.65.49) closed for zone transfer of comlaude.com.
 57.006: comlaude.com NOTICE No answer received from 156.154.65.49 when querying for hostname.bind/CH/TXT.
 57.045: comlaude.com INFO Legacy name server ID for dns2.comlaude-dns.net (156.154.65.49): version.bind = UltraDNS Resolver
 57.082: comlaude.com NOTICE No answer received from 156.154.65.49 when querying for id.server/CH/TXT.
 57.118: comlaude.com NOTICE No answer received from 156.154.65.49 when querying for version.server/CH/TXT.
 57.164: comlaude.com INFO Name server dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49) answers queries over UDP.
 57.255: comlaude.com INFO Name server dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49) answers queries over TCP.
 57.300: comlaude.com INFO Name server dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49) is not recursive.
 57.495: comlaude.com INFO Name server dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49) authoritative for comlaude.com.
 57.606: comlaude.com INFO Name server dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49) closed for zone transfer of comlaude.com.
 57.659: comlaude.com NOTICE No answer received from 2610:a1:1014:0:0:0:0:49 when querying for hostname.bind/CH/TXT.
 57.717: comlaude.com INFO Legacy name server ID for dns2.comlaude-dns.net (2610:a1:1014:0:0:0:0:49): version.bind = UltraDNS Resolver
 57.757: comlaude.com NOTICE No answer received from 2610:a1:1014:0:0:0:0:49 when querying for id.server/CH/TXT.
 57.797: comlaude.com NOTICE No answer received from 2610:a1:1014:0:0:0:0:49 when querying for version.server/CH/TXT.
 57.797: comlaude.com INFO Done testing name server dns2.comlaude-dns.net.
 57.797: comlaude.com INFO Begin testing name server dns3.comlaude-dns.co.uk.
 57.798: comlaude.com INFO Begin testing host dns3.comlaude-dns.co.uk.
 57.798: comlaude.com INFO Begin testing address 156.154.66.49.
 58.307: comlaude.com INFO Done testing address 156.154.66.49.
 58.308: comlaude.com INFO Begin testing address 2610:a1:1015:0:0:0:0:49.
 59.163: comlaude.com INFO Done testing address 2610:a1:1015:0:0:0:0:49.
 59.163: comlaude.com INFO Done testing host dns3.comlaude-dns.co.uk.
 59.203: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (156.154.66.49) answers queries over UDP.
 59.278: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (156.154.66.49) answers queries over TCP.
 59.321: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (156.154.66.49) is not recursive.
 59.477: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (156.154.66.49) authoritative for comlaude.com.
 59.572: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (156.154.66.49) closed for zone transfer of comlaude.com.
 59.611: comlaude.com NOTICE No answer received from 156.154.66.49 when querying for hostname.bind/CH/TXT.
 59.646: comlaude.com INFO Legacy name server ID for dns3.comlaude-dns.co.uk (156.154.66.49): version.bind = UltraDNS Resolver
 59.684: comlaude.com NOTICE No answer received from 156.154.66.49 when querying for id.server/CH/TXT.
 59.722: comlaude.com NOTICE No answer received from 156.154.66.49 when querying for version.server/CH/TXT.
 59.760: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (2610:a1:1015:0:0:0:0:49) answers queries over UDP.
 59.836: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (2610:a1:1015:0:0:0:0:49) answers queries over TCP.
 59.888: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (2610:a1:1015:0:0:0:0:49) is not recursive.
 60.071: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (2610:a1:1015:0:0:0:0:49) authoritative for comlaude.com.
 60.170: comlaude.com INFO Name server dns3.comlaude-dns.co.uk (2610:a1:1015:0:0:0:0:49) closed for zone transfer of comlaude.com.
 60.214: comlaude.com NOTICE No answer received from 2610:a1:1015:0:0:0:0:49 when querying for hostname.bind/CH/TXT.
 60.255: comlaude.com INFO Legacy name server ID for dns3.comlaude-dns.co.uk (2610:a1:1015:0:0:0:0:49): version.bind = UltraDNS Resolver
 60.294: comlaude.com NOTICE No answer received from 2610:a1:1015:0:0:0:0:49 when querying for id.server/CH/TXT.
 60.331: comlaude.com NOTICE No answer received from 2610:a1:1015:0:0:0:0:49 when querying for version.server/CH/TXT.
 60.332: comlaude.com INFO Done testing name server dns3.comlaude-dns.co.uk.
 60.332: comlaude.com INFO Begin testing name server dns4.comlaude-dns.eu.
 60.332: comlaude.com INFO Begin testing host dns4.comlaude-dns.eu.
 60.333: comlaude.com INFO Begin testing address 156.154.67.49.
 61.101: comlaude.com INFO Done testing address 156.154.67.49.
 61.101: comlaude.com INFO Begin testing address 2001:502:4612:0:0:0:0:49.
 61.696: comlaude.com INFO Done testing address 2001:502:4612:0:0:0:0:49.
 61.696: comlaude.com INFO Done testing host dns4.comlaude-dns.eu.
 61.741: comlaude.com INFO Name server dns4.comlaude-dns.eu (156.154.67.49) answers queries over UDP.
 61.808: comlaude.com INFO Name server dns4.comlaude-dns.eu (156.154.67.49) answers queries over TCP.
 61.851: comlaude.com INFO Name server dns4.comlaude-dns.eu (156.154.67.49) is not recursive.
 62.003: comlaude.com INFO Name server dns4.comlaude-dns.eu (156.154.67.49) authoritative for comlaude.com.
 62.109: comlaude.com INFO Name server dns4.comlaude-dns.eu (156.154.67.49) closed for zone transfer of comlaude.com.
 62.151: comlaude.com NOTICE No answer received from 156.154.67.49 when querying for hostname.bind/CH/TXT.
 62.190: comlaude.com INFO Legacy name server ID for dns4.comlaude-dns.eu (156.154.67.49): version.bind = UltraDNS Resolver
 62.228: comlaude.com NOTICE No answer received from 156.154.67.49 when querying for id.server/CH/TXT.
 62.266: comlaude.com NOTICE No answer received from 156.154.67.49 when querying for version.server/CH/TXT.
 62.315: comlaude.com INFO Name server dns4.comlaude-dns.eu (2001:502:4612:0:0:0:0:49) answers queries over UDP.
 62.397: comlaude.com INFO Name server dns4.comlaude-dns.eu (2001:502:4612:0:0:0:0:49) answers queries over TCP.
 62.438: comlaude.com INFO Name server dns4.comlaude-dns.eu (2001:502:4612:0:0:0:0:49) is not recursive.
 62.618: comlaude.com INFO Name server dns4.comlaude-dns.eu (2001:502:4612:0:0:0:0:49) authoritative for comlaude.com.
 62.717: comlaude.com INFO Name server dns4.comlaude-dns.eu (2001:502:4612:0:0:0:0:49) closed for zone transfer of comlaude.com.
 62.752: comlaude.com NOTICE No answer received from 2001:502:4612:0:0:0:0:49 when querying for hostname.bind/CH/TXT.
 62.787: comlaude.com INFO Legacy name server ID for dns4.comlaude-dns.eu (2001:502:4612:0:0:0:0:49): version.bind = UltraDNS Resolver
 62.822: comlaude.com NOTICE No answer received from 2001:502:4612:0:0:0:0:49 when querying for id.server/CH/TXT.
 62.860: comlaude.com NOTICE No answer received from 2001:502:4612:0:0:0:0:49 when querying for version.server/CH/TXT.
 62.860: comlaude.com INFO Done testing name server dns4.comlaude-dns.eu.
 62.860: comlaude.com INFO Begin testing zone consistency for comlaude.com.
 62.968: comlaude.com INFO SOA at address 2610:a1:1015:0:0:0:0:49 has serial 2013030719.
 63.006: comlaude.com INFO SOA at address 156.154.65.49 has serial 2013030719.
 63.045: comlaude.com INFO SOA at address 156.154.66.49 has serial 2013030719.
 63.083: comlaude.com INFO SOA at address 2001:502:4612:0:0:0:0:49 has serial 2013030719.
 63.140: comlaude.com INFO SOA at address 2610:a1:1014:0:0:0:0:49 has serial 2013030719.
 63.179: comlaude.com INFO SOA at address 156.154.67.49 has serial 2013030719.
 63.223: comlaude.com INFO SOA at address 2001:502:f3ff:0:0:0:0:49 has serial 2013030719.
 63.259: comlaude.com INFO SOA at address 156.154.64.49 has serial 2013030719.
 63.259: comlaude.com INFO All SOA records have consistent serial numbers.
 63.259: comlaude.com INFO All other fields in the SOA record are consistent among all name servers.
 63.591: comlaude.com NOTICE The listed nameservers for comlaude.com all report the same set of nameservers.
 63.592: comlaude.com INFO Done testing zone consistency for comlaude.com.
 63.592: comlaude.com INFO Begin testing SOA parameters for comlaude.com.
 63.629: comlaude.com INFO Found SOA record for comlaude.com.
 63.630: comlaude.com INFO Begin testing host dns1.comlaude-dns.com.
 63.630: comlaude.com INFO Begin testing address 156.154.64.49.
 63.632: comlaude.com INFO Done testing address 156.154.64.49.
 63.632: comlaude.com INFO Begin testing address 2001:502:f3ff:0:0:0:0:49.
 63.635: comlaude.com INFO Done testing address 2001:502:f3ff:0:0:0:0:49.
 63.635: comlaude.com INFO Done testing host dns1.comlaude-dns.com.
 63.635: comlaude.com INFO SOA MNAME for comlaude.com valid (dns1.comlaude-dns.com).
 63.635: comlaude.com INFO SOA MNAME for comlaude.com (dns1.comlaude-dns.com) listed as NS.
 63.673: comlaude.com INFO SOA MNAME for comlaude.com (dns1.comlaude-dns.com) is authoritative.
 63.718: comlaude.com INFO SOA MNAME for comlaude.com (dns1.comlaude-dns.com) is authoritative.
 63.718: comlaude.com INFO Begin testing email address hostmaster@comlaude.com.
 64.052: comlaude.com INFO Mail exchangers for hostmaster@comlaude.com found mx1.emailsrvr.com,mx2.emailsrvr.com.
 64.052: comlaude.com INFO Begin testing host mx1.emailsrvr.com.
 65.895: comlaude.com INFO Begin testing address 173.203.2.36.
 68.942: comlaude.com INFO Done testing address 173.203.2.36.
 68.943: comlaude.com INFO Done testing host mx1.emailsrvr.com.
 69.626: comlaude.com INFO Begin testing host mx2.emailsrvr.com.
 70.872: comlaude.com INFO Begin testing address 98.129.184.4.
 72.402: comlaude.com INFO Done testing address 98.129.184.4.
 72.403: comlaude.com INFO Done testing host mx2.emailsrvr.com.
 73.041: comlaude.com INFO Done testing email address hostmaster@comlaude.com.
 73.041: comlaude.com INFO Successful attempt to deliver email for SOA RNAME of comlaude.com (hostmaster.comlaude.com) using hostmaster@comlaude.com.
 73.041: comlaude.com NOTICE SOA TTL for comlaude.com too small (300) - recommended >= 3600.
 73.041: comlaude.com INFO SOA refresh for comlaude.com OK (86400) - recommended >= 14400.
 73.041: comlaude.com INFO SOA retry for comlaude.com OK (7200) - recommended >= 3600.
 73.042: comlaude.com INFO SOA expire for comlaude.com OK (2419200) - recommended >= 604800.
 73.058: comlaude.com INFO SOA minimum for comlaude.com OK (3600) - recommended between 300 and 86400.
 73.058: comlaude.com INFO Done testing SOA parameters for comlaude.com.
 73.058: comlaude.com INFO Begin testing connectivity for comlaude.com.
 76.868: comlaude.com NOTICE Zone announced by fewer than two IPv4 ASN.
 80.393: comlaude.com NOTICE Zone announced by fewer than two IPv6 ASN.
 80.393: comlaude.com INFO Done testing connectivity for comlaude.com.
 80.393: comlaude.com INFO Begin testing DNSSEC for comlaude.com.
 80.534: comlaude.com INFO Did not find DS record for comlaude.com at parent.
 81.195: comlaude.com INFO Servers for comlaude.com have consistent extra processing status.
 81.264: comlaude.com INFO Authenticated denial records not found for comlaude.com.
 81.305: comlaude.com INFO Did not find DNSKEY record for comlaude.com at child.
 81.305: comlaude.com INFO No DNSKEY(s) found at child, other tests skipped.
 81.305: comlaude.com INFO Done testing DNSSEC for comlaude.com.
 81.306: comlaude.com INFO Test completed for zone comlaude.com.
