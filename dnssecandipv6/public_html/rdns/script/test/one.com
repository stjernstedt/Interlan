  0.000: one.com INFO Begin testing zone one.com with version 1.5.0.
  0.001: one.com INFO Begin testing delegation for one.com.
 23.752: one.com INFO Name servers listed at parent: a.b-one-dns.net,b.b-one-dns.net
 26.507: one.com INFO Name servers listed at child: a.b-one-dns.net,b.b-one-dns.net
 26.507: one.com NOTICE No IPv6 name servers found.
 26.566: one.com INFO Parent glue for one.com found: a.b-one-dns.net (195.206.121.11)
 26.807: one.com INFO Parent glue for one.com found: b.b-one-dns.net (195.206.121.139)
 26.939: one.com INFO Checking glue for a.b-one-dns.net (195.206.121.11).
 26.939: one.com INFO Checking glue for b.b-one-dns.net (195.206.121.139).
 26.940: one.com INFO Parent glue for one.com found: a.b-one-dns.net (195.206.121.11)
 26.940: one.com INFO Parent glue for one.com found: b.b-one-dns.net (195.206.121.139)
 28.391: one.com INFO It is possible to build a referral packet for one.com that works without EDNS0.
 28.391: one.com INFO Done testing delegation for one.com.
 28.392: one.com INFO Begin testing name server a.b-one-dns.net.
 28.392: one.com INFO Begin testing host a.b-one-dns.net.
 28.935: one.com INFO Begin testing address 195.206.121.11.
 39.388: one.com INFO Done testing address 195.206.121.11.
 39.388: one.com INFO Done testing host a.b-one-dns.net.
 39.927: one.com INFO Name server a.b-one-dns.net (195.206.121.11) answers queries over UDP.
 40.001: one.com INFO Name server a.b-one-dns.net (195.206.121.11) answers queries over TCP.
 40.044: one.com INFO Name server a.b-one-dns.net (195.206.121.11) is not recursive.
 40.198: one.com INFO Name server a.b-one-dns.net (195.206.121.11) authoritative for one.com.
 40.313: one.com INFO Name server a.b-one-dns.net (195.206.121.11) closed for zone transfer of one.com.
 40.387: one.com NOTICE No answer received from 195.206.121.11 when querying for version.bind/CH/TXT.
 40.463: one.com INFO Done testing name server a.b-one-dns.net.
 40.464: one.com INFO Begin testing name server b.b-one-dns.net.
 40.464: one.com INFO Begin testing host b.b-one-dns.net.
 40.960: one.com INFO Begin testing address 195.206.121.139.
 42.521: one.com INFO Done testing address 195.206.121.139.
 42.521: one.com INFO Done testing host b.b-one-dns.net.
 43.129: one.com INFO Name server b.b-one-dns.net (195.206.121.139) answers queries over UDP.
 43.213: one.com INFO Name server b.b-one-dns.net (195.206.121.139) answers queries over TCP.
 43.253: one.com INFO Name server b.b-one-dns.net (195.206.121.139) is not recursive.
 43.402: one.com INFO Name server b.b-one-dns.net (195.206.121.139) authoritative for one.com.
 43.518: one.com INFO Name server b.b-one-dns.net (195.206.121.139) closed for zone transfer of one.com.
 43.617: one.com NOTICE No answer received from 195.206.121.139 when querying for version.bind/CH/TXT.
 43.707: one.com INFO Done testing name server b.b-one-dns.net.
 43.707: one.com INFO Begin testing zone consistency for one.com.
 45.913: one.com INFO SOA at address 195.206.121.11 has serial 2013010101.
 45.967: one.com INFO SOA at address 195.206.121.139 has serial 2013010101.
 45.967: one.com INFO All SOA records have consistent serial numbers.
 45.967: one.com INFO All other fields in the SOA record are consistent among all name servers.
 47.168: one.com NOTICE The listed nameservers for one.com all report the same set of nameservers.
 47.168: one.com INFO Done testing zone consistency for one.com.
 47.168: one.com INFO Begin testing SOA parameters for one.com.
 47.309: one.com INFO Found SOA record for one.com.
 47.309: one.com INFO Begin testing host a.b-one-dns.net.
 47.717: one.com INFO Begin testing address 195.206.121.11.
 48.398: one.com INFO Done testing address 195.206.121.11.
 48.398: one.com INFO Done testing host a.b-one-dns.net.
 48.398: one.com INFO SOA MNAME for one.com valid (a.b-one-dns.net).
 48.399: one.com INFO SOA MNAME for one.com (a.b-one-dns.net) listed as NS.
 48.917: one.com INFO SOA MNAME for one.com (a.b-one-dns.net) is authoritative.
 48.917: one.com INFO Begin testing email address hostmaster@one.com.
 49.290: one.com INFO Mail exchangers for hostmaster@one.com found mx-cluster-a2.one.com,mx-cluster-a1.one.com.
 49.290: one.com INFO All mail servers for hostmaster@one.com are in zone one.com.
 49.291: one.com INFO Begin testing host mx-cluster-a2.one.com.
 50.144: one.com INFO Begin testing address 195.47.247.193.
 51.595: one.com INFO Done testing address 195.47.247.193.
 51.595: one.com INFO Done testing host mx-cluster-a2.one.com.
 52.050: one.com INFO Begin testing host mx-cluster-a1.one.com.
 52.910: one.com INFO Begin testing address 195.47.247.192.
 57.924: one.com INFO Done testing address 195.47.247.192.
 57.924: one.com INFO Done testing host mx-cluster-a1.one.com.
 58.352: one.com INFO Done testing email address hostmaster@one.com.
 58.352: one.com INFO Successful attempt to deliver email for SOA RNAME of one.com (hostmaster.one.com) using hostmaster@one.com.
 58.352: one.com INFO SOA TTL for one.com OK (86400) - recommended >= 3600.
 58.352: one.com NOTICE SOA refresh for one.com too small (1800) - recommended >= 14400.
 58.352: one.com NOTICE SOA retry for one.com too small (900) - recommended >= 3600.
 58.353: one.com INFO SOA expire for one.com OK (1209600) - recommended >= 604800.
 58.353: one.com INFO SOA minimum for one.com OK (300) - recommended between 300 and 86400.
 58.353: one.com INFO Done testing SOA parameters for one.com.
 58.353: one.com INFO Begin testing connectivity for one.com.
 59.574: one.com NOTICE Zone announced by fewer than two IPv4 ASN.
 59.578: one.com NOTICE Zone announced by fewer than two IPv6 ASN.
 59.578: one.com INFO Done testing connectivity for one.com.
 59.579: one.com INFO Begin testing DNSSEC for one.com.
 60.282: one.com INFO Did not find DS record for one.com at parent.
 60.433: one.com INFO Servers for one.com have consistent extra processing status.
 60.520: one.com INFO Authenticated denial records not found for one.com.
 60.561: one.com INFO Did not find DNSKEY record for one.com at child.
 60.561: one.com INFO No DNSKEY(s) found at child, other tests skipped.
 60.561: one.com INFO Done testing DNSSEC for one.com.
 60.566: one.com INFO Test completed for zone one.com.
