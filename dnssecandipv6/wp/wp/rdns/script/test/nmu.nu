  0.000: nmu.nu INFO Begin testing zone nmu.nu with version 1.0.1.
  0.000: nmu.nu INFO Begin testing delegation for nmu.nu.
  2.586: nmu.nu INFO Name servers listed at parent: ns1.domanfabriken.net,ns2.domanfabriken.net
  3.169: nmu.nu INFO Name servers listed at child: origo.nmugroup.com,unit.nmugroup.com
  3.169: nmu.nu ERROR Superfluous name server listed at parent: ns1.domanfabriken.net
  3.169: nmu.nu ERROR Superfluous name server listed at parent: ns2.domanfabriken.net
  3.169: nmu.nu ERROR Total parent/child glue mismatch.
  3.169: nmu.nu NOTICE Additional name server listed at child: origo.nmugroup.com
  3.169: nmu.nu NOTICE Additional name server listed at child: unit.nmugroup.com
  3.169: nmu.nu NOTICE No IPv6 name servers found.
  3.352: nmu.nu INFO Done testing delegation for nmu.nu.
  3.352: nmu.nu INFO Begin testing name server origo.nmugroup.com.
  3.352: nmu.nu INFO Begin testing host origo.nmugroup.com.
  3.353: nmu.nu INFO Begin testing address 213.212.51.243.
  9.784: nmu.nu INFO Done testing address 213.212.51.243.
  9.784: nmu.nu INFO Done testing host origo.nmugroup.com.
  9.817: nmu.nu INFO Name server origo.nmugroup.com (213.212.51.243) is not recursive.
 13.849: nmu.nu INFO Name server origo.nmugroup.com (213.212.51.243) authoritative for nmu.nu.
 13.882: nmu.nu INFO Name server origo.nmugroup.com (213.212.51.243) answers queries over UDP.
 13.944: nmu.nu INFO Name server origo.nmugroup.com (213.212.51.243) answers queries over TCP.
 14.042: nmu.nu NOTICE Name server origo.nmugroup.com (213.212.51.243) open for zone transfer of nmu.nu.
 14.074: nmu.nu INFO Legacy name server ID for origo.nmugroup.com (213.212.51.243): hostname.bind = origo
 14.106: nmu.nu INFO Legacy name server ID for origo.nmugroup.com (213.212.51.243): version.bind = 9.6-ESV-R1
 14.169: nmu.nu NOTICE No answer received from 213.212.51.243 when querying for version.server/CH/TXT.
 14.169: nmu.nu INFO Done testing name server origo.nmugroup.com.
 14.169: nmu.nu INFO Begin testing name server unit.nmugroup.com.
 14.169: nmu.nu INFO Begin testing host unit.nmugroup.com.
 14.170: nmu.nu INFO Begin testing address 82.197.224.75.
 14.549: nmu.nu INFO Done testing address 82.197.224.75.
 14.549: nmu.nu INFO Done testing host unit.nmugroup.com.
 14.591: nmu.nu INFO Name server unit.nmugroup.com (82.197.224.75) is not recursive.
 14.634: nmu.nu INFO Name server unit.nmugroup.com (82.197.224.75) authoritative for nmu.nu.
 14.678: nmu.nu INFO Name server unit.nmugroup.com (82.197.224.75) answers queries over UDP.
 14.758: nmu.nu INFO Name server unit.nmugroup.com (82.197.224.75) answers queries over TCP.
 14.884: nmu.nu NOTICE Name server unit.nmugroup.com (82.197.224.75) open for zone transfer of nmu.nu.
 14.925: nmu.nu INFO Legacy name server ID for unit.nmugroup.com (82.197.224.75): hostname.bind = eagle.nmu.nu
 14.967: nmu.nu INFO Legacy name server ID for unit.nmugroup.com (82.197.224.75): version.bind = 9.6-ESV-R1
 15.048: nmu.nu NOTICE No answer received from 82.197.224.75 when querying for version.server/CH/TXT.
 15.048: nmu.nu INFO Done testing name server unit.nmugroup.com.
 15.048: nmu.nu INFO Begin testing zone consistency for nmu.nu.
 15.250: nmu.nu INFO SOA at address 213.212.51.243 has serial 2010060600.
 15.293: nmu.nu INFO SOA at address 82.197.224.75 has serial 2010060600.
 15.293: nmu.nu INFO All SOA records have consistent serial numbers.
 15.293: nmu.nu INFO All SOA records are consistent among all name servers.
 15.293: nmu.nu INFO Done testing zone consistency for nmu.nu.
 15.294: nmu.nu INFO Begin testing SOA parameters for nmu.nu.
 19.328: nmu.nu INFO Found SOA record for nmu.nu.
 19.329: nmu.nu INFO Begin testing host origo.nmugroup.com.
 19.329: nmu.nu INFO Begin testing address 213.212.51.243.
 19.330: nmu.nu INFO Done testing address 213.212.51.243.
 19.330: nmu.nu INFO Done testing host origo.nmugroup.com.
 19.330: nmu.nu INFO SOA MNAME for nmu.nu valid (origo.nmugroup.com).
 19.331: nmu.nu INFO SOA MNAME for nmu.nu (origo.nmugroup.com) listed as NS.
 19.373: nmu.nu INFO SOA MNAME for nmu.nu (origo.nmugroup.com) is authoritative.
 19.373: nmu.nu INFO Begin testing email address dns@nmugroup.com.
 19.417: nmu.nu INFO Mail exchangers for dns@nmugroup.com found glom.nmugroup.com.
 19.417: nmu.nu INFO Begin testing host glom.nmugroup.com.
 19.499: nmu.nu INFO Begin testing address 213.212.51.245.
 19.578: nmu.nu INFO Done testing address 213.212.51.245.
 19.578: nmu.nu INFO Done testing host glom.nmugroup.com.
 19.579: nmu.nu INFO Begin testing mail server glom.nmugroup.com (213.212.51.245) with dns@nmugroup.com.
 24.142: nmu.nu INFO SMTP banner: glom.nmugroup.se ESMTP Postfix (Debian/GNU)
 25.868: nmu.nu INFO SMTP testing of glom.nmugroup.com (213.212.51.245) with dns@nmugroup.com succeeded without errors.
 25.869: nmu.nu INFO Done testing mail server glom.nmugroup.com (213.212.51.245) with dns@nmugroup.com.
 25.869: nmu.nu INFO Delivery over IPv4 to dns@nmugroup.com ok.
 25.869: nmu.nu INFO Delivery over IPv6 to dns@nmugroup.com could not be done.
 25.869: nmu.nu INFO Done testing email address dns@nmugroup.com.
 25.869: nmu.nu INFO Successful attempt to deliver email for SOA RNAME of nmu.nu (dns.nmugroup.com) using dns@nmugroup.com.
 25.869: nmu.nu NOTICE SOA TTL for nmu.nu too small (300) - recommended >= 3600.
 25.869: nmu.nu NOTICE SOA refresh for nmu.nu too small (10800) - recommended >= 14400.
 25.869: nmu.nu INFO SOA retry for nmu.nu OK (3600) - recommended >= 3600.
 25.869: nmu.nu INFO SOA expire for nmu.nu OK (604800) - recommended >= 604800.
 25.869: nmu.nu INFO SOA minimum for nmu.nu OK (86400) - recommended between 300 and 86400.
 25.869: nmu.nu INFO Done testing SOA parameters for nmu.nu.
 25.870: nmu.nu INFO Begin testing connectivity for nmu.nu.
 26.099: nmu.nu INFO Name server 213.212.51.243 announced by: 8289
 26.219: nmu.nu INFO Name server 82.197.224.75 announced by: 35706
 26.220: nmu.nu INFO Zone announced by ASN: 8289,35706
 26.220: nmu.nu INFO Zone announced by more than one ASN (2).
 26.220: nmu.nu INFO Zone announced by IPv6 ASN: 
 26.220: nmu.nu NOTICE Zone announced by only one IPv6 ASN (0).
 26.220: nmu.nu INFO Done testing connectivity for nmu.nu.
 26.220: nmu.nu INFO Begin testing DNSSEC for nmu.nu.
 26.315: nmu.nu INFO Did not find DS record for nmu.nu at parent.
 26.457: nmu.nu INFO Servers for nmu.nu have consistent extra processing status.
 26.457: nmu.nu INFO Did not find DNSKEY record for nmu.nu at child.
 26.457: nmu.nu INFO No DNSKEY(s) found at child, other tests skipped.
 26.457: nmu.nu INFO Done testing DNSSEC for nmu.nu.
 26.457: nmu.nu INFO Test completed for zone nmu.nu.
