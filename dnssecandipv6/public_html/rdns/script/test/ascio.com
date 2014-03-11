  0.000: ascio.com INFO Begin testing zone ascio.com with version 1.5.0.
  0.001: ascio.com INFO Begin testing delegation for ascio.com.
 18.996: ascio.com INFO Name servers listed at parent: ns1.ascio.net,ns2.ascio.net,ns3.ascio.net,ns4.ascio.net
 24.417: ascio.com INFO Name servers listed at child: ns1.ascio.net,ns2.ascio.net,ns3.ascio.net,ns4.ascio.net
 24.418: ascio.com NOTICE No IPv6 name servers found.
 24.554: ascio.com INFO Parent glue for ascio.com found: ns1.ascio.net (62.128.146.41)
 24.650: ascio.com INFO Parent glue for ascio.com found: ns2.ascio.net (80.237.153.102)
 24.790: ascio.com INFO Parent glue for ascio.com found: ns3.ascio.net (64.34.211.132)
 24.958: ascio.com INFO Parent glue for ascio.com found: ns4.ascio.net (72.32.149.232)
 25.132: ascio.com INFO Checking glue for ns1.ascio.net (62.128.146.41).
 25.134: ascio.com INFO Checking glue for ns2.ascio.net (80.237.153.102).
 25.145: ascio.com INFO Checking glue for ns3.ascio.net (64.34.211.132).
 25.145: ascio.com INFO Checking glue for ns4.ascio.net (72.32.149.232).
 25.146: ascio.com INFO Parent glue for ascio.com found: ns1.ascio.net (62.128.146.41)
 25.147: ascio.com INFO Parent glue for ascio.com found: ns2.ascio.net (80.237.153.102)
 25.170: ascio.com INFO Parent glue for ascio.com found: ns3.ascio.net (64.34.211.132)
 25.183: ascio.com INFO Parent glue for ascio.com found: ns4.ascio.net (72.32.149.232)
 28.296: ascio.com INFO It is possible to build a referral packet for ascio.com that works without EDNS0.
 28.296: ascio.com INFO Done testing delegation for ascio.com.
 28.297: ascio.com INFO Begin testing name server ns1.ascio.net.
 28.298: ascio.com INFO Begin testing host ns1.ascio.net.
 28.709: ascio.com INFO Begin testing address 62.128.146.41.
 34.655: ascio.com INFO Done testing address 62.128.146.41.
 34.656: ascio.com INFO Done testing host ns1.ascio.net.
 35.108: ascio.com INFO Name server ns1.ascio.net (62.128.146.41) answers queries over UDP.
 35.234: ascio.com INFO Name server ns1.ascio.net (62.128.146.41) answers queries over TCP.
 35.285: ascio.com INFO Name server ns1.ascio.net (62.128.146.41) is not recursive.
 35.568: ascio.com INFO Name server ns1.ascio.net (62.128.146.41) authoritative for ascio.com.
 35.712: ascio.com INFO Name server ns1.ascio.net (62.128.146.41) closed for zone transfer of ascio.com.
 35.770: ascio.com INFO Legacy name server ID for ns1.ascio.net (62.128.146.41): hostname.bind = nn-ns1
 35.948: ascio.com NOTICE No answer received from 62.128.146.41 when querying for version.server/CH/TXT.
 35.948: ascio.com INFO Done testing name server ns1.ascio.net.
 35.948: ascio.com INFO Begin testing name server ns2.ascio.net.
 35.948: ascio.com INFO Begin testing host ns2.ascio.net.
 36.598: ascio.com INFO Begin testing address 80.237.153.102.
 38.536: ascio.com INFO Done testing address 80.237.153.102.
 38.536: ascio.com INFO Done testing host ns2.ascio.net.
 39.395: ascio.com INFO Name server ns2.ascio.net (80.237.153.102) answers queries over UDP.
 39.473: ascio.com INFO Name server ns2.ascio.net (80.237.153.102) answers queries over TCP.
 39.515: ascio.com INFO Name server ns2.ascio.net (80.237.153.102) is not recursive.
 39.781: ascio.com INFO Name server ns2.ascio.net (80.237.153.102) authoritative for ascio.com.
 39.889: ascio.com INFO Name server ns2.ascio.net (80.237.153.102) closed for zone transfer of ascio.com.
 39.929: ascio.com INFO Legacy name server ID for ns2.ascio.net (80.237.153.102): hostname.bind = cgn1srv5.ascio.net
 40.008: ascio.com NOTICE No answer received from 80.237.153.102 when querying for version.bind/CH/TXT.
 40.049: ascio.com NOTICE No answer received from 80.237.153.102 when querying for id.server/CH/TXT.
 40.087: ascio.com NOTICE No answer received from 80.237.153.102 when querying for version.server/CH/TXT.
 40.088: ascio.com INFO Done testing name server ns2.ascio.net.
 40.088: ascio.com INFO Begin testing name server ns3.ascio.net.
 40.088: ascio.com INFO Begin testing host ns3.ascio.net.
 40.906: ascio.com INFO Begin testing address 64.34.211.132.
 48.739: ascio.com INFO Done testing address 64.34.211.132.
 48.739: ascio.com INFO Done testing host ns3.ascio.net.
 49.403: ascio.com INFO Name server ns3.ascio.net (64.34.211.132) answers queries over UDP.
 49.692: ascio.com INFO Name server ns3.ascio.net (64.34.211.132) answers queries over TCP.
 49.856: ascio.com INFO Name server ns3.ascio.net (64.34.211.132) is not recursive.
 50.434: ascio.com INFO Name server ns3.ascio.net (64.34.211.132) authoritative for ascio.com.
 50.846: ascio.com INFO Name server ns3.ascio.net (64.34.211.132) closed for zone transfer of ascio.com.
 50.986: ascio.com INFO Legacy name server ID for ns3.ascio.net (64.34.211.132): hostname.bind = sat1srv1.ascio.net
 51.125: ascio.com NOTICE No answer received from 64.34.211.132 when querying for version.bind/CH/TXT.
 51.261: ascio.com NOTICE No answer received from 64.34.211.132 when querying for id.server/CH/TXT.
 51.398: ascio.com NOTICE No answer received from 64.34.211.132 when querying for version.server/CH/TXT.
 51.398: ascio.com INFO Done testing name server ns3.ascio.net.
 51.399: ascio.com INFO Begin testing name server ns4.ascio.net.
 51.399: ascio.com INFO Begin testing host ns4.ascio.net.
 51.801: ascio.com INFO Begin testing address 72.32.149.232.
 58.052: ascio.com INFO Done testing address 72.32.149.232.
 58.052: ascio.com INFO Done testing host ns4.ascio.net.
 58.717: ascio.com INFO Name server ns4.ascio.net (72.32.149.232) answers queries over UDP.
 59.034: ascio.com INFO Name server ns4.ascio.net (72.32.149.232) answers queries over TCP.
 59.197: ascio.com INFO Name server ns4.ascio.net (72.32.149.232) is not recursive.
 59.869: ascio.com INFO Name server ns4.ascio.net (72.32.149.232) authoritative for ascio.com.
 60.355: ascio.com INFO Name server ns4.ascio.net (72.32.149.232) closed for zone transfer of ascio.com.
 60.517: ascio.com INFO Legacy name server ID for ns4.ascio.net (72.32.149.232): hostname.bind = ns4
 61.005: ascio.com NOTICE No answer received from 72.32.149.232 when querying for version.server/CH/TXT.
 61.005: ascio.com INFO Done testing name server ns4.ascio.net.
 61.005: ascio.com INFO Begin testing zone consistency for ascio.com.
 64.883: ascio.com INFO SOA at address 62.128.146.41 has serial 2013041100.
 64.931: ascio.com INFO SOA at address 80.237.153.102 has serial 2013041100.
 65.072: ascio.com INFO SOA at address 64.34.211.132 has serial 2013041100.
 65.236: ascio.com INFO SOA at address 72.32.149.232 has serial 2013041100.
 65.237: ascio.com INFO All SOA records have consistent serial numbers.
 65.237: ascio.com INFO All other fields in the SOA record are consistent among all name servers.
 69.150: ascio.com NOTICE The listed nameservers for ascio.com all report the same set of nameservers.
 69.150: ascio.com INFO Done testing zone consistency for ascio.com.
 69.150: ascio.com INFO Begin testing SOA parameters for ascio.com.
 69.231: ascio.com INFO Found SOA record for ascio.com.
 69.303: ascio.com INFO Begin testing host ns1.ascio.net.
 69.966: ascio.com INFO Begin testing address 62.128.146.41.
 70.642: ascio.com INFO Done testing address 62.128.146.41.
 70.642: ascio.com INFO Done testing host ns1.ascio.net.
 70.642: ascio.com INFO SOA MNAME for ascio.com valid (ns1.ascio.net).
 70.642: ascio.com INFO SOA MNAME for ascio.com (ns1.ascio.net) listed as NS.
 71.335: ascio.com INFO SOA MNAME for ascio.com (ns1.ascio.net) is authoritative.
 71.335: ascio.com INFO Begin testing email address hostmaster@ascio.net.
 71.951: ascio.com INFO Mail exchangers for hostmaster@ascio.net found mx2.netbenefit.co.uk,mx1.netbenefit.co.uk.
 71.963: ascio.com INFO Begin testing host mx2.netbenefit.co.uk.
 72.908: ascio.com INFO Begin testing address 212.53.64.42.
 74.496: ascio.com INFO Done testing address 212.53.64.42.
 74.497: ascio.com INFO Done testing host mx2.netbenefit.co.uk.
 75.076: ascio.com INFO Begin testing host mx1.netbenefit.co.uk.
 76.064: ascio.com INFO Begin testing address 62.128.158.224.
 77.050: ascio.com INFO Done testing address 62.128.158.224.
 77.051: ascio.com INFO Done testing host mx1.netbenefit.co.uk.
 77.533: ascio.com INFO Done testing email address hostmaster@ascio.net.
 77.533: ascio.com INFO Successful attempt to deliver email for SOA RNAME of ascio.com (hostmaster.ascio.net) using hostmaster@ascio.net.
 77.534: ascio.com INFO SOA TTL for ascio.com OK (86400) - recommended >= 3600.
 77.534: ascio.com INFO SOA refresh for ascio.com OK (43200) - recommended >= 14400.
 77.534: ascio.com INFO SOA retry for ascio.com OK (3600) - recommended >= 3600.
 77.534: ascio.com INFO SOA expire for ascio.com OK (864000) - recommended >= 604800.
 77.534: ascio.com INFO SOA minimum for ascio.com OK (28800) - recommended between 300 and 86400.
 77.534: ascio.com INFO Done testing SOA parameters for ascio.com.
 77.534: ascio.com INFO Begin testing connectivity for ascio.com.
 81.088: ascio.com INFO Zone announced by more than one ASN.
 81.088: ascio.com NOTICE Zone announced by fewer than two IPv6 ASN.
 81.088: ascio.com INFO Done testing connectivity for ascio.com.
 81.089: ascio.com INFO Begin testing DNSSEC for ascio.com.
 81.277: ascio.com INFO Did not find DS record for ascio.com at parent.
 82.084: ascio.com INFO Servers for ascio.com have consistent extra processing status.
 82.158: ascio.com INFO Authenticated denial records not found for ascio.com.
 82.200: ascio.com INFO Did not find DNSKEY record for ascio.com at child.
 82.200: ascio.com INFO No DNSKEY(s) found at child, other tests skipped.
 82.200: ascio.com INFO Done testing DNSSEC for ascio.com.
 82.201: ascio.com INFO Test completed for zone ascio.com.
