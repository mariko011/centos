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
$ docker pull solr@sha256:d7ed0a96811b72c949d82355f020b3bb8c3fae859d46810666c6e946dd968394
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4852980299a757033408a03f49f65452bca6eab3e0b368924e2ee8749edb6e87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:07:30 GMT
ENV SOLR_VERSION=5.5.4
# Tue, 20 Jun 2017 01:07:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Tue, 20 Jun 2017 01:07:32 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Tue, 20 Jun 2017 01:07:33 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 20 Jun 2017 01:07:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:07:55 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:08:13 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:08:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:08:38 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:08:39 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:08:40 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:09:04 GMT
USER [solr]
# Tue, 20 Jun 2017 01:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:09:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e180f3efcf1d780a6e3d8050235acf5592ea228961a28200caf7d242c37ab133`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1576f045bbf1a8b7b5fa2024e3d7886cbe8a3160e1c5f081c2d61f0f5cf0ea8a`  
		Last Modified: Sun, 25 Jun 2017 01:10:45 GMT  
		Size: 131.9 MB (131926982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238af7a21740cc65d6c08f0ec94fe0236c5d3b77d718a95dc473d5310b6409f`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c07e2605a67c98552fd4b161a30f3284223c3fe89d2241475e7c3c9152305e`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:d7ed0a96811b72c949d82355f020b3bb8c3fae859d46810666c6e946dd968394
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4852980299a757033408a03f49f65452bca6eab3e0b368924e2ee8749edb6e87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:07:30 GMT
ENV SOLR_VERSION=5.5.4
# Tue, 20 Jun 2017 01:07:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Tue, 20 Jun 2017 01:07:32 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Tue, 20 Jun 2017 01:07:33 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 20 Jun 2017 01:07:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:07:55 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:08:13 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:08:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:08:38 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:08:39 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:08:40 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:09:04 GMT
USER [solr]
# Tue, 20 Jun 2017 01:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:09:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e180f3efcf1d780a6e3d8050235acf5592ea228961a28200caf7d242c37ab133`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1576f045bbf1a8b7b5fa2024e3d7886cbe8a3160e1c5f081c2d61f0f5cf0ea8a`  
		Last Modified: Sun, 25 Jun 2017 01:10:45 GMT  
		Size: 131.9 MB (131926982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238af7a21740cc65d6c08f0ec94fe0236c5d3b77d718a95dc473d5310b6409f`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c07e2605a67c98552fd4b161a30f3284223c3fe89d2241475e7c3c9152305e`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:d7ed0a96811b72c949d82355f020b3bb8c3fae859d46810666c6e946dd968394
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4852980299a757033408a03f49f65452bca6eab3e0b368924e2ee8749edb6e87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:07:30 GMT
ENV SOLR_VERSION=5.5.4
# Tue, 20 Jun 2017 01:07:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Tue, 20 Jun 2017 01:07:32 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Tue, 20 Jun 2017 01:07:33 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 20 Jun 2017 01:07:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:07:55 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:08:13 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:08:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:08:38 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:08:39 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:08:40 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:09:04 GMT
USER [solr]
# Tue, 20 Jun 2017 01:09:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:09:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e180f3efcf1d780a6e3d8050235acf5592ea228961a28200caf7d242c37ab133`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1576f045bbf1a8b7b5fa2024e3d7886cbe8a3160e1c5f081c2d61f0f5cf0ea8a`  
		Last Modified: Sun, 25 Jun 2017 01:10:45 GMT  
		Size: 131.9 MB (131926982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238af7a21740cc65d6c08f0ec94fe0236c5d3b77d718a95dc473d5310b6409f`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c07e2605a67c98552fd4b161a30f3284223c3fe89d2241475e7c3c9152305e`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 3.0 KB (3025 bytes)  
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
$ docker pull solr@sha256:4c3ae735c6b857b7b350d8b1d554cf02f3b8d21173221f6c719a581cf44be89f
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203032381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3378ebf56ef66d87c3ea5a8cf92a534e30b6b7171f34c9e987df8975d1fe7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:09:54 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 20 Jun 2017 01:09:54 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 20 Jun 2017 01:09:55 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 20 Jun 2017 01:09:56 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 20 Jun 2017 01:10:26 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:11:03 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:11:15 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:11:16 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:11:17 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:11:41 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:11:42 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:11:43 GMT
USER [solr]
# Tue, 20 Jun 2017 01:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:12:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af69cf923319c120690cd9f8d49394f12893aee89d0aa20a17a386887ef5ba52`  
		Last Modified: Sun, 25 Jun 2017 01:13:23 GMT  
		Size: 6.6 KB (6598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670104c801f7bee7158a4f6719db7082fdc2814b9465cb1f40186e85effcf88c`  
		Last Modified: Sun, 25 Jun 2017 01:13:36 GMT  
		Size: 140.6 MB (140556034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475176162f7cfce6a792c5a91ea362455ced66d420799b3fca97fa8dde6047`  
		Last Modified: Sun, 25 Jun 2017 01:13:24 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0872a130d4ae4d9680baf527cbba7592120654659e1289813edd5db57e25a0`  
		Last Modified: Sun, 25 Jun 2017 01:13:23 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:4c3ae735c6b857b7b350d8b1d554cf02f3b8d21173221f6c719a581cf44be89f
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203032381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3378ebf56ef66d87c3ea5a8cf92a534e30b6b7171f34c9e987df8975d1fe7bea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:09:54 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 20 Jun 2017 01:09:54 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 20 Jun 2017 01:09:55 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 20 Jun 2017 01:09:56 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 20 Jun 2017 01:10:26 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:11:03 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:11:15 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:11:16 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:11:17 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:11:41 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:11:42 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:11:43 GMT
USER [solr]
# Tue, 20 Jun 2017 01:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:12:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af69cf923319c120690cd9f8d49394f12893aee89d0aa20a17a386887ef5ba52`  
		Last Modified: Sun, 25 Jun 2017 01:13:23 GMT  
		Size: 6.6 KB (6598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670104c801f7bee7158a4f6719db7082fdc2814b9465cb1f40186e85effcf88c`  
		Last Modified: Sun, 25 Jun 2017 01:13:36 GMT  
		Size: 140.6 MB (140556034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f475176162f7cfce6a792c5a91ea362455ced66d420799b3fca97fa8dde6047`  
		Last Modified: Sun, 25 Jun 2017 01:13:24 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0872a130d4ae4d9680baf527cbba7592120654659e1289813edd5db57e25a0`  
		Last Modified: Sun, 25 Jun 2017 01:13:23 GMT  
		Size: 3.0 KB (3024 bytes)  
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
$ docker pull solr@sha256:1ab57edbb3ba715a43d96a6e4fc6e6129cadfd56d70aacd506e5a9f525665825
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204022927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fd0eaa44d25b3be4d0b9bc47935250caadca827df495671c7e548a20ac34bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:12:55 GMT
ENV SOLR_VERSION=6.4.2
# Tue, 20 Jun 2017 01:12:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Tue, 20 Jun 2017 01:12:57 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Tue, 20 Jun 2017 01:12:57 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Tue, 20 Jun 2017 01:13:24 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:14:04 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:14:18 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:14:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:14:43 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:14:44 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:14:45 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:15:08 GMT
USER [solr]
# Tue, 20 Jun 2017 01:15:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:15:10 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ed2e44d98036f79eee8b4703bcaffacf20b926871fa5c1ae69287920f1086b`  
		Last Modified: Sun, 25 Jun 2017 01:15:48 GMT  
		Size: 7.2 KB (7159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed01f11c0e32ca7b3e251f2a241e44b64be2d3cb593c7c694aad2f3595b6987`  
		Last Modified: Sun, 25 Jun 2017 01:16:00 GMT  
		Size: 141.5 MB (141546018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be084e393663c0d02095f92ac2ea36c3838f057322e38083886fee0b0379387`  
		Last Modified: Sun, 25 Jun 2017 01:15:47 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82cd040e2b8cbf7f0bfe1d8c6f6dac2eece709d62c892a26572e3b96a43d05`  
		Last Modified: Sun, 25 Jun 2017 01:15:47 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:1ab57edbb3ba715a43d96a6e4fc6e6129cadfd56d70aacd506e5a9f525665825
```

-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204022927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fd0eaa44d25b3be4d0b9bc47935250caadca827df495671c7e548a20ac34bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:12:55 GMT
ENV SOLR_VERSION=6.4.2
# Tue, 20 Jun 2017 01:12:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Tue, 20 Jun 2017 01:12:57 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Tue, 20 Jun 2017 01:12:57 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Tue, 20 Jun 2017 01:13:24 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:14:04 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:14:18 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:14:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:14:43 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:14:44 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:14:45 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:15:08 GMT
USER [solr]
# Tue, 20 Jun 2017 01:15:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:15:10 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ed2e44d98036f79eee8b4703bcaffacf20b926871fa5c1ae69287920f1086b`  
		Last Modified: Sun, 25 Jun 2017 01:15:48 GMT  
		Size: 7.2 KB (7159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed01f11c0e32ca7b3e251f2a241e44b64be2d3cb593c7c694aad2f3595b6987`  
		Last Modified: Sun, 25 Jun 2017 01:16:00 GMT  
		Size: 141.5 MB (141546018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be084e393663c0d02095f92ac2ea36c3838f057322e38083886fee0b0379387`  
		Last Modified: Sun, 25 Jun 2017 01:15:47 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82cd040e2b8cbf7f0bfe1d8c6f6dac2eece709d62c892a26572e3b96a43d05`  
		Last Modified: Sun, 25 Jun 2017 01:15:47 GMT  
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
$ docker pull solr@sha256:9b15f01c8f34db9ccc5b54b7d5b28333a89a9730ed4a369e3c6ddac97f261fdf
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211283109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f26fca9bfb3cecdaa0c906cd9d9550d2e3a47a590803154a0878d036cce7660`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:15:58 GMT
ENV SOLR_VERSION=6.5.1
# Tue, 20 Jun 2017 01:15:59 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Tue, 20 Jun 2017 01:16:00 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Tue, 20 Jun 2017 01:16:24 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Tue, 20 Jun 2017 01:16:28 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:17:06 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:17:17 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:17:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:17:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:17:43 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:17:44 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:17:45 GMT
USER [solr]
# Tue, 20 Jun 2017 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:18:09 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e9d6cf9209ea1ff9b8cdad959c1955695c9b432028ad3c3afc05a921533b50`  
		Last Modified: Sun, 25 Jun 2017 01:18:15 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f16b29a872b7fb963b0dc6a4631ceda24367e7b3c6a4f0ef4c6c2c8b8387741`  
		Last Modified: Sun, 25 Jun 2017 01:18:27 GMT  
		Size: 148.8 MB (148805606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551154f15b3053707a28d74e1f83162b01eddd25511fd163cdfe67f2a8290d10`  
		Last Modified: Sun, 25 Jun 2017 01:18:15 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27622168ce344a14603afd022baea23fa3e3f4214a3a25a1d6aaa420b90a081c`  
		Last Modified: Sun, 25 Jun 2017 01:18:15 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5-alpine`

```console
$ docker pull solr@sha256:9b15f01c8f34db9ccc5b54b7d5b28333a89a9730ed4a369e3c6ddac97f261fdf
```

-	Platforms:
	-	linux; amd64

### `solr:6.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211283109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f26fca9bfb3cecdaa0c906cd9d9550d2e3a47a590803154a0878d036cce7660`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:15:58 GMT
ENV SOLR_VERSION=6.5.1
# Tue, 20 Jun 2017 01:15:59 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Tue, 20 Jun 2017 01:16:00 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Tue, 20 Jun 2017 01:16:24 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Tue, 20 Jun 2017 01:16:28 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:17:06 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:17:17 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:17:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:17:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:17:43 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:17:44 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:17:45 GMT
USER [solr]
# Tue, 20 Jun 2017 01:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:18:09 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e9d6cf9209ea1ff9b8cdad959c1955695c9b432028ad3c3afc05a921533b50`  
		Last Modified: Sun, 25 Jun 2017 01:18:15 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f16b29a872b7fb963b0dc6a4631ceda24367e7b3c6a4f0ef4c6c2c8b8387741`  
		Last Modified: Sun, 25 Jun 2017 01:18:27 GMT  
		Size: 148.8 MB (148805606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551154f15b3053707a28d74e1f83162b01eddd25511fd163cdfe67f2a8290d10`  
		Last Modified: Sun, 25 Jun 2017 01:18:15 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27622168ce344a14603afd022baea23fa3e3f4214a3a25a1d6aaa420b90a081c`  
		Last Modified: Sun, 25 Jun 2017 01:18:15 GMT  
		Size: 3.0 KB (3023 bytes)  
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
$ docker pull solr@sha256:4fda1b219f8be8b39fb1d760450587fcd8799a64996ec9742719eaca8da147f0
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282422351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99cb7b2a536bd6a4b89bfce2151e16f37d0188f2bfd01c278b4f5848692acac4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 May 2017 00:49:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 17 May 2017 00:49:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 17 May 2017 00:49:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 00:49:37 GMT
ENV SOLR_USER=solr
# Wed, 17 May 2017 00:49:38 GMT
ENV SOLR_UID=8983
# Wed, 07 Jun 2017 19:08:45 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 07 Jun 2017 19:16:04 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 07 Jun 2017 19:16:05 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 07 Jun 2017 19:16:05 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 07 Jun 2017 19:16:06 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 07 Jun 2017 19:16:08 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 07 Jun 2017 19:16:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 07 Jun 2017 19:16:25 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 07 Jun 2017 19:16:26 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 07 Jun 2017 19:16:27 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Jun 2017 19:16:28 GMT
EXPOSE 8983/tcp
# Wed, 07 Jun 2017 19:16:29 GMT
WORKDIR /opt/solr
# Wed, 07 Jun 2017 19:16:29 GMT
USER [solr]
# Wed, 07 Jun 2017 19:16:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Jun 2017 19:16:31 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10c5d5a5823ea0372d5211bb83916b45e939435fdfa71756affd129aba5bf50`  
		Last Modified: Wed, 17 May 2017 00:53:04 GMT  
		Size: 10.1 MB (10100681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b474b9f394731835f947daeb6b2860b272b324a71f108d28ba87b5888930da7e`  
		Last Modified: Wed, 07 Jun 2017 19:17:53 GMT  
		Size: 4.7 KB (4659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900a68eddec49b19f2042f30e281dcd0502f5ee14632b2f0f425bf51cc8f5dd3`  
		Last Modified: Wed, 07 Jun 2017 19:29:37 GMT  
		Size: 7.4 KB (7415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee3d015d1c5c11b99826c1584d93ef087a18a12732890f731eacd2d16b806aa`  
		Last Modified: Wed, 07 Jun 2017 19:29:52 GMT  
		Size: 145.5 MB (145509558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63597213903b3ce955b15e757c94e623b4f4947bf1314112ad4904c433aa9f`  
		Last Modified: Wed, 07 Jun 2017 19:29:37 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf580f69ccfa26e8ea185388113f955ea996fdaa5bab47045599b97ab32fcf7`  
		Last Modified: Wed, 07 Jun 2017 19:29:38 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.0-alpine`

```console
$ docker pull solr@sha256:c3c32193bc6e7c3019fb3a7b3e6332f72a9b56a07a29a17ff15ab1a65c589ee6
```

-	Platforms:
	-	linux; amd64

### `solr:6.6.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0565b13e887faae507bb97aa8530d6161a9e6c83922d7cdb13b3f0751465de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:18:57 GMT
ENV SOLR_VERSION=6.6.0
# Tue, 20 Jun 2017 01:18:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Tue, 20 Jun 2017 01:18:59 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Tue, 20 Jun 2017 01:19:00 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Tue, 20 Jun 2017 01:19:27 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:20:10 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:20:18 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:20:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:20:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:20:44 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:20:45 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:20:46 GMT
USER [solr]
# Tue, 20 Jun 2017 01:21:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:21:11 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694c498e453403a5bb3e6edeb83e9fe26785e5051cc782ccea5f14dc79aafb96`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 7.2 KB (7159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40c2acde3875d0402ab7b79203384df03f66e90290a1e57349ebb50aa9ef4fe`  
		Last Modified: Sun, 25 Jun 2017 01:21:46 GMT  
		Size: 145.5 MB (145509637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ad7693e35101eec18271bfde206538d04e4d5cb56cca0b3ab51e60f45dd6ef`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f84795e6828eb92de832d53eb8da70fe2e3fa3da67dc4e600be3ad5f7592f14`  
		Last Modified: Sun, 25 Jun 2017 01:21:34 GMT  
		Size: 3.0 KB (3021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6-alpine`

```console
$ docker pull solr@sha256:c3c32193bc6e7c3019fb3a7b3e6332f72a9b56a07a29a17ff15ab1a65c589ee6
```

-	Platforms:
	-	linux; amd64

### `solr:6.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0565b13e887faae507bb97aa8530d6161a9e6c83922d7cdb13b3f0751465de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:18:57 GMT
ENV SOLR_VERSION=6.6.0
# Tue, 20 Jun 2017 01:18:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Tue, 20 Jun 2017 01:18:59 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Tue, 20 Jun 2017 01:19:00 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Tue, 20 Jun 2017 01:19:27 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:20:10 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:20:18 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:20:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:20:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:20:44 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:20:45 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:20:46 GMT
USER [solr]
# Tue, 20 Jun 2017 01:21:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:21:11 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694c498e453403a5bb3e6edeb83e9fe26785e5051cc782ccea5f14dc79aafb96`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 7.2 KB (7159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40c2acde3875d0402ab7b79203384df03f66e90290a1e57349ebb50aa9ef4fe`  
		Last Modified: Sun, 25 Jun 2017 01:21:46 GMT  
		Size: 145.5 MB (145509637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ad7693e35101eec18271bfde206538d04e4d5cb56cca0b3ab51e60f45dd6ef`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f84795e6828eb92de832d53eb8da70fe2e3fa3da67dc4e600be3ad5f7592f14`  
		Last Modified: Sun, 25 Jun 2017 01:21:34 GMT  
		Size: 3.0 KB (3021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:c3c32193bc6e7c3019fb3a7b3e6332f72a9b56a07a29a17ff15ab1a65c589ee6
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0565b13e887faae507bb97aa8530d6161a9e6c83922d7cdb13b3f0751465de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:18:57 GMT
ENV SOLR_VERSION=6.6.0
# Tue, 20 Jun 2017 01:18:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Tue, 20 Jun 2017 01:18:59 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Tue, 20 Jun 2017 01:19:00 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Tue, 20 Jun 2017 01:19:27 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:20:10 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:20:18 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:20:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:20:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:20:44 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:20:45 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:20:46 GMT
USER [solr]
# Tue, 20 Jun 2017 01:21:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:21:11 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694c498e453403a5bb3e6edeb83e9fe26785e5051cc782ccea5f14dc79aafb96`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 7.2 KB (7159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40c2acde3875d0402ab7b79203384df03f66e90290a1e57349ebb50aa9ef4fe`  
		Last Modified: Sun, 25 Jun 2017 01:21:46 GMT  
		Size: 145.5 MB (145509637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ad7693e35101eec18271bfde206538d04e4d5cb56cca0b3ab51e60f45dd6ef`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f84795e6828eb92de832d53eb8da70fe2e3fa3da67dc4e600be3ad5f7592f14`  
		Last Modified: Sun, 25 Jun 2017 01:21:34 GMT  
		Size: 3.0 KB (3021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:c3c32193bc6e7c3019fb3a7b3e6332f72a9b56a07a29a17ff15ab1a65c589ee6
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0565b13e887faae507bb97aa8530d6161a9e6c83922d7cdb13b3f0751465de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 01:06:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 20 Jun 2017 01:06:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 20 Jun 2017 01:06:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 20 Jun 2017 01:07:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 20 Jun 2017 01:07:27 GMT
ENV SOLR_USER=solr
# Tue, 20 Jun 2017 01:07:28 GMT
ENV SOLR_UID=8983
# Tue, 20 Jun 2017 01:07:30 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Tue, 20 Jun 2017 01:18:57 GMT
ENV SOLR_VERSION=6.6.0
# Tue, 20 Jun 2017 01:18:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Tue, 20 Jun 2017 01:18:59 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Tue, 20 Jun 2017 01:19:00 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Tue, 20 Jun 2017 01:19:27 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 20 Jun 2017 01:20:10 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Jun 2017 01:20:18 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Tue, 20 Jun 2017 01:20:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Jun 2017 01:20:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 01:20:44 GMT
EXPOSE 8983/tcp
# Tue, 20 Jun 2017 01:20:45 GMT
WORKDIR /opt/solr
# Tue, 20 Jun 2017 01:20:46 GMT
USER [solr]
# Tue, 20 Jun 2017 01:21:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:21:11 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc52fe268e792cf9d75404280d4ea902adc9d2bb451f8a205ee3f2c80f580d`  
		Last Modified: Sun, 25 Jun 2017 01:10:38 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295483e377181efd1bab4fd5213d71a0710b52014de0b44add2eb1b7bafb57d7`  
		Last Modified: Sun, 25 Jun 2017 01:10:34 GMT  
		Size: 622.7 KB (622662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237ad5deadab30482cbefeab9b289a1a0be807caf9bd7e03988a431c5eef6de`  
		Last Modified: Sun, 25 Jun 2017 01:10:33 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694c498e453403a5bb3e6edeb83e9fe26785e5051cc782ccea5f14dc79aafb96`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 7.2 KB (7159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40c2acde3875d0402ab7b79203384df03f66e90290a1e57349ebb50aa9ef4fe`  
		Last Modified: Sun, 25 Jun 2017 01:21:46 GMT  
		Size: 145.5 MB (145509637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ad7693e35101eec18271bfde206538d04e4d5cb56cca0b3ab51e60f45dd6ef`  
		Last Modified: Sun, 25 Jun 2017 01:21:35 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f84795e6828eb92de832d53eb8da70fe2e3fa3da67dc4e600be3ad5f7592f14`  
		Last Modified: Sun, 25 Jun 2017 01:21:34 GMT  
		Size: 3.0 KB (3021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
