build:
	docker build -t nemid-tu-ooapi-environment-test-tool .

run:
	docker run -it -v $(shell pwd)/resources:/app/resources nemid-tu-ooapi-environment-test-tool java -cp "resources:*" org.openoces.serviceprovider.EnvironmentTester

shell:
	docker run -it -v $(shell pwd)/resources:/app/resources nemid-tu-ooapi-environment-test-tool /bin/sh

ldapsearch:
	ldapsearch -x -h crldir.certifikat.dk -s one -b 'o=TRUST2408,c=DK' '(cn=TRUST2408 OCES CA II)' cACertificate
