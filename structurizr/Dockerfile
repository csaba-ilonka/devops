FROM structurizr/tomcat

ARG STRUCTURIZR_BUILD=2094
ARG STRUCTURIZR_LICENSE_FILE

RUN apk add curl &&\
    curl -X GET https://static.structurizr.com/downloads/structurizr-onpremises-${STRUCTURIZR_BUILD}-file.war --output /usr/local/tomcat/webapps/ROOT.war &&\
    apk del curl

RUN apk add graphviz

COPY ${STRUCTURIZR_LICENSE_FILE} /usr/local/structurizr/structurizr.properties

EXPOSE 8080