FROM java:8-jre
WORKDIR /app
ADD http://www.nets.eu/dk-da/Service/kundeservice/nemid-tu/NemID-tjenesteudbyderpakken-okt-2014/Documents/ooapi-1.174.0-3rdparty-for-runtime.zip /app/
ADD http://www.nets.eu/dk-da/Service/kundeservice/nemid-tu/NemID-tjenesteudbyderpakken-okt-2014/Documents/ooapi-source-1.174.0_update_1.zip /app/
ADD http://www.nets.eu/dk-da/Service/kundeservice/nemid-tu/NemID-tjenesteudbyderpakken-okt-2014/Documents/ooapi-1.174.0.jar /app/
# Use a non-blocking entropy source
ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom
#CMD java -cp resources\;ooapi-jar-with-dependencies.jar org.openoces.serviceprovider.EnvironmentTester
