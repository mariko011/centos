## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:5b376b40f5a500237549e4d1770a28902a5e3d59fec54cfc3c4c540983683283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:660bf244589357527c0e5e27972ce9fd7d3ea47f8b745af4bf21681ae86081d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241492910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de8a768d75d4fe9b400adf3bbd1e190f00886f7c0a421edad8b6a3c1883979e`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 08:59:50 GMT
ENV SONAR_VERSION=6.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Sat, 04 Nov 2017 08:59:50 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 08:59:51 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Sat, 04 Nov 2017 09:00:14 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Sat, 04 Nov 2017 09:00:14 GMT
VOLUME [/opt/sonarqube/data]
# Sat, 04 Nov 2017 09:00:15 GMT
WORKDIR /opt/sonarqube
# Sat, 04 Nov 2017 09:00:15 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Sat, 04 Nov 2017 09:00:15 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c430c7164d4bf456eb73f5ef35d039aae7d842bcc70f91ff74a56b09e12837`  
		Last Modified: Sat, 04 Nov 2017 09:02:24 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d3fddf962f49cd5b3ab248f9d5a1db22c61966dd9b05045ebdddecf70a8bc7`  
		Last Modified: Sat, 04 Nov 2017 09:02:35 GMT  
		Size: 169.4 MB (169445737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298c96f74c5d675e96d412b378e61116b78ee48c7142b1f93a5bf7d4d69afa53`  
		Last Modified: Sat, 04 Nov 2017 09:02:25 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
