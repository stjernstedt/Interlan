  0.000: space2u.com INFO Begin testing zone space2u.com with version 1.0.1.
  0.001: space2u.com INFO Begin testing delegation for space2u.com.
  4.045: space2u.com INFO Name servers listed at parent: ns3.space2u.com,ns4.space2u.com
  4.137: space2u.com INFO Name servers listed at child: ns3.space2u.com,ns4.space2u.com
  4.138: space2u.com NOTICE No IPv6 name servers found.
  4.191: space2u.com INFO Parent glue for space2u.com found: ns3.space2u.com (62.20.1.130)
  4.358: space2u.com INFO Parent glue for space2u.com found: ns4.space2u.com (194.236.32.2)
  4.650: space2u.com INFO Checking glue for ns3.space2u.com (62.20.1.130).
  4.668: space2u.com INFO Child glue for space2u.com found: ns3.space2u.com (62.20.1.130)
  4.668: space2u.com INFO Checking glue for ns4.space2u.com (194.236.32.2).
  4.682: space2u.com INFO Child glue for space2u.com found: ns4.space2u.com (194.236.32.2)
  4.682: space2u.com INFO Done testing delegation for space2u.com.
  4.682: space2u.com INFO Begin testing name server ns3.space2u.com.
  4.682: space2u.com INFO Begin testing host ns3.space2u.com.
  4.683: space2u.com INFO Begin testing address 62.20.1.130.
 11.576: space2u.com INFO Done testing address 62.20.1.130.
 11.576: space2u.com INFO Done testing host ns3.space2u.com.
 11.593: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) is not recursive.
 11.611: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) authoritative for space2u.com.
 11.627: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) answers queries over UDP.
 11.653: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) answers queries over TCP.
 11.693: space2u.com INFO Name server ns3.space2u.com (62.20.1.130) closed for zone transfer of space2u.com.
 11.713: space2u.com INFO Legacy name server ID for ns3.space2u.com (62.20.1.130): hostname.bind = ns3
 11.728: space2u.com INFO Legacy name server ID for ns3.space2u.com (62.20.1.130): version.bind = space2u
 11.757: space2u.com NOTICE No answer received from 62.20.1.130 when querying for version.server/CH/TXT.
 11.757: space2u.com INFO Done testing name server ns3.space2u.com.
 11.758: space2u.com INFO Begin testing name server ns4.space2u.com.
 11.758: space2u.com INFO Begin testing host ns4.space2u.com.
 11.758: space2u.com INFO Begin testing address 194.236.32.2.
 12.044: space2u.com INFO Done testing address 194.236.32.2.
 12.044: space2u.com INFO Done testing host ns4.space2u.com.
 12.059: space2u.com INFO Name server ns4.space2u.com (194.236.32.2) is not recursive.
 12.078: space2u.com INFO Name server ns4.space2u.com (194.236.32.2) authoritative for space2u.com.
 12.095: space2u.com INFO Name server ns4.space2u.com (194.236.32.2) answers queries over UDP.
 12.121: space2u.com INFO Name server ns4.space2u.com (194.236.32.2) answers queries over TCP.
 12.154: space2u.com INFO Name server ns4.space2u.com (194.236.32.2) closed for zone transfer of space2u.com.
 12.169: space2u.com INFO Legacy name server ID for ns4.space2u.com (194.236.32.2): hostname.bind = ns4
 12.182: space2u.com INFO Legacy name server ID for ns4.space2u.com (194.236.32.2): version.bind = space2u
 12.208: space2u.com NOTICE No answer received from 194.236.32.2 when querying for version.server/CH/TXT.
 12.208: space2u.com INFO Done testing name server ns4.space2u.com.
 12.209: space2u.com INFO Begin testing zone consistency for space2u.com.
 12.230: space2u.com INFO SOA at address 194.236.32.2 has serial 2010090701.
 12.246: space2u.com INFO SOA at address 62.20.1.130 has serial 2010090701.
 12.246: space2u.com INFO All SOA records have consistent serial numbers.
 12.246: space2u.com INFO All SOA records are consistent among all name servers.
 12.246: space2u.com INFO Done testing zone consistency for space2u.com.
 12.246: space2u.com INFO Begin testing SOA parameters for space2u.com.
 12.266: space2u.com INFO Found SOA record for space2u.com.
 12.266: space2u.com INFO Begin testing host ns3.space2u.com.
 12.266: space2u.com INFO Begin testing address 62.20.1.130.
 12.268: space2u.com INFO Done testing address 62.20.1.130.
 12.268: space2u.com INFO Done testing host ns3.space2u.com.
 12.268: space2u.com INFO SOA MNAME for space2u.com valid (ns3.space2u.com).
 12.268: space2u.com INFO SOA MNAME for space2u.com (ns3.space2u.com) listed as NS.
 12.284: space2u.com INFO SOA MNAME for space2u.com (ns3.space2u.com) is authoritative.
 12.285: space2u.com INFO Begin testing email address info@space2u.com.
 12.304: space2u.com INFO Mail exchangers for info@space2u.com found mail-core.space2u.com.
 12.305: space2u.com INFO All mail servers for info@space2u.com are in zone space2u.com.
 12.305: space2u.com INFO Begin testing host mail-core.space2u.com.
 12.335: space2u.com INFO Begin testing address 62.20.1.181.
 12.407: space2u.com INFO Done testing address 62.20.1.181.
 12.408: space2u.com INFO Done testing host mail-core.space2u.com.
 12.408: space2u.com INFO Begin testing mail server mail-core.space2u.com (62.20.1.181) with info@space2u.com.
 13.163: space2u.com INFO SMTP banner: mail-core.space2u.com ESMTP Sendmail 8.14.4/8.14.3; Tue, 7 Sep 2010 16:24:25 +0200
 13.602: space2u.com INFO SMTP testing of mail-core.space2u.com (62.20.1.181) with info@space2u.com succeeded without errors.
 13.602: space2u.com INFO Done testing mail server mail-core.space2u.com (62.20.1.181) with info@space2u.com.
 13.602: space2u.com INFO Delivery over IPv4 to info@space2u.com ok.
 13.602: space2u.com INFO Delivery over IPv6 to info@space2u.com could not be done.
 13.602: space2u.com INFO Done testing email address info@space2u.com.
 13.602: space2u.com INFO Successful attempt to deliver email for SOA RNAME of space2u.com (info.space2u.com) using info@space2u.com.
 13.602: space2u.com INFO SOA TTL for space2u.com OK (86400) - recommended >= 3600.
 13.602: space2u.com INFO SOA refresh for space2u.com OK (28800) - recommended >= 14400.
 13.603: space2u.com INFO SOA retry for space2u.com OK (7200) - recommended >= 3600.
 13.603: space2u.com INFO SOA expire for space2u.com OK (604800) - recommended >= 604800.
 13.603: space2u.com INFO SOA minimum for space2u.com OK (86400) - recommended between 300 and 86400.
 13.603: space2u.com INFO Done testing SOA parameters for space2u.com.
 13.603: space2u.com INFO Begin testing connectivity for space2u.com.
 13.952: space2u.com INFO Name server 62.20.1.130 announced by: 3301
 14.073: space2u.com INFO Name server 194.236.32.2 announced by: 3301
 14.073: space2u.com INFO Zone announced by ASN: 3301
 14.073: space2u.com NOTICE Zone announced by only one ASN (1).
 14.073: space2u.com INFO Zone announced by IPv6 ASN: 
 14.073: space2u.com NOTICE Zone announced by only one IPv6 ASN (0).
 14.073: space2u.com INFO Done testing connectivity for space2u.com.
 14.073: space2u.com INFO Begin testing DNSSEC for space2u.com.
 14.142: space2u.com INFO Did not find DS record for space2u.com at parent.
 14.192: space2u.com INFO Servers for space2u.com have consistent extra processing status.
 14.192: space2u.com INFO Did not find DNSKEY record for space2u.com at child.
 14.192: space2u.com INFO No DNSKEY(s) found at child, other tests skipped.
 14.192: space2u.com INFO Done testing DNSSEC for space2u.com.
 14.192: space2u.com INFO Test completed for zone space2u.com.
