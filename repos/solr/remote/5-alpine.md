## `solr:5-alpine`

```console
$ docker pull solr@sha256:33cf8687dfe557aaaf79702cf004f455bdfa828cf433f0e22b34237cf6fe062a
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179384646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d0556b9dac211267e82e191b9eff636b6ed5fd43023b737edd5ad2eb2f772f`
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
# Fri, 03 Mar 2017 23:43:14 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 03 Mar 2017 23:43:17 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 03 Mar 2017 23:43:17 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 03 Mar 2017 23:43:19 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 03 Mar 2017 23:43:20 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 03 Mar 2017 23:43:20 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 03 Mar 2017 23:43:20 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 03 Mar 2017 23:43:36 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 03 Mar 2017 23:43:36 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Mar 2017 23:43:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Mar 2017 23:43:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 23:43:38 GMT
EXPOSE 8983/tcp
# Fri, 03 Mar 2017 23:43:38 GMT
WORKDIR /opt/solr
# Fri, 03 Mar 2017 23:43:38 GMT
USER [solr]
# Fri, 03 Mar 2017 23:43:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:43:39 GMT
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
	-	`sha256:0656c4251d759baeb498674e1e0f9a7290a0c79d233146ad59aec66f41c866cf`  
		Last Modified: Sat, 04 Mar 2017 05:58:49 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e191baa770fc35346e4c53c56c32dc3fe2fa65a34b044ad3a5621d93297ae4c3`  
		Last Modified: Sat, 04 Mar 2017 05:58:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db35d24c4531b8754b770925390ba7de7f8a0d88757c2a7e4050e6b584b11db5`  
		Last Modified: Sat, 04 Mar 2017 05:59:21 GMT  
		Size: 131.8 MB (131844411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03df5eabc530418542e9f15958f97cf4dd2adb23a44089fa6a73c374b28f84fa`  
		Last Modified: Sat, 04 Mar 2017 05:58:48 GMT  
		Size: 3.0 KB (2973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c77d5568aa39382135048db1f53ec33ba6eb17aa1430c2c8240b05c0c49c9e`  
		Last Modified: Sat, 04 Mar 2017 05:58:48 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
