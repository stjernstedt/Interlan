  0.000: clichehosting.com INFO Begin testing zone clichehosting.com with version 1.5.0.
  0.001: clichehosting.com INFO Begin testing delegation for clichehosting.com.
 18.693: clichehosting.com INFO Name servers listed at parent: ns1.clichehosting.com,ns2.clichehosting.com
 21.128: clichehosting.com INFO Name servers listed at child: ns1.clichehosting.com,ns2.clichehosting.com
 21.128: clichehosting.com NOTICE No IPv6 name servers found.
 21.280: clichehosting.com INFO Parent glue for clichehosting.com found: ns1.clichehosting.com (195.249.40.60)
 21.763: clichehosting.com INFO Parent glue for clichehosting.com found: ns2.clichehosting.com (195.249.40.61)
 21.903: clichehosting.com INFO Checking glue for ns1.clichehosting.com (195.249.40.60).
 21.949: clichehosting.com INFO Child glue for clichehosting.com found: ns1.clichehosting.com (195.249.40.60)
 21.949: clichehosting.com INFO Checking glue for ns2.clichehosting.com (195.249.40.61).
 22.002: clichehosting.com INFO Child glue for clichehosting.com found: ns2.clichehosting.com (195.249.40.61)
 22.016: clichehosting.com INFO Parent glue for clichehosting.com found: ns1.clichehosting.com (195.249.40.60)
 22.016: clichehosting.com INFO Parent glue for clichehosting.com found: ns2.clichehosting.com (195.249.40.61)
 23.021: clichehosting.com INFO It is possible to build a referral packet for clichehosting.com that works without EDNS0.
 23.021: clichehosting.com INFO Done testing delegation for clichehosting.com.
 23.022: clichehosting.com INFO Begin testing name server ns1.clichehosting.com.
 23.022: clichehosting.com INFO Begin testing host ns1.clichehosting.com.
 23.326: clichehosting.com INFO Begin testing address 195.249.40.60.
 34.763: clichehosting.com INFO Done testing address 195.249.40.60.
 34.763: clichehosting.com INFO Done testing host ns1.clichehosting.com.
 35.492: clichehosting.com INFO Name server ns1.clichehosting.com (195.249.40.60) answers queries over UDP.
 35.545: clichehosting.com INFO Name server ns1.clichehosting.com (195.249.40.60) answers queries over TCP.
 35.570: clichehosting.com INFO Name server ns1.clichehosting.com (195.249.40.60) is not recursive.
 35.712: clichehosting.com INFO Name server ns1.clichehosting.com (195.249.40.60) authoritative for clichehosting.com.
 35.785: clichehosting.com INFO Name server ns1.clichehosting.com (195.249.40.60) closed for zone transfer of clichehosting.com.
 35.802: clichehosting.com INFO Legacy name server ID for ns1.clichehosting.com (195.249.40.60): hostname.bind = ns1
 35.831: clichehosting.com INFO Legacy name server ID for ns1.clichehosting.com (195.249.40.60): version.bind = 9.6-ESV-R4-P3
 35.899: clichehosting.com NOTICE No answer received from 195.249.40.60 when querying for version.server/CH/TXT.
 35.899: clichehosting.com INFO Done testing name server ns1.clichehosting.com.
 35.899: clichehosting.com INFO Begin testing name server ns2.clichehosting.com.
 35.899: clichehosting.com INFO Begin testing host ns2.clichehosting.com.
 36.416: clichehosting.com INFO Begin testing address 195.249.40.61.
 37.838: clichehosting.com INFO Done testing address 195.249.40.61.
 37.838: clichehosting.com INFO Done testing host ns2.clichehosting.com.
 42.432: clichehosting.com INFO Name server ns2.clichehosting.com (195.249.40.61) answers queries over UDP.
 42.461: clichehosting.com INFO Name server ns2.clichehosting.com (195.249.40.61) answers queries over TCP.
 42.483: clichehosting.com INFO Name server ns2.clichehosting.com (195.249.40.61) is not recursive.
 42.560: clichehosting.com INFO Name server ns2.clichehosting.com (195.249.40.61) authoritative for clichehosting.com.
 42.601: clichehosting.com INFO Name server ns2.clichehosting.com (195.249.40.61) closed for zone transfer of clichehosting.com.
 42.618: clichehosting.com INFO Legacy name server ID for ns2.clichehosting.com (195.249.40.61): hostname.bind = ns1
 42.634: clichehosting.com INFO Legacy name server ID for ns2.clichehosting.com (195.249.40.61): version.bind = 9.6-ESV-R4-P3
 42.666: clichehosting.com NOTICE No answer received from 195.249.40.61 when querying for version.server/CH/TXT.
 42.667: clichehosting.com INFO Done testing name server ns2.clichehosting.com.
 42.667: clichehosting.com INFO Begin testing zone consistency for clichehosting.com.
 44.231: clichehosting.com INFO SOA at address 195.249.40.60 has serial 2003052127.
 44.248: clichehosting.com INFO SOA at address 195.249.40.61 has serial 2003052127.
 44.248: clichehosting.com INFO All SOA records have consistent serial numbers.
 44.248: clichehosting.com INFO All other fields in the SOA record are consistent among all name servers.
 45.271: clichehosting.com NOTICE The listed nameservers for clichehosting.com all report the same set of nameservers.
 45.271: clichehosting.com INFO Done testing zone consistency for clichehosting.com.
 45.271: clichehosting.com INFO Begin testing SOA parameters for clichehosting.com.
 45.290: clichehosting.com INFO Found SOA record for clichehosting.com.
 45.301: clichehosting.com INFO Begin testing host ns1.cliche.se.
 45.606: clichehosting.com INFO Begin testing address 195.249.40.60.
 46.015: clichehosting.com INFO Done testing address 195.249.40.60.
 46.015: clichehosting.com INFO Done testing host ns1.cliche.se.
 46.015: clichehosting.com INFO SOA MNAME for clichehosting.com valid (ns1.cliche.se).
 46.016: clichehosting.com NOTICE SOA MNAME for clichehosting.com (ns1.cliche.se) not listed as NS.
 46.355: clichehosting.com INFO SOA MNAME for clichehosting.com (ns1.cliche.se) is authoritative.
 46.355: clichehosting.com INFO Begin testing email address Administrator@cliche.se.
 46.638: clichehosting.com INFO Mail exchangers for Administrator@cliche.se found imap.servnet.dk.
 46.643: clichehosting.com INFO Begin testing host imap.servnet.dk.
 47.463: clichehosting.com INFO Begin testing address 195.249.40.69.
 48.451: clichehosting.com INFO Done testing address 195.249.40.69.
 48.452: clichehosting.com INFO Done testing host imap.servnet.dk.
 48.922: clichehosting.com INFO Done testing email address Administrator@cliche.se.
 48.922: clichehosting.com INFO Successful attempt to deliver email for SOA RNAME of clichehosting.com (Administrator.cliche.se) using Administrator@cliche.se.
 48.922: clichehosting.com INFO SOA TTL for clichehosting.com OK (7200) - recommended >= 3600.
 48.922: clichehosting.com NOTICE SOA refresh for clichehosting.com too small (3600) - recommended >= 14400.
 48.922: clichehosting.com NOTICE SOA retry for clichehosting.com too small (600) - recommended >= 3600.
 48.922: clichehosting.com NOTICE SOA expire for clichehosting.com too small (86400) - recommended >= 604800.
 48.923: clichehosting.com INFO SOA minimum for clichehosting.com OK (7200) - recommended between 300 and 86400.
 48.923: clichehosting.com INFO Done testing SOA parameters for clichehosting.com.
 48.923: clichehosting.com INFO Begin testing connectivity for clichehosting.com.
 50.565: clichehosting.com NOTICE Zone announced by fewer than two IPv4 ASN.
 50.565: clichehosting.com NOTICE Zone announced by fewer than two IPv6 ASN.
 50.566: clichehosting.com INFO Done testing connectivity for clichehosting.com.
 50.566: clichehosting.com INFO Begin testing DNSSEC for clichehosting.com.
 50.631: clichehosting.com INFO Did not find DS record for clichehosting.com at parent.
 50.689: clichehosting.com INFO Servers for clichehosting.com have consistent extra processing status.
 50.719: clichehosting.com INFO Authenticated denial records not found for clichehosting.com.
 50.734: clichehosting.com INFO Did not find DNSKEY record for clichehosting.com at child.
 50.734: clichehosting.com INFO No DNSKEY(s) found at child, other tests skipped.
 50.734: clichehosting.com INFO Done testing DNSSEC for clichehosting.com.
 50.735: clichehosting.com INFO Test completed for zone clichehosting.com.
