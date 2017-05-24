FROM openjdk:jre-alpine

RUN wget -q http://umlet.com/umlet_13_3/umlet_13.3.zip \
	&& unzip -q umlet_13.3.zip 

WORKDIR "/Umlet"
ENTRYPOINT ["java","-jar","umlet.jar"]
CMD ["-action=convert"]
