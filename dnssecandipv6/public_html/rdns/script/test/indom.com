  0.000: indom.com INFO Begin testing zone indom.com with version 1.5.0.
  0.001: indom.com INFO Begin testing delegation for indom.com.
 24.723: indom.com INFO Name servers listed at parent: indom10.indomco.com,indom20.indomco.net,indom30.indomco.fr,indom80.indomco.hk
 30.057: indom.com INFO Name servers listed at child: indom10.indomco.com,indom20.indomco.net,indom30.indomco.fr,indom80.indomco.hk
 30.058: indom.com NOTICE No IPv6 name servers found.
 30.174: indom.com INFO Parent glue for indom.com found: indom10.indomco.com (217.174.200.97)
 30.355: indom.com INFO Parent glue for indom.com found: indom20.indomco.net (69.170.135.194)
 30.927: indom.com INFO Checking glue for indom10.indomco.com (217.174.200.97).
 30.927: indom.com INFO Checking glue for indom20.indomco.net (69.170.135.194).
 30.928: indom.com INFO Parent glue for indom.com found: indom10.indomco.com (217.174.200.97)
 30.928: indom.com INFO Parent glue for indom.com found: indom20.indomco.net (69.170.135.194)
 33.532: indom.com INFO It is possible to build a referral packet for indom.com that works without EDNS0.
 33.532: indom.com INFO Done testing delegation for indom.com.
 33.532: indom.com INFO Begin testing name server indom10.indomco.com.
 33.532: indom.com INFO Begin testing host indom10.indomco.com.
 34.037: indom.com INFO Begin testing address 217.174.200.97.
 48.545: indom.com INFO Done testing address 217.174.200.97.
 48.545: indom.com INFO Done testing host indom10.indomco.com.
 49.037: indom.com INFO Name server indom10.indomco.com (217.174.200.97) answers queries over UDP.
 49.171: indom.com INFO Name server indom10.indomco.com (217.174.200.97) answers queries over TCP.
 49.219: indom.com INFO Name server indom10.indomco.com (217.174.200.97) is not recursive.
 49.455: indom.com INFO Name server indom10.indomco.com (217.174.200.97) authoritative for indom.com.
 49.630: indom.com INFO Name server indom10.indomco.com (217.174.200.97) closed for zone transfer of indom.com.
 49.721: indom.com INFO Legacy name server ID for indom10.indomco.com (217.174.200.97): version.bind = Served by POWERDNS 2.9.22.6 $Id: packethandler.cc 2063 2011-03-14 14:26:38Z ahu $
 49.813: indom.com INFO Done testing name server indom10.indomco.com.
 49.813: indom.com INFO Begin testing name server indom20.indomco.net.
 49.814: indom.com INFO Begin testing host indom20.indomco.net.
 50.442: indom.com INFO Begin testing address 69.170.135.194.
 59.867: indom.com INFO Done testing address 69.170.135.194.
 59.867: indom.com INFO Done testing host indom20.indomco.net.
 60.695: indom.com INFO Name server indom20.indomco.net (69.170.135.194) answers queries over UDP.
 61.110: indom.com INFO Name server indom20.indomco.net (69.170.135.194) answers queries over TCP.
 61.252: indom.com INFO Name server indom20.indomco.net (69.170.135.194) is not recursive.
 61.949: indom.com INFO Name server indom20.indomco.net (69.170.135.194) authoritative for indom.com.
 62.501: indom.com INFO Name server indom20.indomco.net (69.170.135.194) closed for zone transfer of indom.com.
 62.787: indom.com INFO Legacy name server ID for indom20.indomco.net (69.170.135.194): version.bind = bind 9.3.2
 63.089: indom.com INFO Done testing name server indom20.indomco.net.
 63.089: indom.com INFO Begin testing name server indom30.indomco.fr.
 63.089: indom.com INFO Begin testing host indom30.indomco.fr.
 63.504: indom.com INFO Begin testing address 213.205.102.3.
 66.330: indom.com INFO Done testing address 213.205.102.3.
 66.330: indom.com INFO Done testing host indom30.indomco.fr.
 67.061: indom.com INFO Name server indom30.indomco.fr (213.205.102.3) answers queries over UDP.
 67.232: indom.com INFO Name server indom30.indomco.fr (213.205.102.3) answers queries over TCP.
 67.280: indom.com INFO Name server indom30.indomco.fr (213.205.102.3) is not recursive.
 70.588: indom.com INFO Name server indom30.indomco.fr (213.205.102.3) authoritative for indom.com.
 70.763: indom.com INFO Name server indom30.indomco.fr (213.205.102.3) closed for zone transfer of indom.com.
 70.858: indom.com INFO Legacy name server ID for indom30.indomco.fr (213.205.102.3): version.bind = Served by POWERDNS 2.9.22.6 $Id: packethandler.cc 2063 2011-03-14 14:26:38Z ahu $
 71.038: indom.com INFO Done testing name server indom30.indomco.fr.
 71.038: indom.com INFO Begin testing name server indom80.indomco.hk.
 71.038: indom.com INFO Begin testing host indom80.indomco.hk.
 71.844: indom.com INFO Begin testing address 202.157.180.150.
 82.753: indom.com INFO Done testing address 202.157.180.150.
 82.753: indom.com INFO Done testing host indom80.indomco.hk.
 83.862: indom.com INFO Name server indom80.indomco.hk (202.157.180.150) answers queries over UDP.
 87.738: indom.com INFO Name server indom80.indomco.hk (202.157.180.150) answers queries over TCP.
 88.037: indom.com INFO Name server indom80.indomco.hk (202.157.180.150) is not recursive.
 92.506: indom.com INFO Name server indom80.indomco.hk (202.157.180.150) authoritative for indom.com.
 93.695: indom.com INFO Name server indom80.indomco.hk (202.157.180.150) closed for zone transfer of indom.com.
 94.307: indom.com INFO Legacy name server ID for indom80.indomco.hk (202.157.180.150): version.bind = Served by POWERDNS 2.9.22.6 $Id: packethandler.cc 2063 2011-03-14 14:26:38Z ahu $
 94.926: indom.com INFO Done testing name server indom80.indomco.hk.
 94.926: indom.com INFO Begin testing zone consistency for indom.com.
 99.784: indom.com INFO SOA at address 217.174.200.97 has serial 2013070909.
 99.838: indom.com INFO SOA at address 213.205.102.3 has serial 2013070909.
 99.980: indom.com INFO SOA at address 69.170.135.194 has serial 2013070909.
