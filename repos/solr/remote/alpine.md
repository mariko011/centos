## `solr:alpine`

```console
$ docker pull solr@sha256:676d0ab83c852bab1aa0691e47d7fd8e2146a4481341e122601460dac220f5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

```console
$ docker pull solr@sha256:d8cdd4d56e7ed2154a144d4746ed35c4237c349b1da2cee4187662e9d0863e69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212278856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a159b23e71e16ea42f3bab2b74b11cf5d1a1ff8a85dc7c00673b81acaa3875fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 08:50:39 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 04 Nov 2017 08:50:39 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 04 Nov 2017 08:50:43 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Sat, 04 Nov 2017 08:50:47 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Sat, 04 Nov 2017 08:52:25 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 08:52:26 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Sat, 04 Nov 2017 08:52:29 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 04 Nov 2017 08:52:47 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 04 Nov 2017 08:52:47 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Sat, 04 Nov 2017 08:52:48 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 04 Nov 2017 08:52:48 GMT
EXPOSE 8983/tcp
# Sat, 04 Nov 2017 08:52:48 GMT
WORKDIR /opt/solr
# Sat, 04 Nov 2017 08:52:49 GMT
USER [solr]
# Sat, 04 Nov 2017 08:52:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 08:52:49 GMT
CMD ["solr-foreground"]
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
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710e1757f57e8f6995441f673659a04db493130581ba850df7e72527477e03b2`  
		Last Modified: Sat, 04 Nov 2017 09:01:16 GMT  
		Size: 5.6 MB (5589776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531c5960fcc8b38d4fc4cd6795564483a3e00f8ea93a28d36356e85fa391d82c`  
		Last Modified: Sat, 04 Nov 2017 09:01:14 GMT  
		Size: 623.7 KB (623687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44ab38ccde66314cbdec5f85ad35721dbc9b6d2a50b113213efda7361363b69`  
		Last Modified: Sat, 04 Nov 2017 09:02:36 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ccf20269be8c58ee3c33924af02077087d2d87747b542c77b5aeaeb5419310`  
		Last Modified: Sat, 04 Nov 2017 09:02:34 GMT  
		Size: 14.8 KB (14806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8db05a7eea6f96c5f9871fec13cfd0fe0435c6cd9904849e3fa2eacd4cfb4c4`  
		Last Modified: Sat, 04 Nov 2017 09:02:45 GMT  
		Size: 149.8 MB (149763025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30f08049bc836de586e33f5146b825396a1a4b1332d55bfd47a3c93ea5db893`  
		Last Modified: Sat, 04 Nov 2017 09:02:34 GMT  
		Size: 4.1 KB (4124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943fc4b2f52e2ea4e6b5a41b46c180bf91231b5c16c4b09c6816f0f295c536c6`  
		Last Modified: Sat, 04 Nov 2017 09:02:34 GMT  
		Size: 4.1 KB (4131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
