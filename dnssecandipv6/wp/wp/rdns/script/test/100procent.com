  0.000: 100procent.com INFO Begin testing zone 100procent.com with version 1.0.1.
  0.001: 100procent.com INFO Begin testing delegation for 100procent.com.
  3.994: 100procent.com INFO Name servers listed at parent: ns.100procent.com,ns2.100procent.com
  4.018: 100procent.com INFO Name servers listed at child: ns.100procent.com,ns2.100procent.com
  4.019: 100procent.com NOTICE No IPv6 name servers found.
  4.049: 100procent.com INFO Parent glue for 100procent.com found: ns.100procent.com (62.168.149.3)
  4.359: 100procent.com INFO Parent glue for 100procent.com found: ns2.100procent.com (62.168.149.2)
  4.528: 100procent.com INFO Checking glue for ns.100procent.com (62.168.149.3).
  4.534: 100procent.com INFO Child glue for 100procent.com found: ns.100procent.com (62.168.149.3)
  4.535: 100procent.com INFO Checking glue for ns2.100procent.com (62.168.149.2).
  4.540: 100procent.com INFO Child glue for 100procent.com found: ns2.100procent.com (62.168.149.2)
  4.540: 100procent.com INFO Done testing delegation for 100procent.com.
  4.540: 100procent.com INFO Begin testing name server ns.100procent.com.
  4.541: 100procent.com INFO Begin testing host ns.100procent.com.
  4.541: 100procent.com INFO Begin testing address 62.168.149.3.
  7.793: 100procent.com INFO Done testing address 62.168.149.3.
  7.793: 100procent.com INFO Done testing host ns.100procent.com.
  7.797: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) is not recursive.
  7.801: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) authoritative for 100procent.com.
  7.805: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) answers queries over UDP.
  7.811: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) answers queries over TCP.
  7.815: 100procent.com INFO Name server ns.100procent.com (62.168.149.3) closed for zone transfer of 100procent.com.
  7.819: 100procent.com NOTICE No answer received from 62.168.149.3 when querying for hostname.bind/CH/TXT.
  7.822: 100procent.com NOTICE No answer received from 62.168.149.3 when querying for version.bind/CH/TXT.
  7.825: 100procent.com NOTICE No answer received from 62.168.149.3 when querying for id.server/CH/TXT.
  7.828: 100procent.com NOTICE No answer received from 62.168.149.3 when querying for version.server/CH/TXT.
  7.828: 100procent.com INFO Done testing name server ns.100procent.com.
  7.828: 100procent.com INFO Begin testing name server ns2.100procent.com.
  7.828: 100procent.com INFO Begin testing host ns2.100procent.com.
  7.828: 100procent.com INFO Begin testing address 62.168.149.2.
  7.839: 100procent.com INFO Done testing address 62.168.149.2.
  7.839: 100procent.com INFO Done testing host ns2.100procent.com.
  7.843: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) is not recursive.
  7.848: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) authoritative for 100procent.com.
  7.855: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) answers queries over UDP.
 12.854: 100procent.com NOTICE DNS lookup error (connection failed).
 12.854: 100procent.com ERROR Name server ns2.100procent.com (62.168.149.2) does not answer queries over TCP.
 12.854: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) not checked for zone transfer of 100procent.com.
 12.854: 100procent.com INFO Name server ns2.100procent.com (62.168.149.2) not checked for legacy name server ID.
 12.854: 100procent.com INFO Done testing name server ns2.100procent.com.
 12.855: 100procent.com INFO Begin testing zone consistency for 100procent.com.
 12.864: 100procent.com INFO SOA at address 62.168.149.3 has serial 2010090201.
 12.870: 100procent.com INFO SOA at address 62.168.149.2 has serial 2010090201.
 12.870: 100procent.com INFO All SOA records have consistent serial numbers.
 12.870: 100procent.com INFO All SOA records are consistent among all name servers.
 12.870: 100procent.com INFO Done testing zone consistency for 100procent.com.
 12.870: 100procent.com INFO Begin testing SOA parameters for 100procent.com.
 12.875: 100procent.com INFO Found SOA record for 100procent.com.
 12.875: 100procent.com INFO Begin testing host ns.100procent.com.
 12.875: 100procent.com INFO Begin testing address 62.168.149.3.
 12.877: 100procent.com INFO Done testing address 62.168.149.3.
 12.877: 100procent.com INFO Done testing host ns.100procent.com.
 12.877: 100procent.com INFO SOA MNAME for 100procent.com valid (ns.100procent.com).
 12.877: 100procent.com INFO SOA MNAME for 100procent.com (ns.100procent.com) listed as NS.
 12.882: 100procent.com INFO SOA MNAME for 100procent.com (ns.100procent.com) is authoritative.
 12.882: 100procent.com INFO Begin testing email address registry@100procent.com.
 12.890: 100procent.com INFO Mail exchangers for registry@100procent.com found mx02.mail-gw.100procent.com,mx01.mail-gw.100procent.com.
 12.890: 100procent.com INFO All mail servers for registry@100procent.com are in zone 100procent.com.
 12.890: 100procent.com INFO Begin testing host mx02.mail-gw.100procent.com.
 12.898: 100procent.com INFO Begin testing address 62.168.145.71.
 12.921: 100procent.com INFO Done testing address 62.168.145.71.
 12.921: 100procent.com INFO Done testing host mx02.mail-gw.100procent.com.
 12.922: 100procent.com INFO Begin testing mail server mx02.mail-gw.100procent.com (62.168.145.71) with registry@100procent.com.
 12.943: 100procent.com INFO SMTP banner: mx02.mail-gw.100procent.com ESMTP
 13.010: 100procent.com INFO SMTP testing of mx02.mail-gw.100procent.com (62.168.145.71) with registry@100procent.com succeeded without errors.
 13.010: 100procent.com INFO Done testing mail server mx02.mail-gw.100procent.com (62.168.145.71) with registry@100procent.com.
 13.011: 100procent.com INFO Begin testing host mx01.mail-gw.100procent.com.
 13.021: 100procent.com INFO Begin testing address 62.168.145.70.
 13.039: 100procent.com INFO Done testing address 62.168.145.70.
 13.039: 100procent.com INFO Done testing host mx01.mail-gw.100procent.com.
 13.040: 100procent.com INFO Delivery over IPv4 to registry@100procent.com ok.
 13.040: 100procent.com INFO Delivery over IPv6 to registry@100procent.com could not be done.
 13.040: 100procent.com INFO Done testing email address registry@100procent.com.
 13.040: 100procent.com INFO Successful attempt to deliver email for SOA RNAME of 100procent.com (registry.100procent.com) using registry@100procent.com.
 13.040: 100procent.com INFO SOA TTL for 100procent.com OK (3600) - recommended >= 3600.
 13.040: 100procent.com INFO SOA refresh for 100procent.com OK (86400) - recommended >= 14400.
 13.040: 100procent.com INFO SOA retry for 100procent.com OK (7200) - recommended >= 3600.
 13.040: 100procent.com INFO SOA expire for 100procent.com OK (604800) - recommended >= 604800.
 13.040: 100procent.com INFO SOA minimum for 100procent.com OK (3600) - recommended between 300 and 86400.
 13.040: 100procent.com INFO Done testing SOA parameters for 100procent.com.
 13.041: 100procent.com INFO Begin testing connectivity for 100procent.com.
 13.350: 100procent.com INFO Name server 62.168.149.2 announced by: 20626
 13.471: 100procent.com INFO Name server 62.168.149.3 announced by: 20626
 13.471: 100procent.com INFO Zone announced by ASN: 20626
 13.471: 100procent.com NOTICE Zone announced by only one ASN (1).
 13.471: 100procent.com INFO Zone announced by IPv6 ASN: 
 13.472: 100procent.com NOTICE Zone announced by only one IPv6 ASN (0).
 13.472: 100procent.com INFO Done testing connectivity for 100procent.com.
 13.472: 100procent.com INFO Begin testing DNSSEC for 100procent.com.
 13.722: 100procent.com INFO Did not find DS record for 100procent.com at parent.
 18.722: 100procent.com NOTICE DNS lookup error (connection failed).
 18.729: 100procent.com INFO Servers for 100procent.com have consistent extra processing status.
 18.729: 100procent.com INFO Did not find DNSKEY record for 100procent.com at child.
 18.729: 100procent.com INFO No DNSKEY(s) found at child, other tests skipped.
 18.729: 100procent.com INFO Done testing DNSSEC for 100procent.com.
 18.729: 100procent.com INFO Test completed for zone 100procent.com.
