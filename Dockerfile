FROM mminderbinder/java-jdk:oracle-java7
MAINTAINER Milo Minderbinder <minderbinder.enterprises@gmail.com>


RUN apt-get update && apt-get -y install unzip
COPY liferay-portal-tomcat-6.2-ce-ga3.zip /opt/liferay-portal/
WORKDIR /opt/liferay-portal
RUN unzip liferay-portal-tomcat-6.2-ce-ga3.zip

COPY liferay-run.sh /etc/service/liferay/run
RUN chmod +x /etc/service/liferay/run

EXPOSE 8009
EXPOSE 8080

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/sbin/my_init"]
