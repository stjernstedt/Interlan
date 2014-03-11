  0.000: telia.com INFO Begin testing zone telia.com with version 1.3.0.
  0.004: telia.com INFO Begin testing delegation for telia.com.
 18.671: telia.com INFO Name servers listed at parent: dns1.telia.com,dns2.telia.com,dns49.de.telia.net,ns02.savvis.net
 24.542: telia.com INFO Name servers listed at child: dns1.telia.com,dns102.telia.com,dns2.telia.com,dns49.de.telia.net,ns02.savvis.net
 24.542: telia.com NOTICE Additional name server listed at child: dns102.telia.com
 24.889: telia.com INFO Parent glue for telia.com found: dns1.telia.com (81.228.11.67)
 25.433: telia.com INFO Parent glue for telia.com found: dns2.telia.com (81.228.10.67)
 25.781: telia.com INFO Parent glue for telia.com found: dns49.de.telia.net (213.248.77.82)
 25.881: telia.com INFO Parent glue for telia.com found: dns49.de.telia.net (2001:2030:c000:5:0:0:0:4)
 26.164: telia.com INFO Checking glue for dns1.telia.com (81.228.11.67).
 26.230: telia.com INFO Child glue for telia.com found: dns1.telia.com (81.228.11.67)
 26.230: telia.com INFO Checking glue for dns2.telia.com (81.228.10.67).
 26.329: telia.com INFO Child glue for telia.com found: dns2.telia.com (81.228.10.67)
 26.329: telia.com INFO Checking glue for dns49.de.telia.net (213.248.77.82).
 26.329: telia.com INFO Checking glue for dns49.de.telia.net (2001:2030:c000:5:0:0:0:4).
 26.330: telia.com INFO Parent glue for telia.com found: dns1.telia.com (81.228.11.67)
 26.330: telia.com INFO Parent glue for telia.com found: dns2.telia.com (81.228.10.67)
 26.330: telia.com INFO Parent glue for telia.com found: dns49.de.telia.net (213.248.77.82)
 26.331: telia.com INFO Parent glue for telia.com found: dns49.de.telia.net (2001:2030:c000:5:0:0:0:4)
 27.078: telia.com INFO Done testing delegation for telia.com.
 27.079: telia.com INFO Begin testing name server dns1.telia.com.
 27.079: telia.com INFO Begin testing host dns1.telia.com.
 27.757: telia.com INFO Begin testing address 81.228.11.67.
 34.183: telia.com INFO Done testing address 81.228.11.67.
 34.183: telia.com INFO Done testing host dns1.telia.com.
 34.866: telia.com INFO Name server dns1.telia.com (81.228.11.67) answers queries over UDP.
 34.885: telia.com INFO Name server dns1.telia.com (81.228.11.67) answers queries over TCP.
 34.919: telia.com INFO Name server dns1.telia.com (81.228.11.67) is not recursive.
 34.929: telia.com INFO Name server dns1.telia.com (81.228.11.67) authoritative for telia.com.
 34.944: telia.com INFO Name server dns1.telia.com (81.228.11.67) closed for zone transfer of telia.com.
 34.954: telia.com INFO Legacy name server ID for dns1.telia.com (81.228.11.67): hostname.bind = dnshosting3-sn1.fre.skanova.net
 34.964: telia.com INFO Legacy name server ID for dns1.telia.com (81.228.11.67): version.bind = 9.3.2-P1
 34.991: telia.com NOTICE No answer received from 81.228.11.67 when querying for version.server/CH/TXT.
 34.991: telia.com INFO Done testing name server dns1.telia.com.
 34.991: telia.com INFO Begin testing name server dns102.telia.com.
 34.991: telia.com INFO Begin testing host dns102.telia.com.
 34.992: telia.com INFO Begin testing address 194.255.56.70.
 36.752: telia.com INFO Done testing address 194.255.56.70.
 36.753: telia.com INFO Begin testing address 2001:2011:c000:1:0:0:0:2.
 38.249: telia.com INFO Done testing address 2001:2011:c000:1:0:0:0:2.
 38.249: telia.com INFO Done testing host dns102.telia.com.
 38.293: telia.com INFO Name server dns102.telia.com (194.255.56.70) answers queries over UDP.
 38.370: telia.com INFO Name server dns102.telia.com (194.255.56.70) answers queries over TCP.
 38.403: telia.com INFO Name server dns102.telia.com (194.255.56.70) is not recursive.
 38.447: telia.com INFO Name server dns102.telia.com (194.255.56.70) authoritative for telia.com.
 38.541: telia.com INFO Name server dns102.telia.com (194.255.56.70) closed for zone transfer of telia.com.
 38.574: telia.com NOTICE No answer received from 194.255.56.70 when querying for hostname.bind/CH/TXT.
 38.606: telia.com NOTICE No answer received from 194.255.56.70 when querying for version.bind/CH/TXT.
 38.642: telia.com NOTICE No answer received from 194.255.56.70 when querying for id.server/CH/TXT.
 38.680: telia.com NOTICE No answer received from 194.255.56.70 when querying for version.server/CH/TXT.
 38.748: telia.com INFO Name server dns102.telia.com (2001:2011:c000:1:0:0:0:2) answers queries over UDP.
 38.870: telia.com INFO Name server dns102.telia.com (2001:2011:c000:1:0:0:0:2) answers queries over TCP.
 38.939: telia.com INFO Name server dns102.telia.com (2001:2011:c000:1:0:0:0:2) is not recursive.
 38.996: telia.com INFO Name server dns102.telia.com (2001:2011:c000:1:0:0:0:2) authoritative for telia.com.
 39.170: telia.com INFO Name server dns102.telia.com (2001:2011:c000:1:0:0:0:2) closed for zone transfer of telia.com.
 39.232: telia.com NOTICE No answer received from 2001:2011:c000:1:0:0:0:2 when querying for hostname.bind/CH/TXT.
 39.291: telia.com NOTICE No answer received from 2001:2011:c000:1:0:0:0:2 when querying for version.bind/CH/TXT.
 39.347: telia.com NOTICE No answer received from 2001:2011:c000:1:0:0:0:2 when querying for id.server/CH/TXT.
 39.407: telia.com NOTICE No answer received from 2001:2011:c000:1:0:0:0:2 when querying for version.server/CH/TXT.
 39.407: telia.com INFO Done testing name server dns102.telia.com.
 39.408: telia.com INFO Begin testing name server dns2.telia.com.
 39.408: telia.com INFO Begin testing host dns2.telia.com.
 39.726: telia.com INFO Begin testing address 81.228.10.67.
 41.401: telia.com INFO Done testing address 81.228.10.67.
 41.402: telia.com INFO Done testing host dns2.telia.com.
 41.732: telia.com INFO Name server dns2.telia.com (81.228.10.67) answers queries over UDP.
 41.768: telia.com INFO Name server dns2.telia.com (81.228.10.67) answers queries over TCP.
 41.790: telia.com INFO Name server dns2.telia.com (81.228.10.67) is not recursive.
 41.818: telia.com INFO Name server dns2.telia.com (81.228.10.67) authoritative for telia.com.
 41.874: telia.com INFO Name server dns2.telia.com (81.228.10.67) closed for zone transfer of telia.com.
 41.907: telia.com INFO Legacy name server ID for dns2.telia.com (81.228.10.67): hostname.bind = dnshosting3-sn4.m-sp.skanova.net
 41.925: telia.com INFO Legacy name server ID for dns2.telia.com (81.228.10.67): version.bind = 9.3.2-P1
 41.960: telia.com NOTICE No answer received from 81.228.10.67 when querying for version.server/CH/TXT.
 41.960: telia.com INFO Done testing name server dns2.telia.com.
 41.960: telia.com INFO Begin testing name server dns49.de.telia.net.
 41.960: telia.com INFO Begin testing host dns49.de.telia.net.
 41.961: telia.com INFO Begin testing address 213.248.77.82.
 43.326: telia.com INFO Done testing address 213.248.77.82.
 43.326: telia.com INFO Begin testing address 2001:2030:c000:5:0:0:0:4.
 44.605: telia.com INFO Done testing address 2001:2030:c000:5:0:0:0:4.
 44.605: telia.com INFO Done testing host dns49.de.telia.net.
 44.657: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) answers queries over UDP.
 44.742: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) answers queries over TCP.
 44.777: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) is not recursive.
 44.814: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) authoritative for telia.com.
 44.916: telia.com INFO Name server dns49.de.telia.net (213.248.77.82) closed for zone transfer of telia.com.
 44.952: telia.com INFO Legacy name server ID for dns49.de.telia.net (213.248.77.82): hostname.bind = dnshosting1-sn92.ffm.skanova.net
 44.988: telia.com INFO Legacy name server ID for dns49.de.telia.net (213.248.77.82): version.bind = 9.8.3-P2
 45.059: telia.com NOTICE No answer received from 213.248.77.82 when querying for version.server/CH/TXT.
 45.110: telia.com INFO Name server dns49.de.telia.net (2001:2030:c000:5:0:0:0:4) answers queries over UDP.
 45.216: telia.com INFO Name server dns49.de.telia.net (2001:2030:c000:5:0:0:0:4) answers queries over TCP.
 45.319: telia.com INFO Name server dns49.de.telia.net (2001:2030:c000:5:0:0:0:4) is not recursive.
 45.370: telia.com INFO Name server dns49.de.telia.net (2001:2030:c000:5:0:0:0:4) authoritative for telia.com.
 45.512: telia.com INFO Name server dns49.de.telia.net (2001:2030:c000:5:0:0:0:4) closed for zone transfer of telia.com.
 45.565: telia.com INFO Legacy name server ID for dns49.de.telia.net (2001:2030:c000:5:0:0:0:4): hostname.bind = dnshosting1-sn92.ffm.skanova.net
 45.614: telia.com INFO Legacy name server ID for dns49.de.telia.net (2001:2030:c000:5:0:0:0:4): version.bind = 9.8.3-P2
 45.716: telia.com NOTICE No answer received from 2001:2030:c000:5:0:0:0:4 when querying for version.server/CH/TXT.
 45.717: telia.com INFO Done testing name server dns49.de.telia.net.
 45.717: telia.com INFO Begin testing name server ns02.savvis.net.
 45.719: telia.com INFO Begin testing host ns02.savvis.net.
 46.200: telia.com INFO Begin testing address 204.70.57.242.
 55.093: telia.com INFO Done testing address 204.70.57.242.
 55.093: telia.com INFO Done testing host ns02.savvis.net.
 55.532: telia.com INFO Name server ns02.savvis.net (204.70.57.242) answers queries over UDP.
 55.818: telia.com INFO Name server ns02.savvis.net (204.70.57.242) answers queries over TCP.
 55.957: telia.com INFO Name server ns02.savvis.net (204.70.57.242) is not recursive.
 56.106: telia.com INFO Name server ns02.savvis.net (204.70.57.242) authoritative for telia.com.
 56.533: telia.com INFO Name server ns02.savvis.net (204.70.57.242) closed for zone transfer of telia.com.
 56.673: telia.com INFO Legacy name server ID for ns02.savvis.net (204.70.57.242): hostname.bind = ns1a.ald
 56.818: telia.com INFO Legacy name server ID for ns02.savvis.net (204.70.57.242): version.bind = Contact Hostmaster@savvis.net
 57.100: telia.com NOTICE No answer received from 204.70.57.242 when querying for version.server/CH/TXT.
 57.101: telia.com INFO Done testing name server ns02.savvis.net.
 57.101: telia.com INFO Begin testing zone consistency for telia.com.
 59.252: telia.com INFO SOA at address 81.228.10.67 has serial 2012090600.
 59.308: telia.com INFO SOA at address 2001:2030:c000:5:0:0:0:4 has serial 2012090600.
 59.320: telia.com INFO SOA at address 81.228.11.67 has serial 2012090600.
 59.361: telia.com INFO SOA at address 194.255.56.70 has serial 2012090600.
 59.504: telia.com INFO SOA at address 204.70.57.242 has serial 2012090600.
 59.549: telia.com INFO SOA at address 213.248.77.82 has serial 2012090600.
 59.613: telia.com INFO SOA at address 2001:2011:c000:1:0:0:0:2 has serial 2012090600.
 59.614: telia.com INFO All SOA records have consistent serial numbers.
 59.614: telia.com INFO All other fields in the SOA record are consistent among all name servers.
 59.614: telia.com INFO Done testing zone consistency for telia.com.
 59.614: telia.com INFO Begin testing SOA parameters for telia.com.
 59.634: telia.com INFO Found SOA record for telia.com.
 59.635: telia.com INFO Begin testing host dns1.telia.com.
 59.923: telia.com INFO Begin testing address 81.228.11.67.
 60.506: telia.com INFO Done testing address 81.228.11.67.
 60.506: telia.com INFO Done testing host dns1.telia.com.
 60.506: telia.com INFO SOA MNAME for telia.com valid (dns1.telia.com).
 60.507: telia.com INFO SOA MNAME for telia.com (dns1.telia.com) listed as NS.
 60.793: telia.com INFO SOA MNAME for telia.com (dns1.telia.com) is authoritative.
 60.794: telia.com INFO Begin testing email address backbone@telia.net.
 61.061: telia.com INFO Mail exchangers for backbone@telia.net found mail.telia.net.
 61.062: telia.com INFO Begin testing host mail.telia.net.
 62.003: telia.com INFO Begin testing address 194.237.170.102.
 63.256: telia.com INFO Done testing address 194.237.170.102.
 63.256: telia.com INFO Done testing host mail.telia.net.
 63.632: telia.com INFO Begin testing mail server mail.telia.net (194.237.170.102) with backbone@telia.net.
 63.768: telia.com INFO SMTP banner: avserver.telia.net ESMTP Postfix
 64.127: telia.com INFO SMTP testing of mail.telia.net (194.237.170.102) with backbone@telia.net succeeded without errors.
 64.127: telia.com INFO Done testing mail server mail.telia.net (194.237.170.102) with backbone@telia.net.
 64.127: telia.com INFO Delivery over IPv4 to backbone@telia.net ok.
 64.128: telia.com NOTICE Delivery over IPv6 to backbone@telia.net could not be done.
 64.128: telia.com INFO Done testing email address backbone@telia.net.
 64.128: telia.com INFO Successful attempt to deliver email for SOA RNAME of telia.com (backbone.telia.net) using backbone@telia.net.
 64.128: telia.com INFO SOA TTL for telia.com OK (3600) - recommended >= 3600.
 64.128: telia.com NOTICE SOA refresh for telia.com too small (10800) - recommended >= 14400.
 64.128: telia.com INFO SOA retry for telia.com OK (3600) - recommended >= 3600.
 64.128: telia.com INFO SOA expire for telia.com OK (604800) - recommended >= 604800.
 64.128: telia.com INFO SOA minimum for telia.com OK (3600) - recommended between 300 and 86400.
 64.128: telia.com INFO Done testing SOA parameters for telia.com.
 64.129: telia.com INFO Begin testing connectivity for telia.com.
 64.717: telia.com INFO Name server 81.228.10.67 announced by: 3301
 65.290: telia.com INFO Name server 81.228.11.67 announced by: 3301
 65.791: telia.com INFO Name server 204.70.57.242 announced by: 3561
 66.360: telia.com INFO Name server 213.248.77.82 announced by: 1299
 67.170: telia.com INFO Name server 194.255.56.70 announced by: 3308
 67.171: telia.com INFO Zone announced by IPv4 ASN: 1299,3308,3301,3561
 67.171: telia.com INFO Zone announced by more than one ASN (4).
 67.775: telia.com INFO Name server 2001:2030:c000:0005:0000:0000:0000:0004 announced over IPv6 by: 1299
 68.594: telia.com INFO Name server 2001:2011:c000:0001:0000:0000:0000:0002 announced over IPv6 by: 3308
 68.594: telia.com INFO Zone announced by IPv6 ASN: 1299,3308
 68.594: telia.com INFO Zone announced by more than one IPv6 ASN (2).
 68.594: telia.com INFO Done testing connectivity for telia.com.
 68.595: telia.com INFO Begin testing DNSSEC for telia.com.
 68.650: telia.com INFO Did not find DS record for telia.com at parent.
 69.300: telia.com INFO Servers for telia.com have consistent extra processing status.
 69.314: telia.com INFO Did not find DNSKEY record for telia.com at child.
 69.314: telia.com INFO No DNSKEY(s) found at child, other tests skipped.
 69.315: telia.com INFO Done testing DNSSEC for telia.com.
 69.315: telia.com INFO Test completed for zone telia.com.
