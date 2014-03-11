  0.000: cscglobal.com INFO Begin testing zone cscglobal.com with version 1.5.0.
  0.001: cscglobal.com INFO Begin testing delegation for cscglobal.com.
 19.203: cscglobal.com INFO Name servers listed at parent: pdns1.cscdns.net,pdns2.cscdns.net
 21.817: cscglobal.com INFO Name servers listed at child: pdns1.cscdns.net,pdns2.cscdns.net
 21.823: cscglobal.com NOTICE No IPv6 name servers found.
 21.975: cscglobal.com INFO Parent glue for cscglobal.com found: pdns1.cscdns.net (209.112.114.33)
 22.369: cscglobal.com INFO Parent glue for cscglobal.com found: pdns2.cscdns.net (69.36.145.33)
 22.413: cscglobal.com INFO Checking glue for pdns1.cscdns.net (209.112.114.33).
 22.413: cscglobal.com INFO Checking glue for pdns2.cscdns.net (69.36.145.33).
 22.414: cscglobal.com INFO Parent glue for cscglobal.com found: pdns1.cscdns.net (209.112.114.33)
 22.415: cscglobal.com INFO Parent glue for cscglobal.com found: pdns2.cscdns.net (69.36.145.33)
 24.294: cscglobal.com INFO It is possible to build a referral packet for cscglobal.com that works without EDNS0.
 24.295: cscglobal.com INFO Done testing delegation for cscglobal.com.
 24.343: cscglobal.com INFO Begin testing name server pdns1.cscdns.net.
 24.343: cscglobal.com INFO Begin testing host pdns1.cscdns.net.
 24.763: cscglobal.com INFO Begin testing address 209.112.114.33.
 40.410: cscglobal.com INFO Done testing address 209.112.114.33.
 40.410: cscglobal.com INFO Done testing host pdns1.cscdns.net.
 40.738: cscglobal.com INFO Name server pdns1.cscdns.net (209.112.114.33) answers queries over UDP.
 40.760: cscglobal.com INFO Name server pdns1.cscdns.net (209.112.114.33) answers queries over TCP.
 40.791: cscglobal.com INFO Name server pdns1.cscdns.net (209.112.114.33) is not recursive.
 40.865: cscglobal.com INFO Name server pdns1.cscdns.net (209.112.114.33) authoritative for cscglobal.com.
 40.883: cscglobal.com INFO Name server pdns1.cscdns.net (209.112.114.33) closed for zone transfer of cscglobal.com.
 40.890: cscglobal.com NOTICE No answer received from 209.112.114.33 when querying for hostname.bind/CH/TXT.
 40.904: cscglobal.com NOTICE No answer received from 209.112.114.33 when querying for version.bind/CH/TXT.
 40.930: cscglobal.com NOTICE No answer received from 209.112.114.33 when querying for id.server/CH/TXT.
 40.946: cscglobal.com NOTICE No answer received from 209.112.114.33 when querying for version.server/CH/TXT.
 40.946: cscglobal.com INFO Done testing name server pdns1.cscdns.net.
 40.946: cscglobal.com INFO Begin testing name server pdns2.cscdns.net.
 40.947: cscglobal.com INFO Begin testing host pdns2.cscdns.net.
 41.263: cscglobal.com INFO Begin testing address 69.36.145.33.
 49.253: cscglobal.com INFO Done testing address 69.36.145.33.
 49.253: cscglobal.com INFO Done testing host pdns2.cscdns.net.
 49.889: cscglobal.com INFO Name server pdns2.cscdns.net (69.36.145.33) answers queries over UDP.
 49.981: cscglobal.com INFO Name server pdns2.cscdns.net (69.36.145.33) answers queries over TCP.
 50.023: cscglobal.com INFO Name server pdns2.cscdns.net (69.36.145.33) is not recursive.
 50.229: cscglobal.com INFO Name server pdns2.cscdns.net (69.36.145.33) authoritative for cscglobal.com.
 50.342: cscglobal.com INFO Name server pdns2.cscdns.net (69.36.145.33) closed for zone transfer of cscglobal.com.
 50.383: cscglobal.com NOTICE No answer received from 69.36.145.33 when querying for hostname.bind/CH/TXT.
 50.420: cscglobal.com NOTICE No answer received from 69.36.145.33 when querying for version.bind/CH/TXT.
 50.465: cscglobal.com NOTICE No answer received from 69.36.145.33 when querying for id.server/CH/TXT.
 50.511: cscglobal.com NOTICE No answer received from 69.36.145.33 when querying for version.server/CH/TXT.
 50.511: cscglobal.com INFO Done testing name server pdns2.cscdns.net.
 50.511: cscglobal.com INFO Begin testing zone consistency for cscglobal.com.
 52.540: cscglobal.com INFO SOA at address 69.36.145.33 has serial 2012091228.
 52.548: cscglobal.com INFO SOA at address 209.112.114.33 has serial 2012091228.
 52.548: cscglobal.com INFO All SOA records have consistent serial numbers.
 52.549: cscglobal.com INFO All other fields in the SOA record are consistent among all name servers.
 53.504: cscglobal.com NOTICE The listed nameservers for cscglobal.com all report the same set of nameservers.
 53.504: cscglobal.com INFO Done testing zone consistency for cscglobal.com.
 53.504: cscglobal.com INFO Begin testing SOA parameters for cscglobal.com.
 53.546: cscglobal.com INFO Found SOA record for cscglobal.com.
 53.546: cscglobal.com INFO Begin testing host pdns1.cscdns.net.
 53.839: cscglobal.com INFO Begin testing address 209.112.114.33.
 60.653: cscglobal.com INFO Done testing address 209.112.114.33.
 60.653: cscglobal.com INFO Done testing host pdns1.cscdns.net.
 60.653: cscglobal.com INFO SOA MNAME for cscglobal.com valid (pdns1.cscdns.net).
 60.654: cscglobal.com INFO SOA MNAME for cscglobal.com (pdns1.cscdns.net) listed as NS.
 61.015: cscglobal.com INFO SOA MNAME for cscglobal.com (pdns1.cscdns.net) is authoritative.
 61.015: cscglobal.com INFO Begin testing email address hostmaster@cscdns.net.
 61.366: cscglobal.com INFO Mail exchangers for hostmaster@cscdns.net found mx1.cscinfo.com,mx2.cscinfo.com.
 61.366: cscglobal.com INFO Begin testing host mx1.cscinfo.com.
 62.335: cscglobal.com INFO Begin testing address 165.160.9.57.
 63.072: cscglobal.com INFO Done testing address 165.160.9.57.
 63.073: cscglobal.com INFO Done testing host mx1.cscinfo.com.
 63.500: cscglobal.com INFO Begin testing host mx2.cscinfo.com.
 64.219: cscglobal.com INFO Begin testing address 165.160.9.58.
 65.936: cscglobal.com INFO Done testing address 165.160.9.58.
 65.936: cscglobal.com INFO Done testing host mx2.cscinfo.com.
 66.570: cscglobal.com INFO Done testing email address hostmaster@cscdns.net.
 66.571: cscglobal.com INFO Successful attempt to deliver email for SOA RNAME of cscglobal.com (hostmaster.cscdns.net) using hostmaster@cscdns.net.
 66.571: cscglobal.com INFO SOA TTL for cscglobal.com OK (86400) - recommended >= 3600.
 66.571: cscglobal.com INFO SOA refresh for cscglobal.com OK (28800) - recommended >= 14400.
 66.583: cscglobal.com INFO SOA retry for cscglobal.com OK (7200) - recommended >= 3600.
 66.583: cscglobal.com INFO SOA expire for cscglobal.com OK (1209600) - recommended >= 604800.
 66.583: cscglobal.com INFO SOA minimum for cscglobal.com OK (86400) - recommended between 300 and 86400.
 66.583: cscglobal.com INFO Done testing SOA parameters for cscglobal.com.
 66.584: cscglobal.com INFO Begin testing connectivity for cscglobal.com.
 68.896: cscglobal.com NOTICE Zone announced by fewer than two IPv4 ASN.
 68.896: cscglobal.com NOTICE Zone announced by fewer than two IPv6 ASN.
 68.896: cscglobal.com INFO Done testing connectivity for cscglobal.com.
 68.896: cscglobal.com INFO Begin testing DNSSEC for cscglobal.com.
 69.057: cscglobal.com INFO Did not find DS record for cscglobal.com at parent.
 69.233: cscglobal.com INFO Servers for cscglobal.com have consistent extra processing status.
 69.338: cscglobal.com INFO Authenticated denial records not found for cscglobal.com.
 69.410: cscglobal.com INFO Did not find DNSKEY record for cscglobal.com at child.
 69.410: cscglobal.com INFO No DNSKEY(s) found at child, other tests skipped.
 69.410: cscglobal.com INFO Done testing DNSSEC for cscglobal.com.
 69.410: cscglobal.com INFO Test completed for zone cscglobal.com.
