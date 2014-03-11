  0.000: levonline.com INFO Begin testing zone levonline.com with version 1.5.0.
  0.001: levonline.com INFO Begin testing delegation for levonline.com.
 23.452: levonline.com INFO Name servers listed at parent: ns.levonline.com,ns2.levonline.com,ns3.levonline.com
 26.913: levonline.com INFO Name servers listed at child: ns.levonline.com,ns2.levonline.com,ns3.levonline.com
 26.913: levonline.com NOTICE No IPv6 name servers found.
 27.002: levonline.com INFO Parent glue for levonline.com found: ns.levonline.com (217.70.32.12)
 27.109: levonline.com INFO Parent glue for levonline.com found: ns2.levonline.com (84.55.103.229)
 27.254: levonline.com INFO Parent glue for levonline.com found: ns3.levonline.com (217.70.32.4)
 27.412: levonline.com INFO Checking glue for ns.levonline.com (217.70.32.12).
 27.512: levonline.com INFO Child glue for levonline.com found: ns.levonline.com (217.70.32.12)
 27.512: levonline.com INFO Checking glue for ns2.levonline.com (84.55.103.229).
 27.541: levonline.com INFO Child glue for levonline.com found: ns2.levonline.com (84.55.103.229)
 27.541: levonline.com INFO Checking glue for ns3.levonline.com (217.70.32.4).
 27.565: levonline.com INFO Child glue for levonline.com found: ns3.levonline.com (217.70.32.4)
 27.565: levonline.com INFO Parent glue for levonline.com found: ns.levonline.com (217.70.32.12)
 27.566: levonline.com INFO Parent glue for levonline.com found: ns2.levonline.com (84.55.103.229)
 27.566: levonline.com INFO Parent glue for levonline.com found: ns3.levonline.com (217.70.32.4)
 29.583: levonline.com INFO It is possible to build a referral packet for levonline.com that works without EDNS0.
 29.635: levonline.com INFO Done testing delegation for levonline.com.
 29.636: levonline.com INFO Begin testing name server ns.levonline.com.
 29.636: levonline.com INFO Begin testing host ns.levonline.com.
 30.135: levonline.com INFO Begin testing address 217.70.32.12.
 36.297: levonline.com INFO Done testing address 217.70.32.12.
 36.297: levonline.com INFO Done testing host ns.levonline.com.
 36.753: levonline.com INFO Name server ns.levonline.com (217.70.32.12) answers queries over UDP.
 36.773: levonline.com INFO Name server ns.levonline.com (217.70.32.12) answers queries over TCP.
 36.787: levonline.com INFO Name server ns.levonline.com (217.70.32.12) is not recursive.
 36.825: levonline.com INFO Name server ns.levonline.com (217.70.32.12) authoritative for levonline.com.
 36.837: levonline.com INFO Name server ns.levonline.com (217.70.32.12) closed for zone transfer of levonline.com.
 36.843: levonline.com INFO Legacy name server ID for ns.levonline.com (217.70.32.12): hostname.bind = ns.levonline.com
 36.849: levonline.com INFO Legacy name server ID for ns.levonline.com (217.70.32.12): version.bind = ask hostmaster@levonline.com if you have a legitimate reason to request this information.
 36.864: levonline.com NOTICE No answer received from 217.70.32.12 when querying for version.server/CH/TXT.
 36.864: levonline.com INFO Done testing name server ns.levonline.com.
 36.864: levonline.com INFO Begin testing name server ns2.levonline.com.
 36.865: levonline.com INFO Begin testing host ns2.levonline.com.
 37.252: levonline.com INFO Begin testing address 84.55.103.229.
 39.485: levonline.com INFO Done testing address 84.55.103.229.
 39.485: levonline.com INFO Done testing host ns2.levonline.com.
 39.902: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) answers queries over UDP.
 39.935: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) answers queries over TCP.
 39.970: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) is not recursive.
 40.052: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) authoritative for levonline.com.
 40.079: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) closed for zone transfer of levonline.com.
 40.084: levonline.com NOTICE No answer received from 84.55.103.229 when querying for hostname.bind/CH/TXT.
 40.096: levonline.com INFO Legacy name server ID for ns2.levonline.com (84.55.103.229): version.bind = ask hostmaster@levonline.com if you have a legitimate reason to request this information.
 40.101: levonline.com NOTICE No answer received from 84.55.103.229 when querying for id.server/CH/TXT.
 40.108: levonline.com NOTICE No answer received from 84.55.103.229 when querying for version.server/CH/TXT.
 40.108: levonline.com INFO Done testing name server ns2.levonline.com.
 40.109: levonline.com INFO Begin testing name server ns3.levonline.com.
 40.119: levonline.com INFO Begin testing host ns3.levonline.com.
 40.674: levonline.com INFO Begin testing address 217.70.32.4.
 41.912: levonline.com INFO Done testing address 217.70.32.4.
 41.912: levonline.com INFO Done testing host ns3.levonline.com.
 42.364: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) answers queries over UDP.
 42.377: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) answers queries over TCP.
 42.406: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) is not recursive.
 42.481: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) authoritative for levonline.com.
 42.493: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) closed for zone transfer of levonline.com.
 42.525: levonline.com INFO Legacy name server ID for ns3.levonline.com (217.70.32.4): hostname.bind = ns3.levonline.com
 42.547: levonline.com INFO Legacy name server ID for ns3.levonline.com (217.70.32.4): version.bind = ask hostmaster@levonline.com if you have a legitimate reason to request this information.
 42.581: levonline.com NOTICE No answer received from 217.70.32.4 when querying for version.server/CH/TXT.
 42.582: levonline.com INFO Done testing name server ns3.levonline.com.
 42.582: levonline.com INFO Begin testing zone consistency for levonline.com.
 44.968: levonline.com INFO SOA at address 217.70.32.12 has serial 2013051401.
 44.975: levonline.com INFO SOA at address 84.55.103.229 has serial 2013051401.
 44.985: levonline.com INFO SOA at address 217.70.32.4 has serial 2013051401.
 44.985: levonline.com INFO All SOA records have consistent serial numbers.
 44.985: levonline.com INFO All other fields in the SOA record are consistent among all name servers.
 46.442: levonline.com NOTICE The listed nameservers for levonline.com all report the same set of nameservers.
 46.443: levonline.com INFO Done testing zone consistency for levonline.com.
 46.443: levonline.com INFO Begin testing SOA parameters for levonline.com.
 46.470: levonline.com INFO Found SOA record for levonline.com.
 46.471: levonline.com INFO Begin testing host ns.levonline.com.
 47.069: levonline.com INFO Begin testing address 217.70.32.12.
 47.500: levonline.com INFO Done testing address 217.70.32.12.
 47.500: levonline.com INFO Done testing host ns.levonline.com.
 47.500: levonline.com INFO SOA MNAME for levonline.com valid (ns.levonline.com).
 47.501: levonline.com INFO SOA MNAME for levonline.com (ns.levonline.com) listed as NS.
 47.946: levonline.com INFO SOA MNAME for levonline.com (ns.levonline.com) is authoritative.
 47.946: levonline.com INFO Begin testing email address hostmaster@levonline.com.
 48.361: levonline.com INFO Mail exchangers for hostmaster@levonline.com found mailsa3.levonline.com,mailsa4.levonline.com,mailsa1.levonline.com,mailsa2.levonline.com.
 48.362: levonline.com INFO All mail servers for hostmaster@levonline.com are in zone levonline.com.
 48.362: levonline.com INFO Begin testing host mailsa3.levonline.com.
 49.363: levonline.com INFO Begin testing address 217.70.32.68.
 50.298: levonline.com INFO Done testing address 217.70.32.68.
 50.298: levonline.com INFO Done testing host mailsa3.levonline.com.
 50.577: levonline.com INFO Begin testing host mailsa4.levonline.com.
 51.431: levonline.com INFO Begin testing address 217.70.32.69.
 52.631: levonline.com INFO Done testing address 217.70.32.69.
 52.632: levonline.com INFO Done testing host mailsa4.levonline.com.
 53.138: levonline.com INFO Begin testing host mailsa1.levonline.com.
 53.837: levonline.com INFO Begin testing address 217.70.32.66.
 54.917: levonline.com INFO Done testing address 217.70.32.66.
 54.917: levonline.com INFO Done testing host mailsa1.levonline.com.
 55.352: levonline.com INFO Begin testing host mailsa2.levonline.com.
 56.169: levonline.com INFO Begin testing address 217.70.32.67.
 56.995: levonline.com INFO Done testing address 217.70.32.67.
 56.996: levonline.com INFO Done testing host mailsa2.levonline.com.
 57.608: levonline.com INFO Done testing email address hostmaster@levonline.com.
 57.609: levonline.com INFO Successful attempt to deliver email for SOA RNAME of levonline.com (hostmaster.levonline.com) using hostmaster@levonline.com.
 57.609: levonline.com INFO SOA TTL for levonline.com OK (3600) - recommended >= 3600.
 57.609: levonline.com INFO SOA refresh for levonline.com OK (43200) - recommended >= 14400.
 57.609: levonline.com NOTICE SOA retry for levonline.com too small (300) - recommended >= 3600.
 57.609: levonline.com INFO SOA expire for levonline.com OK (2592000) - recommended >= 604800.
 57.609: levonline.com INFO SOA minimum for levonline.com OK (3600) - recommended between 300 and 86400.
 57.610: levonline.com INFO Done testing SOA parameters for levonline.com.
 57.610: levonline.com INFO Begin testing connectivity for levonline.com.
 59.655: levonline.com INFO Zone announced by more than one ASN.
 59.663: levonline.com NOTICE Zone announced by fewer than two IPv6 ASN.
 59.663: levonline.com INFO Done testing connectivity for levonline.com.
 59.664: levonline.com INFO Begin testing DNSSEC for levonline.com.
 60.389: levonline.com INFO Did not find DS record for levonline.com at parent.
 60.436: levonline.com INFO Servers for levonline.com have consistent extra processing status.
 60.448: levonline.com INFO Authenticated denial records not found for levonline.com.
 60.456: levonline.com INFO Did not find DNSKEY record for levonline.com at child.
 60.456: levonline.com INFO No DNSKEY(s) found at child, other tests skipped.
 60.456: levonline.com INFO Done testing DNSSEC for levonline.com.
 60.458: levonline.com INFO Test completed for zone levonline.com.
