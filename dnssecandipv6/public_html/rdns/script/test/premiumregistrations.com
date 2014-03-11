  0.000: premiumregistrations.com INFO Begin testing zone premiumregistrations.com with version 1.5.0.
  0.001: premiumregistrations.com INFO Begin testing delegation for premiumregistrations.com.
 24.939: premiumregistrations.com INFO Name servers listed at parent: ns29.domaincontrol.com,ns30.domaincontrol.com
 28.802: premiumregistrations.com INFO Name servers listed at child: ns29.domaincontrol.com,ns30.domaincontrol.com
 37.014: premiumregistrations.com INFO It is possible to build a referral packet for premiumregistrations.com that works without EDNS0.
 37.014: premiumregistrations.com INFO Done testing delegation for premiumregistrations.com.
 37.022: premiumregistrations.com INFO Begin testing name server ns29.domaincontrol.com.
 37.022: premiumregistrations.com INFO Begin testing host ns29.domaincontrol.com.
 37.023: premiumregistrations.com INFO Begin testing address 216.69.185.15.
 46.889: premiumregistrations.com INFO Done testing address 216.69.185.15.
 46.889: premiumregistrations.com INFO Begin testing address 2607:f208:206:0:0:0:0:f.
 51.898: premiumregistrations.com INFO Done testing address 2607:f208:206:0:0:0:0:f.
 51.898: premiumregistrations.com INFO Done testing host ns29.domaincontrol.com.
 52.114: premiumregistrations.com INFO Name server ns29.domaincontrol.com (216.69.185.15) answers queries over UDP.
 52.467: premiumregistrations.com INFO Name server ns29.domaincontrol.com (216.69.185.15) answers queries over TCP.
 52.650: premiumregistrations.com INFO Name server ns29.domaincontrol.com (216.69.185.15) is not recursive.
 53.397: premiumregistrations.com INFO Name server ns29.domaincontrol.com (216.69.185.15) authoritative for premiumregistrations.com.
 53.946: premiumregistrations.com INFO Name server ns29.domaincontrol.com (216.69.185.15) closed for zone transfer of premiumregistrations.com.
 54.134: premiumregistrations.com NOTICE No answer received from 216.69.185.15 when querying for hostname.bind/CH/TXT.
 54.325: premiumregistrations.com NOTICE No answer received from 216.69.185.15 when querying for version.bind/CH/TXT.
 54.502: premiumregistrations.com NOTICE No answer received from 216.69.185.15 when querying for id.server/CH/TXT.
 54.679: premiumregistrations.com NOTICE No answer received from 216.69.185.15 when querying for version.server/CH/TXT.
 54.941: premiumregistrations.com INFO Name server ns29.domaincontrol.com (2607:f208:206:0:0:0:0:f) answers queries over UDP.
 55.402: premiumregistrations.com INFO Name server ns29.domaincontrol.com (2607:f208:206:0:0:0:0:f) answers queries over TCP.
 55.591: premiumregistrations.com INFO Name server ns29.domaincontrol.com (2607:f208:206:0:0:0:0:f) is not recursive.
 56.391: premiumregistrations.com INFO Name server ns29.domaincontrol.com (2607:f208:206:0:0:0:0:f) authoritative for premiumregistrations.com.
 57.090: premiumregistrations.com INFO Name server ns29.domaincontrol.com (2607:f208:206:0:0:0:0:f) closed for zone transfer of premiumregistrations.com.
 57.311: premiumregistrations.com NOTICE No answer received from 2607:f208:206:0:0:0:0:f when querying for hostname.bind/CH/TXT.
 57.541: premiumregistrations.com NOTICE No answer received from 2607:f208:206:0:0:0:0:f when querying for version.bind/CH/TXT.
 57.781: premiumregistrations.com NOTICE No answer received from 2607:f208:206:0:0:0:0:f when querying for id.server/CH/TXT.
 57.963: premiumregistrations.com NOTICE No answer received from 2607:f208:206:0:0:0:0:f when querying for version.server/CH/TXT.
 57.964: premiumregistrations.com INFO Done testing name server ns29.domaincontrol.com.
 57.964: premiumregistrations.com INFO Begin testing name server ns30.domaincontrol.com.
 57.965: premiumregistrations.com INFO Begin testing host ns30.domaincontrol.com.
 57.965: premiumregistrations.com INFO Begin testing address 208.109.255.15.
 58.903: premiumregistrations.com INFO Done testing address 208.109.255.15.
 58.903: premiumregistrations.com INFO Begin testing address 2607:f208:302:0:0:0:0:f.
 59.656: premiumregistrations.com INFO Done testing address 2607:f208:302:0:0:0:0:f.
 59.656: premiumregistrations.com INFO Done testing host ns30.domaincontrol.com.
 59.842: premiumregistrations.com INFO Name server ns30.domaincontrol.com (208.109.255.15) answers queries over UDP.
 60.192: premiumregistrations.com INFO Name server ns30.domaincontrol.com (208.109.255.15) answers queries over TCP.
 60.380: premiumregistrations.com INFO Name server ns30.domaincontrol.com (208.109.255.15) is not recursive.
 61.105: premiumregistrations.com INFO Name server ns30.domaincontrol.com (208.109.255.15) authoritative for premiumregistrations.com.
 61.635: premiumregistrations.com INFO Name server ns30.domaincontrol.com (208.109.255.15) closed for zone transfer of premiumregistrations.com.
 61.815: premiumregistrations.com NOTICE No answer received from 208.109.255.15 when querying for hostname.bind/CH/TXT.
 61.999: premiumregistrations.com NOTICE No answer received from 208.109.255.15 when querying for version.bind/CH/TXT.
 62.177: premiumregistrations.com NOTICE No answer received from 208.109.255.15 when querying for id.server/CH/TXT.
 62.352: premiumregistrations.com NOTICE No answer received from 208.109.255.15 when querying for version.server/CH/TXT.
 62.563: premiumregistrations.com INFO Name server ns30.domaincontrol.com (2607:f208:302:0:0:0:0:f) answers queries over UDP.
 63.004: premiumregistrations.com INFO Name server ns30.domaincontrol.com (2607:f208:302:0:0:0:0:f) answers queries over TCP.
 63.260: premiumregistrations.com INFO Name server ns30.domaincontrol.com (2607:f208:302:0:0:0:0:f) is not recursive.
 64.183: premiumregistrations.com INFO Name server ns30.domaincontrol.com (2607:f208:302:0:0:0:0:f) authoritative for premiumregistrations.com.
 64.726: premiumregistrations.com INFO Name server ns30.domaincontrol.com (2607:f208:302:0:0:0:0:f) closed for zone transfer of premiumregistrations.com.
 64.909: premiumregistrations.com NOTICE No answer received from 2607:f208:302:0:0:0:0:f when querying for hostname.bind/CH/TXT.
 65.095: premiumregistrations.com NOTICE No answer received from 2607:f208:302:0:0:0:0:f when querying for version.bind/CH/TXT.
 65.324: premiumregistrations.com NOTICE No answer received from 2607:f208:302:0:0:0:0:f when querying for id.server/CH/TXT.
 65.587: premiumregistrations.com NOTICE No answer received from 2607:f208:302:0:0:0:0:f when querying for version.server/CH/TXT.
 65.587: premiumregistrations.com INFO Done testing name server ns30.domaincontrol.com.
 65.588: premiumregistrations.com INFO Begin testing zone consistency for premiumregistrations.com.
 65.846: premiumregistrations.com INFO SOA at address 2607:f208:302:0:0:0:0:f has serial 2013050800.
 66.024: premiumregistrations.com INFO SOA at address 216.69.185.15 has serial 2013050800.
 66.299: premiumregistrations.com INFO SOA at address 2607:f208:206:0:0:0:0:f has serial 2013050800.
 66.488: premiumregistrations.com INFO SOA at address 208.109.255.15 has serial 2013050800.
 66.488: premiumregistrations.com INFO All SOA records have consistent serial numbers.
 66.488: premiumregistrations.com INFO All other fields in the SOA record are consistent among all name servers.
 67.208: premiumregistrations.com NOTICE The listed nameservers for premiumregistrations.com all report the same set of nameservers.
 67.208: premiumregistrations.com INFO Done testing zone consistency for premiumregistrations.com.
 67.208: premiumregistrations.com INFO Begin testing SOA parameters for premiumregistrations.com.
 67.470: premiumregistrations.com INFO Found SOA record for premiumregistrations.com.
 67.471: premiumregistrations.com INFO Begin testing host ns29.domaincontrol.com.
 67.471: premiumregistrations.com INFO Begin testing address 216.69.185.15.
 67.472: premiumregistrations.com INFO Done testing address 216.69.185.15.
 67.472: premiumregistrations.com INFO Begin testing address 2607:f208:206:0:0:0:0:f.
 67.474: premiumregistrations.com INFO Done testing address 2607:f208:206:0:0:0:0:f.
 67.474: premiumregistrations.com INFO Done testing host ns29.domaincontrol.com.
 67.474: premiumregistrations.com INFO SOA MNAME for premiumregistrations.com valid (ns29.domaincontrol.com).
 67.474: premiumregistrations.com INFO SOA MNAME for premiumregistrations.com (ns29.domaincontrol.com) listed as NS.
 67.740: premiumregistrations.com INFO SOA MNAME for premiumregistrations.com (ns29.domaincontrol.com) is authoritative.
 67.980: premiumregistrations.com INFO SOA MNAME for premiumregistrations.com (ns29.domaincontrol.com) is authoritative.
 67.980: premiumregistrations.com INFO Begin testing email address dns@jomax.net.
 69.219: premiumregistrations.com INFO Mail exchangers for dns@jomax.net found smtp.secureserver.net,mailstore1.secureserver.net.
 69.219: premiumregistrations.com INFO Begin testing host smtp.secureserver.net.
 71.962: premiumregistrations.com INFO Begin testing address 72.167.238.201.
 74.590: premiumregistrations.com INFO Done testing address 72.167.238.201.
 74.590: premiumregistrations.com INFO Done testing host smtp.secureserver.net.
 76.090: premiumregistrations.com INFO Begin testing host mailstore1.secureserver.net.
 78.691: premiumregistrations.com INFO Begin testing address 72.167.238.201.
 79.147: premiumregistrations.com INFO Done testing address 72.167.238.201.
 79.147: premiumregistrations.com INFO Done testing host mailstore1.secureserver.net.
 80.681: premiumregistrations.com INFO Done testing email address dns@jomax.net.
 80.682: premiumregistrations.com INFO Successful attempt to deliver email for SOA RNAME of premiumregistrations.com (dns.jomax.net) using dns@jomax.net.
 80.682: premiumregistrations.com INFO SOA TTL for premiumregistrations.com OK (3600) - recommended >= 3600.
 80.682: premiumregistrations.com INFO SOA refresh for premiumregistrations.com OK (28800) - recommended >= 14400.
 80.682: premiumregistrations.com INFO SOA retry for premiumregistrations.com OK (7200) - recommended >= 3600.
 80.682: premiumregistrations.com INFO SOA expire for premiumregistrations.com OK (604800) - recommended >= 604800.
 80.682: premiumregistrations.com INFO SOA minimum for premiumregistrations.com OK (3600) - recommended between 300 and 86400.
 80.682: premiumregistrations.com INFO Done testing SOA parameters for premiumregistrations.com.
 80.682: premiumregistrations.com INFO Begin testing connectivity for premiumregistrations.com.
 82.640: premiumregistrations.com NOTICE Zone announced by fewer than two IPv4 ASN.
 84.513: premiumregistrations.com NOTICE Zone announced by fewer than two IPv6 ASN.
 84.513: premiumregistrations.com INFO Done testing connectivity for premiumregistrations.com.
 84.514: premiumregistrations.com INFO Begin testing DNSSEC for premiumregistrations.com.
 84.951: premiumregistrations.com INFO Did not find DS record for premiumregistrations.com at parent.
 86.540: premiumregistrations.com NOTICE No answer received from 2607:f208:206:0:0:0:0:f when querying for premiumregistrations.com/IN/DNSKEY.
 86.540: premiumregistrations.com INFO Servers for premiumregistrations.com have consistent extra processing status.
 86.888: premiumregistrations.com INFO Authenticated denial records not found for premiumregistrations.com.
 87.069: premiumregistrations.com INFO Did not find DNSKEY record for premiumregistrations.com at child.
 87.069: premiumregistrations.com INFO No DNSKEY(s) found at child, other tests skipped.
 87.069: premiumregistrations.com INFO Done testing DNSSEC for premiumregistrations.com.
 87.069: premiumregistrations.com INFO Test completed for zone premiumregistrations.com.
