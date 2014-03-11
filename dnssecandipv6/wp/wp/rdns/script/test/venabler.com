  0.000: venabler.com INFO Begin testing zone venabler.com with version 1.0.1.
  0.000: venabler.com INFO Begin testing delegation for venabler.com.
  8.500: venabler.com INFO Name servers listed at parent: mark.inbox.se,max.hkust.se
 10.622: venabler.com INFO Name servers listed at child: mark.inbox.se,max.hkust.se
 10.622: venabler.com NOTICE No IPv6 name servers found.
 11.025: venabler.com INFO Done testing delegation for venabler.com.
 11.025: venabler.com INFO Begin testing name server mark.inbox.se.
 11.025: venabler.com INFO Begin testing host mark.inbox.se.
 11.026: venabler.com INFO Begin testing address 77.110.43.143.
 14.510: venabler.com INFO Done testing address 77.110.43.143.
 14.510: venabler.com INFO Done testing host mark.inbox.se.
 14.528: venabler.com INFO Name server mark.inbox.se (77.110.43.143) is not recursive.
 14.547: venabler.com INFO Name server mark.inbox.se (77.110.43.143) authoritative for venabler.com.
 14.565: venabler.com INFO Name server mark.inbox.se (77.110.43.143) answers queries over UDP.
 14.598: venabler.com INFO Name server mark.inbox.se (77.110.43.143) answers queries over TCP.
 14.641: venabler.com INFO Name server mark.inbox.se (77.110.43.143) closed for zone transfer of venabler.com.
 14.658: venabler.com NOTICE No answer received from 77.110.43.143 when querying for hostname.bind/CH/TXT.
 14.675: venabler.com NOTICE No answer received from 77.110.43.143 when querying for version.bind/CH/TXT.
 14.692: venabler.com NOTICE No answer received from 77.110.43.143 when querying for id.server/CH/TXT.
 14.710: venabler.com NOTICE No answer received from 77.110.43.143 when querying for version.server/CH/TXT.
 14.710: venabler.com INFO Done testing name server mark.inbox.se.
 14.711: venabler.com INFO Begin testing name server max.hkust.se.
 14.711: venabler.com INFO Begin testing host max.hkust.se.
 14.711: venabler.com INFO Begin testing address 85.11.198.88.
 15.139: venabler.com INFO Done testing address 85.11.198.88.
 15.139: venabler.com INFO Done testing host max.hkust.se.
 17.226: venabler.com INFO Name server max.hkust.se (85.11.198.88) is not recursive.
 19.328: venabler.com INFO Name server max.hkust.se (85.11.198.88) authoritative for venabler.com.
 21.378: venabler.com INFO Name server max.hkust.se (85.11.198.88) answers queries over UDP.
 25.529: venabler.com INFO Name server max.hkust.se (85.11.198.88) answers queries over TCP.
 31.828: venabler.com INFO Name server max.hkust.se (85.11.198.88) closed for zone transfer of venabler.com.
 34.028: venabler.com NOTICE No answer received from 85.11.198.88 when querying for hostname.bind/CH/TXT.
 36.179: venabler.com NOTICE No answer received from 85.11.198.88 when querying for version.bind/CH/TXT.
 38.329: venabler.com NOTICE No answer received from 85.11.198.88 when querying for id.server/CH/TXT.
 40.479: venabler.com NOTICE No answer received from 85.11.198.88 when querying for version.server/CH/TXT.
 40.479: venabler.com INFO Done testing name server max.hkust.se.
 40.480: venabler.com INFO Begin testing zone consistency for venabler.com.
 42.680: venabler.com INFO SOA at address 85.11.198.88 has serial 2010032600.
 42.700: venabler.com INFO SOA at address 77.110.43.143 has serial 2010032600.
 42.701: venabler.com INFO All SOA records have consistent serial numbers.
 42.701: venabler.com INFO All SOA records are consistent among all name servers.
 42.701: venabler.com INFO Done testing zone consistency for venabler.com.
 42.701: venabler.com INFO Begin testing SOA parameters for venabler.com.
 44.931: venabler.com INFO Found SOA record for venabler.com.
 44.931: venabler.com INFO Begin testing host max.hkust.se.
 44.931: venabler.com INFO Begin testing address 85.11.198.88.
 44.933: venabler.com INFO Done testing address 85.11.198.88.
 44.933: venabler.com INFO Done testing host max.hkust.se.
 44.933: venabler.com INFO SOA MNAME for venabler.com valid (max.hkust.se).
 44.933: venabler.com INFO SOA MNAME for venabler.com (max.hkust.se) listed as NS.
 47.131: venabler.com INFO SOA MNAME for venabler.com (max.hkust.se) is authoritative.
 47.131: venabler.com INFO Begin testing email address stone@hkust.se.
 47.152: venabler.com INFO Mail exchangers for stone@hkust.se found bk.hkust.se.
 47.153: venabler.com INFO Begin testing host bk.hkust.se.
 47.186: venabler.com INFO Begin testing address 84.243.23.150.
 47.634: venabler.com INFO Done testing address 84.243.23.150.
 47.634: venabler.com INFO Done testing host bk.hkust.se.
 47.635: venabler.com INFO Begin testing mail server bk.hkust.se (84.243.23.150) with stone@hkust.se.
 47.683: venabler.com INFO SMTP banner: bk.hkust.se ESMTP Postfix
 47.748: venabler.com INFO SMTP testing of bk.hkust.se (84.243.23.150) with stone@hkust.se succeeded without errors.
 47.748: venabler.com INFO Done testing mail server bk.hkust.se (84.243.23.150) with stone@hkust.se.
 47.749: venabler.com INFO Delivery over IPv4 to stone@hkust.se ok.
 47.749: venabler.com INFO Delivery over IPv6 to stone@hkust.se could not be done.
 47.749: venabler.com INFO Done testing email address stone@hkust.se.
 47.749: venabler.com INFO Successful attempt to deliver email for SOA RNAME of venabler.com (stone.hkust.se) using stone@hkust.se.
 47.749: venabler.com INFO SOA TTL for venabler.com OK (86400) - recommended >= 3600.
 47.749: venabler.com INFO SOA refresh for venabler.com OK (86400) - recommended >= 14400.
 47.749: venabler.com INFO SOA retry for venabler.com OK (7200) - recommended >= 3600.
 47.749: venabler.com INFO SOA expire for venabler.com OK (2592000) - recommended >= 604800.
 47.749: venabler.com INFO SOA minimum for venabler.com OK (86400) - recommended between 300 and 86400.
 47.749: venabler.com INFO Done testing SOA parameters for venabler.com.
 47.750: venabler.com INFO Begin testing connectivity for venabler.com.
 48.105: venabler.com INFO Name server 85.11.198.88 announced by: 3301
 48.226: venabler.com INFO Name server 77.110.43.143 announced by: 34610
 48.226: venabler.com INFO Zone announced by ASN: 3301,34610
 48.226: venabler.com INFO Zone announced by more than one ASN (2).
 48.227: venabler.com INFO Zone announced by IPv6 ASN: 
 48.227: venabler.com NOTICE Zone announced by only one IPv6 ASN (0).
 48.227: venabler.com INFO Done testing connectivity for venabler.com.
 48.227: venabler.com INFO Begin testing DNSSEC for venabler.com.
 48.503: venabler.com INFO Did not find DS record for venabler.com at parent.
 52.862: venabler.com INFO Servers for venabler.com have consistent extra processing status.
 52.862: venabler.com INFO Did not find DNSKEY record for venabler.com at child.
 52.862: venabler.com INFO No DNSKEY(s) found at child, other tests skipped.
 52.862: venabler.com INFO Done testing DNSSEC for venabler.com.
 52.862: venabler.com INFO Test completed for zone venabler.com.
