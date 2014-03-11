  0.000: svenskaexportmedia.com INFO Begin testing zone svenskaexportmedia.com with version 1.0.1.
  0.001: svenskaexportmedia.com INFO Begin testing delegation for svenskaexportmedia.com.
  4.097: svenskaexportmedia.com INFO Name servers listed at parent: sem1.eun.net,sem2.eun.net,sem3.eun.net
  4.446: svenskaexportmedia.com INFO Name servers listed at child: sem1.eun.net,sem2.eun.net,sem3.eun.net
  4.447: svenskaexportmedia.com NOTICE No IPv6 name servers found.
  5.093: svenskaexportmedia.com INFO Done testing delegation for svenskaexportmedia.com.
  5.093: svenskaexportmedia.com INFO Begin testing name server sem1.eun.net.
  5.094: svenskaexportmedia.com INFO Begin testing host sem1.eun.net.
  5.094: svenskaexportmedia.com INFO Begin testing address 213.146.64.85.
  8.573: svenskaexportmedia.com WARNING Could not find reverse address for 213.146.64.85 (85.64.146.213.in-addr.arpa.).
  8.573: svenskaexportmedia.com INFO Done testing address 213.146.64.85.
  8.573: svenskaexportmedia.com INFO Done testing host sem1.eun.net.
  8.589: svenskaexportmedia.com INFO Name server sem1.eun.net (213.146.64.85) is not recursive.
  8.605: svenskaexportmedia.com INFO Name server sem1.eun.net (213.146.64.85) authoritative for svenskaexportmedia.com.
  8.622: svenskaexportmedia.com INFO Name server sem1.eun.net (213.146.64.85) answers queries over UDP.
  8.653: svenskaexportmedia.com INFO Name server sem1.eun.net (213.146.64.85) answers queries over TCP.
  8.844: svenskaexportmedia.com INFO Name server sem1.eun.net (213.146.64.85) closed for zone transfer of svenskaexportmedia.com.
  8.860: svenskaexportmedia.com NOTICE No answer received from 213.146.64.85 when querying for hostname.bind/CH/TXT.
  8.877: svenskaexportmedia.com NOTICE No answer received from 213.146.64.85 when querying for version.bind/CH/TXT.
  8.892: svenskaexportmedia.com NOTICE No answer received from 213.146.64.85 when querying for id.server/CH/TXT.
  8.908: svenskaexportmedia.com NOTICE No answer received from 213.146.64.85 when querying for version.server/CH/TXT.
  8.908: svenskaexportmedia.com INFO Done testing name server sem1.eun.net.
  8.908: svenskaexportmedia.com INFO Begin testing name server sem2.eun.net.
  8.908: svenskaexportmedia.com INFO Begin testing host sem2.eun.net.
  8.908: svenskaexportmedia.com INFO Begin testing address 193.15.80.85.
  9.620: svenskaexportmedia.com WARNING Could not find reverse address for 193.15.80.85 (85.80.15.193.in-addr.arpa.).
  9.620: svenskaexportmedia.com INFO Done testing address 193.15.80.85.
  9.620: svenskaexportmedia.com INFO Done testing host sem2.eun.net.
  9.637: svenskaexportmedia.com INFO Name server sem2.eun.net (193.15.80.85) is not recursive.
  9.655: svenskaexportmedia.com INFO Name server sem2.eun.net (193.15.80.85) authoritative for svenskaexportmedia.com.
  9.672: svenskaexportmedia.com INFO Name server sem2.eun.net (193.15.80.85) answers queries over UDP.
  9.703: svenskaexportmedia.com INFO Name server sem2.eun.net (193.15.80.85) answers queries over TCP.
  9.882: svenskaexportmedia.com INFO Name server sem2.eun.net (193.15.80.85) closed for zone transfer of svenskaexportmedia.com.
  9.899: svenskaexportmedia.com NOTICE No answer received from 193.15.80.85 when querying for hostname.bind/CH/TXT.
  9.916: svenskaexportmedia.com NOTICE No answer received from 193.15.80.85 when querying for version.bind/CH/TXT.
  9.932: svenskaexportmedia.com NOTICE No answer received from 193.15.80.85 when querying for id.server/CH/TXT.
  9.948: svenskaexportmedia.com NOTICE No answer received from 193.15.80.85 when querying for version.server/CH/TXT.
  9.948: svenskaexportmedia.com INFO Done testing name server sem2.eun.net.
  9.948: svenskaexportmedia.com INFO Begin testing name server sem3.eun.net.
  9.948: svenskaexportmedia.com INFO Begin testing host sem3.eun.net.
  9.949: svenskaexportmedia.com INFO Begin testing address 194.18.50.85.
 10.693: svenskaexportmedia.com WARNING Could not find reverse address for 194.18.50.85 (85.50.18.194.in-addr.arpa.).
 10.693: svenskaexportmedia.com INFO Done testing address 194.18.50.85.
 10.693: svenskaexportmedia.com INFO Done testing host sem3.eun.net.
 10.714: svenskaexportmedia.com INFO Name server sem3.eun.net (194.18.50.85) is not recursive.
 10.732: svenskaexportmedia.com INFO Name server sem3.eun.net (194.18.50.85) authoritative for svenskaexportmedia.com.
 10.751: svenskaexportmedia.com INFO Name server sem3.eun.net (194.18.50.85) answers queries over UDP.
 10.784: svenskaexportmedia.com INFO Name server sem3.eun.net (194.18.50.85) answers queries over TCP.
 11.035: svenskaexportmedia.com INFO Name server sem3.eun.net (194.18.50.85) closed for zone transfer of svenskaexportmedia.com.
 11.052: svenskaexportmedia.com NOTICE No answer received from 194.18.50.85 when querying for hostname.bind/CH/TXT.
 11.070: svenskaexportmedia.com NOTICE No answer received from 194.18.50.85 when querying for version.bind/CH/TXT.
 11.086: svenskaexportmedia.com NOTICE No answer received from 194.18.50.85 when querying for id.server/CH/TXT.
 11.102: svenskaexportmedia.com NOTICE No answer received from 194.18.50.85 when querying for version.server/CH/TXT.
 11.102: svenskaexportmedia.com INFO Done testing name server sem3.eun.net.
 11.102: svenskaexportmedia.com INFO Begin testing zone consistency for svenskaexportmedia.com.
 11.123: svenskaexportmedia.com INFO SOA at address 194.18.50.85 has serial 2010031401.
 11.140: svenskaexportmedia.com INFO SOA at address 193.15.80.85 has serial 2010031401.
 11.156: svenskaexportmedia.com INFO SOA at address 213.146.64.85 has serial 2010031401.
 11.156: svenskaexportmedia.com INFO All SOA records have consistent serial numbers.
 11.156: svenskaexportmedia.com INFO All SOA records are consistent among all name servers.
 11.156: svenskaexportmedia.com INFO Done testing zone consistency for svenskaexportmedia.com.
 11.156: svenskaexportmedia.com INFO Begin testing SOA parameters for svenskaexportmedia.com.
 11.172: svenskaexportmedia.com INFO Found SOA record for svenskaexportmedia.com.
 11.173: svenskaexportmedia.com INFO Begin testing host sem1.eun.net.
 11.173: svenskaexportmedia.com INFO Begin testing address 213.146.64.85.
 11.174: svenskaexportmedia.com WARNING Could not find reverse address for 213.146.64.85 (85.64.146.213.in-addr.arpa.).
 11.174: svenskaexportmedia.com INFO Done testing address 213.146.64.85.
 11.174: svenskaexportmedia.com INFO Done testing host sem1.eun.net.
 11.174: svenskaexportmedia.com INFO SOA MNAME for svenskaexportmedia.com valid (sem1.eun.net).
 11.174: svenskaexportmedia.com INFO SOA MNAME for svenskaexportmedia.com (sem1.eun.net) listed as NS.
 11.190: svenskaexportmedia.com INFO SOA MNAME for svenskaexportmedia.com (sem1.eun.net) is authoritative.
 11.190: svenskaexportmedia.com INFO Begin testing email address registry@swedishexportmedia.com.
 11.267: svenskaexportmedia.com INFO Mail exchangers for registry@swedishexportmedia.com found mgw1.eurovoice.com,mgw3.eurovoice.com,mgw2.eurovoice.com.
 11.268: svenskaexportmedia.com INFO Begin testing host mgw1.eurovoice.com.
 11.361: svenskaexportmedia.com INFO Begin testing address 213.146.65.55.
 11.389: svenskaexportmedia.com INFO Done testing address 213.146.65.55.
 11.389: svenskaexportmedia.com INFO Done testing host mgw1.eurovoice.com.
 11.389: svenskaexportmedia.com INFO Begin testing mail server mgw1.eurovoice.com (213.146.65.55) with registry@swedishexportmedia.com.
 12.066: svenskaexportmedia.com INFO SMTP banner: mgwa.eurovoice.com ESMTP (9cb15eafa2af6c1b5382a268cf1d2af1)
 12.175: svenskaexportmedia.com INFO SMTP testing of mgw1.eurovoice.com (213.146.65.55) with registry@swedishexportmedia.com succeeded without errors.
 12.175: svenskaexportmedia.com INFO Done testing mail server mgw1.eurovoice.com (213.146.65.55) with registry@swedishexportmedia.com.
 12.175: svenskaexportmedia.com INFO Begin testing host mgw3.eurovoice.com.
 12.211: svenskaexportmedia.com INFO Begin testing address 194.18.51.56.
 12.269: svenskaexportmedia.com WARNING Could not find reverse address for 194.18.51.56 (56.51.18.194.in-addr.arpa.).
 12.269: svenskaexportmedia.com INFO Done testing address 194.18.51.56.
 12.269: svenskaexportmedia.com INFO Done testing host mgw3.eurovoice.com.
 12.270: svenskaexportmedia.com INFO Begin testing host mgw2.eurovoice.com.
 12.305: svenskaexportmedia.com INFO Begin testing address 193.15.81.56.
 12.331: svenskaexportmedia.com WARNING Could not find reverse address for 193.15.81.56 (56.81.15.193.in-addr.arpa.).
 12.331: svenskaexportmedia.com INFO Done testing address 193.15.81.56.
 12.331: svenskaexportmedia.com INFO Done testing host mgw2.eurovoice.com.
 12.331: svenskaexportmedia.com INFO Delivery over IPv4 to registry@swedishexportmedia.com ok.
 12.332: svenskaexportmedia.com INFO Delivery over IPv6 to registry@swedishexportmedia.com could not be done.
 12.332: svenskaexportmedia.com INFO Done testing email address registry@swedishexportmedia.com.
 12.332: svenskaexportmedia.com INFO Successful attempt to deliver email for SOA RNAME of svenskaexportmedia.com (registry.swedishexportmedia.com) using registry@swedishexportmedia.com.
 12.332: svenskaexportmedia.com NOTICE SOA TTL for svenskaexportmedia.com too small (900) - recommended >= 3600.
 12.332: svenskaexportmedia.com NOTICE SOA refresh for svenskaexportmedia.com too small (10800) - recommended >= 14400.
 12.332: svenskaexportmedia.com INFO SOA retry for svenskaexportmedia.com OK (3600) - recommended >= 3600.
 12.332: svenskaexportmedia.com INFO SOA expire for svenskaexportmedia.com OK (777600) - recommended >= 604800.
 12.332: svenskaexportmedia.com INFO SOA minimum for svenskaexportmedia.com OK (3600) - recommended between 300 and 86400.
 12.332: svenskaexportmedia.com INFO Done testing SOA parameters for svenskaexportmedia.com.
 12.332: svenskaexportmedia.com INFO Begin testing connectivity for svenskaexportmedia.com.
 12.557: svenskaexportmedia.com INFO Name server 194.18.50.85 announced by: 3301
 12.682: svenskaexportmedia.com INFO Name server 213.146.64.85 announced by: 3292
 12.802: svenskaexportmedia.com INFO Name server 193.15.80.85 announced by: 1257
 12.802: svenskaexportmedia.com INFO Zone announced by ASN: 3292,3301,1257
 12.802: svenskaexportmedia.com INFO Zone announced by more than one ASN (3).
 12.803: svenskaexportmedia.com INFO Zone announced by IPv6 ASN: 
 12.803: svenskaexportmedia.com NOTICE Zone announced by only one IPv6 ASN (0).
 12.803: svenskaexportmedia.com INFO Done testing connectivity for svenskaexportmedia.com.
 12.803: svenskaexportmedia.com INFO Begin testing DNSSEC for svenskaexportmedia.com.
 13.078: svenskaexportmedia.com INFO Did not find DS record for svenskaexportmedia.com at parent.
 13.169: svenskaexportmedia.com INFO Servers for svenskaexportmedia.com have consistent extra processing status.
 13.170: svenskaexportmedia.com INFO Did not find DNSKEY record for svenskaexportmedia.com at child.
 13.170: svenskaexportmedia.com INFO No DNSKEY(s) found at child, other tests skipped.
 13.170: svenskaexportmedia.com INFO Done testing DNSSEC for svenskaexportmedia.com.
 13.170: svenskaexportmedia.com INFO Test completed for zone svenskaexportmedia.com.