100.280: indom.com INFO SOA at address 202.157.180.150 has serial 2013070909.
100.280: indom.com INFO All SOA records have consistent serial numbers.
100.280: indom.com INFO All other fields in the SOA record are consistent among all name servers.
103.453: indom.com NOTICE The listed nameservers for indom.com all report the same set of nameservers.
103.453: indom.com INFO Done testing zone consistency for indom.com.
103.457: indom.com INFO Begin testing SOA parameters for indom.com.
103.507: indom.com INFO Found SOA record for indom.com.
103.508: indom.com INFO Begin testing host indom10.indomco.com.
104.058: indom.com INFO Begin testing address 217.174.200.97.
105.638: indom.com INFO Done testing address 217.174.200.97.
105.638: indom.com INFO Done testing host indom10.indomco.com.
105.639: indom.com INFO SOA MNAME for indom.com valid (indom10.indomco.com).
105.639: indom.com INFO SOA MNAME for indom.com (indom10.indomco.com) listed as NS.
106.388: indom.com INFO SOA MNAME for indom.com (indom10.indomco.com) is authoritative.
106.388: indom.com INFO Begin testing email address hostmaster@indomco.com.
106.905: indom.com INFO Mail exchangers for hostmaster@indomco.com found indom.indomco.com,routeur2.indomco.com,indom3.indomco.com.
106.909: indom.com INFO Begin testing host indom.indomco.com.
108.338: indom.com INFO Begin testing address 87.237.189.21.
110.284: indom.com INFO Done testing address 87.237.189.21.
110.284: indom.com INFO Done testing host indom.indomco.com.
111.087: indom.com INFO Begin testing host routeur2.indomco.com.
111.924: indom.com INFO Begin testing address 87.237.189.20.
112.695: indom.com WARNING Could not find reverse address for 87.237.189.20 (20.189.237.87.in-addr.arpa.).
112.695: indom.com INFO Done testing address 87.237.189.20.
112.695: indom.com INFO Done testing host routeur2.indomco.com.
113.277: indom.com INFO Begin testing host indom3.indomco.com.
114.393: indom.com INFO Begin testing address 213.205.102.3.
114.780: indom.com INFO Done testing address 213.205.102.3.
114.780: indom.com INFO Done testing host indom3.indomco.com.
115.236: indom.com INFO Done testing email address hostmaster@indomco.com.
115.236: indom.com INFO Successful attempt to deliver email for SOA RNAME of indom.com (hostmaster.indomco.com) using hostmaster@indomco.com.
115.236: indom.com NOTICE SOA TTL for indom.com too small (300) - recommended >= 3600.
115.236: indom.com INFO SOA refresh for indom.com OK (86400) - recommended >= 14400.
115.236: indom.com INFO SOA retry for indom.com OK (7200) - recommended >= 3600.
115.236: indom.com INFO SOA expire for indom.com OK (604800) - recommended >= 604800.
115.236: indom.com INFO SOA minimum for indom.com OK (7200) - recommended between 300 and 86400.
115.236: indom.com INFO Done testing SOA parameters for indom.com.
115.237: indom.com INFO Begin testing connectivity for indom.com.
118.418: indom.com INFO Zone announced by more than one ASN.
118.419: indom.com NOTICE Zone announced by fewer than two IPv6 ASN.
118.419: indom.com INFO Done testing connectivity for indom.com.
118.419: indom.com INFO Begin testing DNSSEC for indom.com.
118.532: indom.com INFO Did not find DS record for indom.com at parent.
120.126: indom.com INFO Servers for indom.com have consistent extra processing status.
120.258: indom.com INFO Authenticated denial records not found for indom.com.
120.310: indom.com INFO Did not find DNSKEY record for indom.com at child.
120.310: indom.com INFO No DNSKEY(s) found at child, other tests skipped.
120.310: indom.com INFO Done testing DNSSEC for indom.com.
120.311: indom.com INFO Test completed for zone indom.com.
