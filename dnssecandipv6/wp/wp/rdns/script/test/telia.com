  0.000: telia.com INFO Begin testing zone telia.com with version 1.0.1.
  0.000: telia.com INFO Begin testing delegation for telia.com.
  4.068: telia.com INFO Name servers listed at parent: dns1.telia.com,dns2.telia.com,dns49.de.telia.net,ns02.savvis.net
  4.834: telia.com INFO Name servers listed at child: dns1.telia.com,dns2.telia.com,dns49.de.telia.net,ns02.savvis.net
  4.834: telia.com NOTICE No IPv6 name servers found.
  4.937: telia.com INFO Parent glue for telia.com found: dns1.telia.com (81.228.11.67)
  5.165: telia.com INFO Parent glue for telia.com found: dns2.telia.com (81.228.10.67)
  5.694: telia.com INFO Checking glue for dns1.telia.com (81.228.11.67).
  5.713: telia.com INFO Child glue for telia.com found: dns1.telia.com (81.228.11.67)
  5.713: telia.com INFO Checking glue for dns2.telia.com (81.228.10.67).
  5.731: telia.com INFO Child glue for telia.com found: dns2.telia.com (81.228.10.67)
  5.731: telia.com INFO Done testing delegation for telia.com.
  5.731: telia.com INFO Begin testing name server dns1.telia.com.
  5.732: telia.com INFO Begin testing host dns1.telia.com.
  5.732: telia.com INFO Begin testing address 81.228.11.67.
  8.305: telia.com INFO Done testing address 81.228.11.67.
  8.305: telia.com INFO Done testing host dns1.telia.com.
  8.321: telia.com INFO Name server dns1.telia.com (81.228.11.67) is not recursive.
  8.329: telia.com INFO Name server dns1.telia.com (81.228.11.67) authoritative for telia.com.
  8.337: telia.com INFO Name server dns1.telia.com (81.228.11.67) answers queries over UDP.
  8.350: telia.com INFO Name server dns1.telia.com (81.228.11.67) answers queries over TCP.
  8.363: telia.com INFO Name server dns1.telia.com (81.228.11.67) closed for zone transfer of telia.com.
  8.373: telia.com INFO Legacy name server ID for dns1.telia.com (81.228.11.67): hostname.bind = dnshosting3-sn1.fre.skanova.net
  8.380: telia.com INFO Legacy name server ID for dns1.telia.com (81.228.11.67): version.bind = 9.3.2-P1
  8.394: telia.com NOTICE No answer received from 81.228.11.67 when querying for version.server/CH/TXT.
  8.394: telia.com INFO Done testing name server dns1.telia.com.
  8.394: telia.com INFO Begin testing name server dns2.telia.com.
  8.394: telia.com INFO Begin testing host dns2.telia.com.
  8.394: telia.com INFO Begin testing address 81.228.10.67.
  8.462: telia.com INFO Done testing address 81.228.10.67.
  8.462: telia.com INFO Done testing host dns2.telia.com.
  8.485: telia.com INFO Name server dns2.telia.com (81.228.10.67) is not recursive.
  8.503: telia.com INFO Name server dns2.telia.com (81.228.10.67) authoritative for telia.com.
  8.521: telia.com INFO Name server dns2.telia.com (81.228.10.67) answers queries over UDP.
  8.552: telia.com INFO Name server dns2.telia.com (81.228.10.67) answers queries over TCP.
  8.597: telia.com INFO Name server dns2.telia.com (81.228.10.67) closed for zone transfer of telia.com.
  8.615: telia.com INFO Legacy name server ID for dns2.telia.com (81.228.10.67): hostname.bind = dnshosting3-sn4.m-sp.skanova.net
  8.631: telia.com INFO Legacy name server ID for dns2.telia.com (81.228.10.67): version.bind = 9.3.2-P1
  8.663: telia.com NOTICE No answer received from 81.228.10.67 when querying for version.server/CH/TXT.
  8.663: telia.com INFO Done testing name server dns2.telia.com.
  8.664: telia.com INFO Begin testing name server dns49.de.telia.net.
  8.664: telia.com INFO Begin testing host dns49.de.telia.net.
  8.664: telia.com INFO Begin testing address 213.248.77.82.
  8.876: telia.com INFO Done testing address 213.248.77.82.
  8.877: telia.com INFO Done testing host dns49.de.telia.net.
  8.909: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) is not recursive.
  8.941: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) authoritative for telia.com.
  8.974: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) answers queries over UDP.
  9.034: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) answers queries over TCP.
  9.112: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) closed for zone transfer of telia.com.
  9.144: telia.com NOTICE No answer received from 213.248.77.82 when querying for hostname.bind/CH/TXT.
  9.175: telia.com INFO Legacy name server ID for dns49.de.telia.net (213.248.77.82): version.bind = 9.2.4
  9.206: telia.com NOTICE No answer received from 213.248.77.82 when querying for id.server/CH/TXT.
  9.234: telia.com NOTICE No answer received from 213.248.77.82 when querying for version.server/CH/TXT.
  9.234: telia.com INFO Done testing name server dns49.de.telia.net.
  9.234: telia.com INFO Begin testing name server ns02.savvis.net.
  9.234: telia.com INFO Begin testing host ns02.savvis.net.
  9.235: telia.com INFO Begin testing address 204.70.57.242.
 10.842: telia.com INFO Done testing address 204.70.57.242.
 10.842: telia.com INFO Done testing host ns02.savvis.net.
 10.979: telia.com INFO Name server ns02.savvis.net (204.70.57.242) is not recursive.
 11.117: telia.com INFO Name server ns02.savvis.net (204.70.57.242) authoritative for telia.com.
 11.255: telia.com INFO Name server ns02.savvis.net (204.70.57.242) answers queries over UDP.
 11.527: telia.com INFO Name server ns02.savvis.net (204.70.57.242) answers queries over TCP.
 11.939: telia.com INFO Name server ns02.savvis.net (204.70.57.242) closed for zone transfer of telia.com.
 12.076: telia.com INFO Legacy name server ID for ns02.savvis.net (204.70.57.242): hostname.bind = ns1a.ald
 12.213: telia.com INFO Legacy name server ID for ns02.savvis.net (204.70.57.242): version.bind = Contact Hostmaster@savvis.net
 12.490: telia.com NOTICE No answer received from 204.70.57.242 when querying for version.server/CH/TXT.
 12.490: telia.com INFO Done testing name server ns02.savvis.net.
 12.491: telia.com INFO Begin testing zone consistency for telia.com.
 12.518: telia.com INFO SOA at address 81.228.10.67 has serial 2010090700.
 12.527: telia.com INFO SOA at address 81.228.11.67 has serial 2010090700.
 12.666: telia.com INFO SOA at address 204.70.57.242 has serial 2010082400.
 12.697: telia.com INFO SOA at address 213.248.77.82 has serial 2010090700.
 12.697: telia.com WARNING 2 different serials found.
 12.697: telia.com INFO All SOA records are consistent among all name servers.
 12.697: telia.com INFO Done testing zone consistency for telia.com.
 12.697: telia.com INFO Begin testing SOA parameters for telia.com.
 12.715: telia.com INFO Found SOA record for telia.com.
 12.715: telia.com INFO Begin testing host dns1.telia.com.
 12.716: telia.com INFO Begin testing address 81.228.11.67.
 12.717: telia.com INFO Done testing address 81.228.11.67.
 12.717: telia.com INFO Done testing host dns1.telia.com.
 12.717: telia.com INFO SOA MNAME for telia.com valid (dns1.telia.com).
 12.718: telia.com INFO SOA MNAME for telia.com (dns1.telia.com) listed as NS.
 12.726: telia.com INFO SOA MNAME for telia.com (dns1.telia.com) is authoritative.
 12.726: telia.com INFO Begin testing email address backbone@telia.net.
 12.735: telia.com INFO Mail exchangers for backbone@telia.net found mail.telia.net.
 12.735: telia.com INFO Begin testing host mail.telia.net.
 12.749: telia.com INFO Begin testing address 194.237.170.102.
 13.312: telia.com INFO Done testing address 194.237.170.102.
 13.312: telia.com INFO Done testing host mail.telia.net.
 13.313: telia.com INFO Begin testing mail server mail.telia.net (194.237.170.102) with backbone@telia.net.
 13.332: telia.com INFO SMTP banner: avserver.telia.net ESMTP Postfix
 13.431: telia.com INFO SMTP testing of mail.telia.net (194.237.170.102) with backbone@telia.net succeeded without errors.
 13.431: telia.com INFO Done testing mail server mail.telia.net (194.237.170.102) with backbone@telia.net.
 13.431: telia.com INFO Delivery over IPv4 to backbone@telia.net ok.
 13.431: telia.com INFO Delivery over IPv6 to backbone@telia.net could not be done.
 13.431: telia.com INFO Done testing email address backbone@telia.net.
 13.432: telia.com INFO Successful attempt to deliver email for SOA RNAME of telia.com (backbone.telia.net) using backbone@telia.net.
 13.432: telia.com INFO SOA TTL for telia.com OK (3600) - recommended >= 3600.
 13.432: telia.com NOTICE SOA refresh for telia.com too small (10800) - recommended >= 14400.
 13.432: telia.com INFO SOA retry for telia.com OK (3600) - recommended >= 3600.
 13.432: telia.com INFO SOA expire for telia.com OK (604800) - recommended >= 604800.
 13.432: telia.com INFO SOA minimum for telia.com OK (3600) - recommended between 300 and 86400.
 13.432: telia.com INFO Done testing SOA parameters for telia.com.
 13.432: telia.com INFO Begin testing connectivity for telia.com.
 13.651: telia.com INFO Name server 81.228.10.67 announced by: 3301
 13.783: telia.com INFO Name server 81.228.11.67 announced by: 3301
 13.904: telia.com INFO Name server 204.70.57.242 announced by: 3561
 14.033: telia.com INFO Name server 213.248.77.82 announced by: 1299
 14.033: telia.com INFO Zone announced by ASN: 1299,3301,3561
 14.033: telia.com INFO Zone announced by more than one ASN (3).
 14.034: telia.com INFO Zone announced by IPv6 ASN: 
 14.034: telia.com NOTICE Zone announced by only one IPv6 ASN (0).
 14.034: telia.com INFO Done testing connectivity for telia.com.
 14.034: telia.com INFO Begin testing DNSSEC for telia.com.
 14.363: telia.com INFO Did not find DS record for telia.com at parent.
 14.743: telia.com INFO Servers for telia.com have consistent extra processing status.
 14.743: telia.com INFO Did not find DNSKEY record for telia.com at child.
 14.744: telia.com INFO No DNSKEY(s) found at child, other tests skipped.
 14.744: telia.com INFO Done testing DNSSEC for telia.com.
 14.744: telia.com INFO Test completed for zone telia.com.
