  0.000: fagerlind.com INFO Begin testing zone fagerlind.com with version 1.0.1.
  0.000: fagerlind.com INFO Begin testing delegation for fagerlind.com.
  4.087: fagerlind.com INFO Name servers listed at parent: k2.fagerlind.com,snowdown.fagerlind.com
  4.148: fagerlind.com INFO Name servers listed at child: k2.fagerlind.com,snowdown.fagerlind.com
  4.149: fagerlind.com NOTICE No IPv6 name servers found.
  4.325: fagerlind.com INFO Parent glue for fagerlind.com found: k2.fagerlind.com (212.112.174.3)
  4.440: fagerlind.com INFO Parent glue for fagerlind.com found: snowdown.fagerlind.com (195.198.214.72)
  4.471: fagerlind.com INFO Checking glue for k2.fagerlind.com (212.112.174.3).
  4.481: fagerlind.com INFO Child glue for fagerlind.com found: k2.fagerlind.com (212.112.174.3)
  4.481: fagerlind.com INFO Checking glue for snowdown.fagerlind.com (195.198.214.72).
  4.493: fagerlind.com INFO Child glue for fagerlind.com found: snowdown.fagerlind.com (195.198.214.72)
  4.493: fagerlind.com INFO Done testing delegation for fagerlind.com.
  4.493: fagerlind.com INFO Begin testing name server k2.fagerlind.com.
  4.494: fagerlind.com INFO Begin testing host k2.fagerlind.com.
  4.494: fagerlind.com INFO Begin testing address 212.112.174.3.
  7.257: fagerlind.com INFO Done testing address 212.112.174.3.
  7.257: fagerlind.com INFO Done testing host k2.fagerlind.com.
  7.578: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) is not recursive.
  7.588: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) authoritative for fagerlind.com.
  7.598: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) answers queries over UDP.
  7.615: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) answers queries over TCP.
  7.756: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) closed for zone transfer of fagerlind.com.
  7.764: fagerlind.com NOTICE No answer received from 212.112.174.3 when querying for hostname.bind/CH/TXT.
 25.765: fagerlind.com INFO Done testing name server k2.fagerlind.com.
 25.765: fagerlind.com INFO Begin testing name server snowdown.fagerlind.com.
 25.765: fagerlind.com INFO Begin testing host snowdown.fagerlind.com.
 25.766: fagerlind.com INFO Begin testing address 195.198.214.72.
 30.222: fagerlind.com INFO Done testing address 195.198.214.72.
 30.222: fagerlind.com INFO Done testing host snowdown.fagerlind.com.
 30.416: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) is not recursive.
 30.434: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) authoritative for fagerlind.com.
 30.445: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) answers queries over UDP.
 30.464: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) answers queries over TCP.
 30.652: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) closed for zone transfer of fagerlind.com.
 30.662: fagerlind.com NOTICE No answer received from 195.198.214.72 when querying for hostname.bind/CH/TXT.
 48.665: fagerlind.com INFO Done testing name server snowdown.fagerlind.com.
 48.665: fagerlind.com INFO Begin testing zone consistency for fagerlind.com.
 48.680: fagerlind.com INFO SOA at address 195.198.214.72 has serial 266.
 48.689: fagerlind.com INFO SOA at address 212.112.174.3 has serial 266.
 48.689: fagerlind.com INFO All SOA records have consistent serial numbers.
 48.689: fagerlind.com INFO All SOA records are consistent among all name servers.
 48.689: fagerlind.com INFO Done testing zone consistency for fagerlind.com.
 48.689: fagerlind.com INFO Begin testing SOA parameters for fagerlind.com.
 48.714: fagerlind.com INFO Found SOA record for fagerlind.com.
 48.715: fagerlind.com INFO Begin testing host snowdown.fagerlind.com.
 48.715: fagerlind.com INFO Begin testing address 195.198.214.72.
 48.716: fagerlind.com INFO Done testing address 195.198.214.72.
 48.716: fagerlind.com INFO Done testing host snowdown.fagerlind.com.
 48.716: fagerlind.com INFO SOA MNAME for fagerlind.com valid (snowdown.fagerlind.com).
 48.717: fagerlind.com INFO SOA MNAME for fagerlind.com (snowdown.fagerlind.com) listed as NS.
 48.727: fagerlind.com INFO SOA MNAME for fagerlind.com (snowdown.fagerlind.com) is authoritative.
 48.728: fagerlind.com INFO Begin testing email address registry@fagerlind.com.
 48.740: fagerlind.com INFO Mail exchangers for registry@fagerlind.com found mountkenya.fagerlind.com.
 48.740: fagerlind.com INFO All mail servers for registry@fagerlind.com are in zone fagerlind.com.
 48.740: fagerlind.com INFO Begin testing host mountkenya.fagerlind.com.
 48.759: fagerlind.com INFO Begin testing address 82.99.33.4.
 49.275: fagerlind.com INFO Done testing address 82.99.33.4.
 49.275: fagerlind.com INFO Done testing host mountkenya.fagerlind.com.
 49.276: fagerlind.com INFO Begin testing mail server mountkenya.fagerlind.com (82.99.33.4) with registry@fagerlind.com.
 49.704: fagerlind.com INFO SMTP banner: mountkenya.fagerlind.com ESMTP ftech server 12.05; Tue, 07 Sep 2010 16:08:00 +0200 + eWall v3.0.212
 50.157: fagerlind.com INFO SMTP testing of mountkenya.fagerlind.com (82.99.33.4) with registry@fagerlind.com succeeded without errors.
 50.157: fagerlind.com INFO Done testing mail server mountkenya.fagerlind.com (82.99.33.4) with registry@fagerlind.com.
 50.158: fagerlind.com INFO Delivery over IPv4 to registry@fagerlind.com ok.
 50.158: fagerlind.com INFO Delivery over IPv6 to registry@fagerlind.com could not be done.
 50.158: fagerlind.com INFO Done testing email address registry@fagerlind.com.
 50.158: fagerlind.com INFO Successful attempt to deliver email for SOA RNAME of fagerlind.com (registry.fagerlind.com) using registry@fagerlind.com.
 50.158: fagerlind.com INFO SOA TTL for fagerlind.com OK (3600) - recommended >= 3600.
 50.158: fagerlind.com NOTICE SOA refresh for fagerlind.com too small (3600) - recommended >= 14400.
 50.158: fagerlind.com NOTICE SOA retry for fagerlind.com too small (600) - recommended >= 3600.
 50.158: fagerlind.com INFO SOA expire for fagerlind.com OK (1296000) - recommended >= 604800.
 50.158: fagerlind.com INFO SOA minimum for fagerlind.com OK (3600) - recommended between 300 and 86400.
 50.158: fagerlind.com INFO Done testing SOA parameters for fagerlind.com.
 50.159: fagerlind.com INFO Begin testing connectivity for fagerlind.com.
 50.394: fagerlind.com INFO Name server 195.198.214.72 announced by: 3301
 50.514: fagerlind.com INFO Name server 212.112.174.3 announced by: 12552
 50.514: fagerlind.com INFO Zone announced by ASN: 3301,12552
 50.514: fagerlind.com INFO Zone announced by more than one ASN (2).
 50.514: fagerlind.com INFO Zone announced by IPv6 ASN: 
 50.514: fagerlind.com NOTICE Zone announced by only one IPv6 ASN (0).
 50.515: fagerlind.com INFO Done testing connectivity for fagerlind.com.
 50.515: fagerlind.com INFO Begin testing DNSSEC for fagerlind.com.
 50.785: fagerlind.com INFO Did not find DS record for fagerlind.com at parent.
 50.818: fagerlind.com INFO Servers for fagerlind.com have consistent extra processing status.
 50.818: fagerlind.com INFO Did not find DNSKEY record for fagerlind.com at child.
 50.819: fagerlind.com INFO No DNSKEY(s) found at child, other tests skipped.
 50.819: fagerlind.com INFO Done testing DNSSEC for fagerlind.com.
 50.819: fagerlind.com INFO Test completed for zone fagerlind.com.
