  0.000: nominate.com INFO Begin testing zone nominate.com with version 1.5.0.
  0.001: nominate.com INFO Begin testing delegation for nominate.com.
 23.459: nominate.com INFO Name servers listed at parent: brain.bb-online.co.uk,ns1.bb-online.net,ns2.bb-online.net
 27.311: nominate.com INFO Name servers listed at child: brain.bb-online.co.uk,ns1.bb-online.net,ns2.bb-online.net
 27.312: nominate.com NOTICE No IPv6 name servers found.
 30.160: nominate.com INFO It is possible to build a referral packet for nominate.com that works without EDNS0.
 30.160: nominate.com INFO Done testing delegation for nominate.com.
 30.161: nominate.com INFO Begin testing name server brain.bb-online.co.uk.
 30.161: nominate.com INFO Begin testing host brain.bb-online.co.uk.
 30.537: nominate.com INFO Begin testing address 80.88.192.130.
 49.934: nominate.com INFO Done testing address 80.88.192.130.
 49.935: nominate.com INFO Done testing host brain.bb-online.co.uk.
 50.362: nominate.com INFO Name server brain.bb-online.co.uk (80.88.192.130) answers queries over UDP.
 50.458: nominate.com INFO Name server brain.bb-online.co.uk (80.88.192.130) answers queries over TCP.
 50.551: nominate.com INFO Name server brain.bb-online.co.uk (80.88.192.130) is not recursive.
 50.802: nominate.com INFO Name server brain.bb-online.co.uk (80.88.192.130) authoritative for nominate.com.
 50.929: nominate.com NOTICE Name server brain.bb-online.co.uk (80.88.192.130) open for zone transfer of nominate.com.
 50.975: nominate.com INFO Legacy name server ID for brain.bb-online.co.uk (80.88.192.130): hostname.bind = brain
 51.108: nominate.com INFO Legacy name server ID for brain.bb-online.co.uk (80.88.192.130): version.bind = [secured]
 51.156: nominate.com NOTICE No answer received from 80.88.192.130 when querying for id.server/CH/TXT.
 51.207: nominate.com NOTICE No answer received from 80.88.192.130 when querying for version.server/CH/TXT.
 51.207: nominate.com INFO Done testing name server brain.bb-online.co.uk.
 51.208: nominate.com INFO Begin testing name server ns1.bb-online.net.
 51.208: nominate.com INFO Begin testing host ns1.bb-online.net.
 51.813: nominate.com INFO Begin testing address 194.168.163.59.
 52.790: nominate.com INFO Done testing address 194.168.163.59.
 52.791: nominate.com INFO Done testing host ns1.bb-online.net.
 53.558: nominate.com INFO Name server ns1.bb-online.net (194.168.163.59) answers queries over UDP.
 53.668: nominate.com INFO Name server ns1.bb-online.net (194.168.163.59) answers queries over TCP.
 53.757: nominate.com INFO Name server ns1.bb-online.net (194.168.163.59) is not recursive.
 54.004: nominate.com INFO Name server ns1.bb-online.net (194.168.163.59) authoritative for nominate.com.
 54.162: nominate.com INFO Name server ns1.bb-online.net (194.168.163.59) closed for zone transfer of nominate.com.
 54.221: nominate.com INFO Legacy name server ID for ns1.bb-online.net (194.168.163.59): hostname.bind = ns11.bb-online.net
 54.280: nominate.com INFO Legacy name server ID for ns1.bb-online.net (194.168.163.59): version.bind = [secured]
 54.335: nominate.com NOTICE No answer received from 194.168.163.59 when querying for id.server/CH/TXT.
 54.394: nominate.com NOTICE No answer received from 194.168.163.59 when querying for version.server/CH/TXT.
 54.394: nominate.com INFO Done testing name server ns1.bb-online.net.
 54.394: nominate.com INFO Begin testing name server ns2.bb-online.net.
 54.394: nominate.com INFO Begin testing host ns2.bb-online.net.
 54.815: nominate.com INFO Begin testing address 194.168.163.58.
 55.963: nominate.com INFO Done testing address 194.168.163.58.
 55.963: nominate.com INFO Done testing host ns2.bb-online.net.
 56.493: nominate.com INFO Name server ns2.bb-online.net (194.168.163.58) answers queries over UDP.
 56.632: nominate.com INFO Name server ns2.bb-online.net (194.168.163.58) answers queries over TCP.
 56.731: nominate.com INFO Name server ns2.bb-online.net (194.168.163.58) is not recursive.
 57.019: nominate.com INFO Name server ns2.bb-online.net (194.168.163.58) authoritative for nominate.com.
 57.181: nominate.com INFO Name server ns2.bb-online.net (194.168.163.58) closed for zone transfer of nominate.com.
 57.282: nominate.com INFO Legacy name server ID for ns2.bb-online.net (194.168.163.58): hostname.bind = ns2
 57.341: nominate.com INFO Legacy name server ID for ns2.bb-online.net (194.168.163.58): version.bind = [secured]
 57.398: nominate.com NOTICE No answer received from 194.168.163.58 when querying for id.server/CH/TXT.
 57.457: nominate.com NOTICE No answer received from 194.168.163.58 when querying for version.server/CH/TXT.
 57.457: nominate.com INFO Done testing name server ns2.bb-online.net.
 57.457: nominate.com INFO Begin testing zone consistency for nominate.com.
 59.886: nominate.com INFO SOA at address 80.88.192.130 has serial 2013051601.
 59.968: nominate.com INFO SOA at address 194.168.163.58 has serial 2013051601.
 60.024: nominate.com INFO SOA at address 194.168.163.59 has serial 2013051601.
 60.025: nominate.com INFO All SOA records have consistent serial numbers.
 60.026: nominate.com INFO All other fields in the SOA record are consistent among all name servers.
 61.632: nominate.com NOTICE The listed nameservers for nominate.com all report the same set of nameservers.
 61.632: nominate.com INFO Done testing zone consistency for nominate.com.
 61.633: nominate.com INFO Begin testing SOA parameters for nominate.com.
 61.689: nominate.com INFO Found SOA record for nominate.com.
 61.689: nominate.com INFO Begin testing host ns1.bb-online.net.
 62.034: nominate.com INFO Begin testing address 194.168.163.59.
 63.021: nominate.com INFO Done testing address 194.168.163.59.
 63.021: nominate.com INFO Done testing host ns1.bb-online.net.
 63.021: nominate.com INFO SOA MNAME for nominate.com valid (ns1.bb-online.net).
 63.022: nominate.com INFO SOA MNAME for nominate.com (ns1.bb-online.net) listed as NS.
 63.779: nominate.com INFO SOA MNAME for nominate.com (ns1.bb-online.net) is authoritative.
 63.779: nominate.com INFO Begin testing email address postmaster@nominate.com.
 64.458: nominate.com INFO Mail exchangers for postmaster@nominate.com found mail.nominate.com,mxbackup.business.ntl.com.
 64.459: nominate.com INFO Begin testing host mail.nominate.com.
 66.333: nominate.com INFO Begin testing address 194.168.163.57.
 68.641: nominate.com INFO Done testing address 194.168.163.57.
 68.641: nominate.com INFO Done testing host mail.nominate.com.
 69.425: nominate.com INFO Begin testing host mxbackup.business.ntl.com.
 71.089: nominate.com INFO Begin testing address 81.103.221.10.
 73.573: nominate.com INFO Done testing address 81.103.221.10.
 73.573: nominate.com INFO Done testing host mxbackup.business.ntl.com.
 74.383: nominate.com INFO Done testing email address postmaster@nominate.com.
 74.383: nominate.com INFO Successful attempt to deliver email for SOA RNAME of nominate.com (postmaster.nominate.com) using postmaster@nominate.com.
 74.384: nominate.com INFO SOA TTL for nominate.com OK (7200) - recommended >= 3600.
 74.384: nominate.com INFO SOA refresh for nominate.com OK (14400) - recommended >= 14400.
 74.384: nominate.com INFO SOA retry for nominate.com OK (7200) - recommended >= 3600.
 74.384: nominate.com NOTICE SOA expire for nominate.com too small (345600) - recommended >= 604800.
 74.384: nominate.com INFO SOA minimum for nominate.com OK (86400) - recommended between 300 and 86400.
 74.384: nominate.com INFO Done testing SOA parameters for nominate.com.
 74.385: nominate.com INFO Begin testing connectivity for nominate.com.
 76.966: nominate.com INFO Zone announced by more than one ASN.
 76.966: nominate.com NOTICE Zone announced by fewer than two IPv6 ASN.
 76.966: nominate.com INFO Done testing connectivity for nominate.com.
 76.967: nominate.com INFO Begin testing DNSSEC for nominate.com.
 77.365: nominate.com INFO Did not find DS record for nominate.com at parent.
 77.685: nominate.com INFO Servers for nominate.com have consistent extra processing status.
 77.772: nominate.com INFO Authenticated denial records not found for nominate.com.
 77.820: nominate.com INFO Did not find DNSKEY record for nominate.com at child.
 77.820: nominate.com INFO No DNSKEY(s) found at child, other tests skipped.
 77.821: nominate.com INFO Done testing DNSSEC for nominate.com.
 77.821: nominate.com INFO Test completed for zone nominate.com.
