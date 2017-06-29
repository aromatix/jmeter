FROM openjdk:8

ENV JMETER_VERSION=3.2
ENV JMETER_HOME=/usr/local/apache-jmeter-${JMETER_VERSION}
ENV PATH=${JMETER_HOME}/bin:${PATH}

RUN apt-get update && \
    apt-get install -y wget && \
    wget http://www.eu.apache.org/dist/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz && \
    tar -xzf apache-jmeter-${JMETER_VERSION}.tgz -C /usr/local/ && \
    rm -rf apache-jmeter-${JMETER_VERSION}.tgz \
            ${JMETER_HOME}/bin/examples \
            ${JMETER_HOME}/bin/templates \
            ${JMETER_HOME}/bin/*.cmd \
            ${JMETER_HOME}/bin/*.bat \
            ${JMETER_HOME}/docs \
            ${JMETER_HOME}/printable_docs && \
    apt-get remove -y wget

WORKDIR /jmeter
EXPOSE 4445

ENTRYPOINT ["jmeter"]
CMD ["-?"]

