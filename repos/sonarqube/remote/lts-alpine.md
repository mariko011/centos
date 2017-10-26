## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:5aca3cd0ae7bf2faeb108844d43c3807ccf87fb53b72a6dedd4f03b1e5a7f7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:3d48e61bc564e72e37c89b5e29a6c909808d290648ce5ed918791e8ff56ef670
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194532442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e715b5e7adac5688000aed5413ae9c8e1248a2d98d08ddd05763b77418afbc55`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:08:54 GMT
ENV SONAR_VERSION=5.6.7 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 26 Oct 2017 04:08:54 GMT
EXPOSE 9000/tcp
# Thu, 26 Oct 2017 04:08:55 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Thu, 26 Oct 2017 04:09:43 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Thu, 26 Oct 2017 04:09:45 GMT
VOLUME [/opt/sonarqube/data]
# Thu, 26 Oct 2017 04:09:46 GMT
WORKDIR /opt/sonarqube
# Thu, 26 Oct 2017 04:09:46 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Thu, 26 Oct 2017 04:09:52 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10edbf0197a03ba28492f56c5cb68c6dcf1121b850a00a97e0dafe83e6c47f7a`  
		Last Modified: Thu, 26 Oct 2017 04:10:55 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e75fc7aa80f037350ce2354b6efe34311b8d5c3fce26b17ae365f46e9ba6e`  
		Last Modified: Thu, 26 Oct 2017 04:11:05 GMT  
		Size: 122.5 MB (122485215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c69eb8c214c51f974140f7d79815900cb39322e2d234ec69165ccbdc3cffb8c`  
		Last Modified: Thu, 26 Oct 2017 04:10:55 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
