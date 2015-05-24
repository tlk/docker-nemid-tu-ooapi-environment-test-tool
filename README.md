
# OOAPI environment test tool with Docker
This project documents how to get the OOAPI environment test tool
up and running using Docker. Just ignore the boot2docker parts if you are not on Mac OS X.


### Install boot2docker
See https://docs.docker.com/installation/mac/

### Start boot2docker
```
boot2docker start
eval "$(boot2docker shellinit)"
```

### Build the docker image
```
make build
```

### Run the docker container
```
make run
```

This will start the test application and ask for input.

### Example

```
OOAPI environment tester
---------------------------

Set enviroment:

1 = OCESI_DANID_ENV_DEVELOPMENT
2 = OCESI_DANID_ENV_PROD
3 = OCESI_DANID_ENV_SYSTEMTEST
4 = OCESII_DANID_ENV_DEVELOPMENT
5 = OCESII_DANID_ENV_DEVELOPMENTTEST
6 = OCESII_DANID_ENV_EXTERNALTEST
7 = OCESII_DANID_ENV_INTERNALTEST
8 = OCESII_DANID_ENV_OPERATIONSTEST
9 = OCESII_DANID_ENV_PREPROD
10 = OCESII_DANID_ENV_PROD
> 9


Ping LDAP?
---------------------------
y/n[n]
> y
INFO - ConfigurationChecker.verifyRootCertificateFromLDAP(84) | Root certificate retrieved from LDAP with DN: CN=TRUST2408 Systemtest VIII CA, O=TRUST2408, C=DK
Success


Ping PID service?
---------------------------
y/n[n]
> y
INFO - AbstractApplicationContext.prepareRefresh(454) | Refreshing org.apache.cxf.bus.spring.BusApplicationContext@27abe2cd: startup date [Sun May 24 22:35:13 UTC 2015]; root of context hierarchy
May 24, 2015 10:35:13 PM org.apache.cxf.bus.spring.BusApplicationContext getConfigResources
INFO: Loaded configuration file cxf-serviceproviderclient.xml.
INFO - XmlBeanDefinitionReader.loadBeanDefinitions(315) | Loading XML bean definitions from class path resource [cxf-serviceproviderclient.xml]
INFO - XmlBeanDefinitionReader.loadBeanDefinitions(315) | Loading XML bean definitions from class path resource [META-INF/cxf/cxf.xml]
INFO - XmlBeanDefinitionReader.loadBeanDefinitions(315) | Loading XML bean definitions from class path resource [META-INF/cxf/cxf-extension-soap.xml]
INFO - XmlBeanDefinitionReader.loadBeanDefinitions(315) | Loading XML bean definitions from class path resource [META-INF/cxf/cxf-servlet.xml]
INFO - XmlBeanDefinitionReader.loadBeanDefinitions(315) | Loading XML bean definitions from class path resource [pidclientsecurity.xml]
INFO - DefaultListableBeanFactory.preInstantiateSingletons(538) | Pre-instantiating singletons in org.springframework.beans.factory.support.DefaultListableBeanFactory@61230f6a: defining beans [cxf,org.apache.cxf.bus.spring.BusApplicationListener,org.apache.cxf.bus.spring.BusWiringBeanFactoryPostProcessor,org.apache.cxf.bus.spring.Jsr250BeanPostProcessor,org.apache.cxf.bus.spring.BusExtensionPostProcessor,org.apache.cxf.resource.ResourceManager,org.apache.cxf.configuration.Configurer,org.apache.cxf.binding.BindingFactoryManager,org.apache.cxf.transport.DestinationFactoryManager,org.apache.cxf.transport.ConduitInitiatorManager,org.apache.cxf.wsdl.WSDLManager,org.apache.cxf.phase.PhaseManager,org.apache.cxf.workqueue.WorkQueueManager,org.apache.cxf.buslifecycle.BusLifeCycleManager,org.apache.cxf.endpoint.ServerRegistry,org.apache.cxf.endpoint.ServerLifeCycleManager,org.apache.cxf.endpoint.ClientLifeCycleManager,org.apache.cxf.transports.http.QueryHandlerRegistry,org.apache.cxf.endpoint.EndpointResolverRegistry,org.apache.cxf.headers.HeaderManager,org.apache.cxf.catalog.OASISCatalogManager,org.apache.cxf.endpoint.ServiceContractResolverRegistry,org.apache.cxf.binding.soap.SoapBindingFactory,org.apache.cxf.binding.soap.SoapTransportFactory,org.apache.cxf.binding.soap.customEditorConfigurer,org.apache.cxf.transport.servlet.ServletTransportFactory,*.http-conduit]; root of factory hierarchy
May 24, 2015 10:35:17 PM org.apache.cxf.service.factory.ReflectionServiceFactoryBean buildServiceFromWSDL
INFO: Creating Service {http://localhost/}pidwsdoc from WSDL: jar:file:/app/ooapi-with-new-preproductionCertificateOcesII.jar!/pidservice.wsdl
May 24, 2015 10:35:18 PM org.apache.cxf.transport.https.SSLUtils getCiphersuites
INFO: The cipher suites have not been configured, falling back to cipher suite filters.
May 24, 2015 10:35:18 PM org.apache.cxf.transport.https.SSLUtils getCiphersFromList
INFO: The cipher suites have been set to TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384, TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384, TLS_DHE_RSA_WITH_AES_256_CBC_SHA256, TLS_DHE_DSS_WITH_AES_256_CBC_SHA256, TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDH_RSA_WITH_AES_256_CBC_SHA, TLS_DHE_RSA_WITH_AES_256_CBC_SHA, TLS_DHE_DSS_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256, TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256, TLS_DHE_RSA_WITH_AES_128_CBC_SHA256, TLS_DHE_DSS_WITH_AES_128_CBC_SHA256, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA, TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDH_RSA_WITH_AES_128_CBC_SHA, TLS_DHE_RSA_WITH_AES_128_CBC_SHA, TLS_DHE_DSS_WITH_AES_128_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, TLS_RSA_WITH_AES_256_GCM_SHA384, TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384, TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384, TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, TLS_DHE_DSS_WITH_AES_256_GCM_SHA384, TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256, TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256, TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, TLS_DHE_DSS_WITH_AES_128_GCM_SHA256, TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA, TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA, SSL_RSA_WITH_3DES_EDE_CBC_SHA, TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA, TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA, SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA, SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA, TLS_ECDHE_ECDSA_WITH_RC4_128_SHA, TLS_ECDHE_RSA_WITH_RC4_128_SHA, SSL_RSA_WITH_RC4_128_SHA, TLS_ECDH_ECDSA_WITH_RC4_128_SHA, TLS_ECDH_RSA_WITH_RC4_128_SHA, SSL_RSA_WITH_RC4_128_MD5, TLS_EMPTY_RENEGOTIATION_INFO_SCSV, TLS_ECDH_anon_WITH_AES_256_CBC_SHA, TLS_ECDH_anon_WITH_AES_128_CBC_SHA, TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA, TLS_ECDH_anon_WITH_RC4_128_SHA, SSL_RSA_WITH_DES_CBC_SHA, SSL_DHE_RSA_WITH_DES_CBC_SHA, SSL_DHE_DSS_WITH_DES_CBC_SHA, SSL_RSA_EXPORT_WITH_DES40_CBC_SHA, SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA, SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA, SSL_RSA_EXPORT_WITH_RC4_40_MD5, TLS_RSA_WITH_NULL_SHA256, TLS_ECDHE_ECDSA_WITH_NULL_SHA, TLS_ECDHE_RSA_WITH_NULL_SHA, SSL_RSA_WITH_NULL_SHA, TLS_ECDH_ECDSA_WITH_NULL_SHA, TLS_ECDH_RSA_WITH_NULL_SHA, TLS_ECDH_anon_WITH_NULL_SHA, SSL_RSA_WITH_NULL_MD5, TLS_KRB5_WITH_3DES_EDE_CBC_SHA, TLS_KRB5_WITH_3DES_EDE_CBC_MD5, TLS_KRB5_WITH_RC4_128_SHA, TLS_KRB5_WITH_RC4_128_MD5, TLS_KRB5_WITH_DES_CBC_SHA, TLS_KRB5_WITH_DES_CBC_MD5, TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA, TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5, TLS_KRB5_EXPORT_WITH_RC4_40_SHA, TLS_KRB5_EXPORT_WITH_RC4_40_MD5.
Success


Ping OCSP service?
---------------------------
y/n[n]
> y


 Enter path to certificate

> /app/resources/0x530fd5c3.pem
Success


Ping CRL service?
---------------------------
y/n[n]
> y


 Enter path to certificate

> /app/resources/0x530fd5c3.pem
Success


---------------------------
```


