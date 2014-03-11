  0.000: bikab.com INFO Begin testing zone bikab.com with version 1.5.0.
  0.001: bikab.com INFO Begin testing delegation for bikab.com.
 20.141: bikab.com INFO Name servers listed at parent: dns1.bikab.com,dns2.bikab.com
 22.493: bikab.com INFO Name servers listed at child: dns1.bikab.com,dns2.bikab.com
 22.494: bikab.com NOTICE No IPv6 name servers found.
 22.534: bikab.com INFO Parent glue for bikab.com found: dns1.bikab.com (85.197.128.1)
 22.967: bikab.com INFO Parent glue for bikab.com found: dns2.bikab.com (85.197.128.2)
 23.304: bikab.com INFO Checking glue for dns1.bikab.com (85.197.128.1).
 23.328: bikab.com INFO Child glue for bikab.com found: dns1.bikab.com (85.197.128.1)
 23.328: bikab.com INFO Checking glue for dns2.bikab.com (85.197.128.2).
 23.365: bikab.com INFO Child glue for bikab.com found: dns2.bikab.com (85.197.128.2)
 23.365: bikab.com INFO Parent glue for bikab.com found: dns1.bikab.com (85.197.128.1)
 23.366: bikab.com INFO Parent glue for bikab.com found: dns2.bikab.com (85.197.128.2)
 24.168: bikab.com INFO It is possible to build a referral packet for bikab.com that works without EDNS0.
 24.168: bikab.com INFO Done testing delegation for bikab.com.
 24.169: bikab.com INFO Begin testing name server dns1.bikab.com.
 24.169: bikab.com INFO Begin testing host dns1.bikab.com.
 24.647: bikab.com INFO Begin testing address 85.197.128.1.
 30.922: bikab.com INFO Done testing address 85.197.128.1.
 30.922: bikab.com INFO Done testing host dns1.bikab.com.
 31.406: bikab.com INFO Name server dns1.bikab.com (85.197.128.1) answers queries over UDP.
 31.466: bikab.com INFO Name server dns1.bikab.com (85.197.128.1) answers queries over TCP.
 31.492: bikab.com INFO Name server dns1.bikab.com (85.197.128.1) is not recursive.
 31.621: bikab.com INFO Name server dns1.bikab.com (85.197.128.1) authoritative for bikab.com.
 31.666: bikab.com INFO Name server dns1.bikab.com (85.197.128.1) closed for zone transfer of bikab.com.
 31.682: bikab.com NOTICE No answer received from 85.197.128.1 when querying for hostname.bind/CH/TXT.
 31.704: bikab.com NOTICE No answer received from 85.197.128.1 when querying for version.bind/CH/TXT.
 31.721: bikab.com NOTICE No answer received from 85.197.128.1 when querying for id.server/CH/TXT.
 31.738: bikab.com NOTICE No answer received from 85.197.128.1 when querying for version.server/CH/TXT.
 31.738: bikab.com INFO Done testing name server dns1.bikab.com.
 31.738: bikab.com INFO Begin testing name server dns2.bikab.com.
 31.739: bikab.com INFO Begin testing host dns2.bikab.com.
 32.137: bikab.com INFO Begin testing address 85.197.128.2.
 33.198: bikab.com INFO Done testing address 85.197.128.2.
 33.198: bikab.com INFO Done testing host dns2.bikab.com.
 33.531: bikab.com INFO Name server dns2.bikab.com (85.197.128.2) answers queries over UDP.
 33.564: bikab.com INFO Name server dns2.bikab.com (85.197.128.2) answers queries over TCP.
 33.581: bikab.com INFO Name server dns2.bikab.com (85.197.128.2) is not recursive.
 33.649: bikab.com INFO Name server dns2.bikab.com (85.197.128.2) authoritative for bikab.com.
 33.728: bikab.com INFO Name server dns2.bikab.com (85.197.128.2) closed for zone transfer of bikab.com.
 33.745: bikab.com NOTICE No answer received from 85.197.128.2 when querying for hostname.bind/CH/TXT.
 33.762: bikab.com NOTICE No answer received from 85.197.128.2 when querying for version.bind/CH/TXT.
 33.781: bikab.com NOTICE No answer received from 85.197.128.2 when querying for id.server/CH/TXT.
 33.798: bikab.com NOTICE No answer received from 85.197.128.2 when querying for version.server/CH/TXT.
 33.798: bikab.com INFO Done testing name server dns2.bikab.com.
 33.798: bikab.com INFO Begin testing zone consistency for bikab.com.
 35.936: bikab.com INFO SOA at address 85.197.128.2 has serial 2013070402.
 35.956: bikab.com INFO SOA at address 85.197.128.1 has serial 2013070402.
 35.957: bikab.com INFO All SOA records have consistent serial numbers.
 35.957: bikab.com INFO All other fields in the SOA record are consistent among all name servers.
 37.129: bikab.com NOTICE The listed nameservers for bikab.com all report the same set of nameservers.
 37.129: bikab.com INFO Done testing zone consistency for bikab.com.
 37.130: bikab.com INFO Begin testing SOA parameters for bikab.com.
 37.165: bikab.com INFO Found SOA record for bikab.com.
 37.165: bikab.com INFO Begin testing host rumor.bikab.com.
 38.016: bikab.com INFO Begin testing address 85.197.128.1.
 38.691: bikab.com INFO Done testing address 85.197.128.1.
 38.692: bikab.com INFO Done testing host rumor.bikab.com.
 38.692: bikab.com INFO SOA MNAME for bikab.com valid (rumor.bikab.com).
 38.692: bikab.com NOTICE SOA MNAME for bikab.com (rumor.bikab.com) not listed as NS.
 39.137: bikab.com INFO SOA MNAME for bikab.com (rumor.bikab.com) is authoritative.
 39.138: bikab.com INFO Begin testing email address registry@bikab.com.
 39.672: bikab.com INFO Mail exchangers for registry@bikab.com found mailin.bikab.com.
 39.672: bikab.com INFO All mail servers for registry@bikab.com are in zone bikab.com.
 39.672: bikab.com INFO Begin testing host mailin.bikab.com.
 40.282: bikab.com INFO Begin testing address 85.197.154.13.
 41.878: bikab.com INFO Done testing address 85.197.154.13.
 41.878: bikab.com INFO Begin testing address 85.197.154.49.
 43.160: bikab.com INFO Done testing address 85.197.154.49.
 43.160: bikab.com INFO Begin testing address 85.197.154.50.
 44.861: bikab.com INFO Done testing address 85.197.154.50.
 44.861: bikab.com INFO Begin testing address 85.197.154.51.
 46.556: bikab.com INFO Done testing address 85.197.154.51.
 46.556: bikab.com INFO Done testing host mailin.bikab.com.
 46.941: bikab.com INFO Done testing email address registry@bikab.com.
 46.942: bikab.com INFO Successful attempt to deliver email for SOA RNAME of bikab.com (registry.bikab.com) using registry@bikab.com.
 46.942: bikab.com INFO SOA TTL for bikab.com OK (3600) - recommended >= 3600.
 46.942: bikab.com INFO SOA refresh for bikab.com OK (21600) - recommended >= 14400.
 46.942: bikab.com NOTICE SOA retry for bikab.com too small (900) - recommended >= 3600.
 46.942: bikab.com INFO SOA expire for bikab.com OK (864000) - recommended >= 604800.
 46.943: bikab.com INFO SOA minimum for bikab.com OK (86400) - recommended between 300 and 86400.
 46.943: bikab.com INFO Done testing SOA parameters for bikab.com.
 46.943: bikab.com INFO Begin testing connectivity for bikab.com.
 48.305: bikab.com NOTICE Zone announced by fewer than two IPv4 ASN.
 48.306: bikab.com NOTICE Zone announced by fewer than two IPv6 ASN.
 48.306: bikab.com INFO Done testing connectivity for bikab.com.
 48.306: bikab.com INFO Begin testing DNSSEC for bikab.com.
 48.543: bikab.com INFO Did not find DS record for bikab.com at parent.
 48.635: bikab.com INFO Servers for bikab.com have consistent extra processing status.
 48.668: bikab.com INFO Authenticated denial records not found for bikab.com.
 48.686: bikab.com INFO Did not find DNSKEY record for bikab.com at child.
 48.686: bikab.com INFO No DNSKEY(s) found at child, other tests skipped.
 48.686: bikab.com INFO Done testing DNSSEC for bikab.com.
 48.687: bikab.com INFO Test completed for zone bikab.com.
