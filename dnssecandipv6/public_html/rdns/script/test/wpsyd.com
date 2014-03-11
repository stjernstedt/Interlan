  0.000: wpsyd.com INFO Begin testing zone wpsyd.com with version 1.5.0.
  0.001: wpsyd.com INFO Begin testing delegation for wpsyd.com.
 18.204: wpsyd.com INFO Name servers listed at parent: ns.wpsyd-webhosting.se,ns.wpsyd.com,ns2.wpsyd.com
 20.812: wpsyd.com INFO Name servers listed at child: ns.wpsyd-webhosting.se,ns.wpsyd.com,ns2.wpsyd.com
 20.826: wpsyd.com NOTICE No IPv6 name servers found.
 21.420: wpsyd.com INFO Parent glue for wpsyd.com found: ns.wpsyd.com (83.140.103.230)
 21.734: wpsyd.com INFO Parent glue for wpsyd.com found: ns2.wpsyd.com (212.16.178.12)
 21.922: wpsyd.com INFO Checking glue for ns.wpsyd.com (83.140.103.230).
 21.957: wpsyd.com INFO Child glue for wpsyd.com found: ns.wpsyd.com (83.140.103.230)
 21.957: wpsyd.com INFO Checking glue for ns2.wpsyd.com (212.16.178.12).
 22.006: wpsyd.com INFO Child glue for wpsyd.com found: ns2.wpsyd.com (212.16.178.12)
 22.007: wpsyd.com INFO Parent glue for wpsyd.com found: ns.wpsyd.com (83.140.103.230)
 22.007: wpsyd.com INFO Parent glue for wpsyd.com found: ns2.wpsyd.com (212.16.178.12)
 23.284: wpsyd.com INFO It is possible to build a referral packet for wpsyd.com that works without EDNS0.
 23.284: wpsyd.com INFO Done testing delegation for wpsyd.com.
 23.285: wpsyd.com INFO Begin testing name server ns.wpsyd-webhosting.se.
 23.285: wpsyd.com INFO Begin testing host ns.wpsyd-webhosting.se.
 23.517: wpsyd.com INFO Begin testing address 84.243.23.20.
 28.581: wpsyd.com INFO Done testing address 84.243.23.20.
 28.581: wpsyd.com INFO Done testing host ns.wpsyd-webhosting.se.
 28.888: wpsyd.com INFO Name server ns.wpsyd-webhosting.se (84.243.23.20) answers queries over UDP.
 28.935: wpsyd.com INFO Name server ns.wpsyd-webhosting.se (84.243.23.20) answers queries over TCP.
 28.966: wpsyd.com INFO Name server ns.wpsyd-webhosting.se (84.243.23.20) is not recursive.
 29.048: wpsyd.com INFO Name server ns.wpsyd-webhosting.se (84.243.23.20) authoritative for wpsyd.com.
 29.084: wpsyd.com INFO Name server ns.wpsyd-webhosting.se (84.243.23.20) closed for zone transfer of wpsyd.com.
 29.110: wpsyd.com NOTICE No answer received from 84.243.23.20 when querying for hostname.bind/CH/TXT.
 29.132: wpsyd.com NOTICE No answer received from 84.243.23.20 when querying for version.bind/CH/TXT.
 29.153: wpsyd.com NOTICE No answer received from 84.243.23.20 when querying for id.server/CH/TXT.
 33.172: wpsyd.com NOTICE No answer received from 84.243.23.20 when querying for version.server/CH/TXT.
 33.172: wpsyd.com INFO Done testing name server ns.wpsyd-webhosting.se.
 33.172: wpsyd.com INFO Begin testing name server ns.wpsyd.com.
 33.173: wpsyd.com INFO Begin testing host ns.wpsyd.com.
 33.612: wpsyd.com INFO Begin testing address 83.140.103.230.
 48.001: wpsyd.com INFO Done testing address 83.140.103.230.
 48.001: wpsyd.com INFO Done testing host ns.wpsyd.com.
 48.301: wpsyd.com INFO Name server ns.wpsyd.com (83.140.103.230) answers queries over UDP.
 48.320: wpsyd.com INFO Name server ns.wpsyd.com (83.140.103.230) answers queries over TCP.
 48.331: wpsyd.com INFO Name server ns.wpsyd.com (83.140.103.230) is not recursive.
 48.373: wpsyd.com INFO Name server ns.wpsyd.com (83.140.103.230) authoritative for wpsyd.com.
 48.386: wpsyd.com INFO Name server ns.wpsyd.com (83.140.103.230) closed for zone transfer of wpsyd.com.
 48.397: wpsyd.com NOTICE No answer received from 83.140.103.230 when querying for hostname.bind/CH/TXT.
 48.405: wpsyd.com NOTICE No answer received from 83.140.103.230 when querying for version.bind/CH/TXT.
 48.412: wpsyd.com NOTICE No answer received from 83.140.103.230 when querying for id.server/CH/TXT.
 48.419: wpsyd.com NOTICE No answer received from 83.140.103.230 when querying for version.server/CH/TXT.
 48.420: wpsyd.com INFO Done testing name server ns.wpsyd.com.
 48.420: wpsyd.com INFO Begin testing name server ns2.wpsyd.com.
 48.420: wpsyd.com INFO Begin testing host ns2.wpsyd.com.
 48.842: wpsyd.com INFO Begin testing address 212.16.178.12.
 54.133: wpsyd.com INFO Done testing address 212.16.178.12.
 54.133: wpsyd.com INFO Done testing host ns2.wpsyd.com.
 54.535: wpsyd.com INFO Name server ns2.wpsyd.com (212.16.178.12) answers queries over UDP.
 54.572: wpsyd.com INFO Name server ns2.wpsyd.com (212.16.178.12) answers queries over TCP.
 54.596: wpsyd.com INFO Name server ns2.wpsyd.com (212.16.178.12) is not recursive.
 54.672: wpsyd.com INFO Name server ns2.wpsyd.com (212.16.178.12) authoritative for wpsyd.com.
 54.713: wpsyd.com INFO Name server ns2.wpsyd.com (212.16.178.12) closed for zone transfer of wpsyd.com.
 54.732: wpsyd.com NOTICE No answer received from 212.16.178.12 when querying for hostname.bind/CH/TXT.
 54.748: wpsyd.com NOTICE No answer received from 212.16.178.12 when querying for version.bind/CH/TXT.
 54.764: wpsyd.com NOTICE No answer received from 212.16.178.12 when querying for id.server/CH/TXT.
 54.780: wpsyd.com NOTICE No answer received from 212.16.178.12 when querying for version.server/CH/TXT.
 54.780: wpsyd.com INFO Done testing name server ns2.wpsyd.com.
 54.781: wpsyd.com INFO Begin testing zone consistency for wpsyd.com.
 57.022: wpsyd.com INFO SOA at address 212.16.178.12 has serial 2013072101.
 57.033: wpsyd.com INFO SOA at address 83.140.103.230 has serial 2013072101.
 57.064: wpsyd.com INFO SOA at address 84.243.23.20 has serial 2013072101.
 57.064: wpsyd.com INFO All SOA records have consistent serial numbers.
 57.064: wpsyd.com INFO All other fields in the SOA record are consistent among all name servers.
 58.032: wpsyd.com NOTICE The listed nameservers for wpsyd.com all report the same set of nameservers.
 58.032: wpsyd.com INFO Done testing zone consistency for wpsyd.com.
 58.032: wpsyd.com INFO Begin testing SOA parameters for wpsyd.com.
 58.054: wpsyd.com INFO Found SOA record for wpsyd.com.
 58.054: wpsyd.com INFO Begin testing host ns.wpsyd.com.
 58.419: wpsyd.com INFO Begin testing address 83.140.103.230.
 58.987: wpsyd.com INFO Done testing address 83.140.103.230.
 58.987: wpsyd.com INFO Done testing host ns.wpsyd.com.
 58.987: wpsyd.com INFO SOA MNAME for wpsyd.com valid (ns.wpsyd.com).
 58.988: wpsyd.com INFO SOA MNAME for wpsyd.com (ns.wpsyd.com) listed as NS.
 59.272: wpsyd.com INFO SOA MNAME for wpsyd.com (ns.wpsyd.com) is authoritative.
 59.272: wpsyd.com INFO Begin testing email address hostmaster@wpsyd.com.
 59.538: wpsyd.com INFO Mail exchangers for hostmaster@wpsyd.com found rockhopper.wpsyd.com.
 59.539: wpsyd.com INFO All mail servers for hostmaster@wpsyd.com are in zone wpsyd.com.
 59.539: wpsyd.com INFO Begin testing host rockhopper.wpsyd.com.
 60.163: wpsyd.com INFO Begin testing address 212.16.178.13.
 61.343: wpsyd.com INFO Done testing address 212.16.178.13.
 61.343: wpsyd.com INFO Done testing host rockhopper.wpsyd.com.
 61.606: wpsyd.com INFO Done testing email address hostmaster@wpsyd.com.
 61.606: wpsyd.com INFO Successful attempt to deliver email for SOA RNAME of wpsyd.com (hostmaster.wpsyd.com) using hostmaster@wpsyd.com.
 61.606: wpsyd.com INFO SOA TTL for wpsyd.com OK (3600) - recommended >= 3600.
 61.607: wpsyd.com NOTICE SOA refresh for wpsyd.com too small (10800) - recommended >= 14400.
 61.607: wpsyd.com INFO SOA retry for wpsyd.com OK (3600) - recommended >= 3600.
 61.607: wpsyd.com INFO SOA expire for wpsyd.com OK (604800) - recommended >= 604800.
 61.607: wpsyd.com INFO SOA minimum for wpsyd.com OK (14400) - recommended between 300 and 86400.
 61.607: wpsyd.com INFO Done testing SOA parameters for wpsyd.com.
 61.607: wpsyd.com INFO Begin testing connectivity for wpsyd.com.
 63.638: wpsyd.com INFO Zone announced by more than one ASN.
 63.638: wpsyd.com NOTICE Zone announced by fewer than two IPv6 ASN.
 63.638: wpsyd.com INFO Done testing connectivity for wpsyd.com.
 63.638: wpsyd.com INFO Begin testing DNSSEC for wpsyd.com.
 63.730: wpsyd.com INFO Did not find DS record for wpsyd.com at parent.
 63.800: wpsyd.com INFO Servers for wpsyd.com have consistent extra processing status.
 63.829: wpsyd.com INFO Authenticated denial records not found for wpsyd.com.
 63.845: wpsyd.com INFO Did not find DNSKEY record for wpsyd.com at child.
 63.846: wpsyd.com INFO No DNSKEY(s) found at child, other tests skipped.
 63.846: wpsyd.com INFO Done testing DNSSEC for wpsyd.com.
 63.847: wpsyd.com INFO Test completed for zone wpsyd.com.
