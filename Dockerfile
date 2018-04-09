FROM openjdk:8-jre-alpine3.7

RUN apk update \
	&& apk add ttf-dejavu \
	&& wget -q http://www.umlet.com/umlet_14_2/umlet-standalone-14.2.zip \
	&& unzip -q umlet_14.2.zip

WORKDIR "/Umlet"

CMD ["java", "-jar", "umlet.jar", "-action=convert"]
