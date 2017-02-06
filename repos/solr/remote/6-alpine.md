## `solr:6-alpine`

```console
$ docker pull solr@sha256:21d02b159144b2b50cf7bc835b53d22f7d166234a80a13cbd71af6377c642aad
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188978734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c632df612af1da04896bfe628462e7af936f6a2884780fddb00f79c7701f83a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 27 Dec 2016 21:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 27 Dec 2016 21:56:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:56:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:56:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Feb 2017 22:21:55 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:55 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:55 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:56 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec13ad37b923525d0e950e27a62db763033cdd449d71209cb8eef63c80beb422`  
		Last Modified: Tue, 27 Dec 2016 22:13:14 GMT  
		Size: 7.1 KB (7083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c781698b520237ac7c5396093e5cf19c268a70f616c2d37f5951cf27db6b7668`  
		Last Modified: Tue, 27 Dec 2016 22:10:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e998c9bea4caed568755178ad778f49495295daf1194fdb139d2b7a3ef7db6`  
		Last Modified: Mon, 06 Feb 2017 22:26:18 GMT  
		Size: 141.5 MB (141452770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1257363711d84d6e6b47e5f622e73d1c3a16c6d08d3fa8ccb470577439ce4608`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb36f1a54e953d06faf23edde663e7119917494a88817437174322fea92dd09`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
