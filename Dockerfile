# How to:
# docker run --rm xml-validator student.xsd student.xml

# Alpine Linux with Temurin
FROM eclipse-temurin:11

RUN mkdir /app

# copy class into image
COPY XSDValidator.java /app/XSDValidator.java

# compile class
WORKDIR /app
RUN javac XSDValidator.java

# copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

# Touch XML and XSD empty files
RUN touch /validate.xml
RUN touch /validate.xsd


WORKDIR /app
ENTRYPOINT [ "/entrypoint.sh" ]