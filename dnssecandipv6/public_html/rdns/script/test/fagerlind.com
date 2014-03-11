  0.000: fagerlind.com INFO Begin testing zone fagerlind.com with version 1.3.0.
  0.002: fagerlind.com INFO Begin testing delegation for fagerlind.com.
 20.807: fagerlind.com INFO Name servers listed at parent: k2.fagerlind.com,snowdown.fagerlind.com
 22.724: fagerlind.com INFO Name servers listed at child: k2.fagerlind.com,snowdown.fagerlind.com
 22.725: fagerlind.com NOTICE No IPv6 name servers found.
 22.789: fagerlind.com INFO Parent glue for fagerlind.com found: k2.fagerlind.com (212.112.174.3)
 23.065: fagerlind.com INFO Parent glue for fagerlind.com found: snowdown.fagerlind.com (195.198.214.72)
 23.275: fagerlind.com INFO Checking glue for k2.fagerlind.com (212.112.174.3).
 23.300: fagerlind.com INFO Child glue for fagerlind.com found: k2.fagerlind.com (212.112.174.3)
 23.300: fagerlind.com INFO Checking glue for snowdown.fagerlind.com (195.198.214.72).
 23.361: fagerlind.com INFO Child glue for fagerlind.com found: snowdown.fagerlind.com (195.198.214.72)
 23.361: fagerlind.com INFO Parent glue for fagerlind.com found: k2.fagerlind.com (212.112.174.3)
 23.361: fagerlind.com INFO Parent glue for fagerlind.com found: snowdown.fagerlind.com (195.198.214.72)
 23.468: fagerlind.com INFO Done testing delegation for fagerlind.com.
 23.468: fagerlind.com INFO Begin testing name server k2.fagerlind.com.
 23.468: fagerlind.com INFO Begin testing host k2.fagerlind.com.
 23.877: fagerlind.com INFO Begin testing address 212.112.174.3.
 30.402: fagerlind.com INFO Done testing address 212.112.174.3.
 30.402: fagerlind.com INFO Done testing host k2.fagerlind.com.
 30.776: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) answers queries over UDP.
 30.837: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) answers queries over TCP.
 30.944: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) is not recursive.
 30.961: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) authoritative for fagerlind.com.
 31.145: fagerlind.com INFO Name server k2.fagerlind.com (212.112.174.3) closed for zone transfer of fagerlind.com.
 31.156: fagerlind.com NOTICE No answer received from 212.112.174.3 when querying for hostname.bind/CH/TXT.
 49.188: fagerlind.com INFO Done testing name server k2.fagerlind.com.
 49.188: fagerlind.com INFO Begin testing name server snowdown.fagerlind.com.
 49.189: fagerlind.com INFO Begin testing host snowdown.fagerlind.com.
 49.754: fagerlind.com INFO Begin testing address 195.198.214.72.
 51.970: fagerlind.com INFO Done testing address 195.198.214.72.
 51.971: fagerlind.com INFO Done testing host snowdown.fagerlind.com.
 52.600: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) answers queries over UDP.
 52.865: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) answers queries over TCP.
 52.928: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) is not recursive.
 52.941: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) authoritative for fagerlind.com.
 53.321: fagerlind.com INFO Name server snowdown.fagerlind.com (195.198.214.72) closed for zone transfer of fagerlind.com.
 53.332: fagerlind.com NOTICE No answer received from 195.198.214.72 when querying for hostname.bind/CH/TXT.
 71.356: fagerlind.com INFO Done testing name server snowdown.fagerlind.com.
 71.356: fagerlind.com INFO Begin testing zone consistency for fagerlind.com.
 73.702: fagerlind.com INFO SOA at address 195.198.214.72 has serial 272.
 73.797: fagerlind.com INFO SOA at address 212.112.174.3 has serial 272.
 73.797: fagerlind.com INFO All SOA records have consistent serial numbers.
 73.797: fagerlind.com INFO All other fields in the SOA record are consistent among all name servers.
 73.797: fagerlind.com INFO Done testing zone consistency for fagerlind.com.
 73.797: fagerlind.com INFO Begin testing SOA parameters for fagerlind.com.
 73.893: fagerlind.com INFO Found SOA record for fagerlind.com.
 73.893: fagerlind.com INFO Begin testing host snowdown.fagerlind.com.
 74.496: fagerlind.com INFO Begin testing address 195.198.214.72.
 75.166: fagerlind.com INFO Done testing address 195.198.214.72.
 75.166: fagerlind.com INFO Done testing host snowdown.fagerlind.com.
 75.166: fagerlind.com INFO SOA MNAME for fagerlind.com valid (snowdown.fagerlind.com).
 75.166: fagerlind.com INFO SOA MNAME for fagerlind.com (snowdown.fagerlind.com) listed as NS.
 75.832: fagerlind.com INFO SOA MNAME for fagerlind.com (snowdown.fagerlind.com) is authoritative.
 75.832: fagerlind.com INFO Begin testing email address registry@fagerlind.com.
 76.502: fagerlind.com INFO Mail exchangers for registry@fagerlind.com found mailsrv08.ftech.se,mailsrv05.ftech.se.
 76.502: fagerlind.com INFO Begin testing host mailsrv08.ftech.se.
 77.421: fagerlind.com INFO Begin testing address 212.112.174.28.
 78.416: fagerlind.com WARNING Could not find reverse address for 212.112.174.28 (28.174.112.212.in-addr.arpa.).
 78.416: fagerlind.com INFO Done testing address 212.112.174.28.
 78.417: fagerlind.com INFO Done testing host mailsrv08.ftech.se.
 78.826: fagerlind.com INFO Begin testing mail server mailsrv08.ftech.se (212.112.174.28) with registry@fagerlind.com.
 78.900: fagerlind.com INFO SMTP banner: mailsrv07.ftech.se ESMTP ftech server 12.05; Wed, 12 Sep 2012 16:41:46 +0200
 79.052: fagerlind.com INFO SMTP testing of mailsrv08.ftech.se (212.112.174.28) with registry@fagerlind.com succeeded without errors.
 79.052: fagerlind.com INFO Done testing mail server mailsrv08.ftech.se (212.112.174.28) with registry@fagerlind.com.
 79.052: fagerlind.com INFO Begin testing host mailsrv05.ftech.se.
 79.804: fagerlind.com INFO Begin testing address 195.198.214.66.
 82.185: fagerlind.com INFO Done testing address 195.198.214.66.
 82.185: fagerlind.com INFO Done testing host mailsrv05.ftech.se.
 82.583: fagerlind.com INFO Delivery over IPv4 to registry@fagerlind.com ok.
 82.598: fagerlind.com NOTICE Delivery over IPv6 to registry@fagerlind.com could not be done.
 82.598: fagerlind.com INFO Done testing email address registry@fagerlind.com.
 82.598: fagerlind.com INFO Successful attempt to deliver email for SOA RNAME of fagerlind.com (registry.fagerlind.com) using registry@fagerlind.com.
 82.598: fagerlind.com INFO SOA TTL for fagerlind.com OK (3600) - recommended >= 3600.
 82.598: fagerlind.com NOTICE SOA refresh for fagerlind.com too small (3600) - recommended >= 14400.
 82.598: fagerlind.com NOTICE SOA retry for fagerlind.com too small (600) - recommended >= 3600.
 82.598: fagerlind.com INFO SOA expire for fagerlind.com OK (1296000) - recommended >= 604800.
 82.598: fagerlind.com INFO SOA minimum for fagerlind.com OK (3600) - recommended between 300 and 86400.
 82.598: fagerlind.com INFO Done testing SOA parameters for fagerlind.com.
 82.599: fagerlind.com INFO Begin testing connectivity for fagerlind.com.
 83.390: fagerlind.com INFO Name server 195.198.214.72 announced by: 3301
 84.261: fagerlind.com INFO Name server 212.112.174.3 announced by: 12552
 84.261: fagerlind.com INFO Zone announced by IPv4 ASN: 3301,12552
 84.262: fagerlind.com INFO Zone announced by more than one ASN (2).
 84.262: fagerlind.com INFO Zone announced by IPv6 ASN: 
 84.262: fagerlind.com NOTICE Zone announced by less than two IPv6 ASN (0).
 84.262: fagerlind.com INFO Done testing connectivity for fagerlind.com.
 84.262: fagerlind.com INFO Begin testing DNSSEC for fagerlind.com.
 84.371: fagerlind.com INFO Did not find DS record for fagerlind.com at parent.
 84.478: fagerlind.com INFO Servers for fagerlind.com have consistent extra processing status.
 84.478: fagerlind.com INFO Did not find DNSKEY record for fagerlind.com at child.
 84.478: fagerlind.com INFO No DNSKEY(s) found at child, other tests skipped.
 84.478: fagerlind.com INFO Done testing DNSSEC for fagerlind.com.
 84.478: fagerlind.com INFO Test completed for zone fagerlind.com.
