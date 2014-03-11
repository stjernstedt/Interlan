  0.000: software-innovation.com INFO Begin testing zone software-innovation.com with version 1.2.
  0.001: software-innovation.com INFO Begin testing delegation for software-innovation.com.
  9.817: software-innovation.com INFO Name servers listed at parent: nic.software-innovation.com,ns1.ascio.net,ns2.ascio.net
 12.453: software-innovation.com INFO Name servers listed at child: nic.software-innovation.com,ns1.ascio.net,ns2.ascio.net
 12.454: software-innovation.com NOTICE No IPv6 name servers found.
 12.489: software-innovation.com INFO Parent glue for software-innovation.com found: nic.software-innovation.com (62.92.25.140)
 13.109: software-innovation.com INFO Checking glue for nic.software-innovation.com (62.92.25.140).
 13.152: software-innovation.com INFO Child glue for software-innovation.com found: nic.software-innovation.com (62.92.25.140)
 13.152: software-innovation.com INFO Parent glue for software-innovation.com found: nic.software-innovation.com (62.92.25.140)
 13.154: software-innovation.com INFO Done testing delegation for software-innovation.com.
 13.154: software-innovation.com INFO Begin testing name server nic.software-innovation.com.
 13.154: software-innovation.com INFO Begin testing host nic.software-innovation.com.
 13.155: software-innovation.com INFO Begin testing address 62.92.25.140.
 18.057: software-innovation.com WARNING Reverse for 62.92.25.140 points to an unknown host name (140.25.92.62.software-innovation.com).
 18.058: software-innovation.com INFO Done testing address 62.92.25.140.
 18.058: software-innovation.com INFO Done testing host nic.software-innovation.com.
 18.096: software-innovation.com INFO Name server nic.software-innovation.com (62.92.25.140) answers queries over UDP.
 18.129: software-innovation.com INFO Name server nic.software-innovation.com (62.92.25.140) answers queries over TCP.
 18.150: software-innovation.com INFO Name server nic.software-innovation.com (62.92.25.140) is not recursive.
 18.168: software-innovation.com INFO Name server nic.software-innovation.com (62.92.25.140) authoritative for software-innovation.com.
 18.209: software-innovation.com INFO Name server nic.software-innovation.com (62.92.25.140) closed for zone transfer of software-innovation.com.
 18.233: software-innovation.com NOTICE No answer received from 62.92.25.140 when querying for hostname.bind/CH/TXT.
 18.251: software-innovation.com NOTICE No answer received from 62.92.25.140 when querying for version.bind/CH/TXT.
 18.267: software-innovation.com NOTICE No answer received from 62.92.25.140 when querying for id.server/CH/TXT.
 18.285: software-innovation.com NOTICE No answer received from 62.92.25.140 when querying for version.server/CH/TXT.
 18.286: software-innovation.com INFO Done testing name server nic.software-innovation.com.
 18.286: software-innovation.com INFO Begin testing name server ns1.ascio.net.
 18.286: software-innovation.com INFO Begin testing host ns1.ascio.net.
 18.287: software-innovation.com INFO Begin testing address 62.128.146.41.
 18.631: software-innovation.com INFO Done testing address 62.128.146.41.
 18.632: software-innovation.com INFO Done testing host ns1.ascio.net.
 18.671: software-innovation.com INFO Name server ns1.ascio.net (62.128.146.41) answers queries over UDP.
 18.744: software-innovation.com INFO Name server ns1.ascio.net (62.128.146.41) answers queries over TCP.
 18.781: software-innovation.com INFO Name server ns1.ascio.net (62.128.146.41) is not recursive.
 18.820: software-innovation.com INFO Name server ns1.ascio.net (62.128.146.41) authoritative for software-innovation.com.
 18.924: software-innovation.com INFO Name server ns1.ascio.net (62.128.146.41) closed for zone transfer of software-innovation.com.
 18.964: software-innovation.com INFO Legacy name server ID for ns1.ascio.net (62.128.146.41): hostname.bind = nn-ns2
 19.076: software-innovation.com NOTICE No answer received from 62.128.146.41 when querying for version.server/CH/TXT.
 19.076: software-innovation.com INFO Done testing name server ns1.ascio.net.
 19.076: software-innovation.com INFO Begin testing name server ns2.ascio.net.
 19.077: software-innovation.com INFO Begin testing host ns2.ascio.net.
 19.078: software-innovation.com INFO Begin testing address 80.237.153.102.
 19.618: software-innovation.com INFO Done testing address 80.237.153.102.
 19.618: software-innovation.com INFO Done testing host ns2.ascio.net.
 19.662: software-innovation.com INFO Name server ns2.ascio.net (80.237.153.102) answers queries over UDP.
 19.743: software-innovation.com INFO Name server ns2.ascio.net (80.237.153.102) answers queries over TCP.
 19.784: software-innovation.com INFO Name server ns2.ascio.net (80.237.153.102) is not recursive.
 19.827: software-innovation.com INFO Name server ns2.ascio.net (80.237.153.102) authoritative for software-innovation.com.
 19.942: software-innovation.com INFO Name server ns2.ascio.net (80.237.153.102) closed for zone transfer of software-innovation.com.
 19.984: software-innovation.com INFO Legacy name server ID for ns2.ascio.net (80.237.153.102): hostname.bind = cgn1srv5.ascio.net
 20.025: software-innovation.com NOTICE No answer received from 80.237.153.102 when querying for version.bind/CH/TXT.
 20.067: software-innovation.com NOTICE No answer received from 80.237.153.102 when querying for id.server/CH/TXT.
 20.117: software-innovation.com NOTICE No answer received from 80.237.153.102 when querying for version.server/CH/TXT.
 20.117: software-innovation.com INFO Done testing name server ns2.ascio.net.
 20.118: software-innovation.com INFO Begin testing zone consistency for software-innovation.com.
 20.164: software-innovation.com INFO SOA at address 62.128.146.41 has serial 2010082502.
 20.207: software-innovation.com INFO SOA at address 80.237.153.102 has serial 2010082502.
 20.251: software-innovation.com INFO SOA at address 62.92.25.140 has serial 2010082502.
 20.252: software-innovation.com INFO All SOA records have consistent serial numbers.
 20.252: software-innovation.com INFO All SOA records are consistent among all name servers.
 20.252: software-innovation.com INFO Done testing zone consistency for software-innovation.com.
 20.252: software-innovation.com INFO Begin testing SOA parameters for software-innovation.com.
 20.296: software-innovation.com INFO Found SOA record for software-innovation.com.
 20.296: software-innovation.com INFO Begin testing host nic.software-innovation.com.
 20.296: software-innovation.com INFO Begin testing address 62.92.25.140.
 20.298: software-innovation.com WARNING Reverse for 62.92.25.140 points to an unknown host name (140.25.92.62.software-innovation.com).
 20.298: software-innovation.com INFO Done testing address 62.92.25.140.
 20.298: software-innovation.com INFO Done testing host nic.software-innovation.com.
 20.298: software-innovation.com INFO SOA MNAME for software-innovation.com valid (nic.software-innovation.com).
 20.298: software-innovation.com INFO SOA MNAME for software-innovation.com (nic.software-innovation.com) listed as NS.
 20.326: software-innovation.com INFO SOA MNAME for software-innovation.com (nic.software-innovation.com) is authoritative.
 20.326: software-innovation.com INFO Begin testing email address hostmaster@software-innovation.com.
 20.684: software-innovation.com INFO Mail exchangers for hostmaster@software-innovation.com found mx02.securitycenter.no,mx01.securitycenter.no.
 20.684: software-innovation.com INFO Begin testing host mx02.securitycenter.no.
 22.974: software-innovation.com INFO Begin testing address 195.177.99.250.
 23.892: software-innovation.com INFO Done testing address 195.177.99.250.
 23.893: software-innovation.com INFO Done testing host mx02.securitycenter.no.
 23.893: software-innovation.com INFO Begin testing mail server mx02.securitycenter.no (195.177.99.250) with hostmaster@software-innovation.com.
 24.465: software-innovation.com INFO SMTP banner: mx02.securitycenter.no ESMTP
 24.539: software-innovation.com INFO SMTP testing of mx02.securitycenter.no (195.177.99.250) with hostmaster@software-innovation.com succeeded without errors.
 24.540: software-innovation.com INFO Done testing mail server mx02.securitycenter.no (195.177.99.250) with hostmaster@software-innovation.com.
 24.540: software-innovation.com INFO Begin testing host mx01.securitycenter.no.
 25.024: software-innovation.com INFO Begin testing address 195.177.96.250.
 25.253: software-innovation.com INFO Done testing address 195.177.96.250.
 25.254: software-innovation.com INFO Done testing host mx01.securitycenter.no.
 25.254: software-innovation.com INFO Delivery over IPv4 to hostmaster@software-innovation.com ok.
 25.254: software-innovation.com INFO Delivery over IPv6 to hostmaster@software-innovation.com could not be done.
 25.254: software-innovation.com INFO Done testing email address hostmaster@software-innovation.com.
 25.255: software-innovation.com INFO Successful attempt to deliver email for SOA RNAME of software-innovation.com (hostmaster.software-innovation.com) using hostmaster@software-innovation.com.
 25.255: software-innovation.com INFO SOA TTL for software-innovation.com OK (86400) - recommended >= 3600.
 25.255: software-innovation.com NOTICE SOA refresh for software-innovation.com too small (3600) - recommended >= 14400.
 25.255: software-innovation.com NOTICE SOA retry for software-innovation.com too small (1800) - recommended >= 3600.
 25.256: software-innovation.com INFO SOA expire for software-innovation.com OK (1814400) - recommended >= 604800.
 25.256: software-innovation.com INFO SOA minimum for software-innovation.com OK (3600) - recommended between 300 and 86400.
 25.256: software-innovation.com INFO Done testing SOA parameters for software-innovation.com.
 25.256: software-innovation.com INFO Begin testing connectivity for software-innovation.com.
 25.897: software-innovation.com INFO Name server 80.237.153.102 announced by: 20773
 26.494: software-innovation.com INFO Name server 62.128.146.41 announced by: 8912
 27.253: software-innovation.com INFO Name server 62.92.25.140 announced by: 2119
 27.253: software-innovation.com INFO Zone announced by IPv4 ASN: 20773,2119,8912
 27.254: software-innovation.com INFO Zone announced by more than one ASN (3).
 27.254: software-innovation.com INFO Zone announced by IPv6 ASN: 
 27.254: software-innovation.com NOTICE Zone announced by less than two IPv6 ASN (0).
 27.254: software-innovation.com INFO Done testing connectivity for software-innovation.com.
 27.255: software-innovation.com INFO Begin testing DNSSEC for software-innovation.com.
 27.340: software-innovation.com INFO Did not find DS record for software-innovation.com at parent.
 27.545: software-innovation.com INFO Servers for software-innovation.com have consistent extra processing status.
 27.546: software-innovation.com INFO Did not find DNSKEY record for software-innovation.com at child.
 27.546: software-innovation.com INFO No DNSKEY(s) found at child, other tests skipped.
 27.546: software-innovation.com INFO Done testing DNSSEC for software-innovation.com.
 27.546: software-innovation.com INFO Test completed for zone software-innovation.com.
