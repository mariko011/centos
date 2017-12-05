## `solr:7-alpine`

```console
$ docker pull solr@sha256:5812b55e9f30831a6c4295d3ca73d3d0a262ea4c1ad4c66d2aec5759af7f8565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:7-alpine` - linux; amd64

```console
$ docker pull solr@sha256:f331b6909e0f6d19ee86a616323154b65a93d5368cc774d3fa1321b5eed0877e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214262312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fabc9f33b32b8514fadaceed817cf72feb3627f18052b3b04ad93a4282c6df`
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
# Tue, 05 Dec 2017 05:03:59 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 05:04:00 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 05 Dec 2017 05:04:03 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 05 Dec 2017 05:04:18 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 05 Dec 2017 05:04:19 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Tue, 05 Dec 2017 05:04:19 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 05 Dec 2017 05:04:19 GMT
EXPOSE 8983/tcp
# Tue, 05 Dec 2017 05:04:20 GMT
WORKDIR /opt/solr
# Tue, 05 Dec 2017 05:04:20 GMT
USER [solr]
# Tue, 05 Dec 2017 05:04:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 05:04:20 GMT
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
	-	`sha256:199cea5224686911b09fe51d493745219016efc55574dfa7b7b6e6ce2f243915`  
		Last Modified: Tue, 05 Dec 2017 05:07:58 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657c9b7bdd45496bb27bd23b791120e8973810a4d41c4073c35b46aa450020e1`  
		Last Modified: Tue, 05 Dec 2017 05:07:59 GMT  
		Size: 10.8 KB (10824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17edfae44d77ef9b3b9392490b95bb6009673e9fcb5c64df81319913727ff964`  
		Last Modified: Tue, 05 Dec 2017 05:08:17 GMT  
		Size: 149.8 MB (149763006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86be6722ed6c40e4fd6019115bc8624820de0085be91196ecc1f9d12bcef7b6c`  
		Last Modified: Tue, 05 Dec 2017 05:07:58 GMT  
		Size: 4.1 KB (4130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1caf5612a65561a6e9deb965197ee852ad031550307e1572c1451db8a5981ab`  
		Last Modified: Tue, 05 Dec 2017 05:07:58 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
