  0.000: 101domain.com INFO Begin testing zone 101domain.com with version 1.5.0.
  0.001: 101domain.com INFO Begin testing delegation for 101domain.com.
 19.125: 101domain.com INFO Name servers listed at parent: elsa.ns.cloudflare.com,will.ns.cloudflare.com
 21.086: 101domain.com INFO Name servers listed at child: elsa.ns.cloudflare.com,will.ns.cloudflare.com
 21.757: 101domain.com NOTICE DNS lookup error (SERVFAIL).
 21.901: 101domain.com NOTICE DNS lookup error (SERVFAIL).
 22.035: 101domain.com NOTICE DNS lookup error (SERVFAIL).
 22.176: 101domain.com NOTICE DNS lookup error (SERVFAIL).
 22.338: 101domain.com INFO It is possible to build a referral packet for 101domain.com that works without EDNS0.
 22.358: 101domain.com INFO Done testing delegation for 101domain.com.
 22.359: 101domain.com INFO Begin testing name server elsa.ns.cloudflare.com.
 22.366: 101domain.com INFO Begin testing host elsa.ns.cloudflare.com.
 22.366: 101domain.com INFO Begin testing address 173.245.58.111.
 31.885: 101domain.com INFO Done testing address 173.245.58.111.
 31.886: 101domain.com INFO Begin testing address 2400:cb00:2049:1:0:0:adf5:3a6f.
 37.419: 101domain.com INFO Done testing address 2400:cb00:2049:1:0:0:adf5:3a6f.
 37.420: 101domain.com INFO Done testing host elsa.ns.cloudflare.com.
 37.490: 101domain.com INFO Name server elsa.ns.cloudflare.com (173.245.58.111) answers queries over UDP.
 37.559: 101domain.com INFO Name server elsa.ns.cloudflare.com (173.245.58.111) answers queries over TCP.
 37.596: 101domain.com INFO Name server elsa.ns.cloudflare.com (173.245.58.111) is not recursive.
 37.738: 101domain.com INFO Name server elsa.ns.cloudflare.com (173.245.58.111) authoritative for 101domain.com.
 37.836: 101domain.com INFO Name server elsa.ns.cloudflare.com (173.245.58.111) closed for zone transfer of 101domain.com.
 37.947: 101domain.com NOTICE No answer received from 173.245.58.111 when querying for version.bind/CH/TXT.
 38.057: 101domain.com INFO Name server elsa.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3a6f) answers queries over UDP.
 38.157: 101domain.com INFO Name server elsa.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3a6f) answers queries over TCP.
 38.197: 101domain.com INFO Name server elsa.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3a6f) is not recursive.
 38.389: 101domain.com INFO Name server elsa.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3a6f) authoritative for 101domain.com.
 38.509: 101domain.com INFO Name server elsa.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3a6f) closed for zone transfer of 101domain.com.
 38.585: 101domain.com NOTICE No answer received from 2400:cb00:2049:1:0:0:adf5:3a6f when querying for version.bind/CH/TXT.
 38.674: 101domain.com INFO Done testing name server elsa.ns.cloudflare.com.
 38.675: 101domain.com INFO Begin testing name server will.ns.cloudflare.com.
 38.675: 101domain.com INFO Begin testing host will.ns.cloudflare.com.
 38.676: 101domain.com INFO Begin testing address 173.245.59.149.
 39.298: 101domain.com INFO Done testing address 173.245.59.149.
 39.298: 101domain.com INFO Begin testing address 2400:cb00:2049:1:0:0:adf5:3b95.
 39.982: 101domain.com INFO Done testing address 2400:cb00:2049:1:0:0:adf5:3b95.
 39.982: 101domain.com INFO Done testing host will.ns.cloudflare.com.
 40.020: 101domain.com INFO Name server will.ns.cloudflare.com (173.245.59.149) answers queries over UDP.
 40.086: 101domain.com INFO Name server will.ns.cloudflare.com (173.245.59.149) answers queries over TCP.
 40.126: 101domain.com INFO Name server will.ns.cloudflare.com (173.245.59.149) is not recursive.
 40.263: 101domain.com INFO Name server will.ns.cloudflare.com (173.245.59.149) authoritative for 101domain.com.
 40.363: 101domain.com INFO Name server will.ns.cloudflare.com (173.245.59.149) closed for zone transfer of 101domain.com.
 40.431: 101domain.com NOTICE No answer received from 173.245.59.149 when querying for version.bind/CH/TXT.
 40.589: 101domain.com INFO Name server will.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3b95) answers queries over UDP.
 40.684: 101domain.com INFO Name server will.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3b95) answers queries over TCP.
 40.743: 101domain.com INFO Name server will.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3b95) is not recursive.
 40.963: 101domain.com INFO Name server will.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3b95) authoritative for 101domain.com.
 41.084: 101domain.com INFO Name server will.ns.cloudflare.com (2400:cb00:2049:1:0:0:adf5:3b95) closed for zone transfer of 101domain.com.
 41.173: 101domain.com NOTICE No answer received from 2400:cb00:2049:1:0:0:adf5:3b95 when querying for version.bind/CH/TXT.
 41.241: 101domain.com INFO Done testing name server will.ns.cloudflare.com.
 41.242: 101domain.com INFO Begin testing zone consistency for 101domain.com.
 41.321: 101domain.com INFO SOA at address 2400:cb00:2049:1:0:0:adf5:3a6f has serial 2013073001.
 41.362: 101domain.com INFO SOA at address 173.245.59.149 has serial 2013073001.
 41.405: 101domain.com INFO SOA at address 2400:cb00:2049:1:0:0:adf5:3b95 has serial 2013073001.
 41.441: 101domain.com INFO SOA at address 173.245.58.111 has serial 2013073001.
 41.441: 101domain.com INFO All SOA records have consistent serial numbers.
 41.441: 101domain.com INFO All other fields in the SOA record are consistent among all name servers.
 41.643: 101domain.com NOTICE The listed nameservers for 101domain.com all report the same set of nameservers.
 41.643: 101domain.com INFO Done testing zone consistency for 101domain.com.
 41.643: 101domain.com INFO Begin testing SOA parameters for 101domain.com.
 41.681: 101domain.com INFO Found SOA record for 101domain.com.
 41.681: 101domain.com INFO Begin testing host elsa.ns.cloudflare.com.
 41.682: 101domain.com INFO Begin testing address 173.245.58.111.
 41.692: 101domain.com INFO Done testing address 173.245.58.111.
 41.693: 101domain.com INFO Begin testing address 2400:cb00:2049:1:0:0:adf5:3a6f.
 41.707: 101domain.com INFO Done testing address 2400:cb00:2049:1:0:0:adf5:3a6f.
 41.707: 101domain.com INFO Done testing host elsa.ns.cloudflare.com.
 41.708: 101domain.com INFO SOA MNAME for 101domain.com valid (elsa.ns.cloudflare.com).
 41.708: 101domain.com INFO SOA MNAME for 101domain.com (elsa.ns.cloudflare.com) listed as NS.
 41.748: 101domain.com INFO SOA MNAME for 101domain.com (elsa.ns.cloudflare.com) is authoritative.
 41.804: 101domain.com INFO SOA MNAME for 101domain.com (elsa.ns.cloudflare.com) is authoritative.
 41.804: 101domain.com INFO Begin testing email address dns@cloudflare.com.
 42.354: 101domain.com INFO Mail exchangers for dns@cloudflare.com found aspmx.l.google.com,alt1.aspmx.l.google.com,alt2.aspmx.l.google.com,aspmx2.googlemail.com,aspmx3.googlemail.com.
 42.358: 101domain.com INFO Begin testing host aspmx.l.google.com.
 43.440: 101domain.com INFO Begin testing address 74.125.143.26.
 45.155: 101domain.com INFO Done testing address 74.125.143.26.
 45.156: 101domain.com INFO Begin testing address 2a00:1450:4010:c04:0:0:0:1a.
 51.058: 101domain.com INFO Done testing address 2a00:1450:4010:c04:0:0:0:1a.
 51.058: 101domain.com INFO Done testing host aspmx.l.google.com.
 51.059: 101domain.com INFO Begin testing host alt1.aspmx.l.google.com.
 52.146: 101domain.com INFO Begin testing address 173.194.64.26.
 53.528: 101domain.com INFO Done testing address 173.194.64.26.
 53.528: 101domain.com INFO Begin testing address 2607:f8b0:4003:c02:0:0:0:1a.
 55.113: 101domain.com INFO Done testing address 2607:f8b0:4003:c02:0:0:0:1a.
 55.113: 101domain.com INFO Done testing host alt1.aspmx.l.google.com.
 55.118: 101domain.com INFO Begin testing host alt2.aspmx.l.google.com.
 55.815: 101domain.com INFO Begin testing address 74.125.140.26.
 57.380: 101domain.com INFO Done testing address 74.125.140.26.
 57.380: 101domain.com INFO Begin testing address 2607:f8b0:4002:c04:0:0:0:1b.
 58.977: 101domain.com INFO Done testing address 2607:f8b0:4002:c04:0:0:0:1b.
 58.978: 101domain.com INFO Done testing host alt2.aspmx.l.google.com.
 58.978: 101domain.com INFO Begin testing host aspmx2.googlemail.com.
 59.694: 101domain.com INFO Begin testing address 173.194.64.26.
 60.088: 101domain.com INFO Done testing address 173.194.64.26.
 60.089: 101domain.com INFO Begin testing address 2607:f8b0:4003:c02:0:0:0:1a.
 60.372: 101domain.com INFO Done testing address 2607:f8b0:4003:c02:0:0:0:1a.
 60.373: 101domain.com INFO Done testing host aspmx2.googlemail.com.
 60.373: 101domain.com INFO Begin testing host aspmx3.googlemail.com.
 61.256: 101domain.com INFO Begin testing address 74.125.137.26.
 62.754: 101domain.com INFO Done testing address 74.125.137.26.
 62.755: 101domain.com INFO Begin testing address 2607:f8b0:4002:c04:0:0:0:1a.
 64.007: 101domain.com INFO Done testing address 2607:f8b0:4002:c04:0:0:0:1a.
 64.008: 101domain.com INFO Done testing host aspmx3.googlemail.com.
 64.008: 101domain.com INFO Done testing email address dns@cloudflare.com.
 64.008: 101domain.com INFO Successful attempt to deliver email for SOA RNAME of 101domain.com (dns.cloudflare.com) using dns@cloudflare.com.
 64.008: 101domain.com INFO SOA TTL for 101domain.com OK (86400) - recommended >= 3600.
 64.009: 101domain.com NOTICE SOA refresh for 101domain.com too small (10000) - recommended >= 14400.
 64.009: 101domain.com NOTICE SOA retry for 101domain.com too small (2400) - recommended >= 3600.
 64.009: 101domain.com INFO SOA expire for 101domain.com OK (604800) - recommended >= 604800.
 64.009: 101domain.com INFO SOA minimum for 101domain.com OK (3600) - recommended between 300 and 86400.
 64.009: 101domain.com INFO Done testing SOA parameters for 101domain.com.
 64.009: 101domain.com INFO Begin testing connectivity for 101domain.com.
 65.169: 101domain.com NOTICE Zone announced by fewer than two IPv4 ASN.
 67.238: 101domain.com NOTICE Zone announced by fewer than two IPv6 ASN.
 67.238: 101domain.com INFO Done testing connectivity for 101domain.com.
 67.239: 101domain.com INFO Begin testing DNSSEC for 101domain.com.
 67.937: 101domain.com INFO Did not find DS record for 101domain.com at parent.
 68.324: 101domain.com INFO Servers for 101domain.com have consistent extra processing status.
 68.392: 101domain.com INFO Authenticated denial records not found for 101domain.com.
 68.439: 101domain.com INFO Did not find DNSKEY record for 101domain.com at child.
 68.439: 101domain.com INFO No DNSKEY(s) found at child, other tests skipped.
 68.439: 101domain.com INFO Done testing DNSSEC for 101domain.com.
 68.439: 101domain.com INFO Test completed for zone 101domain.com.