### LDAP ping test is broken in `ooapi-1.174.0.jar`


The pre production environment CN is configured in
ooapi-source/src/main/resources/ooapi.properties:

```
ldap.ca.dn.danid.OCESII_DANID_ENV_PREPROD = cn=TRUST2408 Systemtest VIII CA,o=TRUST2408,c=DK
```

The LDAP ping test fetches the corresponding certificate from the LDAP
directory and compares it to a certificate hardcoded in
ooapi-source/src/main/java/org/openoces/ooapi/environment/RootCertificates.java
line 340 (preproductionCertificateOcesII). However, the test fails with an error because the hardcoded cert CN is different (CN=TRUST2408 Systemtest VII Primary CA):


```
ERROR - ConfigurationChecker.verifyRootCertificateFromLDAP(86) | ERROR: Could not retrieve root certificate from LDAP for environment OCESII_DANID_ENV_PREPROD
```

#### How to build ooapi-with-new-preproductionCertificateOcesII.jar

The make ldapsearch target queries the LDAP directory for the same certificate as the ldap.ca.dn.danid.OCESII_DANID_ENV_PREPROD (see above) value defined in ooapi.properties.

Now, get the current certificate with `make ldapsearch` and paste the base64 data into
ooapi-source/src/main/java/org/openoces/ooapi/environment/RootCertificates.java.
Then build a customized ooapi.jar with the docker-nemid-tu-example-customized.git
project, and place it in download/ooapi-with-new-preproductionCertificateOcesII.jar.


#### Final note

The current VIII CA root cert is also available from http://m.aia.systemtest8.trust2408.com/systemtest8-ca.cer in DER format. The CN+TRUST2408_SYSTEMTEST_VIII_CA,_O+TRUST2408,_C+DK property in ooapi.properties points to this URL. The DER file can be converted to PEM format with openssl x509:

```
openssl x509 -inform DER -in systemtest8-ca.cer -outform PEM
```



