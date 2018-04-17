# Docker version 17.10.0-ce
FROM ggotti/aem-base
MAINTAINER eldho

#Copies required build media
ONBUILD ADD cq-quickstart-6.3.0.jar /aem/cq-quickstart-6.3.0.jar
ONBUILD ADD license.properties /aem/license.properties


# Extracts AEM
ONBUILD WORKDIR /aem
ONBUILD RUN java -XX:MaxPermSize=256m -Xmx1024M -jar cq-quickstart-6.3.0.jar -unpack -r nosamplecontent

# Installs AEM
ONBUILD RUN ["python","aemInstaller.py","-i","cq-quickstart-6.3.0.jar","-r","author","-p","4502"]

EXPOSE 4502 8000
ENTRYPOINT ["/aem/crx-quickstart/bin/quickstart"]