  0.000: domaininfo.com INFO Begin testing zone domaininfo.com with version 1.0.1.
  0.000: domaininfo.com INFO Begin testing delegation for domaininfo.com.
  4.342: domaininfo.com INFO Name servers listed at parent: edns05.ports.net,ns4.ports.se,ns5.ports.se
  4.675: domaininfo.com INFO Name servers listed at child: edns05.ports.net,ns4.ports.se,ns5.ports.se
  4.676: domaininfo.com NOTICE No IPv6 name servers found.
  4.684: domaininfo.com INFO Parent glue for domaininfo.com found: edns05.ports.net (217.28.206.67)
  5.553: domaininfo.com INFO Checking glue for edns05.ports.net (217.28.206.67).
  5.553: domaininfo.com INFO Done testing delegation for domaininfo.com.
  5.554: domaininfo.com INFO Begin testing name server edns05.ports.net.
  5.554: domaininfo.com INFO Begin testing host edns05.ports.net.
  5.554: domaininfo.com INFO Begin testing address 217.28.206.67.
  7.709: domaininfo.com INFO Done testing address 217.28.206.67.
  7.709: domaininfo.com INFO Done testing host edns05.ports.net.
  7.731: domaininfo.com INFO Name server edns05.ports.net (217.28.206.67) is not recursive.
  7.752: domaininfo.com INFO Name server edns05.ports.net (217.28.206.67) authoritative for domaininfo.com.
  7.773: domaininfo.com INFO Name server edns05.ports.net (217.28.206.67) answers queries over UDP.
  7.812: domaininfo.com INFO Name server edns05.ports.net (217.28.206.67) answers queries over TCP.
  7.868: domaininfo.com INFO Name server edns05.ports.net (217.28.206.67) closed for zone transfer of domaininfo.com.
  7.889: domaininfo.com NOTICE No answer received from 217.28.206.67 when querying for hostname.bind/CH/TXT.
  7.912: domaininfo.com INFO Legacy name server ID for edns05.ports.net (217.28.206.67): version.bind = 9.2.4
  7.932: domaininfo.com NOTICE No answer received from 217.28.206.67 when querying for id.server/CH/TXT.
  7.952: domaininfo.com NOTICE No answer received from 217.28.206.67 when querying for version.server/CH/TXT.
  7.952: domaininfo.com INFO Done testing name server edns05.ports.net.
  7.952: domaininfo.com INFO Begin testing name server ns4.ports.se.
  7.952: domaininfo.com INFO Begin testing host ns4.ports.se.
  7.953: domaininfo.com INFO Begin testing address 193.14.90.16.
  8.309: domaininfo.com INFO Done testing address 193.14.90.16.
  8.309: domaininfo.com INFO Done testing host ns4.ports.se.
  8.324: domaininfo.com INFO Name server ns4.ports.se (193.14.90.16) is not recursive.
  8.340: domaininfo.com INFO Name server ns4.ports.se (193.14.90.16) authoritative for domaininfo.com.
  8.356: domaininfo.com INFO Name server ns4.ports.se (193.14.90.16) answers queries over UDP.
  8.384: domaininfo.com INFO Name server ns4.ports.se (193.14.90.16) answers queries over TCP.
  8.422: domaininfo.com INFO Name server ns4.ports.se (193.14.90.16) closed for zone transfer of domaininfo.com.
  8.437: domaininfo.com INFO Legacy name server ID for ns4.ports.se (193.14.90.16): hostname.bind = jon-ext-ns4
 14.468: domaininfo.com NOTICE No answer received from 193.14.90.16 when querying for version.server/CH/TXT.
 14.468: domaininfo.com INFO Done testing name server ns4.ports.se.
 14.468: domaininfo.com INFO Begin testing name server ns5.ports.se.
 14.469: domaininfo.com INFO Begin testing host ns5.ports.se.
 14.469: domaininfo.com INFO Begin testing address 193.12.211.20.
 14.492: domaininfo.com INFO Done testing address 193.12.211.20.
 14.493: domaininfo.com INFO Done testing host ns5.ports.se.
 14.508: domaininfo.com INFO Name server ns5.ports.se (193.12.211.20) is not recursive.
 14.525: domaininfo.com INFO Name server ns5.ports.se (193.12.211.20) authoritative for domaininfo.com.
 14.542: domaininfo.com INFO Name server ns5.ports.se (193.12.211.20) answers queries over UDP.
 14.571: domaininfo.com INFO Name server ns5.ports.se (193.12.211.20) answers queries over TCP.
 14.607: domaininfo.com INFO Name server ns5.ports.se (193.12.211.20) closed for zone transfer of domaininfo.com.
 14.622: domaininfo.com INFO Legacy name server ID for ns5.ports.se (193.12.211.20): hostname.bind = jon-ext-ns5
 20.651: domaininfo.com NOTICE No answer received from 193.12.211.20 when querying for version.server/CH/TXT.
 20.652: domaininfo.com INFO Done testing name server ns5.ports.se.
 20.652: domaininfo.com INFO Begin testing zone consistency for domaininfo.com.
 20.673: domaininfo.com INFO SOA at address 193.12.211.20 has serial 2010042905.
 20.695: domaininfo.com INFO SOA at address 217.28.206.67 has serial 2010042905.
 20.712: domaininfo.com INFO SOA at address 193.14.90.16 has serial 2010042905.
 20.712: domaininfo.com INFO All SOA records have consistent serial numbers.
 20.712: domaininfo.com INFO All SOA records are consistent among all name servers.
 20.712: domaininfo.com INFO Done testing zone consistency for domaininfo.com.
 20.712: domaininfo.com INFO Begin testing SOA parameters for domaininfo.com.
 20.729: domaininfo.com INFO Found SOA record for domaininfo.com.
 20.730: domaininfo.com INFO Begin testing host ns4.ports.se.
 20.730: domaininfo.com INFO Begin testing address 193.14.90.16.
 20.732: domaininfo.com INFO Done testing address 193.14.90.16.
 20.732: domaininfo.com INFO Done testing host ns4.ports.se.
 20.732: domaininfo.com INFO SOA MNAME for domaininfo.com valid (ns4.ports.se).
 20.732: domaininfo.com INFO SOA MNAME for domaininfo.com (ns4.ports.se) listed as NS.
 20.749: domaininfo.com INFO SOA MNAME for domaininfo.com (ns4.ports.se) is authoritative.
 20.749: domaininfo.com INFO Begin testing email address registry@ports.se.
 20.774: domaininfo.com INFO Mail exchangers for registry@ports.se found mx12a.antispameurope.com,mx12b.antispameurope.com,mx12c.antispameurope.com,mx12d.antispameurope.com.
 20.774: domaininfo.com INFO Begin testing host mx12a.antispameurope.com.
 21.249: domaininfo.com INFO Begin testing address 83.246.65.102.
 21.862: domaininfo.com INFO Done testing address 83.246.65.102.
 21.863: domaininfo.com INFO Begin testing address 83.246.65.113.
 21.945: domaininfo.com INFO Done testing address 83.246.65.113.
 21.946: domaininfo.com INFO Begin testing address 83.246.65.114.
 22.030: domaininfo.com INFO Done testing address 83.246.65.114.
 22.031: domaininfo.com INFO Begin testing address 83.246.65.112.
 22.116: domaininfo.com INFO Done testing address 83.246.65.112.
 22.116: domaininfo.com INFO Begin testing address 83.246.65.101.
 22.199: domaininfo.com INFO Done testing address 83.246.65.101.
 22.199: domaininfo.com INFO Begin testing address 83.246.65.111.
 22.282: domaininfo.com INFO Done testing address 83.246.65.111.
 22.282: domaininfo.com INFO Done testing host mx12a.antispameurope.com.
 22.282: domaininfo.com INFO Begin testing mail server mx12a.antispameurope.com (83.246.65.102) with registry@ports.se.
 42.281: domaininfo.com WARNING Failed to connect to mx12a.antispameurope.com (83.246.65.102).
 42.281: domaininfo.com INFO Done testing mail server mx12a.antispameurope.com (83.246.65.102) with registry@ports.se.
 42.282: domaininfo.com INFO Begin testing mail server mx12a.antispameurope.com (83.246.65.113) with registry@ports.se.
 62.281: domaininfo.com WARNING Failed to connect to mx12a.antispameurope.com (83.246.65.113).
 62.281: domaininfo.com INFO Done testing mail server mx12a.antispameurope.com (83.246.65.113) with registry@ports.se.
 62.282: domaininfo.com INFO Begin testing mail server mx12a.antispameurope.com (83.246.65.114) with registry@ports.se.
 82.281: domaininfo.com WARNING Failed to connect to mx12a.antispameurope.com (83.246.65.114).
 82.281: domaininfo.com INFO Done testing mail server mx12a.antispameurope.com (83.246.65.114) with registry@ports.se.
 82.282: domaininfo.com INFO Begin testing mail server mx12a.antispameurope.com (83.246.65.112) with registry@ports.se.
