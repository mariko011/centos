## `solr:6-alpine`

```console
$ docker pull solr@sha256:4e9bb85afeb6015cd3fb9c766982f4cc289fd1d767883ccac75317a022ee91a6
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188992404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7446542469c4df4a0ae1dced338c8b03e13f266ac0d0ff109454356f80bfdd2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Mar 2017 23:43:06 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 03 Mar 2017 23:43:07 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 03 Mar 2017 23:43:07 GMT
ARG GPG_KEYSERVER
# Fri, 03 Mar 2017 23:43:10 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 03 Mar 2017 23:43:12 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 03 Mar 2017 23:43:12 GMT
ENV SOLR_USER=solr
# Fri, 03 Mar 2017 23:43:13 GMT
ENV SOLR_UID=8983
# Fri, 03 Mar 2017 23:43:13 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 03 Mar 2017 23:43:39 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 03 Mar 2017 23:43:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 03 Mar 2017 23:43:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 03 Mar 2017 23:43:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 03 Mar 2017 23:43:45 GMT
ENV SOLR_VERSION=6.4.1
# Fri, 03 Mar 2017 23:43:46 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Fri, 03 Mar 2017 23:43:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Fri, 03 Mar 2017 23:44:03 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 03 Mar 2017 23:44:03 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Mar 2017 23:44:04 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Mar 2017 23:44:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 23:44:05 GMT
EXPOSE 8983/tcp
# Fri, 03 Mar 2017 23:44:05 GMT
WORKDIR /opt/solr
# Fri, 03 Mar 2017 23:44:05 GMT
USER [solr]
# Fri, 03 Mar 2017 23:44:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:44:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4b85543ea7ada734379b9ccd08e5563e3f3d4f66c53f7a45241b4e10e2a1cf`  
		Last Modified: Sat, 04 Mar 2017 05:58:55 GMT  
		Size: 4.9 MB (4920252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d703b0103f09c5eeec2de3685f416908f25a119f4ff836805d66772f3151d0`  
		Last Modified: Sat, 04 Mar 2017 05:58:51 GMT  
		Size: 613.0 KB (613028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09b0153520913f3afa31377188310d27f041e9b373a7e200278a006b29ee607`  
		Last Modified: Sat, 04 Mar 2017 05:58:51 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134926312ce482de8873c34d51031f0e9bdc256251cc4b766e08d5c61f4cf84d`  
		Last Modified: Sat, 04 Mar 2017 06:02:10 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7666c46fc0130e9b472242dc8424a22acddcbe51e357650bfc542baf918108a9`  
		Last Modified: Sat, 04 Mar 2017 06:02:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5859d2ddb3c6e43fd95ae2731a528facdbb93c386b9c52059f3e1558519cd7`  
		Last Modified: Sat, 04 Mar 2017 06:02:53 GMT  
		Size: 141.5 MB (141452726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4722ae4ddac072eb8520f21e8daeaae726068ea56ee4a6cca83578be96c53b`  
		Last Modified: Sat, 04 Mar 2017 06:02:09 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e50fd0c7759c4be2a5e3a7695f8babdf6eb870d8c62c80c3f7a9ce61153e2`  
		Last Modified: Sat, 04 Mar 2017 06:02:09 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
