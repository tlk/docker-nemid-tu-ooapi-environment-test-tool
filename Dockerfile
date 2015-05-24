FROM java:8-jre
WORKDIR /app
ADD download/ooapi-1.174.0-3rdparty-for-runtime.zip /app/
ADD download/ooapi-with-new-preproductionCertificateOcesII.jar /app/
RUN unzip *.zip
# Use a non-blocking entropy source
ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom
