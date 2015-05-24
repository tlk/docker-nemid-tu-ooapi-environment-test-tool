build:
	docker build -t nemid-tu-ooapi-environment-test-tool .

run:
	docker run -it -v $(shell pwd)/resources:/app/resources nemid-tu-ooapi-environment-test-tool java -cp "resources:*" org.openoces.serviceprovider.EnvironmentTester

shell:
	docker run -it -v $(shell pwd)/resources:/app/resources nemid-tu-ooapi-environment-test-tool /bin/sh

ldapsearch:
	ldapsearch -x -h crldir.certifikat.dk -s one -b 'o=TRUST2408,c=DK' '(cn=TRUST2408 OCES CA II)' cACertificate

ocsp:
	openssl ocsp -issuer certs/oces2-issuing-ca-pp.pem -cert certs/0x530fd5c3.pem -url http://ocsp.pp.certifikat.dk/responder -CAfile certs/oces2-ca-bundle-pp.pem
