FROM structurizr/tomcat

RUN apk add curl &&\
    curl -X GET https://static.structurizr.com/downloads/structurizr-onpremises-2094-file.war --output /usr/local/tomcat/webapps/ROOT.war &&\
    apk del curl

RUN apk add graphviz

COPY structurizr.secret /usr/local/structurizr/structurizr.properties

EXPOSE 8080