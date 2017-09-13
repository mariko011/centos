## `solr:alpine`

```console
$ docker pull solr@sha256:0d8d150fdbf9641a2c3ac43b4423917f14db6d976104d2e40e34f1f019abb48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

```console
$ docker pull solr@sha256:ea947e6a88bf7e1ad4ed8391e426057b74a9299311d126f126565579d8d993fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207989360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719afae41619cad886935ee501c97b1c83b9d4865c51c423a3a0b5e99d9d2296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:57:02 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:57:06 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:22 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:57:23 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:23 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:23 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3671e3ede691081d2320b9c4eed6519bd49b38c31cc254f85c42d276e1d546`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 7.2 KB (7165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115eb8b9e3447ba1a0004c9a44944c563f9402940fa654555ddf0b766a1b3ea9`  
		Last Modified: Wed, 13 Sep 2017 05:11:37 GMT  
		Size: 145.5 MB (145510082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfae5fa5d0335a04c6cf2b255cee065cc29b2179c110e159a725f248944bb4`  
		Last Modified: Wed, 13 Sep 2017 05:11:15 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9812118e543b5085eac377d3956c1efe71fa1de339c709c704d2c9a92fbf4f61`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