102.281: domaininfo.com WARNING Failed to connect to mx12a.antispameurope.com (83.246.65.112).
102.281: domaininfo.com INFO Done testing mail server mx12a.antispameurope.com (83.246.65.112) with registry@ports.se.
102.282: domaininfo.com INFO Begin testing mail server mx12a.antispameurope.com (83.246.65.101) with registry@ports.se.
112.360: domaininfo.com INFO SMTP banner: mx-gate01-haj2.antispameurope.com antispameurope Mailsecurity
132.385: domaininfo.com NOTICE The mail server timed out in SMTP dialog.
159.341: domaininfo.com INFO SMTP testing of mx12a.antispameurope.com (83.246.65.101) with registry@ports.se succeeded without errors.
159.341: domaininfo.com INFO Done testing mail server mx12a.antispameurope.com (83.246.65.101) with registry@ports.se.
159.341: domaininfo.com INFO Begin testing host mx12b.antispameurope.com.
159.399: domaininfo.com INFO Begin testing address 217.64.175.104.
159.558: domaininfo.com INFO Done testing address 217.64.175.104.
159.558: domaininfo.com INFO Begin testing address 217.64.175.106.
159.660: domaininfo.com INFO Done testing address 217.64.175.106.
159.660: domaininfo.com INFO Begin testing address 217.64.175.107.
159.758: domaininfo.com INFO Done testing address 217.64.175.107.
159.758: domaininfo.com INFO Begin testing address 217.64.175.101.
159.854: domaininfo.com INFO Done testing address 217.64.175.101.
159.854: domaininfo.com INFO Begin testing address 217.64.175.102.
159.952: domaininfo.com INFO Done testing address 217.64.175.102.
159.953: domaininfo.com INFO Begin testing address 217.64.175.103.
160.047: domaininfo.com INFO Done testing address 217.64.175.103.
160.047: domaininfo.com INFO Done testing host mx12b.antispameurope.com.
160.048: domaininfo.com INFO Begin testing host mx12c.antispameurope.com.
160.104: domaininfo.com INFO Begin testing address 83.246.65.104.
160.190: domaininfo.com INFO Done testing address 83.246.65.104.
160.190: domaininfo.com INFO Begin testing address 83.246.65.105.
160.276: domaininfo.com INFO Done testing address 83.246.65.105.
160.276: domaininfo.com INFO Begin testing address 83.246.65.106.
160.363: domaininfo.com INFO Done testing address 83.246.65.106.
160.363: domaininfo.com INFO Begin testing address 83.246.65.107.
160.446: domaininfo.com INFO Done testing address 83.246.65.107.
160.446: domaininfo.com INFO Begin testing address 83.246.65.108.
160.530: domaininfo.com INFO Done testing address 83.246.65.108.
160.530: domaininfo.com INFO Begin testing address 83.246.65.109.
160.615: domaininfo.com INFO Done testing address 83.246.65.109.
160.615: domaininfo.com INFO Begin testing address 83.246.65.110.
160.699: domaininfo.com INFO Done testing address 83.246.65.110.
160.700: domaininfo.com INFO Begin testing address 83.246.65.111.
160.701: domaininfo.com INFO Done testing address 83.246.65.111.
160.701: domaininfo.com INFO Begin testing address 83.246.65.112.
160.702: domaininfo.com INFO Done testing address 83.246.65.112.
160.702: domaininfo.com INFO Begin testing address 83.246.65.113.
160.703: domaininfo.com INFO Done testing address 83.246.65.113.
160.703: domaininfo.com INFO Begin testing address 83.246.65.114.
160.704: domaininfo.com INFO Done testing address 83.246.65.114.
160.704: domaininfo.com INFO Begin testing address 83.246.65.101.
160.705: domaininfo.com INFO Done testing address 83.246.65.101.
160.705: domaininfo.com INFO Begin testing address 83.246.65.102.
160.706: domaininfo.com INFO Done testing address 83.246.65.102.
160.706: domaininfo.com INFO Begin testing address 83.246.65.103.
160.789: domaininfo.com INFO Done testing address 83.246.65.103.
160.789: domaininfo.com INFO Done testing host mx12c.antispameurope.com.
160.790: domaininfo.com INFO Begin testing host mx12d.antispameurope.com.
160.845: domaininfo.com INFO Begin testing address 217.64.175.110.
160.949: domaininfo.com INFO Done testing address 217.64.175.110.
160.949: domaininfo.com INFO Done testing host mx12d.antispameurope.com.
160.950: domaininfo.com INFO Delivery over IPv4 to registry@ports.se ok.
160.950: domaininfo.com INFO Delivery over IPv6 to registry@ports.se could not be done.
160.950: domaininfo.com INFO Done testing email address registry@ports.se.
160.950: domaininfo.com INFO Successful attempt to deliver email for SOA RNAME of domaininfo.com (registry.ports.se) using registry@ports.se.
160.950: domaininfo.com INFO SOA TTL for domaininfo.com OK (86400) - recommended >= 3600.
160.950: domaininfo.com NOTICE SOA refresh for domaininfo.com too small (1800) - recommended >= 14400.
160.950: domaininfo.com NOTICE SOA retry for domaininfo.com too small (600) - recommended >= 3600.
160.950: domaininfo.com INFO SOA expire for domaininfo.com OK (2419200) - recommended >= 604800.
160.950: domaininfo.com NOTICE SOA minimum for domaininfo.com too small (60) - recommended >= 300.
160.950: domaininfo.com INFO Done testing SOA parameters for domaininfo.com.
160.950: domaininfo.com INFO Begin testing connectivity for domaininfo.com.
161.183: domaininfo.com INFO Name server 193.12.211.20 announced by: 1257
161.316: domaininfo.com INFO Name server 217.28.206.67 announced by: 34385
161.449: domaininfo.com INFO Name server 193.14.90.16 announced by: 1257
161.449: domaininfo.com INFO Zone announced by ASN: 1257,34385
161.450: domaininfo.com INFO Zone announced by more than one ASN (2).
161.450: domaininfo.com INFO Zone announced by IPv6 ASN: 
161.450: domaininfo.com NOTICE Zone announced by only one IPv6 ASN (0).
161.450: domaininfo.com INFO Done testing connectivity for domaininfo.com.
161.450: domaininfo.com INFO Begin testing DNSSEC for domaininfo.com.
161.558: domaininfo.com INFO Did not find DS record for domaininfo.com at parent.
161.653: domaininfo.com INFO Servers for domaininfo.com have consistent extra processing status.
161.653: domaininfo.com INFO Did not find DNSKEY record for domaininfo.com at child.
161.654: domaininfo.com INFO No DNSKEY(s) found at child, other tests skipped.
161.654: domaininfo.com INFO Done testing DNSSEC for domaininfo.com.
161.654: domaininfo.com INFO Test completed for zone domaininfo.com.
