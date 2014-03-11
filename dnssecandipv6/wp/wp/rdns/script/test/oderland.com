  0.000: oderland.com INFO Begin testing zone oderland.com with version 1.0.1.
  0.000: oderland.com INFO Begin testing delegation for oderland.com.
  3.789: oderland.com INFO Name servers listed at parent: dns1.oderland.com,dns2.oderland.com
  3.895: oderland.com INFO Name servers listed at child: dns1.oderland.com,dns2.oderland.com
  3.895: oderland.com NOTICE No IPv6 name servers found.
  4.066: oderland.com INFO Parent glue for oderland.com found: dns1.oderland.com (91.201.61.4)
  4.385: oderland.com INFO Parent glue for oderland.com found: dns2.oderland.com (91.201.63.191)
  4.423: oderland.com INFO Checking glue for dns1.oderland.com (91.201.61.4).
  4.442: oderland.com INFO Child glue for oderland.com found: dns1.oderland.com (91.201.61.4)
  4.442: oderland.com INFO Checking glue for dns2.oderland.com (91.201.63.191).
  4.459: oderland.com INFO Child glue for oderland.com found: dns2.oderland.com (91.201.63.191)
  4.459: oderland.com INFO Done testing delegation for oderland.com.
  4.460: oderland.com INFO Begin testing name server dns1.oderland.com.
  4.460: oderland.com INFO Begin testing host dns1.oderland.com.
  4.460: oderland.com INFO Begin testing address 91.201.61.4.
  7.825: oderland.com INFO Done testing address 91.201.61.4.
  7.825: oderland.com INFO Done testing host dns1.oderland.com.
  7.844: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) is not recursive.
  7.864: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) authoritative for oderland.com.
  7.882: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) answers queries over UDP.
  7.916: oderland.com INFO Name server dns1.oderland.com (91.201.61.4) answers queries over TCP.
  7.997: oderland.com NOTICE Name server dns1.oderland.com (91.201.61.4) open for zone transfer of oderland.com.
  8.017: oderland.com INFO Legacy name server ID for dns1.oderland.com (91.201.61.4): hostname.bind = dns1.oderland.com
  8.034: oderland.com INFO Legacy name server ID for dns1.oderland.com (91.201.61.4): version.bind = 9.3.4-P1
  8.067: oderland.com NOTICE No answer received from 91.201.61.4 when querying for version.server/CH/TXT.
  8.068: oderland.com INFO Done testing name server dns1.oderland.com.
  8.068: oderland.com INFO Begin testing name server dns2.oderland.com.
  8.068: oderland.com INFO Begin testing host dns2.oderland.com.
  8.068: oderland.com INFO Begin testing address 91.201.63.191.
  8.297: oderland.com INFO Done testing address 91.201.63.191.
  8.297: oderland.com INFO Done testing host dns2.oderland.com.
  8.317: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) is not recursive.
  8.336: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) authoritative for oderland.com.
  8.353: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) answers queries over UDP.
  8.385: oderland.com INFO Name server dns2.oderland.com (91.201.63.191) answers queries over TCP.
  8.457: oderland.com NOTICE Name server dns2.oderland.com (91.201.63.191) open for zone transfer of oderland.com.
  8.474: oderland.com INFO Legacy name server ID for dns2.oderland.com (91.201.63.191): hostname.bind = dns2.oderland.com
  8.492: oderland.com INFO Legacy name server ID for dns2.oderland.com (91.201.63.191): version.bind = 9.3.4-P1
  8.526: oderland.com NOTICE No answer received from 91.201.63.191 when querying for version.server/CH/TXT.
  8.526: oderland.com INFO Done testing name server dns2.oderland.com.
  8.527: oderland.com INFO Begin testing zone consistency for oderland.com.
  8.549: oderland.com INFO SOA at address 91.201.61.4 has serial 2008061787.
  8.568: oderland.com INFO SOA at address 91.201.63.191 has serial 2008061787.
  8.568: oderland.com INFO All SOA records have consistent serial numbers.
  8.568: oderland.com INFO All SOA records are consistent among all name servers.
  8.568: oderland.com INFO Done testing zone consistency for oderland.com.
  8.568: oderland.com INFO Begin testing SOA parameters for oderland.com.
  8.587: oderland.com INFO Found SOA record for oderland.com.
  8.587: oderland.com INFO Begin testing host dns1.oderland.com.
  8.588: oderland.com INFO Begin testing address 91.201.61.4.
  8.590: oderland.com INFO Done testing address 91.201.61.4.
  8.590: oderland.com INFO Done testing host dns1.oderland.com.
  8.590: oderland.com INFO SOA MNAME for oderland.com valid (dns1.oderland.com).
  8.590: oderland.com INFO SOA MNAME for oderland.com (dns1.oderland.com) listed as NS.
  8.610: oderland.com INFO SOA MNAME for oderland.com (dns1.oderland.com) is authoritative.
  8.611: oderland.com INFO Begin testing email address registry@oderland.se.
  8.651: oderland.com INFO Mail exchangers for registry@oderland.se found vsp02.oderland.com,vsp01.oderland.com.
  8.651: oderland.com INFO All mail servers for registry@oderland.se are in zone oderland.com.
  8.652: oderland.com INFO Begin testing host vsp02.oderland.com.
  8.687: oderland.com INFO Begin testing address 91.201.63.250.
  8.748: oderland.com INFO Done testing address 91.201.63.250.
  8.748: oderland.com INFO Done testing host vsp02.oderland.com.
  8.748: oderland.com INFO Begin testing mail server vsp02.oderland.com (91.201.63.250) with registry@oderland.se.
  9.244: oderland.com INFO SMTP banner: vsp01.oderland.com ESMTP Halon Mail Gateway (H/OS)
  9.432: oderland.com INFO SMTP testing of vsp02.oderland.com (91.201.63.250) with registry@oderland.se succeeded without errors.
  9.432: oderland.com INFO Done testing mail server vsp02.oderland.com (91.201.63.250) with registry@oderland.se.
  9.432: oderland.com INFO Begin testing host vsp01.oderland.com.
  9.466: oderland.com INFO Begin testing address 91.201.63.252.
  9.484: oderland.com INFO Done testing address 91.201.63.252.
  9.484: oderland.com INFO Done testing host vsp01.oderland.com.
  9.485: oderland.com INFO Delivery over IPv4 to registry@oderland.se ok.
  9.485: oderland.com INFO Delivery over IPv6 to registry@oderland.se could not be done.
  9.485: oderland.com INFO Done testing email address registry@oderland.se.
  9.485: oderland.com INFO Successful attempt to deliver email for SOA RNAME of oderland.com (registry.oderland.se) using registry@oderland.se.
  9.485: oderland.com INFO SOA TTL for oderland.com OK (14400) - recommended >= 3600.
  9.485: oderland.com INFO SOA refresh for oderland.com OK (14400) - recommended >= 14400.
  9.485: oderland.com NOTICE SOA refresh for oderland.com lower than retry (14400 vs 86400).
  9.485: oderland.com INFO SOA retry for oderland.com OK (86400) - recommended >= 3600.
  9.485: oderland.com INFO SOA expire for oderland.com OK (3600000) - recommended >= 604800.
  9.485: oderland.com INFO SOA minimum for oderland.com OK (86400) - recommended between 300 and 86400.
  9.485: oderland.com INFO Done testing SOA parameters for oderland.com.
  9.486: oderland.com INFO Begin testing connectivity for oderland.com.
  9.706: oderland.com INFO Name server 91.201.63.191 announced by: 44136
  9.839: oderland.com INFO Name server 91.201.61.4 announced by: 44136
  9.839: oderland.com INFO Zone announced by ASN: 44136
  9.839: oderland.com NOTICE Zone announced by only one ASN (1).
  9.840: oderland.com INFO Zone announced by IPv6 ASN: 
  9.840: oderland.com NOTICE Zone announced by only one IPv6 ASN (0).
  9.840: oderland.com INFO Done testing connectivity for oderland.com.
  9.840: oderland.com INFO Begin testing DNSSEC for oderland.com.
 10.198: oderland.com INFO Did not find DS record for oderland.com at parent.
 10.264: oderland.com INFO Servers for oderland.com have consistent extra processing status.
 10.265: oderland.com INFO Did not find DNSKEY record for oderland.com at child.
 10.265: oderland.com INFO No DNSKEY(s) found at child, other tests skipped.
 10.265: oderland.com INFO Done testing DNSSEC for oderland.com.
 10.265: oderland.com INFO Test completed for zone oderland.com.
