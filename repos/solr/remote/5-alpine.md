## `solr:5-alpine`

```console
$ docker pull solr@sha256:36f946f7fb9deb06cef61f711cf6e16e3ad37dde0a1459d351812de213f9b9c5
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.2 MB (179168310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258913c27bad30d1d2c50822001f38a09640090126eea673b99ad8f37995d237`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 02:51:14 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Sep 2016 02:51:14 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Sep 2016 02:51:15 GMT
ARG GPG_KEYSERVER
# Tue, 20 Sep 2016 02:51:19 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 20 Sep 2016 02:51:21 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Sep 2016 02:51:21 GMT
ENV SOLR_USER=solr
# Tue, 20 Sep 2016 02:51:22 GMT
ENV SOLR_UID=8983
# Tue, 20 Sep 2016 02:51:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 20 Sep 2016 02:51:23 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 20 Sep 2016 02:51:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:51:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:51:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:55:53 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 20 Sep 2016 02:55:53 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 20 Sep 2016 02:55:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 20 Sep 2016 02:56:13 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:56:13 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:56:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:56:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:56:15 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:56:16 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:56:16 GMT
USER [solr]
# Tue, 20 Sep 2016 02:56:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:56:17 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6285cbad85281edaf891b784f41272fd5e45672263baa0270dd301288655be7`  
		Last Modified: Tue, 20 Sep 2016 02:52:16 GMT  
		Size: 4.7 MB (4745468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22bcce0361204f46835c61c541ca55139a2d8fc1c7517fa9cc0c6bcb51f4497`  
		Last Modified: Tue, 20 Sep 2016 02:52:13 GMT  
		Size: 606.8 KB (606826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb40ac3801c817249d896f25179a26e60d85b124badb6632bd9c46f9d1ea977`  
		Last Modified: Tue, 20 Sep 2016 02:52:13 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682a4f60feee5b66aebbc0d5f26e08a1f697ace7747e2ff56b64690106c48cec`  
		Last Modified: Tue, 20 Sep 2016 02:52:10 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2b3fd2ffa9cfa97c3fd2d4ef4d596a84398410b1100eac47154595a7b27984`  
		Last Modified: Tue, 20 Sep 2016 02:52:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786618fb5f5762e2cc22c6325bcd4cf1a7f76954a44ccad260f6d06556e0fbef`  
		Last Modified: Tue, 20 Sep 2016 02:56:41 GMT  
		Size: 131.8 MB (131844341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2941c4c4bbb64162496e1761b2f92fa83e0331af826a52310c1bd5bdb22f08`  
		Last Modified: Tue, 20 Sep 2016 02:56:25 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bf0afa9e8571dd13f4c8be33ef194606867f99d9b6624e131e537fc89751e5`  
		Last Modified: Tue, 20 Sep 2016 02:56:25 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
