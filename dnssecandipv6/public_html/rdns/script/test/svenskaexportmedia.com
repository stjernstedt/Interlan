  0.000: svenskaexportmedia.com INFO Begin testing zone svenskaexportmedia.com with version 1.5.0.
  0.006: svenskaexportmedia.com INFO Begin testing delegation for svenskaexportmedia.com.
 21.483: svenskaexportmedia.com INFO Name servers listed at parent: ns1.swedishexportmedia.com,ns2.swedishexportmedia.com
 23.717: svenskaexportmedia.com INFO Name servers listed at child: ns1.swedishexportmedia.com,ns2.swedishexportmedia.com
 23.717: svenskaexportmedia.com NOTICE No IPv6 name servers found.
 23.901: svenskaexportmedia.com INFO Parent glue for svenskaexportmedia.com found: ns1.swedishexportmedia.com (213.146.65.30)
 24.225: svenskaexportmedia.com INFO Parent glue for svenskaexportmedia.com found: ns2.swedishexportmedia.com (212.16.182.209)
 24.570: svenskaexportmedia.com INFO Checking glue for ns1.swedishexportmedia.com (213.146.65.30).
 24.570: svenskaexportmedia.com INFO Checking glue for ns2.swedishexportmedia.com (212.16.182.209).
 24.571: svenskaexportmedia.com INFO Parent glue for svenskaexportmedia.com found: ns1.swedishexportmedia.com (213.146.65.30)
 24.571: svenskaexportmedia.com INFO Parent glue for svenskaexportmedia.com found: ns2.swedishexportmedia.com (212.16.182.209)
 25.436: svenskaexportmedia.com INFO It is possible to build a referral packet for svenskaexportmedia.com that works without EDNS0.
 25.436: svenskaexportmedia.com INFO Done testing delegation for svenskaexportmedia.com.
 25.437: svenskaexportmedia.com INFO Begin testing name server ns1.swedishexportmedia.com.
 25.437: svenskaexportmedia.com INFO Begin testing host ns1.swedishexportmedia.com.
 25.778: svenskaexportmedia.com INFO Begin testing address 213.146.65.30.
 33.787: svenskaexportmedia.com INFO Done testing address 213.146.65.30.
 33.787: svenskaexportmedia.com INFO Done testing host ns1.swedishexportmedia.com.
 34.212: svenskaexportmedia.com INFO Name server ns1.swedishexportmedia.com (213.146.65.30) answers queries over UDP.
 34.250: svenskaexportmedia.com INFO Name server ns1.swedishexportmedia.com (213.146.65.30) answers queries over TCP.
 34.278: svenskaexportmedia.com INFO Name server ns1.swedishexportmedia.com (213.146.65.30) is not recursive.
 34.381: svenskaexportmedia.com INFO Name server ns1.swedishexportmedia.com (213.146.65.30) authoritative for svenskaexportmedia.com.
 34.547: svenskaexportmedia.com INFO Name server ns1.swedishexportmedia.com (213.146.65.30) closed for zone transfer of svenskaexportmedia.com.
 34.572: svenskaexportmedia.com NOTICE No answer received from 213.146.65.30 when querying for hostname.bind/CH/TXT.
 34.631: svenskaexportmedia.com NOTICE No answer received from 213.146.65.30 when querying for version.bind/CH/TXT.
 34.647: svenskaexportmedia.com NOTICE No answer received from 213.146.65.30 when querying for id.server/CH/TXT.
 34.668: svenskaexportmedia.com NOTICE No answer received from 213.146.65.30 when querying for version.server/CH/TXT.
 34.668: svenskaexportmedia.com INFO Done testing name server ns1.swedishexportmedia.com.
 34.668: svenskaexportmedia.com INFO Begin testing name server ns2.swedishexportmedia.com.
 34.669: svenskaexportmedia.com INFO Begin testing host ns2.swedishexportmedia.com.
 34.933: svenskaexportmedia.com INFO Begin testing address 212.16.182.209.
 36.805: svenskaexportmedia.com INFO Done testing address 212.16.182.209.
 36.805: svenskaexportmedia.com INFO Done testing host ns2.swedishexportmedia.com.
 37.315: svenskaexportmedia.com INFO Name server ns2.swedishexportmedia.com (212.16.182.209) answers queries over UDP.
 37.360: svenskaexportmedia.com INFO Name server ns2.swedishexportmedia.com (212.16.182.209) answers queries over TCP.
 37.400: svenskaexportmedia.com INFO Name server ns2.swedishexportmedia.com (212.16.182.209) is not recursive.
 37.516: svenskaexportmedia.com INFO Name server ns2.swedishexportmedia.com (212.16.182.209) authoritative for svenskaexportmedia.com.
 37.686: svenskaexportmedia.com INFO Name server ns2.swedishexportmedia.com (212.16.182.209) closed for zone transfer of svenskaexportmedia.com.
 37.703: svenskaexportmedia.com NOTICE No answer received from 212.16.182.209 when querying for hostname.bind/CH/TXT.
 37.720: svenskaexportmedia.com NOTICE No answer received from 212.16.182.209 when querying for version.bind/CH/TXT.
 37.746: svenskaexportmedia.com NOTICE No answer received from 212.16.182.209 when querying for id.server/CH/TXT.
 37.763: svenskaexportmedia.com NOTICE No answer received from 212.16.182.209 when querying for version.server/CH/TXT.
 37.764: svenskaexportmedia.com INFO Done testing name server ns2.swedishexportmedia.com.
 37.765: svenskaexportmedia.com INFO Begin testing zone consistency for svenskaexportmedia.com.
 40.020: svenskaexportmedia.com INFO SOA at address 213.146.65.30 has serial 2012123002.
 40.066: svenskaexportmedia.com INFO SOA at address 212.16.182.209 has serial 2012123002.
 40.067: svenskaexportmedia.com INFO All SOA records have consistent serial numbers.
 40.067: svenskaexportmedia.com INFO All other fields in the SOA record are consistent among all name servers.
 40.979: svenskaexportmedia.com NOTICE The listed nameservers for svenskaexportmedia.com all report the same set of nameservers.
 40.979: svenskaexportmedia.com INFO Done testing zone consistency for svenskaexportmedia.com.
 40.979: svenskaexportmedia.com INFO Begin testing SOA parameters for svenskaexportmedia.com.
 40.999: svenskaexportmedia.com INFO Found SOA record for svenskaexportmedia.com.
 40.999: svenskaexportmedia.com INFO Begin testing host ns1.swedishexportmedia.com.
 41.382: svenskaexportmedia.com INFO Begin testing address 213.146.65.30.
 41.674: svenskaexportmedia.com INFO Done testing address 213.146.65.30.
 41.674: svenskaexportmedia.com INFO Done testing host ns1.swedishexportmedia.com.
 41.674: svenskaexportmedia.com INFO SOA MNAME for svenskaexportmedia.com valid (ns1.swedishexportmedia.com).
 41.675: svenskaexportmedia.com INFO SOA MNAME for svenskaexportmedia.com (ns1.swedishexportmedia.com) listed as NS.
 42.122: svenskaexportmedia.com INFO SOA MNAME for svenskaexportmedia.com (ns1.swedishexportmedia.com) is authoritative.
 42.123: svenskaexportmedia.com INFO Begin testing email address registry@swedishexportmedia.com.
 42.574: svenskaexportmedia.com INFO Mail exchangers for registry@swedishexportmedia.com found mgw2.swedishexportmedia.com,mgw1.swedishexportmedia.com.
 42.575: svenskaexportmedia.com INFO Begin testing host mgw2.swedishexportmedia.com.
 43.584: svenskaexportmedia.com INFO Begin testing address 212.16.182.175.
 45.105: svenskaexportmedia.com INFO Done testing address 212.16.182.175.
 45.106: svenskaexportmedia.com INFO Done testing host mgw2.swedishexportmedia.com.
 45.455: svenskaexportmedia.com INFO Begin testing host mgw1.swedishexportmedia.com.
 46.530: svenskaexportmedia.com INFO Begin testing address 213.146.65.55.
 47.906: svenskaexportmedia.com INFO Done testing address 213.146.65.55.
 47.906: svenskaexportmedia.com INFO Done testing host mgw1.swedishexportmedia.com.
 48.601: svenskaexportmedia.com INFO Done testing email address registry@swedishexportmedia.com.
 48.601: svenskaexportmedia.com INFO Successful attempt to deliver email for SOA RNAME of svenskaexportmedia.com (registry.swedishexportmedia.com) using registry@swedishexportmedia.com.
 48.601: svenskaexportmedia.com NOTICE SOA TTL for svenskaexportmedia.com too small (900) - recommended >= 3600.
 48.601: svenskaexportmedia.com NOTICE SOA refresh for svenskaexportmedia.com too small (10800) - recommended >= 14400.
 48.605: svenskaexportmedia.com INFO SOA retry for svenskaexportmedia.com OK (3600) - recommended >= 3600.
 48.605: svenskaexportmedia.com NOTICE SOA expire for svenskaexportmedia.com too small (259200) - recommended >= 604800.
 48.605: svenskaexportmedia.com INFO SOA minimum for svenskaexportmedia.com OK (3600) - recommended between 300 and 86400.
 48.606: svenskaexportmedia.com INFO Done testing SOA parameters for svenskaexportmedia.com.
 48.606: svenskaexportmedia.com INFO Begin testing connectivity for svenskaexportmedia.com.
 50.307: svenskaexportmedia.com INFO Zone announced by more than one ASN.
 50.307: svenskaexportmedia.com NOTICE Zone announced by fewer than two IPv6 ASN.
 50.307: svenskaexportmedia.com INFO Done testing connectivity for svenskaexportmedia.com.
 50.308: svenskaexportmedia.com INFO Begin testing DNSSEC for svenskaexportmedia.com.
 51.000: svenskaexportmedia.com INFO Did not find DS record for svenskaexportmedia.com at parent.
 51.086: svenskaexportmedia.com INFO Servers for svenskaexportmedia.com have consistent extra processing status.
 51.124: svenskaexportmedia.com INFO Authenticated denial records not found for svenskaexportmedia.com.
 51.147: svenskaexportmedia.com INFO Did not find DNSKEY record for svenskaexportmedia.com at child.
 51.147: svenskaexportmedia.com INFO No DNSKEY(s) found at child, other tests skipped.
 51.147: svenskaexportmedia.com INFO Done testing DNSSEC for svenskaexportmedia.com.
 51.148: svenskaexportmedia.com INFO Test completed for zone svenskaexportmedia.com.
