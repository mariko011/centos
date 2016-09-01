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
-	[`solr:5.5.2`](#solr552)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.2-alpine`](#solr552-alpine)
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
$ docker pull solr@sha256:fe277fab2720ec2557e2917d244d26d7e419e45095728dc98b988b1ad51b3800
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269171856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0bf80c1098aa6466fa7de84af55a0581dc7ded4bc349b9069608a4737b7aa6`
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
# Wed, 31 Aug 2016 21:36:59 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:37:00 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:37:00 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:37:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:37:01 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:37:01 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:37:01 GMT
USER [solr]
# Wed, 31 Aug 2016 21:37:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:37:02 GMT
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
	-	`sha256:4e35330ca052157909d1c531cf3fa8144945a133592485c7276a0b234005acfa`  
		Last Modified: Wed, 31 Aug 2016 21:37:22 GMT  
		Size: 134.9 MB (134926909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d7f5ac8b6261ec9a3a3ecf6295dd70e15d47b77cd1da4422cbe186b3546d2f`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af17e9f4d604e1fd477d47f16963a36b2a9697e1d0c59c5464f23d8a50bf4c90`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3`

```console
$ docker pull solr@sha256:fe277fab2720ec2557e2917d244d26d7e419e45095728dc98b988b1ad51b3800
```

-	Platforms:
	-	linux; amd64

### `solr:5.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269171856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0bf80c1098aa6466fa7de84af55a0581dc7ded4bc349b9069608a4737b7aa6`
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
# Wed, 31 Aug 2016 21:36:59 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:37:00 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:37:00 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:37:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:37:01 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:37:01 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:37:01 GMT
USER [solr]
# Wed, 31 Aug 2016 21:37:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:37:02 GMT
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
	-	`sha256:4e35330ca052157909d1c531cf3fa8144945a133592485c7276a0b234005acfa`  
		Last Modified: Wed, 31 Aug 2016 21:37:22 GMT  
		Size: 134.9 MB (134926909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d7f5ac8b6261ec9a3a3ecf6295dd70e15d47b77cd1da4422cbe186b3546d2f`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af17e9f4d604e1fd477d47f16963a36b2a9697e1d0c59c5464f23d8a50bf4c90`  
		Last Modified: Wed, 31 Aug 2016 21:37:07 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3.2-alpine`

```console
$ docker pull solr@sha256:e74666944c31d1229d27c2fa5a998f272bffeeb3288b40e14b159ed2bdc1cbb6
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182250013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4435fa76519c18747324e9f1b5635f06bd63c3d328bc63294ce8bd7f91b3ba9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:20 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 30 Aug 2016 23:15:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:30 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 30 Aug 2016 23:15:48 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:15:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:15:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:15:50 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:15:50 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:15:51 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:15:51 GMT
USER [solr]
# Tue, 30 Aug 2016 23:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:15:52 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7ef1841e1b359d6cdb32dc1e3dd748564a63e8d75928c081961322851a79ea`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 7.6 KB (7644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fae23590a58aed0313b5728dde21b562d58979eeaa0a6d011d03820994030a9`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ca29ba5771ad827426f21a1cd1f374d9e49ac2286d0c67e963f75bb1720b9e`  
		Last Modified: Tue, 30 Aug 2016 23:21:19 GMT  
		Size: 134.9 MB (134926786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec8419a5273c46f173630592376a0e457d7c3283e2ef24793dfe870d598f90`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b096018fca920ffc1ee8ba7e57de481c5925eb4cb9288bcb9db7fde78c998`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3-alpine`

```console
$ docker pull solr@sha256:e74666944c31d1229d27c2fa5a998f272bffeeb3288b40e14b159ed2bdc1cbb6
```

-	Platforms:
	-	linux; amd64

### `solr:5.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182250013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4435fa76519c18747324e9f1b5635f06bd63c3d328bc63294ce8bd7f91b3ba9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:20 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 30 Aug 2016 23:15:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:30 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 30 Aug 2016 23:15:48 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:15:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:15:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:15:50 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:15:50 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:15:51 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:15:51 GMT
USER [solr]
# Tue, 30 Aug 2016 23:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:15:52 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7ef1841e1b359d6cdb32dc1e3dd748564a63e8d75928c081961322851a79ea`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 7.6 KB (7644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fae23590a58aed0313b5728dde21b562d58979eeaa0a6d011d03820994030a9`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ca29ba5771ad827426f21a1cd1f374d9e49ac2286d0c67e963f75bb1720b9e`  
		Last Modified: Tue, 30 Aug 2016 23:21:19 GMT  
		Size: 134.9 MB (134926786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec8419a5273c46f173630592376a0e457d7c3283e2ef24793dfe870d598f90`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b096018fca920ffc1ee8ba7e57de481c5925eb4cb9288bcb9db7fde78c998`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1`

```console
$ docker pull solr@sha256:8fd22edd3d20746cae9c6d40e3556a525a2eeee20f3b3ffbb6b103675bd45724
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270561205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b21ea420fdc8024c6c45dac0186029bd1e3ac4eef583ec00b13b71e2c01ab15`
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
# Wed, 31 Aug 2016 21:41:34 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:41:35 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:41:36 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:41:36 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:41:36 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:41:37 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:41:37 GMT
USER [solr]
# Wed, 31 Aug 2016 21:41:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:41:37 GMT
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
	-	`sha256:0f443a1754fa894ae1917594a058f603df05427bd0364ffacbdf45cf8f9f3c2f`  
		Last Modified: Wed, 31 Aug 2016 21:41:56 GMT  
		Size: 136.3 MB (136316821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf9f9ff3fd5b73852bec5fd79d80a6189f860274529b91141670b4d6306f4a3`  
		Last Modified: Wed, 31 Aug 2016 21:41:43 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932eb6323de98f8b409ab08a89dd3a98810dd0db54c253d1e66bac173fce0cc6`  
		Last Modified: Wed, 31 Aug 2016 21:41:44 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4`

```console
$ docker pull solr@sha256:8fd22edd3d20746cae9c6d40e3556a525a2eeee20f3b3ffbb6b103675bd45724
```

-	Platforms:
	-	linux; amd64

### `solr:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270561205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b21ea420fdc8024c6c45dac0186029bd1e3ac4eef583ec00b13b71e2c01ab15`
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
# Wed, 31 Aug 2016 21:41:34 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:41:35 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:41:36 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:41:36 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:41:36 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:41:37 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:41:37 GMT
USER [solr]
# Wed, 31 Aug 2016 21:41:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:41:37 GMT
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
	-	`sha256:0f443a1754fa894ae1917594a058f603df05427bd0364ffacbdf45cf8f9f3c2f`  
		Last Modified: Wed, 31 Aug 2016 21:41:56 GMT  
		Size: 136.3 MB (136316821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf9f9ff3fd5b73852bec5fd79d80a6189f860274529b91141670b4d6306f4a3`  
		Last Modified: Wed, 31 Aug 2016 21:41:43 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932eb6323de98f8b409ab08a89dd3a98810dd0db54c253d1e66bac173fce0cc6`  
		Last Modified: Wed, 31 Aug 2016 21:41:44 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1-alpine`

```console
$ docker pull solr@sha256:454a4c7a003cf7196f121b5b2ea14dcd0c2d294fd454eb2b8d016bc3e69d5e10
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183639355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aa0f293f64d7e54cccf31f7caa28e80288db305554be7de3d3c8e72b4d2c0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 30 Aug 2016 23:16:42 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:16:43 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:16:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:16:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:16:44 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:16:45 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:16:45 GMT
USER [solr]
# Tue, 30 Aug 2016 23:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:16:45 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6893388eb97c9686372fe25d1e8aed936a9e2c84df8b96d2084dbbe1603b00cd`  
		Last Modified: Tue, 30 Aug 2016 23:22:48 GMT  
		Size: 136.3 MB (136316688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27793b28a46508a1163262436e46738d20057635a270abc78a054c4cd4c060a2`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085922445a43c903ad7223930c9db3ed32dfaf82518dac437a474d7b43f6312d`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4-alpine`

```console
$ docker pull solr@sha256:454a4c7a003cf7196f121b5b2ea14dcd0c2d294fd454eb2b8d016bc3e69d5e10
```

-	Platforms:
	-	linux; amd64

### `solr:5.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183639355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aa0f293f64d7e54cccf31f7caa28e80288db305554be7de3d3c8e72b4d2c0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 30 Aug 2016 23:16:42 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:16:43 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:16:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:16:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:16:44 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:16:45 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:16:45 GMT
USER [solr]
# Tue, 30 Aug 2016 23:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:16:45 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6893388eb97c9686372fe25d1e8aed936a9e2c84df8b96d2084dbbe1603b00cd`  
		Last Modified: Tue, 30 Aug 2016 23:22:48 GMT  
		Size: 136.3 MB (136316688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27793b28a46508a1163262436e46738d20057635a270abc78a054c4cd4c060a2`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085922445a43c903ad7223930c9db3ed32dfaf82518dac437a474d7b43f6312d`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.2`

```console
$ docker pull solr@sha256:08b55512623f825ed5356620774b09b59e9c4793e202b1cfc32a2f453a88187e
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271056599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3171e609f58cc7daf59446ac24b5837a6ac979d72487dae846fe853fddfd8bf1`
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
# Wed, 31 Aug 2016 21:42:30 GMT
ENV SOLR_VERSION=5.5.2
# Wed, 31 Aug 2016 21:42:30 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Wed, 31 Aug 2016 21:42:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Wed, 31 Aug 2016 21:42:48 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:42:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:42:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:42:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:42:51 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:42:51 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:42:52 GMT
USER [solr]
# Wed, 31 Aug 2016 21:42:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:42:52 GMT
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
	-	`sha256:8b6cf919fe13d42e031545c7f5c63bf59487129c2533f612a0d23891b92a80ff`  
		Last Modified: Wed, 31 Aug 2016 21:43:11 GMT  
		Size: 136.8 MB (136805043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37548a5b1401a2e88909b14588cb18745f4ebb879d847fff218d70739c8bb98`  
		Last Modified: Wed, 31 Aug 2016 21:42:59 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bd07f29e15d0ff312d2639b032c7aecf33da8183ed621edaa0e1bd035989b8`  
		Last Modified: Wed, 31 Aug 2016 21:42:58 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:08b55512623f825ed5356620774b09b59e9c4793e202b1cfc32a2f453a88187e
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271056599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3171e609f58cc7daf59446ac24b5837a6ac979d72487dae846fe853fddfd8bf1`
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
# Wed, 31 Aug 2016 21:42:30 GMT
ENV SOLR_VERSION=5.5.2
# Wed, 31 Aug 2016 21:42:30 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Wed, 31 Aug 2016 21:42:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Wed, 31 Aug 2016 21:42:48 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:42:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:42:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:42:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:42:51 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:42:51 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:42:52 GMT
USER [solr]
# Wed, 31 Aug 2016 21:42:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:42:52 GMT
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
	-	`sha256:8b6cf919fe13d42e031545c7f5c63bf59487129c2533f612a0d23891b92a80ff`  
		Last Modified: Wed, 31 Aug 2016 21:43:11 GMT  
		Size: 136.8 MB (136805043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37548a5b1401a2e88909b14588cb18745f4ebb879d847fff218d70739c8bb98`  
		Last Modified: Wed, 31 Aug 2016 21:42:59 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bd07f29e15d0ff312d2639b032c7aecf33da8183ed621edaa0e1bd035989b8`  
		Last Modified: Wed, 31 Aug 2016 21:42:58 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:08b55512623f825ed5356620774b09b59e9c4793e202b1cfc32a2f453a88187e
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271056599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3171e609f58cc7daf59446ac24b5837a6ac979d72487dae846fe853fddfd8bf1`
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
# Wed, 31 Aug 2016 21:42:30 GMT
ENV SOLR_VERSION=5.5.2
# Wed, 31 Aug 2016 21:42:30 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Wed, 31 Aug 2016 21:42:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Wed, 31 Aug 2016 21:42:48 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:42:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:42:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:42:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:42:51 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:42:51 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:42:52 GMT
USER [solr]
# Wed, 31 Aug 2016 21:42:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:42:52 GMT
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
	-	`sha256:8b6cf919fe13d42e031545c7f5c63bf59487129c2533f612a0d23891b92a80ff`  
		Last Modified: Wed, 31 Aug 2016 21:43:11 GMT  
		Size: 136.8 MB (136805043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37548a5b1401a2e88909b14588cb18745f4ebb879d847fff218d70739c8bb98`  
		Last Modified: Wed, 31 Aug 2016 21:42:59 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bd07f29e15d0ff312d2639b032c7aecf33da8183ed621edaa0e1bd035989b8`  
		Last Modified: Wed, 31 Aug 2016 21:42:58 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.2-alpine`

```console
$ docker pull solr@sha256:b78d2c49468c6694cbbf7348020722574cea515fb4297684ea06662a4cbda01b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184134659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a382b339a9825b1fa0c0f68dddd08145827243a05957cf9509ffaddc3d30330c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:35 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:36 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:17:37 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:37 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:38 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512a3526b71feac330314b16e781d1c4691fc9019a708baa715c1f9971a198b`  
		Last Modified: Tue, 30 Aug 2016 23:24:18 GMT  
		Size: 136.8 MB (136804947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945859d4697077e2027f6f5ab87e1ba546a1ad880681e51218113cca15cc851d`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19235a078887134ea8d6ea10105336f3f97d017afc7ba59293ec5c9c327a0acc`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:b78d2c49468c6694cbbf7348020722574cea515fb4297684ea06662a4cbda01b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184134659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a382b339a9825b1fa0c0f68dddd08145827243a05957cf9509ffaddc3d30330c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:35 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:36 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:17:37 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:37 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:38 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512a3526b71feac330314b16e781d1c4691fc9019a708baa715c1f9971a198b`  
		Last Modified: Tue, 30 Aug 2016 23:24:18 GMT  
		Size: 136.8 MB (136804947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945859d4697077e2027f6f5ab87e1ba546a1ad880681e51218113cca15cc851d`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19235a078887134ea8d6ea10105336f3f97d017afc7ba59293ec5c9c327a0acc`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:b78d2c49468c6694cbbf7348020722574cea515fb4297684ea06662a4cbda01b
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184134659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a382b339a9825b1fa0c0f68dddd08145827243a05957cf9509ffaddc3d30330c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:35 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:36 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:17:37 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:37 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:38 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512a3526b71feac330314b16e781d1c4691fc9019a708baa715c1f9971a198b`  
		Last Modified: Tue, 30 Aug 2016 23:24:18 GMT  
		Size: 136.8 MB (136804947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945859d4697077e2027f6f5ab87e1ba546a1ad880681e51218113cca15cc851d`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19235a078887134ea8d6ea10105336f3f97d017afc7ba59293ec5c9c327a0acc`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1`

```console
$ docker pull solr@sha256:ff52e1bf6817e32600c0ca8ef8446c925d4cda66f5121189e326e2d567028f27
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272160078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7eab4a86e002e0e1dc9d829843b7174b07bef0914174261e099f803cb9b2503`
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
# Wed, 31 Aug 2016 21:44:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:44:18 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:44:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:44:19 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:44:20 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:44:20 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:44:20 GMT
USER [solr]
# Wed, 31 Aug 2016 21:44:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:44:21 GMT
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
	-	`sha256:7480863371460f2bfd30a261efe40bf61c3ad2fb94f5d7ce890b3ad218789779`  
		Last Modified: Wed, 31 Aug 2016 21:44:41 GMT  
		Size: 137.9 MB (137908528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4298ebc1c9d262866a39f6ce7f7b4375affeadfea3508166e3bfb572aa257a8`  
		Last Modified: Wed, 31 Aug 2016 21:44:26 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7af24608849390c4d571100e882da385ab82bb177470089f1e03f7f7235fe7`  
		Last Modified: Wed, 31 Aug 2016 21:44:26 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0`

```console
$ docker pull solr@sha256:ff52e1bf6817e32600c0ca8ef8446c925d4cda66f5121189e326e2d567028f27
```

-	Platforms:
	-	linux; amd64

### `solr:6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272160078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7eab4a86e002e0e1dc9d829843b7174b07bef0914174261e099f803cb9b2503`
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
# Wed, 31 Aug 2016 21:44:18 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:44:18 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:44:19 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:44:19 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:44:20 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:44:20 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:44:20 GMT
USER [solr]
# Wed, 31 Aug 2016 21:44:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:44:21 GMT
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
	-	`sha256:7480863371460f2bfd30a261efe40bf61c3ad2fb94f5d7ce890b3ad218789779`  
		Last Modified: Wed, 31 Aug 2016 21:44:41 GMT  
		Size: 137.9 MB (137908528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4298ebc1c9d262866a39f6ce7f7b4375affeadfea3508166e3bfb572aa257a8`  
		Last Modified: Wed, 31 Aug 2016 21:44:26 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7af24608849390c4d571100e882da385ab82bb177470089f1e03f7f7235fe7`  
		Last Modified: Wed, 31 Aug 2016 21:44:26 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1-alpine`

```console
$ docker pull solr@sha256:2055a0a223c991fdc0cc4a8ab2231acca9f90b91d7cf02cda8eb3d3f8c386be9
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185238188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eecf47d24329ade25461afd5c26ba3f618573c6f0a718415cb39a9d53201159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 30 Aug 2016 23:18:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 30 Aug 2016 23:18:20 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:18:20 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:18:21 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:18:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:18:21 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:18:22 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:22 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:22 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443610640a366b4a4f81185e3cbc39f9ae978af674d5966a897403507732c4b`  
		Last Modified: Tue, 30 Aug 2016 23:26:03 GMT  
		Size: 137.9 MB (137908475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e678ea084d5eddb4e6bf1e038c6b90c92586db3b6c730809d0e23148b7a18436`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e44efa3e4ed4b0399462d75b220de697c398df61d8f9969f147fea0e48a6abc`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0-alpine`

```console
$ docker pull solr@sha256:2055a0a223c991fdc0cc4a8ab2231acca9f90b91d7cf02cda8eb3d3f8c386be9
```

-	Platforms:
	-	linux; amd64

### `solr:6.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185238188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eecf47d24329ade25461afd5c26ba3f618573c6f0a718415cb39a9d53201159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 30 Aug 2016 23:18:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 30 Aug 2016 23:18:20 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:18:20 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:18:21 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:18:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:18:21 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:18:22 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:22 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:22 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443610640a366b4a4f81185e3cbc39f9ae978af674d5966a897403507732c4b`  
		Last Modified: Tue, 30 Aug 2016 23:26:03 GMT  
		Size: 137.9 MB (137908475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e678ea084d5eddb4e6bf1e038c6b90c92586db3b6c730809d0e23148b7a18436`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e44efa3e4ed4b0399462d75b220de697c398df61d8f9969f147fea0e48a6abc`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0`

```console
$ docker pull solr@sha256:b74abd92a36df4ebef88edc73b5a4664923fa015a6675391178066293877a749
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273075361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c73997d007ec07823a226816ffc3e375a5a233756d81ab2bbbda2e075fa1a9`
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
# Wed, 31 Aug 2016 21:45:34 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:45:35 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:45:35 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:45:36 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:45:36 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:45:36 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:45:36 GMT
USER [solr]
# Wed, 31 Aug 2016 21:45:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:45:37 GMT
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
	-	`sha256:7e2d91b84609b0be8add13d2da8c5ab4d66ac4d16820b381894568fd1fcc0675`  
		Last Modified: Wed, 31 Aug 2016 21:45:57 GMT  
		Size: 138.8 MB (138830982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495dc46e91e2bdf39ba606e9aab0a2584682d6cabe1f99df5f67a5b2eaed4344`  
		Last Modified: Wed, 31 Aug 2016 21:45:43 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f7b493ce7ce69485c1771f2710ec6295a12c01a4f7b983e4e84b11de78d16`  
		Last Modified: Wed, 31 Aug 2016 21:45:42 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1`

```console
$ docker pull solr@sha256:b74abd92a36df4ebef88edc73b5a4664923fa015a6675391178066293877a749
```

-	Platforms:
	-	linux; amd64

### `solr:6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273075361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c73997d007ec07823a226816ffc3e375a5a233756d81ab2bbbda2e075fa1a9`
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
# Wed, 31 Aug 2016 21:45:34 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:45:35 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:45:35 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:45:36 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:45:36 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:45:36 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:45:36 GMT
USER [solr]
# Wed, 31 Aug 2016 21:45:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:45:37 GMT
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
	-	`sha256:7e2d91b84609b0be8add13d2da8c5ab4d66ac4d16820b381894568fd1fcc0675`  
		Last Modified: Wed, 31 Aug 2016 21:45:57 GMT  
		Size: 138.8 MB (138830982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495dc46e91e2bdf39ba606e9aab0a2584682d6cabe1f99df5f67a5b2eaed4344`  
		Last Modified: Wed, 31 Aug 2016 21:45:43 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f7b493ce7ce69485c1771f2710ec6295a12c01a4f7b983e4e84b11de78d16`  
		Last Modified: Wed, 31 Aug 2016 21:45:42 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0-alpine`

```console
$ docker pull solr@sha256:5dd839271e98cfa9a52cffe50b6799f0370509f6184f2efa6c886e03df60e1e2
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186153163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ccbbfbe4ac939d8e51aaa0c910588ce3b1c063b8ee0ca3745cb83472db08ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 30 Aug 2016 23:18:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 30 Aug 2016 23:19:02 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:03 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:04 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:19:05 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:05 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:05 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:06 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17da63a5903810adf9fc0c684824f1f232ee298c93cd4902677050a4cbf5802`  
		Last Modified: Tue, 30 Aug 2016 23:27:31 GMT  
		Size: 138.8 MB (138830490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9df3fb7c4ac7a958925773293b5c9612496a4fe21bea9048622ca9b1f7921a8`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bcd0f64c10b42db3d4b414c27f637a067f1c74a644b34c1022b2f56e917603`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1-alpine`

```console
$ docker pull solr@sha256:5dd839271e98cfa9a52cffe50b6799f0370509f6184f2efa6c886e03df60e1e2
```

-	Platforms:
	-	linux; amd64

### `solr:6.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186153163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ccbbfbe4ac939d8e51aaa0c910588ce3b1c063b8ee0ca3745cb83472db08ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 30 Aug 2016 23:18:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 30 Aug 2016 23:19:02 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:03 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:04 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:19:05 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:05 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:05 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:06 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17da63a5903810adf9fc0c684824f1f232ee298c93cd4902677050a4cbf5802`  
		Last Modified: Tue, 30 Aug 2016 23:27:31 GMT  
		Size: 138.8 MB (138830490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9df3fb7c4ac7a958925773293b5c9612496a4fe21bea9048622ca9b1f7921a8`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bcd0f64c10b42db3d4b414c27f637a067f1c74a644b34c1022b2f56e917603`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.0`

```console
$ docker pull solr@sha256:367c8c8d8ef3346d865e602f2fe2e4ea12ec1ed6a6226d8080a42a4f0575ed96
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283273754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237b9bf8f803110f357c79573b22d3fc89764e727429e9bc4e4041c757c259ee`
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
# Wed, 31 Aug 2016 21:39:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:39:29 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:39:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:39:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:39:31 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:39:31 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:39:31 GMT
USER [solr]
# Wed, 31 Aug 2016 21:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:39:32 GMT
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
	-	`sha256:4b167e6caed7951fcf7dbfd433b65cb1222e5635ca7ea3d5477844d17c2a3804`  
		Last Modified: Wed, 31 Aug 2016 21:39:52 GMT  
		Size: 149.0 MB (149029299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e60d222d686eec4b145097441c105ec60d213a5efe078724c437a13f76276`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce9e8e96a6b191db1c99fa56a5daae3d47bbacb9f1624e9fe93568082522c13`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2`

```console
$ docker pull solr@sha256:367c8c8d8ef3346d865e602f2fe2e4ea12ec1ed6a6226d8080a42a4f0575ed96
```

-	Platforms:
	-	linux; amd64

### `solr:6.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283273754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237b9bf8f803110f357c79573b22d3fc89764e727429e9bc4e4041c757c259ee`
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
# Wed, 31 Aug 2016 21:39:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:39:29 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:39:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:39:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:39:31 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:39:31 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:39:31 GMT
USER [solr]
# Wed, 31 Aug 2016 21:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:39:32 GMT
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
	-	`sha256:4b167e6caed7951fcf7dbfd433b65cb1222e5635ca7ea3d5477844d17c2a3804`  
		Last Modified: Wed, 31 Aug 2016 21:39:52 GMT  
		Size: 149.0 MB (149029299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e60d222d686eec4b145097441c105ec60d213a5efe078724c437a13f76276`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce9e8e96a6b191db1c99fa56a5daae3d47bbacb9f1624e9fe93568082522c13`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:367c8c8d8ef3346d865e602f2fe2e4ea12ec1ed6a6226d8080a42a4f0575ed96
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283273754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237b9bf8f803110f357c79573b22d3fc89764e727429e9bc4e4041c757c259ee`
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
# Wed, 31 Aug 2016 21:39:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:39:29 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:39:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:39:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:39:31 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:39:31 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:39:31 GMT
USER [solr]
# Wed, 31 Aug 2016 21:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:39:32 GMT
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
	-	`sha256:4b167e6caed7951fcf7dbfd433b65cb1222e5635ca7ea3d5477844d17c2a3804`  
		Last Modified: Wed, 31 Aug 2016 21:39:52 GMT  
		Size: 149.0 MB (149029299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e60d222d686eec4b145097441c105ec60d213a5efe078724c437a13f76276`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce9e8e96a6b191db1c99fa56a5daae3d47bbacb9f1624e9fe93568082522c13`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:367c8c8d8ef3346d865e602f2fe2e4ea12ec1ed6a6226d8080a42a4f0575ed96
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283273754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237b9bf8f803110f357c79573b22d3fc89764e727429e9bc4e4041c757c259ee`
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
# Wed, 31 Aug 2016 21:39:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 31 Aug 2016 21:39:29 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Wed, 31 Aug 2016 21:39:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 31 Aug 2016 21:39:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:39:31 GMT
EXPOSE 8983/tcp
# Wed, 31 Aug 2016 21:39:31 GMT
WORKDIR /opt/solr
# Wed, 31 Aug 2016 21:39:31 GMT
USER [solr]
# Wed, 31 Aug 2016 21:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:39:32 GMT
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
	-	`sha256:4b167e6caed7951fcf7dbfd433b65cb1222e5635ca7ea3d5477844d17c2a3804`  
		Last Modified: Wed, 31 Aug 2016 21:39:52 GMT  
		Size: 149.0 MB (149029299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e60d222d686eec4b145097441c105ec60d213a5efe078724c437a13f76276`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce9e8e96a6b191db1c99fa56a5daae3d47bbacb9f1624e9fe93568082522c13`  
		Last Modified: Wed, 31 Aug 2016 21:39:37 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.0-alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2-alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:6.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
