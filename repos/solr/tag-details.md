<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5.3.2`](#solr532)
-	[`solr:5.3`](#solr53)
-	[`solr:5.3.2-alpine`](#solr532-alpine)
-	[`solr:5.3-alpine`](#solr53-alpine)
-	[`solr:5.4.1`](#solr541)
-	[`solr:5.4`](#solr54)
-	[`solr:5.4.1-alpine`](#solr541-alpine)
-	[`solr:5.4-alpine`](#solr54-alpine)
-	[`solr:5.5.3`](#solr553)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.3-alpine`](#solr553-alpine)
-	[`solr:5.5-alpine`](#solr55-alpine)
-	[`solr:5-alpine`](#solr5-alpine)
-	[`solr:6.0.1`](#solr601)
-	[`solr:6.0`](#solr60)
-	[`solr:6.0.1-alpine`](#solr601-alpine)
-	[`solr:6.0-alpine`](#solr60-alpine)
-	[`solr:6.1.0`](#solr610)
-	[`solr:6.1`](#solr61)
-	[`solr:6.1.0-alpine`](#solr610-alpine)
-	[`solr:6.1-alpine`](#solr61-alpine)
-	[`solr:6.2.0`](#solr620)
-	[`solr:6.2`](#solr62)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.2.0-alpine`](#solr620-alpine)
-	[`solr:6.2-alpine`](#solr62-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.3.2`

```console
$ docker pull solr@sha256:897d8d55d8b23776ea77fd9aad0d358f74e2576b9bc27c02a31ae1bb250e66c5
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264369043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8644ac936241268071b5e4017ca012fb50aa31be5e9c8e8ba10fa50c8573d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:36:39 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 31 Aug 2016 21:36:39 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:36:41 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:36:41 GMT
ENV SOLR_VERSION=5.3.2
# Wed, 31 Aug 2016 21:36:42 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Wed, 31 Aug 2016 21:36:42 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Fri, 09 Sep 2016 21:32:06 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:32:06 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:32:07 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:32:07 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:32:08 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:32:08 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:32:08 GMT
USER [solr]
# Fri, 09 Sep 2016 21:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:32:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76162fcfac67bee3570ed6267de3689f752fe8a6c27ce43d600c073f0460d55`  
		Last Modified: Wed, 31 Aug 2016 21:37:08 GMT  
		Size: 8.0 KB (7960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459292262ad288c3c0d0d65ad0e7dc06b40ba264cc730a1943f23fd82b31f350`  
		Last Modified: Fri, 09 Sep 2016 21:36:00 GMT  
		Size: 130.1 MB (130124094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ce2cede33cba6f43bb67880b94a8a225430bd679677ca00b00d0bf002ff1b`  
		Last Modified: Fri, 09 Sep 2016 21:35:48 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8925534dacbfbfc91021ac7ff97cf38021addccdc59fd327ad19abae653a1d`  
		Last Modified: Fri, 09 Sep 2016 21:35:48 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3`

```console
$ docker pull solr@sha256:897d8d55d8b23776ea77fd9aad0d358f74e2576b9bc27c02a31ae1bb250e66c5
```

-	Platforms:
	-	linux; amd64

### `solr:5.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264369043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8644ac936241268071b5e4017ca012fb50aa31be5e9c8e8ba10fa50c8573d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:36:39 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 31 Aug 2016 21:36:39 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:36:41 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:36:41 GMT
ENV SOLR_VERSION=5.3.2
# Wed, 31 Aug 2016 21:36:42 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Wed, 31 Aug 2016 21:36:42 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Fri, 09 Sep 2016 21:32:06 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:32:06 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:32:07 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:32:07 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:32:08 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:32:08 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:32:08 GMT
USER [solr]
# Fri, 09 Sep 2016 21:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:32:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76162fcfac67bee3570ed6267de3689f752fe8a6c27ce43d600c073f0460d55`  
		Last Modified: Wed, 31 Aug 2016 21:37:08 GMT  
		Size: 8.0 KB (7960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459292262ad288c3c0d0d65ad0e7dc06b40ba264cc730a1943f23fd82b31f350`  
		Last Modified: Fri, 09 Sep 2016 21:36:00 GMT  
		Size: 130.1 MB (130124094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ce2cede33cba6f43bb67880b94a8a225430bd679677ca00b00d0bf002ff1b`  
		Last Modified: Fri, 09 Sep 2016 21:35:48 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8925534dacbfbfc91021ac7ff97cf38021addccdc59fd327ad19abae653a1d`  
		Last Modified: Fri, 09 Sep 2016 21:35:48 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3.2-alpine`

```console
$ docker pull solr@sha256:73346c9e94bed9aadeba9ca2c58ae2f09f5d8bbd92d8df3f2110f041fe9ea1db
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177447899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1487dbe74ca384ebf40434859ec3f0cd3839d3d47ac1408ca20302c3a527def8`
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
# Tue, 20 Sep 2016 02:51:37 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 20 Sep 2016 02:51:37 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 20 Sep 2016 02:51:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 20 Sep 2016 02:51:57 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:51:58 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:51:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:51:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:51:59 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:52:00 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:52:00 GMT
USER [solr]
# Tue, 20 Sep 2016 02:52:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:52:01 GMT
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
	-	`sha256:fe4c8eafc3db5e4de5c1e550dfac708c6922b6ee802591a93ae097fcfc8ed05f`  
		Last Modified: Tue, 20 Sep 2016 02:52:32 GMT  
		Size: 130.1 MB (130123926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aa90bd4b789695fbd7d9b326c358ad4a175fb5accb0d8789f02fc4da6ce5e4`  
		Last Modified: Tue, 20 Sep 2016 02:52:09 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c94da07fe75856ed7157f4f431bad7937fd67fd701ecf5cbaa7278ff2eb1945`  
		Last Modified: Tue, 20 Sep 2016 02:52:09 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3-alpine`

```console
$ docker pull solr@sha256:73346c9e94bed9aadeba9ca2c58ae2f09f5d8bbd92d8df3f2110f041fe9ea1db
```

-	Platforms:
	-	linux; amd64

### `solr:5.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177447899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1487dbe74ca384ebf40434859ec3f0cd3839d3d47ac1408ca20302c3a527def8`
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
# Tue, 20 Sep 2016 02:51:37 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 20 Sep 2016 02:51:37 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 20 Sep 2016 02:51:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 20 Sep 2016 02:51:57 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:51:58 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:51:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:51:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:51:59 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:52:00 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:52:00 GMT
USER [solr]
# Tue, 20 Sep 2016 02:52:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:52:01 GMT
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
	-	`sha256:fe4c8eafc3db5e4de5c1e550dfac708c6922b6ee802591a93ae097fcfc8ed05f`  
		Last Modified: Tue, 20 Sep 2016 02:52:32 GMT  
		Size: 130.1 MB (130123926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aa90bd4b789695fbd7d9b326c358ad4a175fb5accb0d8789f02fc4da6ce5e4`  
		Last Modified: Tue, 20 Sep 2016 02:52:09 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c94da07fe75856ed7157f4f431bad7937fd67fd701ecf5cbaa7278ff2eb1945`  
		Last Modified: Tue, 20 Sep 2016 02:52:09 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1`

```console
$ docker pull solr@sha256:9a9b65b00c72e2a24e662ab4762142e1588dbad8f9eab1974c8498175cb91b01
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265692981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837242802c9dcf4538a171da281b0eda74c98953e03bcb860f27b678abb31d13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:41:07 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 31 Aug 2016 21:41:07 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:41:09 GMT
ENV SOLR_VERSION=5.4.1
# Wed, 31 Aug 2016 21:41:09 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Wed, 31 Aug 2016 21:41:10 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Fri, 09 Sep 2016 21:32:46 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:32:46 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:32:47 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:32:48 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:32:48 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:32:48 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:32:48 GMT
USER [solr]
# Fri, 09 Sep 2016 21:32:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:32:49 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fed1e1d5709fd7eb36545d7d60c556039792f8fa14032b5dc04bea61a469789`  
		Last Modified: Wed, 31 Aug 2016 21:41:44 GMT  
		Size: 7.4 KB (7391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a978918ee233ae1be473765b6470739326b377a1e6f0a00a5b3c945eea200d`  
		Last Modified: Fri, 09 Sep 2016 21:37:18 GMT  
		Size: 131.4 MB (131448600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fcfc60a644461cfab05e020d450694804fc9f9e9ca4be0eec1b0b9e42378ed`  
		Last Modified: Fri, 09 Sep 2016 21:37:05 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66303a86ac868b3b276a256d0b4bd9af61f35ae8914e77627705880e6b9a78f7`  
		Last Modified: Fri, 09 Sep 2016 21:37:07 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4`

```console
$ docker pull solr@sha256:9a9b65b00c72e2a24e662ab4762142e1588dbad8f9eab1974c8498175cb91b01
```

-	Platforms:
	-	linux; amd64

### `solr:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265692981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837242802c9dcf4538a171da281b0eda74c98953e03bcb860f27b678abb31d13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:41:07 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 31 Aug 2016 21:41:07 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:41:09 GMT
ENV SOLR_VERSION=5.4.1
# Wed, 31 Aug 2016 21:41:09 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Wed, 31 Aug 2016 21:41:10 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Fri, 09 Sep 2016 21:32:46 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:32:46 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:32:47 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:32:48 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:32:48 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:32:48 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:32:48 GMT
USER [solr]
# Fri, 09 Sep 2016 21:32:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:32:49 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fed1e1d5709fd7eb36545d7d60c556039792f8fa14032b5dc04bea61a469789`  
		Last Modified: Wed, 31 Aug 2016 21:41:44 GMT  
		Size: 7.4 KB (7391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a978918ee233ae1be473765b6470739326b377a1e6f0a00a5b3c945eea200d`  
		Last Modified: Fri, 09 Sep 2016 21:37:18 GMT  
		Size: 131.4 MB (131448600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fcfc60a644461cfab05e020d450694804fc9f9e9ca4be0eec1b0b9e42378ed`  
		Last Modified: Fri, 09 Sep 2016 21:37:05 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66303a86ac868b3b276a256d0b4bd9af61f35ae8914e77627705880e6b9a78f7`  
		Last Modified: Fri, 09 Sep 2016 21:37:07 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1-alpine`

```console
$ docker pull solr@sha256:5e8d92210934cb3e00ea6b1360261c929f8e81da838c339afbef7f47cee07d64
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178771945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3480dee380477627671195ea36b6879818bfc0a64821b9f801bd2158ee6c7fb`
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
# Tue, 20 Sep 2016 02:54:32 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 20 Sep 2016 02:54:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:54:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:54:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:54:45 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 20 Sep 2016 02:54:45 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 20 Sep 2016 02:54:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 20 Sep 2016 02:55:05 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:55:05 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:55:06 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:55:07 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:55:07 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:55:07 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:55:08 GMT
USER [solr]
# Tue, 20 Sep 2016 02:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:55:09 GMT
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
	-	`sha256:4e863036578e6942356d21df95bdd6e3f106db1b4d19c27547feb8f91ebb64d0`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db82797d7cc7255c04326be6c4bf0c5078e3f321d58a12e39774167317cef50`  
		Last Modified: Tue, 20 Sep 2016 02:55:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7736242cfcd8278fbb39e43d2c74e4de5e5225f8daba0e53c9034e0e5175e0`  
		Last Modified: Tue, 20 Sep 2016 02:55:33 GMT  
		Size: 131.4 MB (131448530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86340879f277bd5ea6bc57be4ac88bd31aeef3a54e5c326a4f40aebe68543906`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbeabcfad676a88b49ef816b6e682150f726f76d1c09d20f31a5b087b396ea2`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4-alpine`

```console
$ docker pull solr@sha256:5e8d92210934cb3e00ea6b1360261c929f8e81da838c339afbef7f47cee07d64
```

-	Platforms:
	-	linux; amd64

### `solr:5.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178771945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3480dee380477627671195ea36b6879818bfc0a64821b9f801bd2158ee6c7fb`
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
# Tue, 20 Sep 2016 02:54:32 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 20 Sep 2016 02:54:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:54:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:54:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:54:45 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 20 Sep 2016 02:54:45 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 20 Sep 2016 02:54:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 20 Sep 2016 02:55:05 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:55:05 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:55:06 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:55:07 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:55:07 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:55:07 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:55:08 GMT
USER [solr]
# Tue, 20 Sep 2016 02:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:55:09 GMT
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
	-	`sha256:4e863036578e6942356d21df95bdd6e3f106db1b4d19c27547feb8f91ebb64d0`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db82797d7cc7255c04326be6c4bf0c5078e3f321d58a12e39774167317cef50`  
		Last Modified: Tue, 20 Sep 2016 02:55:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7736242cfcd8278fbb39e43d2c74e4de5e5225f8daba0e53c9034e0e5175e0`  
		Last Modified: Tue, 20 Sep 2016 02:55:33 GMT  
		Size: 131.4 MB (131448530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86340879f277bd5ea6bc57be4ac88bd31aeef3a54e5c326a4f40aebe68543906`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbeabcfad676a88b49ef816b6e682150f726f76d1c09d20f31a5b087b396ea2`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3`

```console
$ docker pull solr@sha256:fca5c6b0a6621574447396e8e1f583434c97ace418f2972fd1cc2a72128c65cd
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266089346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343d0e4b48b66597497005361d67ecea0ad706bf98aa647b6b919b004278d4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:36:39 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 31 Aug 2016 21:36:39 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:36:41 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 09 Sep 2016 21:33:08 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 09 Sep 2016 21:33:09 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 09 Sep 2016 21:33:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 09 Sep 2016 21:33:24 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:33:24 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:33:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:33:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:33:25 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:33:26 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:33:26 GMT
USER [solr]
# Fri, 09 Sep 2016 21:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:33:27 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76162fcfac67bee3570ed6267de3689f752fe8a6c27ce43d600c073f0460d55`  
		Last Modified: Wed, 31 Aug 2016 21:37:08 GMT  
		Size: 8.0 KB (7960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfb18c509ae644b8e92bceac7b8827a86811ca30fbf8d51b35e7a675360aab`  
		Last Modified: Fri, 09 Sep 2016 21:38:25 GMT  
		Size: 131.8 MB (131844396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366a6c00c57fc2e9e7959f4126ece71a06d742d1447a82c4fe99eb84c08c1622`  
		Last Modified: Fri, 09 Sep 2016 21:38:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a4ece22f63affacc4b538520b5864ef37cb376fe460803b49f4f76d1ce0d0c`  
		Last Modified: Fri, 09 Sep 2016 21:38:14 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:fca5c6b0a6621574447396e8e1f583434c97ace418f2972fd1cc2a72128c65cd
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266089346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343d0e4b48b66597497005361d67ecea0ad706bf98aa647b6b919b004278d4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:36:39 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 31 Aug 2016 21:36:39 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:36:41 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 09 Sep 2016 21:33:08 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 09 Sep 2016 21:33:09 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 09 Sep 2016 21:33:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 09 Sep 2016 21:33:24 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:33:24 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:33:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:33:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:33:25 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:33:26 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:33:26 GMT
USER [solr]
# Fri, 09 Sep 2016 21:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:33:27 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76162fcfac67bee3570ed6267de3689f752fe8a6c27ce43d600c073f0460d55`  
		Last Modified: Wed, 31 Aug 2016 21:37:08 GMT  
		Size: 8.0 KB (7960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfb18c509ae644b8e92bceac7b8827a86811ca30fbf8d51b35e7a675360aab`  
		Last Modified: Fri, 09 Sep 2016 21:38:25 GMT  
		Size: 131.8 MB (131844396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366a6c00c57fc2e9e7959f4126ece71a06d742d1447a82c4fe99eb84c08c1622`  
		Last Modified: Fri, 09 Sep 2016 21:38:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a4ece22f63affacc4b538520b5864ef37cb376fe460803b49f4f76d1ce0d0c`  
		Last Modified: Fri, 09 Sep 2016 21:38:14 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:fca5c6b0a6621574447396e8e1f583434c97ace418f2972fd1cc2a72128c65cd
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266089346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343d0e4b48b66597497005361d67ecea0ad706bf98aa647b6b919b004278d4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:36:39 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 31 Aug 2016 21:36:39 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:36:41 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 09 Sep 2016 21:33:08 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 09 Sep 2016 21:33:09 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 09 Sep 2016 21:33:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 09 Sep 2016 21:33:24 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:33:24 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:33:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:33:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:33:25 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:33:26 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:33:26 GMT
USER [solr]
# Fri, 09 Sep 2016 21:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:33:27 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76162fcfac67bee3570ed6267de3689f752fe8a6c27ce43d600c073f0460d55`  
		Last Modified: Wed, 31 Aug 2016 21:37:08 GMT  
		Size: 8.0 KB (7960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfb18c509ae644b8e92bceac7b8827a86811ca30fbf8d51b35e7a675360aab`  
		Last Modified: Fri, 09 Sep 2016 21:38:25 GMT  
		Size: 131.8 MB (131844396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366a6c00c57fc2e9e7959f4126ece71a06d742d1447a82c4fe99eb84c08c1622`  
		Last Modified: Fri, 09 Sep 2016 21:38:14 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a4ece22f63affacc4b538520b5864ef37cb376fe460803b49f4f76d1ce0d0c`  
		Last Modified: Fri, 09 Sep 2016 21:38:14 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3-alpine`

```console
$ docker pull solr@sha256:36f946f7fb9deb06cef61f711cf6e16e3ad37dde0a1459d351812de213f9b9c5
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3-alpine` - linux; amd64

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

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:36f946f7fb9deb06cef61f711cf6e16e3ad37dde0a1459d351812de213f9b9c5
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

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

## `solr:6.0.1`

```console
$ docker pull solr@sha256:ad4bd9e8b354343636c216117636db234a3bd190916f6ceffd67c67ecb302b0d
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267038628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3b6727e6735caf598f221040b66312e2f50595cd1a04d5c76ab931e9aa10bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:42:28 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Wed, 31 Aug 2016 21:42:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:42:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:43:59 GMT
ENV SOLR_VERSION=6.0.1
# Wed, 31 Aug 2016 21:43:59 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Wed, 31 Aug 2016 21:44:00 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Fri, 09 Sep 2016 21:34:01 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:34:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:34:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:34:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:34:03 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:34:03 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:34:03 GMT
USER [solr]
# Fri, 09 Sep 2016 21:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:34:04 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6baf155dc45e9c98c9156b51c64baa14adab7a28246b888e23563bc53834c`  
		Last Modified: Wed, 31 Aug 2016 21:42:58 GMT  
		Size: 14.6 KB (14564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9f9baf049824725a7aebd26294efeb6c409d95fae1ec668f3417cfcf5cb91e`  
		Last Modified: Fri, 09 Sep 2016 21:39:47 GMT  
		Size: 132.8 MB (132787072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3c18fe616cc2045fa419c1e04428bc8c3d30d41e1c59a814e11cbbac6c3e5`  
		Last Modified: Fri, 09 Sep 2016 21:39:39 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0f4e6901ecb8b63cb9eeaf8b722e7881b459c6176a7f76de388d126fe1c707`  
		Last Modified: Fri, 09 Sep 2016 21:39:39 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0`

```console
$ docker pull solr@sha256:ad4bd9e8b354343636c216117636db234a3bd190916f6ceffd67c67ecb302b0d
```

-	Platforms:
	-	linux; amd64

### `solr:6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267038628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3b6727e6735caf598f221040b66312e2f50595cd1a04d5c76ab931e9aa10bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:42:28 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Wed, 31 Aug 2016 21:42:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:42:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:43:59 GMT
ENV SOLR_VERSION=6.0.1
# Wed, 31 Aug 2016 21:43:59 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Wed, 31 Aug 2016 21:44:00 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Fri, 09 Sep 2016 21:34:01 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:34:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:34:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:34:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:34:03 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:34:03 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:34:03 GMT
USER [solr]
# Fri, 09 Sep 2016 21:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:34:04 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6baf155dc45e9c98c9156b51c64baa14adab7a28246b888e23563bc53834c`  
		Last Modified: Wed, 31 Aug 2016 21:42:58 GMT  
		Size: 14.6 KB (14564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9f9baf049824725a7aebd26294efeb6c409d95fae1ec668f3417cfcf5cb91e`  
		Last Modified: Fri, 09 Sep 2016 21:39:47 GMT  
		Size: 132.8 MB (132787072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3c18fe616cc2045fa419c1e04428bc8c3d30d41e1c59a814e11cbbac6c3e5`  
		Last Modified: Fri, 09 Sep 2016 21:39:39 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0f4e6901ecb8b63cb9eeaf8b722e7881b459c6176a7f76de388d126fe1c707`  
		Last Modified: Fri, 09 Sep 2016 21:39:39 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1-alpine`

```console
$ docker pull solr@sha256:2bb469eabfb424ab01efcdf249cb57e4a7c4726140164d62e5c0322b408672ac
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180117509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceec3c3a0d597773df8e2b7701801d1ac7ffd94cb0667573704e25889450cd6f`
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
# Tue, 20 Sep 2016 02:57:10 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 20 Sep 2016 02:57:15 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:57:15 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:57:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:57:18 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 20 Sep 2016 02:57:19 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 20 Sep 2016 02:57:19 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 20 Sep 2016 02:57:38 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:57:38 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:57:39 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:57:40 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:57:40 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:57:40 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:57:41 GMT
USER [solr]
# Tue, 20 Sep 2016 02:57:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:57:41 GMT
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
	-	`sha256:9d2ccbc359e58f361016a975ffbbadc0977888b323fb7ee1eab8ee211628a176`  
		Last Modified: Tue, 20 Sep 2016 02:57:50 GMT  
		Size: 14.1 KB (14125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f095cd5111e4f8d71e4d41df2343ebd5d30a26093aff867c30359b30233c04`  
		Last Modified: Tue, 20 Sep 2016 02:57:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a79f202411449320dbcb131fe69b74a7ff8702e898f182ec543ba7b4d47e84`  
		Last Modified: Tue, 20 Sep 2016 02:58:50 GMT  
		Size: 132.8 MB (132787058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9a9a6c3eeae3cba757f3bd782c58a91913951f6a51296d66bae73939fc207d`  
		Last Modified: Tue, 20 Sep 2016 02:57:49 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c65f2993d8f6b426d96bd6f85f9094730674fc6b71739de65823038c94b035`  
		Last Modified: Tue, 20 Sep 2016 02:57:49 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0-alpine`

```console
$ docker pull solr@sha256:2bb469eabfb424ab01efcdf249cb57e4a7c4726140164d62e5c0322b408672ac
```

-	Platforms:
	-	linux; amd64

### `solr:6.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180117509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceec3c3a0d597773df8e2b7701801d1ac7ffd94cb0667573704e25889450cd6f`
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
# Tue, 20 Sep 2016 02:57:10 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 20 Sep 2016 02:57:15 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:57:15 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:57:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:57:18 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 20 Sep 2016 02:57:19 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 20 Sep 2016 02:57:19 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 20 Sep 2016 02:57:38 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:57:38 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:57:39 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:57:40 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:57:40 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:57:40 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:57:41 GMT
USER [solr]
# Tue, 20 Sep 2016 02:57:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:57:41 GMT
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
	-	`sha256:9d2ccbc359e58f361016a975ffbbadc0977888b323fb7ee1eab8ee211628a176`  
		Last Modified: Tue, 20 Sep 2016 02:57:50 GMT  
		Size: 14.1 KB (14125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f095cd5111e4f8d71e4d41df2343ebd5d30a26093aff867c30359b30233c04`  
		Last Modified: Tue, 20 Sep 2016 02:57:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a79f202411449320dbcb131fe69b74a7ff8702e898f182ec543ba7b4d47e84`  
		Last Modified: Tue, 20 Sep 2016 02:58:50 GMT  
		Size: 132.8 MB (132787058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9a9a6c3eeae3cba757f3bd782c58a91913951f6a51296d66bae73939fc207d`  
		Last Modified: Tue, 20 Sep 2016 02:57:49 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c65f2993d8f6b426d96bd6f85f9094730674fc6b71739de65823038c94b035`  
		Last Modified: Tue, 20 Sep 2016 02:57:49 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0`

```console
$ docker pull solr@sha256:afed27532f983e5aefec25f99ded25b9e21acf261db3fd954051217ff6980e78
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267737514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec4ac53d52a0b37675b1d356a12b5d6995b3556d317ac42aaaea59f276591ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:41:07 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 31 Aug 2016 21:41:07 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:45:16 GMT
ENV SOLR_VERSION=6.1.0
# Wed, 31 Aug 2016 21:45:16 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Wed, 31 Aug 2016 21:45:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Fri, 09 Sep 2016 21:34:39 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:34:40 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:34:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:34:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:34:41 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:34:41 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:34:42 GMT
USER [solr]
# Fri, 09 Sep 2016 21:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:34:42 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fed1e1d5709fd7eb36545d7d60c556039792f8fa14032b5dc04bea61a469789`  
		Last Modified: Wed, 31 Aug 2016 21:41:44 GMT  
		Size: 7.4 KB (7391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1cf64c4fdc8a9eafe20c6d2bc02a03d8c12d40cdd56d160cc2c6a8bd2bab38`  
		Last Modified: Fri, 09 Sep 2016 21:40:59 GMT  
		Size: 133.5 MB (133493138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31ac282f6ddcb4e97f7e3e1627cc7732636127140e4daa17ad7cf24625e918b`  
		Last Modified: Fri, 09 Sep 2016 21:40:47 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d02820b37301cb42014e365c9ad97764dcbc5447e79eff7f86cf0fde4a1b0a`  
		Last Modified: Fri, 09 Sep 2016 21:40:45 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1`

```console
$ docker pull solr@sha256:afed27532f983e5aefec25f99ded25b9e21acf261db3fd954051217ff6980e78
```

-	Platforms:
	-	linux; amd64

### `solr:6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267737514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec4ac53d52a0b37675b1d356a12b5d6995b3556d317ac42aaaea59f276591ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:41:07 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 31 Aug 2016 21:41:07 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:45:16 GMT
ENV SOLR_VERSION=6.1.0
# Wed, 31 Aug 2016 21:45:16 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Wed, 31 Aug 2016 21:45:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Fri, 09 Sep 2016 21:34:39 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:34:40 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:34:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:34:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:34:41 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:34:41 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:34:42 GMT
USER [solr]
# Fri, 09 Sep 2016 21:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:34:42 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fed1e1d5709fd7eb36545d7d60c556039792f8fa14032b5dc04bea61a469789`  
		Last Modified: Wed, 31 Aug 2016 21:41:44 GMT  
		Size: 7.4 KB (7391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1cf64c4fdc8a9eafe20c6d2bc02a03d8c12d40cdd56d160cc2c6a8bd2bab38`  
		Last Modified: Fri, 09 Sep 2016 21:40:59 GMT  
		Size: 133.5 MB (133493138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31ac282f6ddcb4e97f7e3e1627cc7732636127140e4daa17ad7cf24625e918b`  
		Last Modified: Fri, 09 Sep 2016 21:40:47 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d02820b37301cb42014e365c9ad97764dcbc5447e79eff7f86cf0fde4a1b0a`  
		Last Modified: Fri, 09 Sep 2016 21:40:45 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0-alpine`

```console
$ docker pull solr@sha256:059cf1e80a91032591f7b4278fca8334b302f59b66d51a1bf85aad9e4e3b654e
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180816467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be1d8ad422b10182bbfd4ec19bd39dffcaad1d02a45e2bf18bb793f197ab490`
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
# Tue, 20 Sep 2016 02:54:32 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 20 Sep 2016 02:54:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:54:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:54:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:59:19 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 20 Sep 2016 02:59:19 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 20 Sep 2016 02:59:20 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 20 Sep 2016 02:59:40 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:59:41 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:59:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:59:43 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:59:43 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:59:44 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:59:44 GMT
USER [solr]
# Tue, 20 Sep 2016 02:59:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:59:45 GMT
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
	-	`sha256:4e863036578e6942356d21df95bdd6e3f106db1b4d19c27547feb8f91ebb64d0`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db82797d7cc7255c04326be6c4bf0c5078e3f321d58a12e39774167317cef50`  
		Last Modified: Tue, 20 Sep 2016 02:55:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50879c6cef981977362f82c41d33544f443a2b46e8e720ca69d22db7c83e8d6a`  
		Last Modified: Tue, 20 Sep 2016 03:00:11 GMT  
		Size: 133.5 MB (133493050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab10f80739c3f10fe2e7df1eaaeb763e779222742b0584ffd149e10a06440d6`  
		Last Modified: Tue, 20 Sep 2016 02:59:53 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f87849c17162ebd1392ca8e2fa0bcb034ac2ee0eabaadded457d41911ebf837`  
		Last Modified: Tue, 20 Sep 2016 02:59:53 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1-alpine`

```console
$ docker pull solr@sha256:059cf1e80a91032591f7b4278fca8334b302f59b66d51a1bf85aad9e4e3b654e
```

-	Platforms:
	-	linux; amd64

### `solr:6.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180816467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be1d8ad422b10182bbfd4ec19bd39dffcaad1d02a45e2bf18bb793f197ab490`
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
# Tue, 20 Sep 2016 02:54:32 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 20 Sep 2016 02:54:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:54:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:54:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:59:19 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 20 Sep 2016 02:59:19 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 20 Sep 2016 02:59:20 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 20 Sep 2016 02:59:40 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:59:41 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:59:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:59:43 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:59:43 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:59:44 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:59:44 GMT
USER [solr]
# Tue, 20 Sep 2016 02:59:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:59:45 GMT
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
	-	`sha256:4e863036578e6942356d21df95bdd6e3f106db1b4d19c27547feb8f91ebb64d0`  
		Last Modified: Tue, 20 Sep 2016 02:55:16 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db82797d7cc7255c04326be6c4bf0c5078e3f321d58a12e39774167317cef50`  
		Last Modified: Tue, 20 Sep 2016 02:55:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50879c6cef981977362f82c41d33544f443a2b46e8e720ca69d22db7c83e8d6a`  
		Last Modified: Tue, 20 Sep 2016 03:00:11 GMT  
		Size: 133.5 MB (133493050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab10f80739c3f10fe2e7df1eaaeb763e779222742b0584ffd149e10a06440d6`  
		Last Modified: Tue, 20 Sep 2016 02:59:53 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f87849c17162ebd1392ca8e2fa0bcb034ac2ee0eabaadded457d41911ebf837`  
		Last Modified: Tue, 20 Sep 2016 02:59:53 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.0`

```console
$ docker pull solr@sha256:30e25d679ab1aa41b396335e2ed196d3f1264d92802596f65df46f7aa84346e0
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277787138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a4dce3e64a028eee3725387cf24a497554b1952cf8cfe81349b8d33f0d093f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:37:38 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Wed, 31 Aug 2016 21:37:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:37:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_VERSION=6.2.0
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Wed, 31 Aug 2016 21:37:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Fri, 09 Sep 2016 21:35:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:35:19 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:35:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:35:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:35:20 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:35:21 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:35:21 GMT
USER [solr]
# Fri, 09 Sep 2016 21:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:35:21 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f355802285ae19afd765f15cab70ae0dc2ba74c962ab7bdbb56c4a7682765`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 7.5 KB (7463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a82ea8c12634efbf58a62704b5744d2a41ab7d15a32ceae216b89d3d2e33bb`  
		Last Modified: Fri, 09 Sep 2016 21:42:12 GMT  
		Size: 143.5 MB (143542688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfacd42976e877ed524b7f5b5cc6db6b0a21a430ccbc75b49a3e2841e472aa6`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3578f95a02fdc382b385bacd3338f5345b0bae3aacd0b31b40e48e5e3c2bcf`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2`

```console
$ docker pull solr@sha256:30e25d679ab1aa41b396335e2ed196d3f1264d92802596f65df46f7aa84346e0
```

-	Platforms:
	-	linux; amd64

### `solr:6.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277787138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a4dce3e64a028eee3725387cf24a497554b1952cf8cfe81349b8d33f0d093f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:37:38 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Wed, 31 Aug 2016 21:37:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:37:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_VERSION=6.2.0
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Wed, 31 Aug 2016 21:37:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Fri, 09 Sep 2016 21:35:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:35:19 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:35:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:35:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:35:20 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:35:21 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:35:21 GMT
USER [solr]
# Fri, 09 Sep 2016 21:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:35:21 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f355802285ae19afd765f15cab70ae0dc2ba74c962ab7bdbb56c4a7682765`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 7.5 KB (7463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a82ea8c12634efbf58a62704b5744d2a41ab7d15a32ceae216b89d3d2e33bb`  
		Last Modified: Fri, 09 Sep 2016 21:42:12 GMT  
		Size: 143.5 MB (143542688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfacd42976e877ed524b7f5b5cc6db6b0a21a430ccbc75b49a3e2841e472aa6`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3578f95a02fdc382b385bacd3338f5345b0bae3aacd0b31b40e48e5e3c2bcf`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:30e25d679ab1aa41b396335e2ed196d3f1264d92802596f65df46f7aa84346e0
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277787138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a4dce3e64a028eee3725387cf24a497554b1952cf8cfe81349b8d33f0d093f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:37:38 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Wed, 31 Aug 2016 21:37:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:37:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_VERSION=6.2.0
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Wed, 31 Aug 2016 21:37:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Fri, 09 Sep 2016 21:35:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:35:19 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:35:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:35:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:35:20 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:35:21 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:35:21 GMT
USER [solr]
# Fri, 09 Sep 2016 21:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:35:21 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f355802285ae19afd765f15cab70ae0dc2ba74c962ab7bdbb56c4a7682765`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 7.5 KB (7463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a82ea8c12634efbf58a62704b5744d2a41ab7d15a32ceae216b89d3d2e33bb`  
		Last Modified: Fri, 09 Sep 2016 21:42:12 GMT  
		Size: 143.5 MB (143542688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfacd42976e877ed524b7f5b5cc6db6b0a21a430ccbc75b49a3e2841e472aa6`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3578f95a02fdc382b385bacd3338f5345b0bae3aacd0b31b40e48e5e3c2bcf`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:30e25d679ab1aa41b396335e2ed196d3f1264d92802596f65df46f7aa84346e0
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277787138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a4dce3e64a028eee3725387cf24a497554b1952cf8cfe81349b8d33f0d093f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:36:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 31 Aug 2016 21:36:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 31 Aug 2016 21:36:25 GMT
ARG GPG_KEYSERVER
# Wed, 31 Aug 2016 21:36:37 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:36:37 GMT
ENV SOLR_USER=solr
# Wed, 31 Aug 2016 21:36:38 GMT
ENV SOLR_UID=8983
# Wed, 31 Aug 2016 21:36:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 31 Aug 2016 21:37:38 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Wed, 31 Aug 2016 21:37:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 31 Aug 2016 21:37:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_VERSION=6.2.0
# Wed, 31 Aug 2016 21:37:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Wed, 31 Aug 2016 21:37:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Fri, 09 Sep 2016 21:35:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 09 Sep 2016 21:35:19 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Fri, 09 Sep 2016 21:35:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 09 Sep 2016 21:35:20 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Sep 2016 21:35:20 GMT
EXPOSE 8983/tcp
# Fri, 09 Sep 2016 21:35:21 GMT
WORKDIR /opt/solr
# Fri, 09 Sep 2016 21:35:21 GMT
USER [solr]
# Fri, 09 Sep 2016 21:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Sep 2016 21:35:21 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715bdfbd8ffa5329fa09aef7778a1dceb31f9a1c572996292149a7abae28fdda`  
		Last Modified: Wed, 31 Aug 2016 21:37:13 GMT  
		Size: 10.1 MB (10080093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552066d5c88ef25590d9190b5e2afd6dfa7680061bfea74fd74e29ebdf1dab53`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 4.6 KB (4634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f355802285ae19afd765f15cab70ae0dc2ba74c962ab7bdbb56c4a7682765`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 7.5 KB (7463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a82ea8c12634efbf58a62704b5744d2a41ab7d15a32ceae216b89d3d2e33bb`  
		Last Modified: Fri, 09 Sep 2016 21:42:12 GMT  
		Size: 143.5 MB (143542688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfacd42976e877ed524b7f5b5cc6db6b0a21a430ccbc75b49a3e2841e472aa6`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3578f95a02fdc382b385bacd3338f5345b0bae3aacd0b31b40e48e5e3c2bcf`  
		Last Modified: Fri, 09 Sep 2016 21:42:00 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.0-alpine`

```console
$ docker pull solr@sha256:ca455870dee06dfcf81f41c1dea8c19f94fbc704c588c5236b0998bbc9de230a
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190866071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dec4ed443be21a1cb92434a5d682c66feffdf39bb6cf616b8b9b9d5103e2f56`
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
# Tue, 20 Sep 2016 02:52:53 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 20 Sep 2016 02:52:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:52:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:53:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 20 Sep 2016 02:53:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 20 Sep 2016 02:53:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:53:22 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:53:23 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:53:23 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:53:24 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:53:24 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:53:24 GMT
USER [solr]
# Tue, 20 Sep 2016 02:53:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:53:25 GMT
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
	-	`sha256:46ae9326355f76934f6d5898b1318605bb036c3850dabf191cdd9e281787a267`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c497014b75bfdca0bca0d58096d570185cced94eaad32e4bb8ea5049406d6b`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20be23e49058f7f06023580f7d0bae7e28ccdc56a9383481cc7898abc92114d`  
		Last Modified: Tue, 20 Sep 2016 02:53:50 GMT  
		Size: 143.5 MB (143542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7366843748020ca1ec23a5be58cd017d02638241f34c75a6830de949940ad108`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f92c17269593616f5bc9b2a0b7b6f7c8c8e01df347faac51622fa96bb877bf`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2-alpine`

```console
$ docker pull solr@sha256:ca455870dee06dfcf81f41c1dea8c19f94fbc704c588c5236b0998bbc9de230a
```

-	Platforms:
	-	linux; amd64

### `solr:6.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190866071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dec4ed443be21a1cb92434a5d682c66feffdf39bb6cf616b8b9b9d5103e2f56`
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
# Tue, 20 Sep 2016 02:52:53 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 20 Sep 2016 02:52:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:52:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:53:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 20 Sep 2016 02:53:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 20 Sep 2016 02:53:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:53:22 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:53:23 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:53:23 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:53:24 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:53:24 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:53:24 GMT
USER [solr]
# Tue, 20 Sep 2016 02:53:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:53:25 GMT
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
	-	`sha256:46ae9326355f76934f6d5898b1318605bb036c3850dabf191cdd9e281787a267`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c497014b75bfdca0bca0d58096d570185cced94eaad32e4bb8ea5049406d6b`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20be23e49058f7f06023580f7d0bae7e28ccdc56a9383481cc7898abc92114d`  
		Last Modified: Tue, 20 Sep 2016 02:53:50 GMT  
		Size: 143.5 MB (143542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7366843748020ca1ec23a5be58cd017d02638241f34c75a6830de949940ad108`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f92c17269593616f5bc9b2a0b7b6f7c8c8e01df347faac51622fa96bb877bf`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:ca455870dee06dfcf81f41c1dea8c19f94fbc704c588c5236b0998bbc9de230a
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190866071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dec4ed443be21a1cb92434a5d682c66feffdf39bb6cf616b8b9b9d5103e2f56`
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
# Tue, 20 Sep 2016 02:52:53 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 20 Sep 2016 02:52:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:52:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:53:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 20 Sep 2016 02:53:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 20 Sep 2016 02:53:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:53:22 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:53:23 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:53:23 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:53:24 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:53:24 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:53:24 GMT
USER [solr]
# Tue, 20 Sep 2016 02:53:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:53:25 GMT
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
	-	`sha256:46ae9326355f76934f6d5898b1318605bb036c3850dabf191cdd9e281787a267`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c497014b75bfdca0bca0d58096d570185cced94eaad32e4bb8ea5049406d6b`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20be23e49058f7f06023580f7d0bae7e28ccdc56a9383481cc7898abc92114d`  
		Last Modified: Tue, 20 Sep 2016 02:53:50 GMT  
		Size: 143.5 MB (143542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7366843748020ca1ec23a5be58cd017d02638241f34c75a6830de949940ad108`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f92c17269593616f5bc9b2a0b7b6f7c8c8e01df347faac51622fa96bb877bf`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:ca455870dee06dfcf81f41c1dea8c19f94fbc704c588c5236b0998bbc9de230a
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190866071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dec4ed443be21a1cb92434a5d682c66feffdf39bb6cf616b8b9b9d5103e2f56`
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
# Tue, 20 Sep 2016 02:52:53 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 20 Sep 2016 02:52:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:52:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 20 Sep 2016 02:53:00 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 20 Sep 2016 02:53:01 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 20 Sep 2016 02:53:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 20 Sep 2016 02:53:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 20 Sep 2016 02:53:22 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 20 Sep 2016 02:53:23 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 20 Sep 2016 02:53:23 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 02:53:24 GMT
EXPOSE 8983/tcp
# Tue, 20 Sep 2016 02:53:24 GMT
WORKDIR /opt/solr
# Tue, 20 Sep 2016 02:53:24 GMT
USER [solr]
# Tue, 20 Sep 2016 02:53:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:53:25 GMT
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
	-	`sha256:46ae9326355f76934f6d5898b1318605bb036c3850dabf191cdd9e281787a267`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c497014b75bfdca0bca0d58096d570185cced94eaad32e4bb8ea5049406d6b`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20be23e49058f7f06023580f7d0bae7e28ccdc56a9383481cc7898abc92114d`  
		Last Modified: Tue, 20 Sep 2016 02:53:50 GMT  
		Size: 143.5 MB (143542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7366843748020ca1ec23a5be58cd017d02638241f34c75a6830de949940ad108`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f92c17269593616f5bc9b2a0b7b6f7c8c8e01df347faac51622fa96bb877bf`  
		Last Modified: Tue, 20 Sep 2016 02:53:33 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
