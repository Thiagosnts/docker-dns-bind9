;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	cloudth.com. root.cloudth.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.cloudth.com.
@	IN	NS	ns2.cloudth.com.
@	IN	A	127.0.0.1
@	IN	AAAA	::1

ns1			A	192.168.0.1		; Change to desired NS1 IP
ns2			A	192.168.0.2		; Change to desired NS2 IP
k3s			A	20.25.153.189   ; Change to desired NS2 IP