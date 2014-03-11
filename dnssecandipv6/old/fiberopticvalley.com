  0.000: fiberopticvalley.com INFO Begin testing zone fiberopticvalley.com with version 1.0.1.
  0.001: fiberopticvalley.com INFO Begin testing delegation for fiberopticvalley.com.
  5.387: fiberopticvalley.com INFO Name servers listed at parent: dns01.ipeer.se,dns02.ipeer.se
  5.490: fiberopticvalley.com INFO Name servers listed at child: dns01.ipeer.se,dns02.ipeer.se
  5.490: fiberopticvalley.com NOTICE No IPv6 name servers found.
  5.973: fiberopticvalley.com INFO Done testing delegation for fiberopticvalley.com.
  5.975: fiberopticvalley.com INFO Begin testing name server dns01.ipeer.se.
  5.976: fiberopticvalley.com INFO Begin testing host dns01.ipeer.se.
  5.977: fiberopticvalley.com INFO Begin testing address 213.180.89.10.
 12.805: fiberopticvalley.com INFO Done testing address 213.180.89.10.
 12.805: fiberopticvalley.com INFO Done testing host dns01.ipeer.se.
 12.838: fiberopticvalley.com INFO Name server dns01.ipeer.se (213.180.89.10) is not recursive.
 12.858: fiberopticvalley.com INFO Name server dns01.ipeer.se (213.180.89.10) authoritative for fiberopticvalley.com.
 12.877: fiberopticvalley.com INFO Name server dns01.ipeer.se (213.180.89.10) answers queries over UDP.
 12.907: fiberopticvalley.com INFO Name server dns01.ipeer.se (213.180.89.10) answers queries over TCP.
 12.942: fiberopticvalley.com INFO Name server dns01.ipeer.se (213.180.89.10) closed for zone transfer of fiberopticvalley.com.
 12.967: fiberopticvalley.com INFO Legacy name server ID for dns01.ipeer.se (213.180.89.10): hostname.bind = dns01
 12.985: fiberopticvalley.com INFO Legacy name server ID for dns01.ipeer.se (213.180.89.10): version.bind = 9.3.2-P1
 13.018: fiberopticvalley.com NOTICE No answer received from 213.180.89.10 when querying for version.server/CH/TXT.
 13.018: fiberopticvalley.com INFO Done testing name server dns01.ipeer.se.
 13.019: fiberopticvalley.com INFO Begin testing name server dns02.ipeer.se.
 13.019: fiberopticvalley.com INFO Begin testing host dns02.ipeer.se.
 13.020: fiberopticvalley.com INFO Begin testing address 213.180.64.12.
 13.050: fiberopticvalley.com INFO Done testing address 213.180.64.12.
 13.050: fiberopticvalley.com INFO Done testing host dns02.ipeer.se.
 13.083: fiberopticvalley.com INFO Name server dns02.ipeer.se (213.180.64.12) is not recursive.
 13.103: fiberopticvalley.com INFO Name server dns02.ipeer.se (213.180.64.12) authoritative for fiberopticvalley.com.
 13.122: fiberopticvalley.com INFO Name server dns02.ipeer.se (213.180.64.12) answers queries over UDP.
 13.160: fiberopticvalley.com INFO Name server dns02.ipeer.se (213.180.64.12) answers queries over TCP.
 13.201: fiberopticvalley.com NOTICE Name server dns02.ipeer.se (213.180.64.12) open for zone transfer of fiberopticvalley.com.
 13.219: fiberopticvalley.com INFO Legacy name server ID for dns02.ipeer.se (213.180.64.12): hostname.bind = dns02.ipeer.se
 13.236: fiberopticvalley.com INFO Legacy name server ID for dns02.ipeer.se (213.180.64.12): version.bind = 9.3.2-P1
 13.268: fiberopticvalley.com NOTICE No answer received from 213.180.64.12 when querying for version.server/CH/TXT.
 13.268: fiberopticvalley.com INFO Done testing name server dns02.ipeer.se.
 13.269: fiberopticvalley.com INFO Begin testing zone consistency for fiberopticvalley.com.
 13.294: fiberopticvalley.com INFO SOA at address 213.180.64.12 has serial 2008082700.
 13.315: fiberopticvalley.com INFO SOA at address 213.180.89.10 has serial 2008082700.
 13.316: fiberopticvalley.com INFO All SOA records have consistent serial numbers.
 13.316: fiberopticvalley.com INFO All SOA records are consistent among all name servers.
 13.316: fiberopticvalley.com INFO Done testing zone consistency for fiberopticvalley.com.
 13.316: fiberopticvalley.com INFO Begin testing SOA parameters for fiberopticvalley.com.
 13.335: fiberopticvalley.com INFO Found SOA record for fiberopticvalley.com.
 13.336: fiberopticvalley.com INFO Begin testing host dns01.ipeer.se.
 13.337: fiberopticvalley.com INFO Begin testing address 213.180.89.10.
 13.340: fiberopticvalley.com INFO Done testing address 213.180.89.10.
 13.340: fiberopticvalley.com INFO Done testing host dns01.ipeer.se.
 13.340: fiberopticvalley.com INFO SOA MNAME for fiberopticvalley.com valid (dns01.ipeer.se).
 13.341: fiberopticvalley.com INFO SOA MNAME for fiberopticvalley.com (dns01.ipeer.se) listed as NS.
 13.360: fiberopticvalley.com INFO SOA MNAME for fiberopticvalley.com (dns01.ipeer.se) is authoritative.
 13.360: fiberopticvalley.com INFO Begin testing email address registry@ipeer.se.
 13.381: fiberopticvalley.com INFO Mail exchangers for registry@ipeer.se found luigi.ipeer.se.
 13.381: fiberopticvalley.com INFO Begin testing host luigi.ipeer.se.
 13.414: fiberopticvalley.com INFO Begin testing address 213.180.68.167.
 13.445: fiberopticvalley.com INFO Done testing address 213.180.68.167.
 13.445: fiberopticvalley.com INFO Done testing host luigi.ipeer.se.
 13.446: fiberopticvalley.com INFO Begin testing mail server luigi.ipeer.se (213.180.68.167) with registry@ipeer.se.
 13.524: fiberopticvalley.com INFO SMTP banner: luigi.ipeer.se ESMTP Postfix (Ubuntu)
 13.576: fiberopticvalley.com INFO SMTP testing of luigi.ipeer.se (213.180.68.167) with registry@ipeer.se succeeded without errors.
 13.576: fiberopticvalley.com INFO Done testing mail server luigi.ipeer.se (213.180.68.167) with registry@ipeer.se.
 13.577: fiberopticvalley.com INFO Delivery over IPv4 to registry@ipeer.se ok.
 13.577: fiberopticvalley.com INFO Delivery over IPv6 to registry@ipeer.se could not be done.
 13.577: fiberopticvalley.com INFO Done testing email address registry@ipeer.se.
 13.577: fiberopticvalley.com INFO Successful attempt to deliver email for SOA RNAME of fiberopticvalley.com (registry.ipeer.se) using registry@ipeer.se.
 13.579: fiberopticvalley.com INFO SOA TTL for fiberopticvalley.com OK (3600) - recommended >= 3600.
 13.579: fiberopticvalley.com NOTICE SOA refresh for fiberopticvalley.com too small (7200) - recommended >= 14400.
 13.580: fiberopticvalley.com INFO SOA retry for fiberopticvalley.com OK (3600) - recommended >= 3600.
 13.580: fiberopticvalley.com INFO SOA expire for fiberopticvalley.com OK (604800) - recommended >= 604800.
 13.580: fiberopticvalley.com INFO SOA minimum for fiberopticvalley.com OK (3600) - recommended between 300 and 86400.
 13.580: fiberopticvalley.com INFO Done testing SOA parameters for fiberopticvalley.com.
 13.581: fiberopticvalley.com INFO Begin testing connectivity for fiberopticvalley.com.
 13.838: fiberopticvalley.com INFO Name server 213.180.64.12 announced by: 3301
 13.990: fiberopticvalley.com INFO Name server 213.180.89.10 announced by: 3301
 13.990: fiberopticvalley.com INFO Zone announced by ASN: 3301
 13.991: fiberopticvalley.com NOTICE Zone announced by only one ASN (1).
 13.991: fiberopticvalley.com INFO Zone announced by IPv6 ASN: 
 13.991: fiberopticvalley.com NOTICE Zone announced by only one IPv6 ASN (0).
 13.992: fiberopticvalley.com INFO Done testing connectivity for fiberopticvalley.com.
 13.992: fiberopticvalley.com INFO Begin testing DNSSEC for fiberopticvalley.com.
 14.392: fiberopticvalley.com INFO Did not find DS record for fiberopticvalley.com at parent.
 14.454: fiberopticvalley.com INFO Servers for fiberopticvalley.com have consistent extra processing status.
 14.454: fiberopticvalley.com INFO Did not find DNSKEY record for fiberopticvalley.com at child.
 14.454: fiberopticvalley.com INFO No DNSKEY(s) found at child, other tests skipped.
 14.454: fiberopticvalley.com INFO Done testing DNSSEC for fiberopticvalley.com.
 14.454: fiberopticvalley.com INFO Test completed for zone fiberopticvalley.com.
