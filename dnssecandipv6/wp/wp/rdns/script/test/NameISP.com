  0.000: NameISP.com INFO Begin testing zone NameISP.com with version 1.0.1.
  0.001: NameISP.com INFO Begin testing delegation for NameISP.com.
  4.196: NameISP.com INFO Name servers listed at parent: ns.ns2service.net,ns1.nameisp.info,ns2.nameisp.info
  4.566: NameISP.com INFO Name servers listed at child: ns.ns2service.net,ns1.nameisp.info,ns2.nameisp.info
  4.566: NameISP.com NOTICE No IPv6 name servers found.
  4.598: NameISP.com INFO Parent glue for NameISP.com found: ns.ns2service.net (77.68.170.98)
  5.476: NameISP.com INFO Checking glue for ns.ns2service.net (77.68.170.98).
  5.477: NameISP.com INFO Done testing delegation for NameISP.com.
  5.477: NameISP.com INFO Begin testing name server ns.ns2service.net.
  5.477: NameISP.com INFO Begin testing host ns.ns2service.net.
  5.478: NameISP.com INFO Begin testing address 77.68.170.98.
  9.736: NameISP.com WARNING Could not find reverse address for 77.68.170.98 (98.170.68.77.in-addr.arpa.).
  9.736: NameISP.com INFO Done testing address 77.68.170.98.
  9.736: NameISP.com INFO Done testing host ns.ns2service.net.
  9.793: NameISP.com INFO Name server ns.ns2service.net (77.68.170.98) is not recursive.
  9.850: NameISP.com INFO Name server ns.ns2service.net (77.68.170.98) authoritative for NameISP.com.
  9.906: NameISP.com INFO Name server ns.ns2service.net (77.68.170.98) answers queries over UDP.
 10.015: NameISP.com INFO Name server ns.ns2service.net (77.68.170.98) answers queries over TCP.
 10.370: NameISP.com INFO Name server ns.ns2service.net (77.68.170.98) closed for zone transfer of NameISP.com.
 10.425: NameISP.com NOTICE No answer received from 77.68.170.98 when querying for hostname.bind/CH/TXT.
 10.481: NameISP.com NOTICE No answer received from 77.68.170.98 when querying for version.bind/CH/TXT.
 10.536: NameISP.com NOTICE No answer received from 77.68.170.98 when querying for id.server/CH/TXT.
 10.592: NameISP.com NOTICE No answer received from 77.68.170.98 when querying for version.server/CH/TXT.
 10.592: NameISP.com INFO Done testing name server ns.ns2service.net.
 10.592: NameISP.com INFO Begin testing name server ns1.nameisp.info.
 10.592: NameISP.com INFO Begin testing host ns1.nameisp.info.
 10.593: NameISP.com INFO Begin testing address 213.115.221.10.
 10.869: NameISP.com INFO Done testing address 213.115.221.10.
 10.869: NameISP.com INFO Done testing host ns1.nameisp.info.
 10.887: NameISP.com INFO Name server ns1.nameisp.info (213.115.221.10) is not recursive.
 10.902: NameISP.com INFO Name server ns1.nameisp.info (213.115.221.10) authoritative for NameISP.com.
 10.917: NameISP.com INFO Name server ns1.nameisp.info (213.115.221.10) answers queries over UDP.
 10.944: NameISP.com INFO Name server ns1.nameisp.info (213.115.221.10) answers queries over TCP.
 10.985: NameISP.com INFO Name server ns1.nameisp.info (213.115.221.10) closed for zone transfer of NameISP.com.
 11.016: NameISP.com INFO Legacy name server ID for ns1.nameisp.info (213.115.221.10): version.bind = Served by POWERDNS 2.9.19 $Id: packethandler.cc 518 2005-10-16 15:36:51Z ahu $
 11.045: NameISP.com INFO Done testing name server ns1.nameisp.info.
 11.045: NameISP.com INFO Begin testing name server ns2.nameisp.info.
 11.045: NameISP.com INFO Begin testing host ns2.nameisp.info.
 11.046: NameISP.com INFO Begin testing address 213.115.151.140.
 11.102: NameISP.com INFO Done testing address 213.115.151.140.
 11.102: NameISP.com INFO Done testing host ns2.nameisp.info.
 11.123: NameISP.com INFO Name server ns2.nameisp.info (213.115.151.140) is not recursive.
 11.138: NameISP.com INFO Name server ns2.nameisp.info (213.115.151.140) authoritative for NameISP.com.
 11.153: NameISP.com INFO Name server ns2.nameisp.info (213.115.151.140) answers queries over UDP.
 11.181: NameISP.com INFO Name server ns2.nameisp.info (213.115.151.140) answers queries over TCP.
 11.219: NameISP.com INFO Name server ns2.nameisp.info (213.115.151.140) closed for zone transfer of NameISP.com.
 11.249: NameISP.com INFO Legacy name server ID for ns2.nameisp.info (213.115.151.140): version.bind = Served by POWERDNS 2.9.20 $Id: packethandler.cc 539 2005-11-11 11:17:47Z ahu $
 11.279: NameISP.com INFO Done testing name server ns2.nameisp.info.
 11.279: NameISP.com INFO Begin testing zone consistency for NameISP.com.
 11.299: NameISP.com INFO SOA at address 213.115.221.10 has serial 2010080103.
 11.354: NameISP.com INFO SOA at address 77.68.170.98 has serial 2010080103.
 11.369: NameISP.com INFO SOA at address 213.115.151.140 has serial 2010080103.
 11.370: NameISP.com INFO All SOA records have consistent serial numbers.
 11.370: NameISP.com ERROR 2 different SOA records found.
 11.370: NameISP.com INFO Done testing zone consistency for NameISP.com.
 11.370: NameISP.com INFO Begin testing SOA parameters for NameISP.com.
 11.385: NameISP.com INFO Found SOA record for NameISP.com.
 11.385: NameISP.com INFO Begin testing host ns1.nameisp.info.
 11.386: NameISP.com INFO Begin testing address 213.115.221.10.
 11.387: NameISP.com INFO Done testing address 213.115.221.10.
 11.387: NameISP.com INFO Done testing host ns1.nameisp.info.
 11.387: NameISP.com INFO SOA MNAME for NameISP.com valid (ns1.nameisp.info).
 11.387: NameISP.com INFO SOA MNAME for NameISP.com (ns1.nameisp.info) listed as NS.
 11.403: NameISP.com INFO SOA MNAME for NameISP.com (ns1.nameisp.info) is authoritative.
 11.403: NameISP.com INFO Begin testing email address registry@nameisp.com.
 11.461: NameISP.com INFO Mail exchangers for registry@nameisp.com found aspmx.l.google.com,alt2.aspmx.l.google.com,alt1.aspmx.l.google.com,aspmx5.googlemail.com,aspmx4.googlemail.com,aspmx3.googlemail.com,aspmx2.googlemail.com.
 11.461: NameISP.com INFO Begin testing host aspmx.l.google.com.
 11.753: NameISP.com INFO Begin testing address 74.125.79.27.
 12.972: NameISP.com INFO Done testing address 74.125.79.27.
 12.972: NameISP.com INFO Done testing host aspmx.l.google.com.
 12.973: NameISP.com INFO Begin testing mail server aspmx.l.google.com (74.125.79.27) with registry@nameisp.com.
 13.059: NameISP.com INFO SMTP banner: mx.google.com ESMTP x19si14712132eeh.46
 13.355: NameISP.com INFO SMTP testing of aspmx.l.google.com (74.125.79.27) with registry@nameisp.com succeeded without errors.
 13.355: NameISP.com INFO Done testing mail server aspmx.l.google.com (74.125.79.27) with registry@nameisp.com.
 13.355: NameISP.com INFO Begin testing host alt2.aspmx.l.google.com.
 13.591: NameISP.com INFO Begin testing address 74.125.155.27.
 13.944: NameISP.com INFO Done testing address 74.125.155.27.
 13.944: NameISP.com INFO Done testing host alt2.aspmx.l.google.com.
 13.945: NameISP.com INFO Begin testing host alt1.aspmx.l.google.com.
 14.181: NameISP.com INFO Begin testing address 74.125.127.27.
 14.535: NameISP.com INFO Done testing address 74.125.127.27.
 14.535: NameISP.com INFO Done testing host alt1.aspmx.l.google.com.
 14.535: NameISP.com INFO Begin testing host aspmx5.googlemail.com.
 14.827: NameISP.com INFO Begin testing address 74.125.157.27.
 15.180: NameISP.com INFO Done testing address 74.125.157.27.
 15.180: NameISP.com INFO Done testing host aspmx5.googlemail.com.
 15.181: NameISP.com INFO Begin testing host aspmx4.googlemail.com.
 15.417: NameISP.com INFO Begin testing address 209.85.229.27.
 15.916: NameISP.com INFO Done testing address 209.85.229.27.
 15.916: NameISP.com INFO Done testing host aspmx4.googlemail.com.
 15.917: NameISP.com INFO Begin testing host aspmx3.googlemail.com.
 16.151: NameISP.com INFO Begin testing address 72.14.213.27.
 16.781: NameISP.com INFO Done testing address 72.14.213.27.
 16.781: NameISP.com INFO Done testing host aspmx3.googlemail.com.
 16.782: NameISP.com INFO Begin testing host aspmx2.googlemail.com.
 17.019: NameISP.com INFO Begin testing address 74.125.43.27.
 17.373: NameISP.com INFO Done testing address 74.125.43.27.
 17.373: NameISP.com INFO Done testing host aspmx2.googlemail.com.
 17.374: NameISP.com INFO Delivery over IPv4 to registry@nameisp.com ok.
 17.374: NameISP.com INFO Delivery over IPv6 to registry@nameisp.com could not be done.
 17.374: NameISP.com INFO Done testing email address registry@nameisp.com.
 17.374: NameISP.com INFO Successful attempt to deliver email for SOA RNAME of NameISP.com (registry.nameisp.com) using registry@nameisp.com.
 17.374: NameISP.com INFO SOA TTL for NameISP.com OK (86400) - recommended >= 3600.
 17.374: NameISP.com NOTICE SOA refresh for NameISP.com too small (10800) - recommended >= 14400.
 17.374: NameISP.com INFO SOA retry for NameISP.com OK (3600) - recommended >= 3600.
 17.374: NameISP.com INFO SOA expire for NameISP.com OK (604800) - recommended >= 604800.
 17.374: NameISP.com INFO SOA minimum for NameISP.com OK (3600) - recommended between 300 and 86400.
 17.374: NameISP.com INFO Done testing SOA parameters for NameISP.com.
 17.375: NameISP.com INFO Begin testing connectivity for NameISP.com.
 17.586: NameISP.com INFO Name server 213.115.221.10 announced by: 2119
 17.711: NameISP.com INFO Name server 77.68.170.98 announced by: 42355
 17.839: NameISP.com INFO Name server 213.115.151.140 announced by: 2119
 17.839: NameISP.com INFO Zone announced by ASN: 42355,2119
 17.839: NameISP.com INFO Zone announced by more than one ASN (2).
 17.840: NameISP.com INFO Zone announced by IPv6 ASN: 
 17.840: NameISP.com NOTICE Zone announced by only one IPv6 ASN (0).
 17.840: NameISP.com INFO Done testing connectivity for NameISP.com.
 17.840: NameISP.com INFO Begin testing DNSSEC for NameISP.com.
 17.935: NameISP.com INFO Did not find DS record for NameISP.com at parent.
 18.103: NameISP.com INFO Servers for NameISP.com have consistent extra processing status.
 18.103: NameISP.com INFO Did not find DNSKEY record for NameISP.com at child.
 18.103: NameISP.com INFO No DNSKEY(s) found at child, other tests skipped.
 18.103: NameISP.com INFO Done testing DNSSEC for NameISP.com.
 18.103: NameISP.com INFO Test completed for zone NameISP.com.
