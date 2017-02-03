## `solr:alpine`

```console
$ docker pull solr@sha256:807b052259716931a1c4bbc298f8c95c8d6600473f06c0590ee48cdf1effada2
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188962216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d5cd65f0e32c07878d611482ff4a832191d1b34e3e1d7cf1f552923b0b98c9`
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
# Mon, 23 Jan 2017 18:30:45 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:53 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:54 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:31:12 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 03 Feb 2017 00:44:05 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:44:06 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:44:06 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:44:06 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:44:07 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:44:07 GMT
USER [solr]
# Fri, 03 Feb 2017 00:44:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:44:07 GMT
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
	-	`sha256:14c353c7f5c39cb46395e8bf01b0f68d51c607d2d99d5c5fea54b2fc141ef286`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ed6b4b9fac1b0a84eac280f5cc312c66c33fcda1b092b9817fd0383c64073c`  
		Last Modified: Mon, 23 Jan 2017 18:35:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a324c27d1f66e4238506185bad1633fc8653b0edba670491e8341b2299f399`  
		Last Modified: Mon, 23 Jan 2017 18:35:54 GMT  
		Size: 141.4 MB (141436247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8392ed4c86ff2ef8b9523932028347bcaf869d8e4ecc6e63da0ea257f2d8`  
		Last Modified: Fri, 03 Feb 2017 00:48:28 GMT  
		Size: 3.0 KB (2973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af423f329b06022000544be99220425aed3ee4471bd34a0cf1f39ee66e8c5c`  
		Last Modified: Fri, 03 Feb 2017 00:48:27 GMT  
		Size: 3.0 KB (2984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
