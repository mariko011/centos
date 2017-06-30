<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5.5.4`](#solr554)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.4-alpine`](#solr554-alpine)
-	[`solr:5.5-alpine`](#solr55-alpine)
-	[`solr:5-alpine`](#solr5-alpine)
-	[`solr:6.3.0`](#solr630)
-	[`solr:6.3`](#solr63)
-	[`solr:6.3.0-alpine`](#solr630-alpine)
-	[`solr:6.3-alpine`](#solr63-alpine)
-	[`solr:6.4.2`](#solr642)
-	[`solr:6.4`](#solr64)
-	[`solr:6.4.2-alpine`](#solr642-alpine)
-	[`solr:6.4-alpine`](#solr64-alpine)
-	[`solr:6.5.1`](#solr651)
-	[`solr:6.5`](#solr65)
-	[`solr:6.5.1-alpine`](#solr651-alpine)
-	[`solr:6.5-alpine`](#solr65-alpine)
-	[`solr:6.6.0`](#solr660)
-	[`solr:6.6`](#solr66)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.6.0-alpine`](#solr660-alpine)
-	[`solr:6.6-alpine`](#solr66-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.5.4`

```console
$ docker pull solr@sha256:adbd9d3c48c9d73b4de20a36aae492a12952dfbb02bbed5b66933f80bd2d32bf
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268853772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c304ef7a27a442ae9fdc0b4305b9e0a33d23bd22ebf1d4c37a921a79bf9fa8eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:38:58 GMT
ENV SOLR_VERSION=5.5.4
# Fri, 23 Jun 2017 11:38:59 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Fri, 23 Jun 2017 11:39:00 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Fri, 23 Jun 2017 11:39:00 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 23 Jun 2017 11:39:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:39:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:39:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:39:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:39:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:39:21 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:39:22 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:39:23 GMT
USER [solr]
# Fri, 23 Jun 2017 11:39:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:39:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db02fd13a976e1685c2f47df19033298fdde6e76e1510ddf2f1dd0dc93ba124`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 7.4 KB (7435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259ce75ff7a607d97b2b5646e43972418f3f20686861a26b346d2e58fbb9aecf`  
		Last Modified: Sun, 25 Jun 2017 01:09:05 GMT  
		Size: 131.9 MB (131927061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a9bca5c6f07852a01061773ceb8ee263ad9488186f16bdfb462eddaf1d0275`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dda7445f58519af9ff830abc6b46a1bc7f6cd84276dcf06545f6618fea7dbaa`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:adbd9d3c48c9d73b4de20a36aae492a12952dfbb02bbed5b66933f80bd2d32bf
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268853772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c304ef7a27a442ae9fdc0b4305b9e0a33d23bd22ebf1d4c37a921a79bf9fa8eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:38:58 GMT
ENV SOLR_VERSION=5.5.4
# Fri, 23 Jun 2017 11:38:59 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Fri, 23 Jun 2017 11:39:00 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Fri, 23 Jun 2017 11:39:00 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 23 Jun 2017 11:39:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:39:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:39:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:39:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:39:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:39:21 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:39:22 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:39:23 GMT
USER [solr]
# Fri, 23 Jun 2017 11:39:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:39:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db02fd13a976e1685c2f47df19033298fdde6e76e1510ddf2f1dd0dc93ba124`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 7.4 KB (7435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259ce75ff7a607d97b2b5646e43972418f3f20686861a26b346d2e58fbb9aecf`  
		Last Modified: Sun, 25 Jun 2017 01:09:05 GMT  
		Size: 131.9 MB (131927061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a9bca5c6f07852a01061773ceb8ee263ad9488186f16bdfb462eddaf1d0275`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dda7445f58519af9ff830abc6b46a1bc7f6cd84276dcf06545f6618fea7dbaa`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:adbd9d3c48c9d73b4de20a36aae492a12952dfbb02bbed5b66933f80bd2d32bf
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268853772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c304ef7a27a442ae9fdc0b4305b9e0a33d23bd22ebf1d4c37a921a79bf9fa8eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:38:58 GMT
ENV SOLR_VERSION=5.5.4
# Fri, 23 Jun 2017 11:38:59 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Fri, 23 Jun 2017 11:39:00 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Fri, 23 Jun 2017 11:39:00 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 23 Jun 2017 11:39:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:39:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:39:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:39:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:39:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:39:21 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:39:22 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:39:23 GMT
USER [solr]
# Fri, 23 Jun 2017 11:39:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:39:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db02fd13a976e1685c2f47df19033298fdde6e76e1510ddf2f1dd0dc93ba124`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 7.4 KB (7435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259ce75ff7a607d97b2b5646e43972418f3f20686861a26b346d2e58fbb9aecf`  
		Last Modified: Sun, 25 Jun 2017 01:09:05 GMT  
		Size: 131.9 MB (131927061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a9bca5c6f07852a01061773ceb8ee263ad9488186f16bdfb462eddaf1d0275`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dda7445f58519af9ff830abc6b46a1bc7f6cd84276dcf06545f6618fea7dbaa`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.4-alpine`

```console
$ docker pull solr@sha256:a037fa270249ef5ab1fbb3c20ccf85fe5006f9756d3cec3cbf06142515a6a8cd
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a23953c33c47e7ae9df130996edcbd1094e55b450473fa64d5d3e3ae6c1244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:06:55 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 28 Jun 2017 23:06:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 28 Jun 2017 23:06:57 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 28 Jun 2017 23:06:58 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 28 Jun 2017 23:07:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:07:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:07:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:07:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:07:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:07:22 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:07:23 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:07:24 GMT
USER [solr]
# Wed, 28 Jun 2017 23:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:07:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c7e983d6fee693f192c68d98127c7f10ad3f929039a75caae74fdd7613f7d`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 7.2 KB (7176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54adf63254cacdf9919886f3d36e61259b68da698d6f9bb10a9a8efed285167`  
		Last Modified: Fri, 30 Jun 2017 01:24:26 GMT  
		Size: 131.9 MB (131926884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ddba25748ac21c56c1283816b70bc1becf7e01846e1e37fce666c406bbd989`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652172d7a4232246090ff035985d54ba5104a16bd45b85d4c1496c687ea57a1`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:a037fa270249ef5ab1fbb3c20ccf85fe5006f9756d3cec3cbf06142515a6a8cd
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a23953c33c47e7ae9df130996edcbd1094e55b450473fa64d5d3e3ae6c1244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:06:55 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 28 Jun 2017 23:06:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 28 Jun 2017 23:06:57 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 28 Jun 2017 23:06:58 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 28 Jun 2017 23:07:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:07:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:07:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:07:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:07:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:07:22 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:07:23 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:07:24 GMT
USER [solr]
# Wed, 28 Jun 2017 23:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:07:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c7e983d6fee693f192c68d98127c7f10ad3f929039a75caae74fdd7613f7d`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 7.2 KB (7176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54adf63254cacdf9919886f3d36e61259b68da698d6f9bb10a9a8efed285167`  
		Last Modified: Fri, 30 Jun 2017 01:24:26 GMT  
		Size: 131.9 MB (131926884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ddba25748ac21c56c1283816b70bc1becf7e01846e1e37fce666c406bbd989`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652172d7a4232246090ff035985d54ba5104a16bd45b85d4c1496c687ea57a1`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:a037fa270249ef5ab1fbb3c20ccf85fe5006f9756d3cec3cbf06142515a6a8cd
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a23953c33c47e7ae9df130996edcbd1094e55b450473fa64d5d3e3ae6c1244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:06:55 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 28 Jun 2017 23:06:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 28 Jun 2017 23:06:57 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 28 Jun 2017 23:06:58 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 28 Jun 2017 23:07:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:07:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:07:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:07:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:07:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:07:22 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:07:23 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:07:24 GMT
USER [solr]
# Wed, 28 Jun 2017 23:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:07:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c7e983d6fee693f192c68d98127c7f10ad3f929039a75caae74fdd7613f7d`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 7.2 KB (7176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54adf63254cacdf9919886f3d36e61259b68da698d6f9bb10a9a8efed285167`  
		Last Modified: Fri, 30 Jun 2017 01:24:26 GMT  
		Size: 131.9 MB (131926884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ddba25748ac21c56c1283816b70bc1becf7e01846e1e37fce666c406bbd989`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652172d7a4232246090ff035985d54ba5104a16bd45b85d4c1496c687ea57a1`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:e5952938bf98bc6aea79ae96b3b7faa52990d47c60ee677072c30c044f385eb0
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277482252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ef307a7a664489e83f33e7f3fb3628778e5d4201dcb322b1c4189176d6b19d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:39:50 GMT
ENV SOLR_VERSION=6.3.0
# Fri, 23 Jun 2017 11:39:51 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Fri, 23 Jun 2017 11:39:51 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Fri, 23 Jun 2017 11:39:52 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 23 Jun 2017 11:39:54 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:40:10 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:40:11 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:40:12 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:40:13 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:40:14 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:40:14 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:40:15 GMT
USER [solr]
# Fri, 23 Jun 2017 11:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:40:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7450c17753194fd79ed28c0b8703f269ae884120e7e87d575b8cb65376ef7a`  
		Last Modified: Sun, 25 Jun 2017 01:12:12 GMT  
		Size: 6.8 KB (6822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b00f2630e721136fdd8659276c364c12f3aaa12ae01e18d7e92daf2b6c7b7`  
		Last Modified: Sun, 25 Jun 2017 01:12:22 GMT  
		Size: 140.6 MB (140556156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cb354b18f83c49ccce4b32b1cdf903aa8817622bdbbdf31a2f650051f0737`  
		Last Modified: Sun, 25 Jun 2017 01:12:12 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6d61f7a8a78fdb54617146bbeffb26db3029a5c0806468be6b5f4124bb3ef8`  
		Last Modified: Sun, 25 Jun 2017 01:12:12 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:e5952938bf98bc6aea79ae96b3b7faa52990d47c60ee677072c30c044f385eb0
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277482252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ef307a7a664489e83f33e7f3fb3628778e5d4201dcb322b1c4189176d6b19d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:39:50 GMT
ENV SOLR_VERSION=6.3.0
# Fri, 23 Jun 2017 11:39:51 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Fri, 23 Jun 2017 11:39:51 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Fri, 23 Jun 2017 11:39:52 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 23 Jun 2017 11:39:54 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:40:10 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:40:11 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:40:12 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:40:13 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:40:14 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:40:14 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:40:15 GMT
USER [solr]
# Fri, 23 Jun 2017 11:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:40:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7450c17753194fd79ed28c0b8703f269ae884120e7e87d575b8cb65376ef7a`  
		Last Modified: Sun, 25 Jun 2017 01:12:12 GMT  
		Size: 6.8 KB (6822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b00f2630e721136fdd8659276c364c12f3aaa12ae01e18d7e92daf2b6c7b7`  
		Last Modified: Sun, 25 Jun 2017 01:12:22 GMT  
		Size: 140.6 MB (140556156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cb354b18f83c49ccce4b32b1cdf903aa8817622bdbbdf31a2f650051f0737`  
		Last Modified: Sun, 25 Jun 2017 01:12:12 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6d61f7a8a78fdb54617146bbeffb26db3029a5c0806468be6b5f4124bb3ef8`  
		Last Modified: Sun, 25 Jun 2017 01:12:12 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:0697ee2e4759f09ce3bb6eddcb835826da8a8a956d2908ff3fe86ce581f989d8
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203032480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412a1bf194969ae592ec8c13308754c9ffafd355b636d1259da845208f5685ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:13:22 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 28 Jun 2017 23:13:23 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 28 Jun 2017 23:13:24 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 28 Jun 2017 23:13:25 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 28 Jun 2017 23:13:53 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:14:34 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:14:46 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:14:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:14:48 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:15:14 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:15:15 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:15:16 GMT
USER [solr]
# Wed, 28 Jun 2017 23:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:15:42 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae38fba55f5972bfb0e7dfab13670629755213044089ad2fc068ad2f879a70d6`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 6.6 KB (6595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f19500827e29d9e08489fe91383610fcd383b82a9d206b81f99c7b6bcf0352`  
		Last Modified: Fri, 30 Jun 2017 01:26:58 GMT  
		Size: 140.6 MB (140556000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63f8d44a2b65d90abcc60b676bc0b7fc65b52a32b2fc0e4d48c5f00ef93bc2`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e325fe6e0482039c563aa9cdca74d2c82995c58d9858917a56f5ff01644f16`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:0697ee2e4759f09ce3bb6eddcb835826da8a8a956d2908ff3fe86ce581f989d8
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203032480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412a1bf194969ae592ec8c13308754c9ffafd355b636d1259da845208f5685ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:13:22 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 28 Jun 2017 23:13:23 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 28 Jun 2017 23:13:24 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 28 Jun 2017 23:13:25 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 28 Jun 2017 23:13:53 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:14:34 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:14:46 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:14:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:14:48 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:15:14 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:15:15 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:15:16 GMT
USER [solr]
# Wed, 28 Jun 2017 23:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:15:42 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae38fba55f5972bfb0e7dfab13670629755213044089ad2fc068ad2f879a70d6`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 6.6 KB (6595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f19500827e29d9e08489fe91383610fcd383b82a9d206b81f99c7b6bcf0352`  
		Last Modified: Fri, 30 Jun 2017 01:26:58 GMT  
		Size: 140.6 MB (140556000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63f8d44a2b65d90abcc60b676bc0b7fc65b52a32b2fc0e4d48c5f00ef93bc2`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e325fe6e0482039c563aa9cdca74d2c82995c58d9858917a56f5ff01644f16`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2`

```console
$ docker pull solr@sha256:1fb54e87511ee8570ed36d96acba8c88fe08b87d82df09ccb961f963ddc5bb44
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278472886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f363c6bf0c608b39c4f4f6098643e42073fad6389183a43a13cdcfe1ced2fee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:41:04 GMT
ENV SOLR_VERSION=6.4.2
# Fri, 23 Jun 2017 11:41:05 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Fri, 23 Jun 2017 11:41:06 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Fri, 23 Jun 2017 11:41:07 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Fri, 23 Jun 2017 11:41:09 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:41:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:41:27 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:41:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:41:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:41:30 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:41:31 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:41:32 GMT
USER [solr]
# Fri, 23 Jun 2017 11:41:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:41:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be74bf15fc6af18b26efbdd1b31abf6def7ab69b398e630466e48386859177b7`  
		Last Modified: Sun, 25 Jun 2017 01:14:36 GMT  
		Size: 7.4 KB (7418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1541a966475cc3e36226910a19b5ae280eba4ee130699d66bc8a73f424e98cbb`  
		Last Modified: Sun, 25 Jun 2017 01:14:48 GMT  
		Size: 141.5 MB (141546194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9dce3686c9b5155c503a63320603500400c28b03f5c9c7c242f16fbf5227b8`  
		Last Modified: Sun, 25 Jun 2017 01:14:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41117d6a4b4c0a47e3ae06fcc4766db38cd70c486f4b1a24995b0af5620969d0`  
		Last Modified: Sun, 25 Jun 2017 01:14:39 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:1fb54e87511ee8570ed36d96acba8c88fe08b87d82df09ccb961f963ddc5bb44
```

-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278472886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f363c6bf0c608b39c4f4f6098643e42073fad6389183a43a13cdcfe1ced2fee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:41:04 GMT
ENV SOLR_VERSION=6.4.2
# Fri, 23 Jun 2017 11:41:05 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Fri, 23 Jun 2017 11:41:06 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Fri, 23 Jun 2017 11:41:07 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Fri, 23 Jun 2017 11:41:09 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:41:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:41:27 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:41:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:41:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:41:30 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:41:31 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:41:32 GMT
USER [solr]
# Fri, 23 Jun 2017 11:41:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:41:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be74bf15fc6af18b26efbdd1b31abf6def7ab69b398e630466e48386859177b7`  
		Last Modified: Sun, 25 Jun 2017 01:14:36 GMT  
		Size: 7.4 KB (7418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1541a966475cc3e36226910a19b5ae280eba4ee130699d66bc8a73f424e98cbb`  
		Last Modified: Sun, 25 Jun 2017 01:14:48 GMT  
		Size: 141.5 MB (141546194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9dce3686c9b5155c503a63320603500400c28b03f5c9c7c242f16fbf5227b8`  
		Last Modified: Sun, 25 Jun 2017 01:14:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41117d6a4b4c0a47e3ae06fcc4766db38cd70c486f4b1a24995b0af5620969d0`  
		Last Modified: Sun, 25 Jun 2017 01:14:39 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2-alpine`

```console
$ docker pull solr@sha256:106dc74390abeba74e7ae70ead975d1d55bd10310495d67b6ce0785653c1dd89
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204023052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc002d0e099c5d10e9ab73faef765803160e9e4d6b18fae0f1189b2800192df8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:16:32 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 28 Jun 2017 23:16:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 28 Jun 2017 23:16:34 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 28 Jun 2017 23:16:35 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:17:03 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:17:45 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:17:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:17:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:18:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:18:26 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:18:27 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:18:52 GMT
USER [solr]
# Wed, 28 Jun 2017 23:18:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:18:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b69f9ce48a16804e4ea7934de2d9616d0fd5df8e3eb5f8095bfeeb48ff6bd`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4fb820f2abac4a4bdbb2bdc635d8c4528ce8fbf27e0566025a2d1537601140`  
		Last Modified: Fri, 30 Jun 2017 01:28:40 GMT  
		Size: 141.5 MB (141546010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa19291f9d5654ac94ca94f7f4a89db40a1a66798a1e4979ac2b49e7ebfa032`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e27cfe07712900585a955d7aa56520f4a15a9e4a706ff9deadb960ee86e2594`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:106dc74390abeba74e7ae70ead975d1d55bd10310495d67b6ce0785653c1dd89
```

-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204023052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc002d0e099c5d10e9ab73faef765803160e9e4d6b18fae0f1189b2800192df8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:16:32 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 28 Jun 2017 23:16:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 28 Jun 2017 23:16:34 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 28 Jun 2017 23:16:35 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:17:03 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:17:45 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:17:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:17:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:18:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:18:26 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:18:27 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:18:52 GMT
USER [solr]
# Wed, 28 Jun 2017 23:18:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:18:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b69f9ce48a16804e4ea7934de2d9616d0fd5df8e3eb5f8095bfeeb48ff6bd`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4fb820f2abac4a4bdbb2bdc635d8c4528ce8fbf27e0566025a2d1537601140`  
		Last Modified: Fri, 30 Jun 2017 01:28:40 GMT  
		Size: 141.5 MB (141546010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa19291f9d5654ac94ca94f7f4a89db40a1a66798a1e4979ac2b49e7ebfa032`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e27cfe07712900585a955d7aa56520f4a15a9e4a706ff9deadb960ee86e2594`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1`

```console
$ docker pull solr@sha256:a3170d429e15ef6a6569f7680900244334d03033da10386ed3d155e2169d3ef4
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285732955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0451b90f61297959a72d46036f5c505c5af2f9997e30a74efaa5d068cc8be5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:42:01 GMT
ENV SOLR_VERSION=6.5.1
# Fri, 23 Jun 2017 11:42:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Fri, 23 Jun 2017 11:42:03 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Fri, 23 Jun 2017 11:42:04 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Fri, 23 Jun 2017 11:42:06 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:42:22 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:42:24 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:42:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:42:26 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:42:27 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:42:28 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:42:29 GMT
USER [solr]
# Fri, 23 Jun 2017 11:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:42:31 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e6cb13a34cb7e10d893f1d656bf5924f0057f6f8378ab0dc9067cbe0310bd`  
		Last Modified: Sun, 25 Jun 2017 01:16:59 GMT  
		Size: 8.0 KB (8016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a5b5a51cfb533c4693a146d8f4120e267afda5fd914d2e82c4b1dc04d7ca8`  
		Last Modified: Sun, 25 Jun 2017 01:17:13 GMT  
		Size: 148.8 MB (148805665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df982e05db4b10c2660d779bb2c4143f264cb977c46a7b21b23a77c5c59f388`  
		Last Modified: Sun, 25 Jun 2017 01:16:59 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a23ea28212bddef30b407e143b8f0fa07336169e128e540e7acd1c0f5018ef`  
		Last Modified: Sun, 25 Jun 2017 01:16:59 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5`

```console
$ docker pull solr@sha256:a3170d429e15ef6a6569f7680900244334d03033da10386ed3d155e2169d3ef4
```

-	Platforms:
	-	linux; amd64

### `solr:6.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285732955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0451b90f61297959a72d46036f5c505c5af2f9997e30a74efaa5d068cc8be5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:42:01 GMT
ENV SOLR_VERSION=6.5.1
# Fri, 23 Jun 2017 11:42:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Fri, 23 Jun 2017 11:42:03 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Fri, 23 Jun 2017 11:42:04 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Fri, 23 Jun 2017 11:42:06 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:42:22 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:42:24 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:42:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:42:26 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:42:27 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:42:28 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:42:29 GMT
USER [solr]
# Fri, 23 Jun 2017 11:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:42:31 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e6cb13a34cb7e10d893f1d656bf5924f0057f6f8378ab0dc9067cbe0310bd`  
		Last Modified: Sun, 25 Jun 2017 01:16:59 GMT  
		Size: 8.0 KB (8016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a5b5a51cfb533c4693a146d8f4120e267afda5fd914d2e82c4b1dc04d7ca8`  
		Last Modified: Sun, 25 Jun 2017 01:17:13 GMT  
		Size: 148.8 MB (148805665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df982e05db4b10c2660d779bb2c4143f264cb977c46a7b21b23a77c5c59f388`  
		Last Modified: Sun, 25 Jun 2017 01:16:59 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a23ea28212bddef30b407e143b8f0fa07336169e128e540e7acd1c0f5018ef`  
		Last Modified: Sun, 25 Jun 2017 01:16:59 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1-alpine`

```console
$ docker pull solr@sha256:6b8051e9b9090078045cc8bc8e24893eb6211f4f343627ada10277a107a008be
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211283257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb9b3f5d1909f7eed550bb1ccdb6f22ae4b9b85d1faa4c610308eff0404b862`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:19:45 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 28 Jun 2017 23:19:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 28 Jun 2017 23:19:47 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 28 Jun 2017 23:19:48 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 28 Jun 2017 23:20:16 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:20:57 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:21:10 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:21:11 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:21:12 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:21:37 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:21:38 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:21:39 GMT
USER [solr]
# Wed, 28 Jun 2017 23:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:22:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c6b0a293b1388177cdb273229a4f855440ddb49a592b0d7f89c440368f1b35`  
		Last Modified: Fri, 30 Jun 2017 01:30:07 GMT  
		Size: 7.8 KB (7758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dc28f46c5d016d8aa287375b0996d97a626262d97210120337d63ab92b0682`  
		Last Modified: Fri, 30 Jun 2017 01:30:20 GMT  
		Size: 148.8 MB (148805618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba00ebd5393693be308c99f63f24d2f92a170893a95d452a7b0bebe75157498`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e4948356a5e8927fd2f2627fbb85163357e1c94693689cd690aca763ef4d01`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5-alpine`

```console
$ docker pull solr@sha256:6b8051e9b9090078045cc8bc8e24893eb6211f4f343627ada10277a107a008be
```

-	Platforms:
	-	linux; amd64

### `solr:6.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211283257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb9b3f5d1909f7eed550bb1ccdb6f22ae4b9b85d1faa4c610308eff0404b862`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:19:45 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 28 Jun 2017 23:19:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 28 Jun 2017 23:19:47 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 28 Jun 2017 23:19:48 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 28 Jun 2017 23:20:16 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:20:57 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:21:10 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:21:11 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:21:12 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:21:37 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:21:38 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:21:39 GMT
USER [solr]
# Wed, 28 Jun 2017 23:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:22:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c6b0a293b1388177cdb273229a4f855440ddb49a592b0d7f89c440368f1b35`  
		Last Modified: Fri, 30 Jun 2017 01:30:07 GMT  
		Size: 7.8 KB (7758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dc28f46c5d016d8aa287375b0996d97a626262d97210120337d63ab92b0682`  
		Last Modified: Fri, 30 Jun 2017 01:30:20 GMT  
		Size: 148.8 MB (148805618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba00ebd5393693be308c99f63f24d2f92a170893a95d452a7b0bebe75157498`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e4948356a5e8927fd2f2627fbb85163357e1c94693689cd690aca763ef4d01`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.0`

```console
$ docker pull solr@sha256:c37fd5a4eb0e26f300f34e4a881838387bf5f82d3899f3c2d411c2a377b7b67c
```

-	Platforms:
	-	linux; amd64

### `solr:6.6.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282436346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc40f825e4c1c20e69d680c2c9c84431875c4d98c40ff2554d411f02255ad94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:42:56 GMT
ENV SOLR_VERSION=6.6.0
# Fri, 23 Jun 2017 11:42:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Fri, 23 Jun 2017 11:42:58 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Fri, 23 Jun 2017 11:42:59 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Fri, 23 Jun 2017 11:43:01 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:43:16 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:43:17 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:43:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:43:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:43:21 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:43:22 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:43:23 GMT
USER [solr]
# Fri, 23 Jun 2017 11:43:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:43:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870dd9a066a3df9e0ffb0ed76adbc2ade6c91c0cd8289a5ac47227263e5af152`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 7.4 KB (7414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757aa4b6305204d6e7252de3bab408a1fee9d74cd32e4f5401ff0a20d22b5476`  
		Last Modified: Sun, 25 Jun 2017 01:19:41 GMT  
		Size: 145.5 MB (145509657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53cffb2750cc101d03ae01a1632992714a12562100d3a9d1e1fd32587ba87e`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7862df6935182a95330dbf5c1f2c3b36bf041e33d618e4e549a64d6d2aea74a5`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6`

```console
$ docker pull solr@sha256:c37fd5a4eb0e26f300f34e4a881838387bf5f82d3899f3c2d411c2a377b7b67c
```

-	Platforms:
	-	linux; amd64

### `solr:6.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282436346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc40f825e4c1c20e69d680c2c9c84431875c4d98c40ff2554d411f02255ad94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:42:56 GMT
ENV SOLR_VERSION=6.6.0
# Fri, 23 Jun 2017 11:42:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Fri, 23 Jun 2017 11:42:58 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Fri, 23 Jun 2017 11:42:59 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Fri, 23 Jun 2017 11:43:01 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:43:16 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:43:17 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:43:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:43:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:43:21 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:43:22 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:43:23 GMT
USER [solr]
# Fri, 23 Jun 2017 11:43:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:43:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870dd9a066a3df9e0ffb0ed76adbc2ade6c91c0cd8289a5ac47227263e5af152`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 7.4 KB (7414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757aa4b6305204d6e7252de3bab408a1fee9d74cd32e4f5401ff0a20d22b5476`  
		Last Modified: Sun, 25 Jun 2017 01:19:41 GMT  
		Size: 145.5 MB (145509657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53cffb2750cc101d03ae01a1632992714a12562100d3a9d1e1fd32587ba87e`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7862df6935182a95330dbf5c1f2c3b36bf041e33d618e4e549a64d6d2aea74a5`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:c37fd5a4eb0e26f300f34e4a881838387bf5f82d3899f3c2d411c2a377b7b67c
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282436346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc40f825e4c1c20e69d680c2c9c84431875c4d98c40ff2554d411f02255ad94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:42:56 GMT
ENV SOLR_VERSION=6.6.0
# Fri, 23 Jun 2017 11:42:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Fri, 23 Jun 2017 11:42:58 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Fri, 23 Jun 2017 11:42:59 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Fri, 23 Jun 2017 11:43:01 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:43:16 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:43:17 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:43:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:43:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:43:21 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:43:22 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:43:23 GMT
USER [solr]
# Fri, 23 Jun 2017 11:43:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:43:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870dd9a066a3df9e0ffb0ed76adbc2ade6c91c0cd8289a5ac47227263e5af152`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 7.4 KB (7414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757aa4b6305204d6e7252de3bab408a1fee9d74cd32e4f5401ff0a20d22b5476`  
		Last Modified: Sun, 25 Jun 2017 01:19:41 GMT  
		Size: 145.5 MB (145509657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53cffb2750cc101d03ae01a1632992714a12562100d3a9d1e1fd32587ba87e`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7862df6935182a95330dbf5c1f2c3b36bf041e33d618e4e549a64d6d2aea74a5`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:c37fd5a4eb0e26f300f34e4a881838387bf5f82d3899f3c2d411c2a377b7b67c
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282436346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc40f825e4c1c20e69d680c2c9c84431875c4d98c40ff2554d411f02255ad94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 11:38:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 23 Jun 2017 11:38:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 23 Jun 2017 11:38:55 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_USER=solr
# Fri, 23 Jun 2017 11:38:56 GMT
ENV SOLR_UID=8983
# Fri, 23 Jun 2017 11:38:58 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Fri, 23 Jun 2017 11:42:56 GMT
ENV SOLR_VERSION=6.6.0
# Fri, 23 Jun 2017 11:42:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Fri, 23 Jun 2017 11:42:58 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Fri, 23 Jun 2017 11:42:59 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Fri, 23 Jun 2017 11:43:01 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 23 Jun 2017 11:43:16 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 23 Jun 2017 11:43:17 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Fri, 23 Jun 2017 11:43:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 23 Jun 2017 11:43:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 11:43:21 GMT
EXPOSE 8983/tcp
# Fri, 23 Jun 2017 11:43:22 GMT
WORKDIR /opt/solr
# Fri, 23 Jun 2017 11:43:23 GMT
USER [solr]
# Fri, 23 Jun 2017 11:43:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:43:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6ca23048a89e1482788ecd7c0aa010571d51353758804c92d723bdbe7e28f3`  
		Last Modified: Sun, 25 Jun 2017 01:08:56 GMT  
		Size: 10.1 MB (10095812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053cb6ee863db7b29b936e429ca400d607ad0387552f7f4b438e7c8c339eaa72`  
		Last Modified: Sun, 25 Jun 2017 01:08:52 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870dd9a066a3df9e0ffb0ed76adbc2ade6c91c0cd8289a5ac47227263e5af152`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 7.4 KB (7414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757aa4b6305204d6e7252de3bab408a1fee9d74cd32e4f5401ff0a20d22b5476`  
		Last Modified: Sun, 25 Jun 2017 01:19:41 GMT  
		Size: 145.5 MB (145509657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53cffb2750cc101d03ae01a1632992714a12562100d3a9d1e1fd32587ba87e`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7862df6935182a95330dbf5c1f2c3b36bf041e33d618e4e549a64d6d2aea74a5`  
		Last Modified: Sun, 25 Jun 2017 01:19:30 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.0-alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:6.6.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6-alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:6.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
