  0.000: ipmirror.com INFO Begin testing zone ipmirror.com with version 1.5.0.
  0.004: ipmirror.com INFO Begin testing delegation for ipmirror.com.
 24.688: ipmirror.com INFO Name servers listed at parent: ns1.ipmirror.com,ns2.ipmirror.com,ns3.ipmirror.com
 29.103: ipmirror.com INFO Name servers listed at child: ns1.ipmirror.com,ns2.ipmirror.com,ns3.ipmirror.com
 29.123: ipmirror.com NOTICE No IPv6 name servers found.
 29.218: ipmirror.com INFO Parent glue for ipmirror.com found: ns1.ipmirror.com (103.29.114.236)
 29.669: ipmirror.com INFO Parent glue for ipmirror.com found: ns2.ipmirror.com (203.100.62.35)
 30.292: ipmirror.com INFO Parent glue for ipmirror.com found: ns3.ipmirror.com (50.23.221.202)
 30.333: ipmirror.com INFO Checking glue for ns1.ipmirror.com (103.29.114.236).
 30.497: ipmirror.com INFO Child glue for ipmirror.com found: ns1.ipmirror.com (103.29.114.236)
 30.497: ipmirror.com INFO Checking glue for ns2.ipmirror.com (203.100.62.35).
 30.669: ipmirror.com INFO Child glue for ipmirror.com found: ns2.ipmirror.com (203.100.62.35)
 30.669: ipmirror.com INFO Checking glue for ns3.ipmirror.com (50.23.221.202).
 30.851: ipmirror.com INFO Child glue for ipmirror.com found: ns3.ipmirror.com (50.23.221.202)
 30.858: ipmirror.com INFO Parent glue for ipmirror.com found: ns1.ipmirror.com (103.29.114.236)
 30.858: ipmirror.com INFO Parent glue for ipmirror.com found: ns2.ipmirror.com (203.100.62.35)
 30.875: ipmirror.com INFO Parent glue for ipmirror.com found: ns3.ipmirror.com (50.23.221.202)
 33.043: ipmirror.com INFO It is possible to build a referral packet for ipmirror.com that works without EDNS0.
 33.043: ipmirror.com INFO Done testing delegation for ipmirror.com.
 33.059: ipmirror.com INFO Begin testing name server ns1.ipmirror.com.
 33.060: ipmirror.com INFO Begin testing host ns1.ipmirror.com.
 33.955: ipmirror.com INFO Begin testing address 103.29.114.236.
 38.801: ipmirror.com INFO Done testing address 103.29.114.236.
 38.801: ipmirror.com INFO Done testing host ns1.ipmirror.com.
 39.585: ipmirror.com INFO Name server ns1.ipmirror.com (103.29.114.236) answers queries over UDP.
 40.229: ipmirror.com INFO Name server ns1.ipmirror.com (103.29.114.236) answers queries over TCP.
 40.534: ipmirror.com INFO Name server ns1.ipmirror.com (103.29.114.236) is not recursive.
 41.798: ipmirror.com INFO Name server ns1.ipmirror.com (103.29.114.236) authoritative for ipmirror.com.
 42.703: ipmirror.com INFO Name server ns1.ipmirror.com (103.29.114.236) closed for zone transfer of ipmirror.com.
 43.005: ipmirror.com NOTICE No answer received from 103.29.114.236 when querying for hostname.bind/CH/TXT.
 43.310: ipmirror.com INFO Legacy name server ID for ns1.ipmirror.com (103.29.114.236): version.bind = 9.2.2
 43.624: ipmirror.com NOTICE No answer received from 103.29.114.236 when querying for id.server/CH/TXT.
 43.930: ipmirror.com NOTICE No answer received from 103.29.114.236 when querying for version.server/CH/TXT.
 43.930: ipmirror.com INFO Done testing name server ns1.ipmirror.com.
 43.931: ipmirror.com INFO Begin testing name server ns2.ipmirror.com.
 43.931: ipmirror.com INFO Begin testing host ns2.ipmirror.com.
 44.797: ipmirror.com INFO Begin testing address 203.100.62.35.
 48.469: ipmirror.com INFO Done testing address 203.100.62.35.
 48.469: ipmirror.com INFO Done testing host ns2.ipmirror.com.
 49.357: ipmirror.com INFO Name server ns2.ipmirror.com (203.100.62.35) answers queries over UDP.
 50.105: ipmirror.com INFO Name server ns2.ipmirror.com (203.100.62.35) answers queries over TCP.
 50.487: ipmirror.com INFO Name server ns2.ipmirror.com (203.100.62.35) is not recursive.
 52.054: ipmirror.com INFO Name server ns2.ipmirror.com (203.100.62.35) authoritative for ipmirror.com.
 53.212: ipmirror.com INFO Name server ns2.ipmirror.com (203.100.62.35) closed for zone transfer of ipmirror.com.
 53.603: ipmirror.com INFO Legacy name server ID for ns2.ipmirror.com (203.100.62.35): hostname.bind = new-ns2.ipmirror.com
 53.991: ipmirror.com INFO Legacy name server ID for ns2.ipmirror.com (203.100.62.35): version.bind = Created for IP Mirror Pte Ltd
 54.739: ipmirror.com NOTICE No answer received from 203.100.62.35 when querying for version.server/CH/TXT.
 54.740: ipmirror.com INFO Done testing name server ns2.ipmirror.com.
 54.740: ipmirror.com INFO Begin testing name server ns3.ipmirror.com.
 54.740: ipmirror.com INFO Begin testing host ns3.ipmirror.com.
 55.275: ipmirror.com INFO Begin testing address 50.23.221.202.
 64.372: ipmirror.com INFO Done testing address 50.23.221.202.
 64.373: ipmirror.com INFO Done testing host ns3.ipmirror.com.
 65.293: ipmirror.com INFO Name server ns3.ipmirror.com (50.23.221.202) answers queries over UDP.
 65.613: ipmirror.com INFO Name server ns3.ipmirror.com (50.23.221.202) answers queries over TCP.
 65.815: ipmirror.com INFO Name server ns3.ipmirror.com (50.23.221.202) is not recursive.
 66.543: ipmirror.com INFO Name server ns3.ipmirror.com (50.23.221.202) authoritative for ipmirror.com.
 67.032: ipmirror.com INFO Name server ns3.ipmirror.com (50.23.221.202) closed for zone transfer of ipmirror.com.
 67.196: ipmirror.com INFO Legacy name server ID for ns3.ipmirror.com (50.23.221.202): hostname.bind = ns3.ipmirror.com
 67.359: ipmirror.com INFO Legacy name server ID for ns3.ipmirror.com (50.23.221.202): version.bind = Created for IP Mirror Pte Ltd
 67.680: ipmirror.com NOTICE No answer received from 50.23.221.202 when querying for version.server/CH/TXT.
 67.681: ipmirror.com INFO Done testing name server ns3.ipmirror.com.
 67.681: ipmirror.com INFO Begin testing zone consistency for ipmirror.com.
 72.930: ipmirror.com INFO SOA at address 103.29.114.236 has serial 1032588474.
 73.133: ipmirror.com INFO SOA at address 50.23.221.202 has serial 1032588474.
 73.585: ipmirror.com INFO SOA at address 203.100.62.35 has serial 1032588474.
 73.585: ipmirror.com INFO All SOA records have consistent serial numbers.
 73.585: ipmirror.com INFO All other fields in the SOA record are consistent among all name servers.
 76.640: ipmirror.com NOTICE The listed nameservers for ipmirror.com all report the same set of nameservers.
 76.640: ipmirror.com INFO Done testing zone consistency for ipmirror.com.
 76.640: ipmirror.com INFO Begin testing SOA parameters for ipmirror.com.
 76.820: ipmirror.com INFO Found SOA record for ipmirror.com.
 76.820: ipmirror.com INFO Begin testing host ns2.ipmirror.com.
 77.536: ipmirror.com INFO Begin testing address 203.100.62.35.
 78.204: ipmirror.com INFO Done testing address 203.100.62.35.
 78.204: ipmirror.com INFO Done testing host ns2.ipmirror.com.
 78.204: ipmirror.com INFO SOA MNAME for ipmirror.com valid (ns2.ipmirror.com).
 78.207: ipmirror.com INFO SOA MNAME for ipmirror.com (ns2.ipmirror.com) listed as NS.
 79.181: ipmirror.com INFO SOA MNAME for ipmirror.com (ns2.ipmirror.com) is authoritative.
 79.182: ipmirror.com INFO Begin testing email address support@ipmirror.com.
 80.158: ipmirror.com INFO Mail exchangers for support@ipmirror.com found safestinbox2.ipmirror.com,safestinbox.ipmirror.com.
 80.158: ipmirror.com INFO All mail servers for support@ipmirror.com are in zone ipmirror.com.
 80.158: ipmirror.com INFO Begin testing host safestinbox2.ipmirror.com.
 81.579: ipmirror.com INFO Begin testing address 103.29.114.234.
 83.242: ipmirror.com INFO Done testing address 103.29.114.234.
 83.243: ipmirror.com INFO Done testing host safestinbox2.ipmirror.com.
 84.069: ipmirror.com INFO Begin testing host safestinbox.ipmirror.com.
 86.067: ipmirror.com INFO Begin testing address 203.125.76.247.
 92.755: ipmirror.com INFO Done testing address 203.125.76.247.
 92.755: ipmirror.com INFO Done testing host safestinbox.ipmirror.com.
 93.663: ipmirror.com INFO Done testing email address support@ipmirror.com.
 93.663: ipmirror.com INFO Successful attempt to deliver email for SOA RNAME of ipmirror.com (support.ipmirror.com) using support@ipmirror.com.
 93.663: ipmirror.com NOTICE SOA TTL for ipmirror.com too small (300) - recommended >= 3600.
 93.664: ipmirror.com NOTICE SOA refresh for ipmirror.com too small (3600) - recommended >= 14400.
 93.664: ipmirror.com NOTICE SOA retry for ipmirror.com too small (600) - recommended >= 3600.
 93.664: ipmirror.com NOTICE SOA expire for ipmirror.com too small (86400) - recommended >= 604800.
 93.664: ipmirror.com INFO SOA minimum for ipmirror.com OK (3600) - recommended between 300 and 86400.
 93.664: ipmirror.com INFO Done testing SOA parameters for ipmirror.com.
 93.664: ipmirror.com INFO Begin testing connectivity for ipmirror.com.
 96.203: ipmirror.com INFO Zone announced by more than one ASN.
 96.203: ipmirror.com NOTICE Zone announced by fewer than two IPv6 ASN.
 96.203: ipmirror.com INFO Done testing connectivity for ipmirror.com.
 96.204: ipmirror.com INFO Begin testing DNSSEC for ipmirror.com.
 96.363: ipmirror.com INFO Did not find DS record for ipmirror.com at parent.
 98.063: ipmirror.com INFO Servers for ipmirror.com have consistent extra processing status.
 98.380: ipmirror.com INFO Authenticated denial records not found for ipmirror.com.
 98.592: ipmirror.com INFO Did not find DNSKEY record for ipmirror.com at child.
 98.592: ipmirror.com INFO No DNSKEY(s) found at child, other tests skipped.
 98.593: ipmirror.com INFO Done testing DNSSEC for ipmirror.com.
 98.594: ipmirror.com INFO Test completed for zone ipmirror.com.
