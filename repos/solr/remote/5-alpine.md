## `solr:5-alpine`

```console
$ docker pull solr@sha256:ecc4de6cdf8f3b00d9384fbe03dceeec4129abc709692d7f995c41adc09d4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

```console
$ docker pull solr@sha256:e38ba3c0fb3e09440486098eed46e8e6350dc77abb2ff83440cdea810d9f5560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194406713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f723dd883162a8cdfb47cb69e019f26759f32484b9508c0c9adc81d340818f09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:47:28 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:47:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:47:33 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 14 Sep 2017 07:47:37 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:47:38 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_VERSION=5.5.4
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Thu, 14 Sep 2017 07:47:39 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 14 Sep 2017 07:47:42 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:47:58 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:47:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:47:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:47:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 07:47:59 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:47:59 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:00 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c0661fe9b94017f9addf337e276483da0b92b6bc75062fcd86e3ccb63ae9a`  
		Last Modified: Thu, 14 Sep 2017 07:53:19 GMT  
		Size: 5.6 MB (5568529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c2f1e8f188f9ea8b75f2577b93df88762497b6f4b41f5d725ce0622b7f40f`  
		Last Modified: Thu, 14 Sep 2017 07:53:17 GMT  
		Size: 622.9 KB (622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449e20cf69b78ed842c1aecf7fcd29777a4f9f58105ba28cbc269d41270765cf`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c4787e357a3fbd02a6d4eb1481c806cbd252b0b225850d893018409fc2978`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 7.2 KB (7172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8544a770ea67ddc3edb055898851d556ee3a6bd13f4e71e5324673118aabd723`  
		Last Modified: Thu, 14 Sep 2017 07:53:28 GMT  
		Size: 131.9 MB (131927299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696dcf4c24501708ff1d97559751ada1d2de0c148a22e405a55341aec46d9a2`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa8f18c53d17756f1910c5912dd65c4f40bf99dcd31c10ee34a52188b4f045`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
