build:
	docker build -t nemid-tu-ooapi-environment-test-tool .

run:
	docker run -it -v $(shell pwd)/resources:/app/resources nemid-tu-ooapi-environment-test-tool java -cp "resources:*" org.openoces.serviceprovider.EnvironmentTester

shell:
	docker run -it nemid-tu-ooapi-environment-test-tool /bin/sh

