## `storm:latest`

```console
$ docker pull storm@sha256:aa32e4974d9aeb4e5be2b2bad8c20749bc3f2cc8ed2e47e68355baab7f85d553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

```console
$ docker pull storm@sha256:ae1bac88f3d95ff600476f61564d568cf0c6cbd4b6664cbe4714aa44326995af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150469050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a50d1fe60f44536f1a1a4341050d7c7ba4498f3e875cc7ae206d4d58db545ceb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:57:49 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 26 Oct 2017 04:57:49 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 26 Oct 2017 04:57:49 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 26 Oct 2017 04:57:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 26 Oct 2017 04:59:52 GMT
ARG DISTRO_NAME=apache-storm-1.1.1
# Thu, 26 Oct 2017 05:00:01 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.1 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 26 Oct 2017 05:00:02 GMT
WORKDIR /apache-storm-1.1.1
# Thu, 26 Oct 2017 05:00:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.1/bin
# Thu, 26 Oct 2017 05:00:02 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Thu, 26 Oct 2017 05:00:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7258c5bb78612fb3071976c87ea793aebd3e501400dea482294bbbd27404782`  
		Last Modified: Thu, 26 Oct 2017 05:00:25 GMT  
		Size: 11.5 MB (11506147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84b4a5ef8364173457b7b6634504d4c21845dd374329222bcbfcf2540c778b7`  
		Last Modified: Thu, 26 Oct 2017 05:00:22 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2666a395abf3294d9aa5874b4f9209826c359b44ebd6d73cbd7cddfb222b97f0`  
		Last Modified: Thu, 26 Oct 2017 05:02:10 GMT  
		Size: 82.7 MB (82683349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb65a1abfc829087d4f3226ed9f9f72de4ef97cf23c0bf2d5bf85ca405f1437a`  
		Last Modified: Thu, 26 Oct 2017 05:02:04 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
