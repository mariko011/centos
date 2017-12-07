## `solr:7-alpine`

```console
$ docker pull solr@sha256:a91ac111fa5d54703e554ebff9d54515a52281032eb2375bd6621e38d7bda0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:7-alpine` - linux; amd64

```console
$ docker pull solr@sha256:f5c8c0fea306a7600a9ffa5d6cc5324a90e4c1f42ba04c2a1547398c4d89bc60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217073029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efaee86eec423424b16c4a5c54b2b35cfde21b719fad8464486ab7db3d4dbeab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 05:03:19 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 05 Dec 2017 05:03:19 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 05 Dec 2017 05:03:25 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 05 Dec 2017 05:03:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 05 Dec 2017 05:03:29 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.1.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.1.0/solr-7.1.0.tgz SOLR_SHA256=5cd25cc2634e47efbb529658d6ddd406a7cd1b211affa26563a28db2d80b8133 SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 05:03:29 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 05 Dec 2017 05:03:33 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 05 Dec 2017 05:03:48 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 05 Dec 2017 05:03:49 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Tue, 05 Dec 2017 05:03:49 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 05 Dec 2017 05:03:50 GMT
EXPOSE 8983/tcp
# Tue, 05 Dec 2017 05:03:50 GMT
WORKDIR /opt/solr
# Tue, 05 Dec 2017 05:03:50 GMT
USER [solr]
# Tue, 05 Dec 2017 05:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 05:03:50 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80e9d09980d645afe89e295dc841b627d6d83ce660f930d8e0ec5c6ff18d9d7`  
		Last Modified: Tue, 05 Dec 2017 05:07:30 GMT  
		Size: 7.4 MB (7369071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544da931523ceaffdfbe4dbb998a985c8ef1bd5ec1e44d93531af9c3e31eeefb`  
		Last Modified: Tue, 05 Dec 2017 05:07:27 GMT  
		Size: 590.9 KB (590871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc32ea7bdd8e5cae67b10eed8e83ab652f7effb14704c4900df7edc8ff54242`  
		Last Modified: Tue, 05 Dec 2017 05:07:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e76f63bde6b15696cb479bdbe8e665f3a4565d0b523e4de3f6e25334a4e1609`  
		Last Modified: Tue, 05 Dec 2017 05:07:24 GMT  
		Size: 2.9 KB (2937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5c72234c90b76173655608408d77cb86b5d5bf990f1d2e933544b80f762204`  
		Last Modified: Tue, 05 Dec 2017 05:07:36 GMT  
		Size: 152.6 MB (152581611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c555c65706f0a2b26e4f10b007d0109a14fffdf313d487363def2c67b9062921`  
		Last Modified: Tue, 05 Dec 2017 05:07:24 GMT  
		Size: 4.1 KB (4129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989ab23210ef9670498e3ce3bf1a963dff17bd28c22639f0f86b131cdf0ba069`  
		Last Modified: Tue, 05 Dec 2017 05:07:24 GMT  
		Size: 4.1 KB (4131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
