  0.000: bikab.com INFO Begin testing zone bikab.com with version 1.0.1.
  0.000: bikab.com INFO Begin testing delegation for bikab.com.
  4.019: bikab.com INFO Name servers listed at parent: dns1.bikab.com,dns2.bikab.com,ns1.bikab.com,ns2.bikab.com
  4.156: bikab.com INFO Name servers listed at child: ns1.bikab.com,ns2.bikab.com
  4.156: bikab.com ERROR Superfluous name server listed at parent: dns1.bikab.com
  4.156: bikab.com ERROR Superfluous name server listed at parent: dns2.bikab.com
  4.156: bikab.com NOTICE No IPv6 name servers found.
  4.337: bikab.com INFO Parent glue for bikab.com found: dns1.bikab.com (85.197.128.1)
  4.635: bikab.com INFO Parent glue for bikab.com found: dns2.bikab.com (85.197.128.2)
  5.052: bikab.com INFO Parent glue for bikab.com found: ns1.bikab.com (62.119.128.2)
  5.352: bikab.com INFO Parent glue for bikab.com found: ns2.bikab.com (62.119.129.1)
  5.481: bikab.com INFO Checking glue for dns1.bikab.com (85.197.128.1).
  5.505: bikab.com INFO Child glue for bikab.com found: dns1.bikab.com (85.197.128.1)
  5.505: bikab.com INFO Checking glue for dns2.bikab.com (85.197.128.2).
  5.529: bikab.com INFO Child glue for bikab.com found: dns2.bikab.com (85.197.128.2)
  5.529: bikab.com INFO Checking glue for ns1.bikab.com (62.119.128.2).
  5.552: bikab.com INFO Child glue for bikab.com found: ns1.bikab.com (62.119.128.2)
  5.552: bikab.com INFO Checking glue for ns2.bikab.com (62.119.129.1).
  5.575: bikab.com INFO Child glue for bikab.com found: ns2.bikab.com (62.119.129.1)
  5.575: bikab.com INFO Done testing delegation for bikab.com.
  5.576: bikab.com INFO Begin testing name server ns1.bikab.com.
  5.576: bikab.com INFO Begin testing host ns1.bikab.com.
  5.576: bikab.com INFO Begin testing address 62.119.128.2.
  8.146: bikab.com INFO Done testing address 62.119.128.2.
  8.146: bikab.com INFO Done testing host ns1.bikab.com.
  8.196: bikab.com WARNING Name server ns1.bikab.com (62.119.128.2) is recursive.
  8.220: bikab.com INFO Name server ns1.bikab.com (62.119.128.2) authoritative for bikab.com.
  8.244: bikab.com INFO Name server ns1.bikab.com (62.119.128.2) answers queries over UDP.
  8.286: bikab.com INFO Name server ns1.bikab.com (62.119.128.2) answers queries over TCP.
  8.345: bikab.com INFO Name server ns1.bikab.com (62.119.128.2) closed for zone transfer of bikab.com.
  8.371: bikab.com INFO Legacy name server ID for ns1.bikab.com (62.119.128.2): hostname.bind = rumor
  8.394: bikab.com INFO Legacy name server ID for ns1.bikab.com (62.119.128.2): version.bind = N/A
  8.438: bikab.com NOTICE No answer received from 62.119.128.2 when querying for version.server/CH/TXT.
  8.438: bikab.com INFO Done testing name server ns1.bikab.com.
  8.438: bikab.com INFO Begin testing name server ns2.bikab.com.
  8.438: bikab.com INFO Begin testing host ns2.bikab.com.
  8.439: bikab.com INFO Begin testing address 62.119.129.1.
  8.470: bikab.com INFO Done testing address 62.119.129.1.
  8.470: bikab.com INFO Done testing host ns2.bikab.com.
  8.493: bikab.com INFO Name server ns2.bikab.com (62.119.129.1) is not recursive.
  8.517: bikab.com INFO Name server ns2.bikab.com (62.119.129.1) authoritative for bikab.com.
  8.540: bikab.com INFO Name server ns2.bikab.com (62.119.129.1) answers queries over UDP.
  8.584: bikab.com INFO Name server ns2.bikab.com (62.119.129.1) answers queries over TCP.
  8.645: bikab.com INFO Name server ns2.bikab.com (62.119.129.1) closed for zone transfer of bikab.com.
  8.667: bikab.com NOTICE No answer received from 62.119.129.1 when querying for hostname.bind/CH/TXT.
  8.690: bikab.com NOTICE No answer received from 62.119.129.1 when querying for version.bind/CH/TXT.
  8.712: bikab.com NOTICE No answer received from 62.119.129.1 when querying for id.server/CH/TXT.
  8.734: bikab.com NOTICE No answer received from 62.119.129.1 when querying for version.server/CH/TXT.
  8.734: bikab.com INFO Done testing name server ns2.bikab.com.
  8.734: bikab.com INFO Begin testing zone consistency for bikab.com.
  8.853: bikab.com INFO SOA at address 85.197.128.2 has serial 2010081601.
  8.876: bikab.com INFO SOA at address 85.197.128.1 has serial 2010081601.
  8.899: bikab.com INFO SOA at address 62.119.129.1 has serial 2010081601.
  8.921: bikab.com INFO SOA at address 62.119.128.2 has serial 2010081601.
  8.922: bikab.com INFO All SOA records have consistent serial numbers.
  8.922: bikab.com INFO All SOA records are consistent among all name servers.
  8.922: bikab.com INFO Done testing zone consistency for bikab.com.
  8.922: bikab.com INFO Begin testing SOA parameters for bikab.com.
  8.945: bikab.com INFO Found SOA record for bikab.com.
  8.945: bikab.com INFO Begin testing host rumor.bikab.com.
  8.946: bikab.com INFO Begin testing address 62.119.128.2.
  8.947: bikab.com INFO Done testing address 62.119.128.2.
  8.947: bikab.com INFO Done testing host rumor.bikab.com.
  8.947: bikab.com INFO SOA MNAME for bikab.com valid (rumor.bikab.com).
  8.947: bikab.com NOTICE SOA MNAME for bikab.com (rumor.bikab.com) not listed as NS.
  8.971: bikab.com INFO SOA MNAME for bikab.com (rumor.bikab.com) is authoritative.
  8.971: bikab.com INFO Begin testing email address registry@bikab.com.
  8.996: bikab.com INFO Mail exchangers for registry@bikab.com found mail.bikab.com.
  8.997: bikab.com INFO All mail servers for registry@bikab.com are in zone bikab.com.
  8.997: bikab.com INFO Begin testing host mail.bikab.com.
  9.050: bikab.com INFO Begin testing address 85.197.128.8.
  9.947: bikab.com INFO Done testing address 85.197.128.8.
  9.947: bikab.com INFO Done testing host mail.bikab.com.
  9.948: bikab.com INFO Begin testing mail server mail.bikab.com (85.197.128.8) with registry@bikab.com.
 10.314: bikab.com INFO SMTP banner: hydra.bikab.com ESMTP
 10.391: bikab.com INFO SMTP testing of mail.bikab.com (85.197.128.8) with registry@bikab.com succeeded without errors.
 10.391: bikab.com INFO Done testing mail server mail.bikab.com (85.197.128.8) with registry@bikab.com.
 10.391: bikab.com INFO Delivery over IPv4 to registry@bikab.com ok.
 10.391: bikab.com INFO Delivery over IPv6 to registry@bikab.com could not be done.
 10.391: bikab.com INFO Done testing email address registry@bikab.com.
 10.392: bikab.com INFO Successful attempt to deliver email for SOA RNAME of bikab.com (registry.bikab.com) using registry@bikab.com.
 10.392: bikab.com INFO SOA TTL for bikab.com OK (3600) - recommended >= 3600.
 10.392: bikab.com INFO SOA refresh for bikab.com OK (21600) - recommended >= 14400.
 10.392: bikab.com NOTICE SOA retry for bikab.com too small (900) - recommended >= 3600.
 10.392: bikab.com INFO SOA expire for bikab.com OK (864000) - recommended >= 604800.
 10.392: bikab.com INFO SOA minimum for bikab.com OK (86400) - recommended between 300 and 86400.
 10.392: bikab.com INFO Done testing SOA parameters for bikab.com.
 10.392: bikab.com INFO Begin testing connectivity for bikab.com.
 10.699: bikab.com INFO Name server 62.119.129.1 announced by: 8434
 10.829: bikab.com INFO Name server 62.119.128.2 announced by: 8434
 10.829: bikab.com INFO Zone announced by ASN: 8434
 10.829: bikab.com NOTICE Zone announced by only one ASN (1).
 10.829: bikab.com INFO Zone announced by IPv6 ASN: 
 10.829: bikab.com NOTICE Zone announced by only one IPv6 ASN (0).
 10.829: bikab.com INFO Done testing connectivity for bikab.com.
 10.830: bikab.com INFO Begin testing DNSSEC for bikab.com.
 11.053: bikab.com INFO Did not find DS record for bikab.com at parent.
 11.137: bikab.com INFO Servers for bikab.com have consistent extra processing status.
 11.137: bikab.com INFO Did not find DNSKEY record for bikab.com at child.
 11.137: bikab.com INFO No DNSKEY(s) found at child, other tests skipped.
 11.137: bikab.com INFO Done testing DNSSEC for bikab.com.
 11.138: bikab.com INFO Test completed for zone bikab.com.
