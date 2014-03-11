  0.000: levonline.com INFO Begin testing zone levonline.com with version 1.0.1.
  0.000: levonline.com INFO Begin testing delegation for levonline.com.
  4.313: levonline.com INFO Name servers listed at parent: ns.levonline.com,ns2.levonline.com,ns3.levonline.com
  4.370: levonline.com INFO Name servers listed at child: ns.levonline.com,ns2.levonline.com,ns3.levonline.com
  4.371: levonline.com NOTICE No IPv6 name servers found.
  4.379: levonline.com INFO Parent glue for levonline.com found: ns.levonline.com (217.70.32.12)
  4.788: levonline.com INFO Parent glue for levonline.com found: ns2.levonline.com (84.55.103.229)
  4.894: levonline.com INFO Parent glue for levonline.com found: ns3.levonline.com (217.70.32.4)
  5.016: levonline.com INFO Checking glue for ns.levonline.com (217.70.32.12).
  5.025: levonline.com INFO Child glue for levonline.com found: ns.levonline.com (217.70.32.12)
  5.025: levonline.com INFO Checking glue for ns2.levonline.com (84.55.103.229).
  5.033: levonline.com INFO Child glue for levonline.com found: ns2.levonline.com (84.55.103.229)
  5.033: levonline.com INFO Checking glue for ns3.levonline.com (217.70.32.4).
  5.041: levonline.com INFO Child glue for levonline.com found: ns3.levonline.com (217.70.32.4)
  5.041: levonline.com INFO Done testing delegation for levonline.com.
  5.042: levonline.com INFO Begin testing name server ns.levonline.com.
  5.042: levonline.com INFO Begin testing host ns.levonline.com.
  5.042: levonline.com INFO Begin testing address 217.70.32.12.
  7.828: levonline.com INFO Done testing address 217.70.32.12.
  7.828: levonline.com INFO Done testing host ns.levonline.com.
  7.837: levonline.com INFO Name server ns.levonline.com (217.70.32.12) is not recursive.
  7.846: levonline.com INFO Name server ns.levonline.com (217.70.32.12) authoritative for levonline.com.
  7.854: levonline.com INFO Name server ns.levonline.com (217.70.32.12) answers queries over UDP.
  7.867: levonline.com INFO Name server ns.levonline.com (217.70.32.12) answers queries over TCP.
  7.881: levonline.com INFO Name server ns.levonline.com (217.70.32.12) closed for zone transfer of levonline.com.
  7.887: levonline.com NOTICE No answer received from 217.70.32.12 when querying for hostname.bind/CH/TXT.
  7.896: levonline.com INFO Legacy name server ID for ns.levonline.com (217.70.32.12): version.bind = ask hostmaster@levonline.com if you have a legitimate reason to request this information.
  7.903: levonline.com NOTICE No answer received from 217.70.32.12 when querying for id.server/CH/TXT.
  7.910: levonline.com NOTICE No answer received from 217.70.32.12 when querying for version.server/CH/TXT.
  7.910: levonline.com INFO Done testing name server ns.levonline.com.
  7.911: levonline.com INFO Begin testing name server ns2.levonline.com.
  7.911: levonline.com INFO Begin testing host ns2.levonline.com.
  7.911: levonline.com INFO Begin testing address 84.55.103.229.
  8.460: levonline.com INFO Done testing address 84.55.103.229.
  8.460: levonline.com INFO Done testing host ns2.levonline.com.
  8.474: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) is not recursive.
  8.482: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) authoritative for levonline.com.
  8.490: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) answers queries over UDP.
  8.503: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) answers queries over TCP.
  8.517: levonline.com INFO Name server ns2.levonline.com (84.55.103.229) closed for zone transfer of levonline.com.
  8.524: levonline.com NOTICE No answer received from 84.55.103.229 when querying for hostname.bind/CH/TXT.
  8.530: levonline.com INFO Legacy name server ID for ns2.levonline.com (84.55.103.229): version.bind = ask hostmaster@levonline.com if you have a legitimate reason to request this information.
  8.537: levonline.com NOTICE No answer received from 84.55.103.229 when querying for id.server/CH/TXT.
  8.543: levonline.com NOTICE No answer received from 84.55.103.229 when querying for version.server/CH/TXT.
  8.543: levonline.com INFO Done testing name server ns2.levonline.com.
  8.543: levonline.com INFO Begin testing name server ns3.levonline.com.
  8.543: levonline.com INFO Begin testing host ns3.levonline.com.
  8.543: levonline.com INFO Begin testing address 217.70.32.4.
  8.551: levonline.com INFO Done testing address 217.70.32.4.
  8.551: levonline.com INFO Done testing host ns3.levonline.com.
  8.563: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) is not recursive.
  8.572: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) authoritative for levonline.com.
  8.581: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) answers queries over UDP.
  8.594: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) answers queries over TCP.
  8.610: levonline.com INFO Name server ns3.levonline.com (217.70.32.4) closed for zone transfer of levonline.com.
  8.617: levonline.com NOTICE No answer received from 217.70.32.4 when querying for hostname.bind/CH/TXT.
  8.623: levonline.com INFO Legacy name server ID for ns3.levonline.com (217.70.32.4): version.bind = ask hostmaster@levonline.com if you have a legitimate reason to request this information.
  8.630: levonline.com NOTICE No answer received from 217.70.32.4 when querying for id.server/CH/TXT.
  8.636: levonline.com NOTICE No answer received from 217.70.32.4 when querying for version.server/CH/TXT.
  8.636: levonline.com INFO Done testing name server ns3.levonline.com.
  8.636: levonline.com INFO Begin testing zone consistency for levonline.com.
  8.650: levonline.com INFO SOA at address 217.70.32.12 has serial 2010011201.
  8.658: levonline.com INFO SOA at address 84.55.103.229 has serial 2010011201.
  8.666: levonline.com INFO SOA at address 217.70.32.4 has serial 2010011201.
  8.667: levonline.com INFO All SOA records have consistent serial numbers.
  8.667: levonline.com INFO All SOA records are consistent among all name servers.
  8.667: levonline.com INFO Done testing zone consistency for levonline.com.
  8.667: levonline.com INFO Begin testing SOA parameters for levonline.com.
  8.675: levonline.com INFO Found SOA record for levonline.com.
  8.675: levonline.com INFO Begin testing host ns.levonline.com.
  8.676: levonline.com INFO Begin testing address 217.70.32.12.
  8.677: levonline.com INFO Done testing address 217.70.32.12.
  8.677: levonline.com INFO Done testing host ns.levonline.com.
  8.677: levonline.com INFO SOA MNAME for levonline.com valid (ns.levonline.com).
  8.677: levonline.com INFO SOA MNAME for levonline.com (ns.levonline.com) listed as NS.
  8.686: levonline.com INFO SOA MNAME for levonline.com (ns.levonline.com) is authoritative.
  8.687: levonline.com INFO Begin testing email address hostmaster@levonline.com.
  8.698: levonline.com INFO Mail exchangers for hostmaster@levonline.com found laundry1.levonline.com,laundry2.levonline.com,resolver1.levonline.com.
  8.698: levonline.com INFO All mail servers for hostmaster@levonline.com are in zone levonline.com.
  8.698: levonline.com INFO Begin testing host laundry1.levonline.com.
  8.711: levonline.com INFO Begin testing address 217.70.32.96.
  8.719: levonline.com INFO Done testing address 217.70.32.96.
  8.719: levonline.com INFO Done testing host laundry1.levonline.com.
  8.720: levonline.com INFO Begin testing mail server laundry1.levonline.com (217.70.32.96) with hostmaster@levonline.com.
 28.720: levonline.com WARNING Failed to connect to laundry1.levonline.com (217.70.32.96).
 28.720: levonline.com INFO Done testing mail server laundry1.levonline.com (217.70.32.96) with hostmaster@levonline.com.
 28.720: levonline.com INFO Begin testing host laundry2.levonline.com.
 28.734: levonline.com INFO Begin testing address 217.70.32.98.
 28.742: levonline.com INFO Done testing address 217.70.32.98.
 28.742: levonline.com INFO Done testing host laundry2.levonline.com.
 28.743: levonline.com INFO Begin testing mail server laundry2.levonline.com (217.70.32.98) with hostmaster@levonline.com.
 50.427: levonline.com INFO SMTP banner: laundry2.levonline.com ESMTP Postfix
 70.432: levonline.com NOTICE The mail server timed out in SMTP dialog.
