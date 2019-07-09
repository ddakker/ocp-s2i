FROM registry.access.redhat.com/jboss-eap-7/eap72-openshift

ADD test.war /tmp/

RUN mkdir -p /usr/local/tomcat/conf/Catalina/localhost/
ADD ROOT.xml /usr/local/tomcat/conf/Catalina/localhost/
#ADD contrib/mariadb-java-client-2.1.0.jar /usr/local/tomcat/lib/

RUN mkdir -p /opt/apps/ROOT && \
    unzip /tmp/test.war -d /opt/apps/ROOT && \
    rm -rf /tmp/test.war