110.432: levonline.com INFO SMTP testing of laundry2.levonline.com (217.70.32.98) with hostmaster@levonline.com succeeded without errors.
110.432: levonline.com INFO Done testing mail server laundry2.levonline.com (217.70.32.98) with hostmaster@levonline.com.
110.432: levonline.com INFO Begin testing host resolver1.levonline.com.
110.446: levonline.com INFO Begin testing address 217.70.32.11.
110.455: levonline.com INFO Done testing address 217.70.32.11.
110.455: levonline.com INFO Done testing host resolver1.levonline.com.
110.455: levonline.com INFO Delivery over IPv4 to hostmaster@levonline.com ok.
110.455: levonline.com INFO Delivery over IPv6 to hostmaster@levonline.com could not be done.
110.455: levonline.com INFO Done testing email address hostmaster@levonline.com.
110.455: levonline.com INFO Successful attempt to deliver email for SOA RNAME of levonline.com (hostmaster.levonline.com) using hostmaster@levonline.com.
110.456: levonline.com INFO SOA TTL for levonline.com OK (3600) - recommended >= 3600.
110.456: levonline.com INFO SOA refresh for levonline.com OK (43200) - recommended >= 14400.
110.456: levonline.com NOTICE SOA retry for levonline.com too small (300) - recommended >= 3600.
110.456: levonline.com INFO SOA expire for levonline.com OK (2592000) - recommended >= 604800.
110.456: levonline.com INFO SOA minimum for levonline.com OK (3600) - recommended between 300 and 86400.
110.456: levonline.com INFO Done testing SOA parameters for levonline.com.
110.456: levonline.com INFO Begin testing connectivity for levonline.com.
110.805: levonline.com INFO Name server 217.70.32.12 announced by: 41175
110.939: levonline.com INFO Name server 217.70.32.4 announced by: 41175
111.074: levonline.com INFO Name server 84.55.103.229 announced by: 33885
111.074: levonline.com INFO Zone announced by ASN: 41175,33885
111.074: levonline.com INFO Zone announced by more than one ASN (2).
111.074: levonline.com INFO Zone announced by IPv6 ASN: 
111.074: levonline.com NOTICE Zone announced by only one IPv6 ASN (0).
111.074: levonline.com INFO Done testing connectivity for levonline.com.
111.074: levonline.com INFO Begin testing DNSSEC for levonline.com.
111.656: levonline.com INFO Did not find DS record for levonline.com at parent.
111.689: levonline.com INFO Servers for levonline.com have consistent extra processing status.
111.690: levonline.com INFO Did not find DNSKEY record for levonline.com at child.
111.690: levonline.com INFO No DNSKEY(s) found at child, other tests skipped.
111.690: levonline.com INFO Done testing DNSSEC for levonline.com.
111.690: levonline.com INFO Test completed for zone levonline.com.
