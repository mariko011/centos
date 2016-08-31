<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `neo4j`

-	[`neo4j:3.0.4`](#neo4j304)
-	[`neo4j:3.0`](#neo4j30)
-	[`neo4j:latest`](#neo4jlatest)
-	[`neo4j:3.0.4-enterprise`](#neo4j304-enterprise)
-	[`neo4j:3.0-enterprise`](#neo4j30-enterprise)
-	[`neo4j:enterprise`](#neo4jenterprise)
-	[`neo4j:3.0.3`](#neo4j303)
-	[`neo4j:3.0.3-enterprise`](#neo4j303-enterprise)
-	[`neo4j:3.0.2`](#neo4j302)
-	[`neo4j:3.0.2-enterprise`](#neo4j302-enterprise)
-	[`neo4j:3.0.1`](#neo4j301)
-	[`neo4j:3.0.1-enterprise`](#neo4j301-enterprise)
-	[`neo4j:3.0.0`](#neo4j300)
-	[`neo4j:3.0.0-enterprise`](#neo4j300-enterprise)
-	[`neo4j:2.3.6`](#neo4j236)
-	[`neo4j:2.3`](#neo4j23)
-	[`neo4j:2.3.6-enterprise`](#neo4j236-enterprise)
-	[`neo4j:2.3-enterprise`](#neo4j23-enterprise)
-	[`neo4j:2.3.5`](#neo4j235)
-	[`neo4j:2.3.5-enterprise`](#neo4j235-enterprise)
-	[`neo4j:2.3.4`](#neo4j234)
-	[`neo4j:2.3.4-enterprise`](#neo4j234-enterprise)
-	[`neo4j:2.3.3`](#neo4j233)
-	[`neo4j:2.3.3-enterprise`](#neo4j233-enterprise)
-	[`neo4j:2.3.2`](#neo4j232)
-	[`neo4j:2.3.2-enterprise`](#neo4j232-enterprise)
-	[`neo4j:2.3.1`](#neo4j231)
-	[`neo4j:2.3.1-enterprise`](#neo4j231-enterprise)
-	[`neo4j:2.3.0`](#neo4j230)
-	[`neo4j:2.3.0-enterprise`](#neo4j230-enterprise)

## `neo4j:3.0.4`

```console
$ docker pull neo4j@sha256:732a6f1cf723c620cde5903182578f811ae2352dad2434b6e9c02d2f5fc63d41
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185589894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05fe30e015367ab286997230f9349d2b0eeac7da38f3e5d26e6818caa88f35d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Wed, 31 Aug 2016 21:13:13 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Wed, 31 Aug 2016 21:13:13 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Wed, 31 Aug 2016 21:13:26 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Wed, 31 Aug 2016 21:13:26 GMT
WORKDIR /var/lib/neo4j
# Wed, 31 Aug 2016 21:13:27 GMT
RUN mv data /data     && ln --symbolic /data
# Wed, 31 Aug 2016 21:13:27 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 21:13:28 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 31 Aug 2016 21:13:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 31 Aug 2016 21:13:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:13:29 GMT
CMD ["neo4j"]
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
	-	`sha256:22f3fa8cd75b798e8c3c17f74048310b709d2878595cb7600ccb895720c1b8b0`  
		Last Modified: Wed, 31 Aug 2016 21:13:41 GMT  
		Size: 61.4 MB (61439856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efddbaf8df1dc4aee28401b651ba918c7a46ad5cfd61447bea86ca562e017cc`  
		Last Modified: Wed, 31 Aug 2016 21:13:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad83e122449edafbd67b89a38e05491571cfdd168fd850adb2b315c9a9413e43`  
		Last Modified: Wed, 31 Aug 2016 21:13:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0`

```console
$ docker pull neo4j@sha256:732a6f1cf723c620cde5903182578f811ae2352dad2434b6e9c02d2f5fc63d41
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185589894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05fe30e015367ab286997230f9349d2b0eeac7da38f3e5d26e6818caa88f35d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Wed, 31 Aug 2016 21:13:13 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Wed, 31 Aug 2016 21:13:13 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Wed, 31 Aug 2016 21:13:26 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Wed, 31 Aug 2016 21:13:26 GMT
WORKDIR /var/lib/neo4j
# Wed, 31 Aug 2016 21:13:27 GMT
RUN mv data /data     && ln --symbolic /data
# Wed, 31 Aug 2016 21:13:27 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 21:13:28 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 31 Aug 2016 21:13:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 31 Aug 2016 21:13:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:13:29 GMT
CMD ["neo4j"]
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
	-	`sha256:22f3fa8cd75b798e8c3c17f74048310b709d2878595cb7600ccb895720c1b8b0`  
		Last Modified: Wed, 31 Aug 2016 21:13:41 GMT  
		Size: 61.4 MB (61439856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efddbaf8df1dc4aee28401b651ba918c7a46ad5cfd61447bea86ca562e017cc`  
		Last Modified: Wed, 31 Aug 2016 21:13:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad83e122449edafbd67b89a38e05491571cfdd168fd850adb2b315c9a9413e43`  
		Last Modified: Wed, 31 Aug 2016 21:13:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:latest`

```console
$ docker pull neo4j@sha256:732a6f1cf723c620cde5903182578f811ae2352dad2434b6e9c02d2f5fc63d41
```

-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185589894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05fe30e015367ab286997230f9349d2b0eeac7da38f3e5d26e6818caa88f35d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Wed, 31 Aug 2016 21:13:13 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Wed, 31 Aug 2016 21:13:13 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Wed, 31 Aug 2016 21:13:26 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Wed, 31 Aug 2016 21:13:26 GMT
WORKDIR /var/lib/neo4j
# Wed, 31 Aug 2016 21:13:27 GMT
RUN mv data /data     && ln --symbolic /data
# Wed, 31 Aug 2016 21:13:27 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 21:13:28 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 31 Aug 2016 21:13:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 31 Aug 2016 21:13:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:13:29 GMT
CMD ["neo4j"]
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
	-	`sha256:22f3fa8cd75b798e8c3c17f74048310b709d2878595cb7600ccb895720c1b8b0`  
		Last Modified: Wed, 31 Aug 2016 21:13:41 GMT  
		Size: 61.4 MB (61439856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efddbaf8df1dc4aee28401b651ba918c7a46ad5cfd61447bea86ca562e017cc`  
		Last Modified: Wed, 31 Aug 2016 21:13:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad83e122449edafbd67b89a38e05491571cfdd168fd850adb2b315c9a9413e43`  
		Last Modified: Wed, 31 Aug 2016 21:13:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4-enterprise`

```console
$ docker pull neo4j@sha256:6715a74f4e4ccb7d764da1e5a28f7778130b078426917fd0b77b5f9d8b17281d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187931083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34e038c2b6603fe83341b869dfaec9b6ffe02902770824ed50f367b2792f090`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:37:52 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Thu, 11 Aug 2016 18:37:53 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Thu, 11 Aug 2016 18:38:09 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Thu, 11 Aug 2016 18:38:10 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:38:13 GMT
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:38:15 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:38:18 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:38:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:38:21 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:38:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0263d8ca95652b365cd298b91e86dd436dd6c442ae559146ec9b205aeb04bdc`  
		Last Modified: Thu, 11 Aug 2016 18:38:46 GMT  
		Size: 63.8 MB (63783674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ad85b6626ef6b4dfea09e3047bf830cf861446d94f4716072e936e8eedc22d`  
		Last Modified: Thu, 11 Aug 2016 18:38:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9de3011420eefc768f736d0a39aa23b1bd00b1fcaa678e90fc41799c276e8e0`  
		Last Modified: Thu, 11 Aug 2016 18:38:38 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0-enterprise`

```console
$ docker pull neo4j@sha256:6715a74f4e4ccb7d764da1e5a28f7778130b078426917fd0b77b5f9d8b17281d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187931083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34e038c2b6603fe83341b869dfaec9b6ffe02902770824ed50f367b2792f090`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:37:52 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Thu, 11 Aug 2016 18:37:53 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Thu, 11 Aug 2016 18:38:09 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Thu, 11 Aug 2016 18:38:10 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:38:13 GMT
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:38:15 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:38:18 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:38:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:38:21 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:38:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0263d8ca95652b365cd298b91e86dd436dd6c442ae559146ec9b205aeb04bdc`  
		Last Modified: Thu, 11 Aug 2016 18:38:46 GMT  
		Size: 63.8 MB (63783674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ad85b6626ef6b4dfea09e3047bf830cf861446d94f4716072e936e8eedc22d`  
		Last Modified: Thu, 11 Aug 2016 18:38:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9de3011420eefc768f736d0a39aa23b1bd00b1fcaa678e90fc41799c276e8e0`  
		Last Modified: Thu, 11 Aug 2016 18:38:38 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:6715a74f4e4ccb7d764da1e5a28f7778130b078426917fd0b77b5f9d8b17281d
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187931083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34e038c2b6603fe83341b869dfaec9b6ffe02902770824ed50f367b2792f090`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:37:52 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Thu, 11 Aug 2016 18:37:53 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Thu, 11 Aug 2016 18:38:09 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Thu, 11 Aug 2016 18:38:10 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:38:13 GMT
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:38:15 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:38:18 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:38:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:38:21 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:38:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0263d8ca95652b365cd298b91e86dd436dd6c442ae559146ec9b205aeb04bdc`  
		Last Modified: Thu, 11 Aug 2016 18:38:46 GMT  
		Size: 63.8 MB (63783674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ad85b6626ef6b4dfea09e3047bf830cf861446d94f4716072e936e8eedc22d`  
		Last Modified: Thu, 11 Aug 2016 18:38:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9de3011420eefc768f736d0a39aa23b1bd00b1fcaa678e90fc41799c276e8e0`  
		Last Modified: Thu, 11 Aug 2016 18:38:38 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3`

```console
$ docker pull neo4j@sha256:fee3b75b155eac6ddf9b175a4120f18ac2d5ea677c2202d63b34d8fbb93ebe50
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185548371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041544e295a22ca858ef9a8fa44cd0d84fe6f0766d4718f6afb3cf15066ae856`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 19:01:28 GMT
ENV NEO4J_SHA256=20cd65c84a6e5345f17bb03c145190f74e58ec2754c2e515a64b317e34dae2ce
# Thu, 11 Aug 2016 19:01:30 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.3-unix.tar.gz
# Thu, 11 Aug 2016 19:01:31 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
# Thu, 11 Aug 2016 19:01:33 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 19:01:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 19:01:52 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 19:01:55 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 19:01:57 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 19:01:59 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 19:02:01 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 19:02:02 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 19:02:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6dd495e3c8ff162740a1d6d435f56cbbf4f835d66149471d2a6ce83f07bbcb`  
		Last Modified: Thu, 11 Aug 2016 19:02:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4638a74de013bcafe0a903d113e0dbe88859346d853d438002013261c9c58e7c`  
		Last Modified: Thu, 11 Aug 2016 19:02:26 GMT  
		Size: 61.4 MB (61400832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64af749ced733d1172c3b3f07a1d88a3d3e8c1a28e0869b4a75e05f6dcdd57a`  
		Last Modified: Thu, 11 Aug 2016 19:02:17 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f6f3d2e71b25e466a01f993ce7ed69b85e558c67d657b2947b8c6caa0cefa2`  
		Last Modified: Thu, 11 Aug 2016 19:02:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3-enterprise`

```console
$ docker pull neo4j@sha256:5efd17ab133a41aefd46f847f1adb5096d4f6fd910bc157d6c14182c7178cac3
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187881529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06c9d2fa21217f68f9327fbccb0be9a5df9be2731a692d3ce3ab4c0e72b4d28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:35:39 GMT
ENV NEO4J_SHA256=f73ed4faf94087bded5ee34bc2614f09bbedc3b6e25439058526ce5506eb127e
# Thu, 11 Aug 2016 18:35:40 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.3-unix.tar.gz
# Thu, 11 Aug 2016 18:35:41 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
# Thu, 11 Aug 2016 18:35:43 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:35:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:36:00 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:36:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:36:03 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:36:05 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:36:07 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:36:08 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:36:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d44eda994b2369ad6bbedc14e423823f383d5594e3c10c7ba9d908ed4c03f57`  
		Last Modified: Thu, 11 Aug 2016 18:36:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5f73d48be055b8fba327f196e29bfe2ee341a38621a9c042760eb86894ae79`  
		Last Modified: Thu, 11 Aug 2016 18:36:26 GMT  
		Size: 63.7 MB (63733991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aba4af6d739ef097765c73e798749bd27b75cec7f3bf29c050621b6d03ab5c2`  
		Last Modified: Thu, 11 Aug 2016 18:36:20 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d8d78c543ccf460268479765a3f5d8db5d91fdfcee4f4f5f3769a949c1b745`  
		Last Modified: Thu, 11 Aug 2016 18:36:20 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2`

```console
$ docker pull neo4j@sha256:8a7bf8e566cdff0eedbc4304d3c29eeca3d8ed2da8bdfc1feada313d893fd202
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186181747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407f42297aacd4b8265b4361545b5c028e2219c3f87980e8c56cb3b614843d6e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:59:19 GMT
ENV NEO4J_SHA256=3daac469e0ad0f74eb8532ada8019b418e6ebd88da9bac52a4ee3393e18086aa
# Thu, 11 Aug 2016 18:59:20 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.2-unix.tar.gz
# Thu, 11 Aug 2016 18:59:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
# Thu, 11 Aug 2016 18:59:23 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:59:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:59:37 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:59:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:59:40 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:59:42 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:59:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:59:45 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:59:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a5988e6501079f0befca3b0db190356a76ac316c4b058a8733d204a4ad85a8`  
		Last Modified: Thu, 11 Aug 2016 19:00:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6752f902cd5a52345d3ea3b8ff039f33d4a96ad08db834996628ceda2875d9`  
		Last Modified: Thu, 11 Aug 2016 19:00:11 GMT  
		Size: 62.0 MB (62034206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ba47a82aee59d3e16531325887cd456cdeb5e0d9259a05b6f904963ff6bf44`  
		Last Modified: Thu, 11 Aug 2016 19:00:00 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57821e1f83514b67df235087097047916a890ee6f4431be6410f264f9d53dac`  
		Last Modified: Thu, 11 Aug 2016 19:00:00 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2-enterprise`

```console
$ docker pull neo4j@sha256:acc42cb05cfb801553ce9bd49e0fff0a35e6c06ca7bf037cdf5e046b52fa7f36
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.5 MB (188518498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8313c30a3406f512ef79bdfeefc92105f0793fe17d8e735485b3f1e32e1e114a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 19:00:21 GMT
ENV NEO4J_SHA256=7e3cb1cb29c51ac267e57ec3d12c425bd31a4c92a2ecba70bb78360670b4b972
# Thu, 11 Aug 2016 19:00:22 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.2-unix.tar.gz
# Thu, 11 Aug 2016 19:00:24 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
# Thu, 11 Aug 2016 19:00:25 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 19:00:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 19:00:41 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 19:00:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 19:00:45 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 19:00:47 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 19:00:48 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 19:00:50 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 19:00:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cc7064ad73a10826b6991a693fc2172efea9a202b744bf7f4822387a02e6bf`  
		Last Modified: Thu, 11 Aug 2016 19:01:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22795743f21d6b5772db569be9d4a2a844826ef23e8013c5fb738bfde7a3a339`  
		Last Modified: Thu, 11 Aug 2016 19:01:17 GMT  
		Size: 64.4 MB (64370956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdfba9bc8f75888d47d3ba41d0f28c020de44b07f9d2c1d6d331b46a2349e5e`  
		Last Modified: Thu, 11 Aug 2016 19:01:08 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bf1b0b8c8c0867044420cc1cb8975edbdc303e5ecd856a9350cfa5ab0757f2`  
		Last Modified: Thu, 11 Aug 2016 19:01:08 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1`

```console
$ docker pull neo4j@sha256:31b774fa12398ce33058142eb83be8d01ed3b6f10233aaf2cd33e1765682a9b2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186671590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ac8d074c23203e81ec2d7559ead4f15df08bad9b0f02dc32653399f60fc8e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:57:15 GMT
ENV NEO4J_SHA256=ae9d966559c83a9f1c61e1ef4d67aafeb9185e568b6dec0cd6b50e4297a15895
# Thu, 11 Aug 2016 18:57:17 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.1-unix.tar.gz
# Thu, 11 Aug 2016 18:57:19 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
# Thu, 11 Aug 2016 18:57:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:57:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:57:38 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:57:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:57:42 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:57:44 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:57:45 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:57:48 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:57:49 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074fdff57a47acd1fed67d8eaad180782fa073a3c2738ea1955aa790f4f15751`  
		Last Modified: Thu, 11 Aug 2016 18:58:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8351c5ff0944bd124d8748a1f468bacf235e8530f2073702615c8dbd945484c0`  
		Last Modified: Thu, 11 Aug 2016 18:58:09 GMT  
		Size: 62.5 MB (62524053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f349da3fbfeced97a08f10826bc23745c4e75da069ad557ed6d79166bd8fd58`  
		Last Modified: Thu, 11 Aug 2016 18:58:01 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a456f538f541b4b062a1420776fa8846254a7cf635a9e9b1cfd7e0369da81a`  
		Last Modified: Thu, 11 Aug 2016 18:58:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1-enterprise`

```console
$ docker pull neo4j@sha256:a47593bff0f8fcaeb92e57c4541e0a766a7a845e85b1672c52f80922f4c7f321
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188885782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb21ec3b0831500c768233db5ea6862c8c0ac35149e4926fe6565bee513fe1f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:58:18 GMT
ENV NEO4J_SHA256=d88c107d10bc4d4919bbac775aa128b4c312a420abfd06897471b5fa96864b11
# Thu, 11 Aug 2016 18:58:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.1-unix.tar.gz
# Thu, 11 Aug 2016 18:58:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
# Thu, 11 Aug 2016 18:58:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:58:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:58:39 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:58:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:58:43 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:58:45 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:58:46 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:58:48 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:58:49 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf572eb2f96f391fa218c564bc18cf3463234c734a0cb80626dbca0f6b204b2`  
		Last Modified: Thu, 11 Aug 2016 18:59:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bccea34522523c46e68d508e217243f099bb92e26c97f2feb31c566d9f009b2`  
		Last Modified: Thu, 11 Aug 2016 18:59:08 GMT  
		Size: 64.7 MB (64738247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0700034901c8e65880b22e7a4e5b2f6f8fe8b25e8be419dd9c3b966ecc74030`  
		Last Modified: Thu, 11 Aug 2016 18:59:01 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bc22b5d411d03e3ddde08d772907cf91fafea75235f71fcffe4bf9eeaa92f`  
		Last Modified: Thu, 11 Aug 2016 18:59:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0`

```console
$ docker pull neo4j@sha256:3a5bf99214708c06a823733484be610f1cfd7dae9d36ef77e263bb47815c424a
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186668630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b47f740e0b8547dde3dc02b42010862e3fda1758f721c416fc961b4afa0bb5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:55:01 GMT
ENV NEO4J_SHA256=1f1aeb3c748d5b05c263b7dab8b195df788507f59228e80534ed8e506a80c517
# Thu, 11 Aug 2016 18:55:03 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.0-unix.tar.gz
# Thu, 11 Aug 2016 18:55:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
# Thu, 11 Aug 2016 18:55:06 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:55:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:55:23 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:55:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:55:28 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:55:30 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:55:40 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:55:42 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:55:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64d2d1cd118f32c12a51fd90a4e482f50cdec1693b2027a50b22222a220752a`  
		Last Modified: Thu, 11 Aug 2016 18:55:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0063f9f7fb34a3457aecd85f84a543b5c8fff5419144da6e312d200c70387759`  
		Last Modified: Thu, 11 Aug 2016 18:56:05 GMT  
		Size: 62.5 MB (62521090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57a044a97dfbb789f60ff49fa9bf0ecf3cd9355462732e82be2f1a36a7c69e1`  
		Last Modified: Thu, 11 Aug 2016 18:55:56 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c971da85aa59ad103f96a4003f408def87cc22bd599a2740cf1c0fd68448cfa`  
		Last Modified: Thu, 11 Aug 2016 18:55:56 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0-enterprise`

```console
$ docker pull neo4j@sha256:66723b9202a0a7ba40de87e3746c1b54afae30da2af940d8be1392748c57f80f
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188884082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e2dd5a51135bc4e1fa18b1f577532a5f29b967ac6b9271f807833c47f92d4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:56:17 GMT
ENV NEO4J_SHA256=376409e1849f2f13d5ea6ddc672b535646ffb9a24527520b661e044190bf617a
# Thu, 11 Aug 2016 18:56:18 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.0-unix.tar.gz
# Thu, 11 Aug 2016 18:56:19 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
# Thu, 11 Aug 2016 18:56:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:56:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:56:37 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:56:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:56:40 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:56:43 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:56:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 Aug 2016 18:56:45 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:56:46 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2604a357d7279f810b0aebf720c9743d8620716c0c0cae9369a17e03d0ce3363`  
		Last Modified: Thu, 11 Aug 2016 18:56:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7350befcb03f952efd791df6a411d73d35c6520ba8f78c9c6d91d3eb10e1491`  
		Last Modified: Thu, 11 Aug 2016 18:57:05 GMT  
		Size: 64.7 MB (64736549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ace96faefafd73baf57243b2173a63910c88c2c86bc1cf21919379b72c34f0c`  
		Last Modified: Thu, 11 Aug 2016 18:56:59 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393410aa6a6fdfad52eb3fc864f0da9dbb9046922d7522ed4909e0383025744d`  
		Last Modified: Thu, 11 Aug 2016 18:56:59 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6`

```console
$ docker pull neo4j@sha256:270bb0576a3c27ff340c222192e9cb94fc9a27f6d1b755a6b70253094182e20c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191502739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34b28e75afcf656ccb3aba249c80575aabfbf1fa491f8ec801587a7a50d780b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:52:18 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Thu, 11 Aug 2016 18:52:19 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:52:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:52:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:52:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:52:39 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:52:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:52:44 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:52:46 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:52:47 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:52:49 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:52:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc8c00521e84398476bdb135d1f93bd740400da8e2980167e0a17526cbcc8d5`  
		Last Modified: Thu, 11 Aug 2016 18:53:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b68c4717ed33608eeabb3fe671d421a4be81fb3085fe609c23d200da9789ed`  
		Last Modified: Thu, 11 Aug 2016 18:53:12 GMT  
		Size: 58.7 MB (58721220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829123892e12f72e5526434387ef5ffa26f21823df9419e84cedf9252f742d1c`  
		Last Modified: Thu, 11 Aug 2016 18:53:04 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ad8d09cde9da032dbd62a7e67efd0198178fed36e269199a596294bb83ba1b`  
		Last Modified: Thu, 11 Aug 2016 18:53:04 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3`

```console
$ docker pull neo4j@sha256:270bb0576a3c27ff340c222192e9cb94fc9a27f6d1b755a6b70253094182e20c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191502739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34b28e75afcf656ccb3aba249c80575aabfbf1fa491f8ec801587a7a50d780b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:52:18 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Thu, 11 Aug 2016 18:52:19 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:52:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:52:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:52:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:52:39 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:52:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:52:44 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:52:46 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:52:47 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:52:49 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:52:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc8c00521e84398476bdb135d1f93bd740400da8e2980167e0a17526cbcc8d5`  
		Last Modified: Thu, 11 Aug 2016 18:53:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b68c4717ed33608eeabb3fe671d421a4be81fb3085fe609c23d200da9789ed`  
		Last Modified: Thu, 11 Aug 2016 18:53:12 GMT  
		Size: 58.7 MB (58721220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829123892e12f72e5526434387ef5ffa26f21823df9419e84cedf9252f742d1c`  
		Last Modified: Thu, 11 Aug 2016 18:53:04 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ad8d09cde9da032dbd62a7e67efd0198178fed36e269199a596294bb83ba1b`  
		Last Modified: Thu, 11 Aug 2016 18:53:04 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6-enterprise`

```console
$ docker pull neo4j@sha256:2d5db25c634d7ca6f14a0303042b32c3bf332460875e20b6ba8206d85fb8089d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194043938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfdf6e29242f8164afba84496761516031a3542634a36e8a09567916a4fa7c14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:53:39 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Thu, 11 Aug 2016 18:53:40 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:53:41 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:53:43 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:53:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:54:01 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:54:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:54:05 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:54:07 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:54:09 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:54:11 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:54:12 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd604993304e9af6dac948000369b34a1628b95392c224dc5db768c79c6aebd`  
		Last Modified: Thu, 11 Aug 2016 18:54:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ad060d5e78e7760127186121d919b0c094cbcd9e7de65c819cb12110c20523`  
		Last Modified: Thu, 11 Aug 2016 18:54:35 GMT  
		Size: 61.3 MB (61262415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753dc90398d529d2aaf8210fc477f40fc48ce81dc689f65ed77e544f54ec7bc0`  
		Last Modified: Thu, 11 Aug 2016 18:54:28 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d5f5acfb2e200b79cd530c27261d1cd497435f47e0fcc464afa2d778960b00`  
		Last Modified: Thu, 11 Aug 2016 18:54:28 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3-enterprise`

```console
$ docker pull neo4j@sha256:2d5db25c634d7ca6f14a0303042b32c3bf332460875e20b6ba8206d85fb8089d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194043938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfdf6e29242f8164afba84496761516031a3542634a36e8a09567916a4fa7c14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:53:39 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Thu, 11 Aug 2016 18:53:40 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:53:41 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Thu, 11 Aug 2016 18:53:43 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:53:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:54:01 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:54:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:54:05 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:54:07 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:54:09 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:54:11 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:54:12 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd604993304e9af6dac948000369b34a1628b95392c224dc5db768c79c6aebd`  
		Last Modified: Thu, 11 Aug 2016 18:54:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ad060d5e78e7760127186121d919b0c094cbcd9e7de65c819cb12110c20523`  
		Last Modified: Thu, 11 Aug 2016 18:54:35 GMT  
		Size: 61.3 MB (61262415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753dc90398d529d2aaf8210fc477f40fc48ce81dc689f65ed77e544f54ec7bc0`  
		Last Modified: Thu, 11 Aug 2016 18:54:28 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d5f5acfb2e200b79cd530c27261d1cd497435f47e0fcc464afa2d778960b00`  
		Last Modified: Thu, 11 Aug 2016 18:54:28 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5`

```console
$ docker pull neo4j@sha256:8545875e2ef2b7daf7f7d99786388aba6731bb202f69a893c9cefdcc1c992069
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191465384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded8fd94d6cb35a7c8ed820b96e537111593144e6ec12cddb354484a2cd6763f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:49:49 GMT
ENV NEO4J_SHA256=969159bddc0526681795f039e4250d728c8b60c5e421450259caacfc488c18cf
# Thu, 11 Aug 2016 18:49:50 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.5-unix.tar.gz
# Thu, 11 Aug 2016 18:49:52 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
# Thu, 11 Aug 2016 18:49:54 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:50:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:50:10 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:50:13 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:50:14 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:50:16 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:50:18 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:50:21 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:50:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2e5205e14d931dbd765f07ccd05c45b9e983bd39bd8f61e7658557fbae2e1b`  
		Last Modified: Thu, 11 Aug 2016 18:50:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dfd80f1aafb14926ac082157beb123788ea5cd5e09f5ab0f9bc1a603e67911`  
		Last Modified: Thu, 11 Aug 2016 18:50:50 GMT  
		Size: 58.7 MB (58683860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1b1b12ac5dc770a3357ba194d873e08261dac863bfcd6be97e1a460c84a88c`  
		Last Modified: Thu, 11 Aug 2016 18:50:40 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1f490aed620f45629c011e939aa441efb3885880a320957cf1b908af660c14`  
		Last Modified: Thu, 11 Aug 2016 18:50:40 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5-enterprise`

```console
$ docker pull neo4j@sha256:64e0f65972c3b91ae23e0cc02fdff57cd43802a065fc46e824543598fb1e978b
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193996844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be55a19e734a0f100a3428ee38cfe6a829322f1a36775f64769888e08201a00d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:51:02 GMT
ENV NEO4J_SHA256=e12b962b01f5e3d1ab72f52aa311cfb270557ebca13874efb049b15b0cbfa471
# Thu, 11 Aug 2016 18:51:03 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.5-unix.tar.gz
# Thu, 11 Aug 2016 18:51:05 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
# Thu, 11 Aug 2016 18:51:09 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:51:27 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:51:28 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:51:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:51:33 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:51:35 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:51:36 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:51:38 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:51:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6eefd15ebaf1b5012f8518107fc89c41925f52dbb70d2900e7b6f89694fddc`  
		Last Modified: Thu, 11 Aug 2016 18:51:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87516803bc269a0c075fc17f9229867417ad4b63d0ba9845a2922bcb8e6efeb`  
		Last Modified: Thu, 11 Aug 2016 18:52:01 GMT  
		Size: 61.2 MB (61215322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503facd94d7efcb8c2718b7effdd29ba3e49a5daada8f00c56fc2d9c41ceef5`  
		Last Modified: Thu, 11 Aug 2016 18:51:52 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e717d727b3f613bf962eebf3b94be088971c15fcc6e3778fbe1878f8b21f8f`  
		Last Modified: Thu, 11 Aug 2016 18:51:53 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4`

```console
$ docker pull neo4j@sha256:2049d284eef1b1406fa6cd42d62dd0e3e5a7b6294896528b2dad2b73ff2680f9
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191442062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434c1827f9e01f66ae325895fe85b276d937bb35c027582ddad2c7d51008ed64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:47:20 GMT
ENV NEO4J_SHA256=4a4b12e9d97771d9c293ee7786ef08ff7ad0f14a5db0f7fc01e8675e476f644b
# Thu, 11 Aug 2016 18:47:22 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.4-unix.tar.gz
# Thu, 11 Aug 2016 18:47:23 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
# Thu, 11 Aug 2016 18:47:25 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:47:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:47:42 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:47:44 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:47:46 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:47:48 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:47:50 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:47:52 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:47:54 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7b451ed09bc50e2425d15393410477ea8500b6b7e1fab37b3daa715a8d7302`  
		Last Modified: Thu, 11 Aug 2016 18:48:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391bc825362634f309b19fd8d5a92a4f24e235cead13951aaca97f4f233b6003`  
		Last Modified: Thu, 11 Aug 2016 18:48:16 GMT  
		Size: 58.7 MB (58660537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053c6caaf0c47f80641e2feaff90b55b5fd3e0abd7a5057b7ee370517f69940`  
		Last Modified: Thu, 11 Aug 2016 18:48:09 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbfce81594ad55ee54b77d5aee1118c2885d14d380e292f699923132ae69e53`  
		Last Modified: Thu, 11 Aug 2016 18:48:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4-enterprise`

```console
$ docker pull neo4j@sha256:ee74246c1f2431bc0d0ef4ece82c04ae68a28352436ca7e3c5e3afbed52fdb9d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193970965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063db8b487b3d649486d474a7d10e8deace3a61cc9495aa3d0ab04d9d33a0533`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:48:27 GMT
ENV NEO4J_SHA256=640095b153eff5e9f81120d73a110e7d69b2868fc922cd9f54318d203b26f3c1
# Thu, 11 Aug 2016 18:48:29 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.4-unix.tar.gz
# Thu, 11 Aug 2016 18:48:30 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
# Thu, 11 Aug 2016 18:48:33 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:48:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:48:54 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:48:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:49:00 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:49:02 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:49:03 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:49:05 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:49:07 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9d5cca32e97caf250e81fb261cbe31925883613916bcf54e0a2e27df6aed5`  
		Last Modified: Thu, 11 Aug 2016 18:49:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3594aae27965e05357d861d64f2eec8ce2cb170a93a63631ff3cbb3826f71a`  
		Last Modified: Thu, 11 Aug 2016 18:49:35 GMT  
		Size: 61.2 MB (61189445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c317080e49189130d56e9dd497d90574083c9a11119f1e29ad47b1f426d7d75`  
		Last Modified: Thu, 11 Aug 2016 18:49:22 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71d528910c2ed9b3c84c93dd3a7791fe105352c6d34343e98b46b513482abe2`  
		Last Modified: Thu, 11 Aug 2016 18:49:23 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3`

```console
$ docker pull neo4j@sha256:8bed3ff644a446375cbe0d43d03960ae2c9af311d395b19ba5777da07836c4b4
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (191982392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfe8c1fc3816eca27f06a5b3eb59a2b5bd581d583e1b517757548d1cbe3fea5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:44:51 GMT
ENV NEO4J_SHA256=01559c55055516a42ee2dd100137b6b55d63f02959a3c6c6db7a152e045828d9
# Thu, 11 Aug 2016 18:44:53 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.3-unix.tar.gz
# Thu, 11 Aug 2016 18:44:54 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
# Thu, 11 Aug 2016 18:44:56 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:45:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:45:17 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:45:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:45:24 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:45:35 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:45:37 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:45:39 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:45:41 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17ed3b9fde1ed681113705229fdb15705a0eb7d8fc29b4bf80ee05a9abf71a`  
		Last Modified: Thu, 11 Aug 2016 18:45:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e70a4659e72ba5e12dad0e30e5d14b8e85145a76c93b155027f125dbb66065a`  
		Last Modified: Thu, 11 Aug 2016 18:46:02 GMT  
		Size: 59.2 MB (59200867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3046b18f9dc613e8a38a35a2f10dfeb513c526a679e89fd39d2cda50836ba453`  
		Last Modified: Thu, 11 Aug 2016 18:45:54 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81e1ed4932dc930b87f667d2725f6e52ef7a409bd970bf57e239c6fbeadadc0`  
		Last Modified: Thu, 11 Aug 2016 18:45:54 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3-enterprise`

```console
$ docker pull neo4j@sha256:daa24f33fd58b4e732243907735be5f0e069eae6c44ffae6e11b1d60a12d5826
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194391967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a02b31de03b2c7e4933a56013194f87525f78218a28116d1535f13107179dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:46:12 GMT
ENV NEO4J_SHA256=864b7ebef3a12844c809e75016aa951c60ac90fb0d075a595108824859ce7875
# Thu, 11 Aug 2016 18:46:15 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.3-unix.tar.gz
# Thu, 11 Aug 2016 18:46:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
# Thu, 11 Aug 2016 18:46:19 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:46:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:46:36 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:46:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:46:41 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:46:43 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:46:45 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:46:46 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:46:48 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3910a4bbbdd533a481c59c0ed03a9df98356ddd137ef98afcfdfd6676a099f65`  
		Last Modified: Thu, 11 Aug 2016 18:47:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6939c7d643ef896a6b4a87c442a0817be5bd263aa2f0c0295e8a8a78fdaea5`  
		Last Modified: Thu, 11 Aug 2016 18:47:10 GMT  
		Size: 61.6 MB (61610444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca41a5c8430180d8ef61388ebd686eb2fbe1ae9cf695356539350dbe5ffb614`  
		Last Modified: Thu, 11 Aug 2016 18:47:01 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a31559b781f87f7508bf3856399f76a2699d357ae091f564831f924d888f3c`  
		Last Modified: Thu, 11 Aug 2016 18:47:02 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2`

```console
$ docker pull neo4j@sha256:e3e40968dd1ddc16cad1b38fe274e64c0e5addacd31b68bdffc1059e4751ac9d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191864653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e93e3b8b7bc06ef0bad7b1fd133466c92fd202cf5dd4214665c28165a86f9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:42:38 GMT
ENV NEO4J_SHA256=37e24d95c914c54d5cbbe99473d4beef89da78adb2db04eb87258a489225932a
# Thu, 11 Aug 2016 18:42:39 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.2-unix.tar.gz
# Thu, 11 Aug 2016 18:42:41 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
# Thu, 11 Aug 2016 18:42:43 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:42:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:42:58 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:43:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:43:03 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:43:05 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:43:07 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:43:09 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:43:10 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c12f40592bf4654e9ed59ebd8e41fa6c6ef69970c05073f9864077ebd4f9e`  
		Last Modified: Thu, 11 Aug 2016 18:43:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb506aefdec8099dd1975437d956cbe5a41050f03ea5bdf68e1b3ce49cf88ce`  
		Last Modified: Thu, 11 Aug 2016 18:43:32 GMT  
		Size: 59.1 MB (59083128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc320cd90edeaf45d21ebbab9adb39212176dd0b2c1d61210d9d49307e2be0a`  
		Last Modified: Thu, 11 Aug 2016 18:43:24 GMT  
		Size: 716.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6e4c8ea7b29dd60d7f3bcd67d72d944a6c1e789edaf11ad18a399a7243ef90`  
		Last Modified: Thu, 11 Aug 2016 18:43:24 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2-enterprise`

```console
$ docker pull neo4j@sha256:3bcadd9a5a8f4cfde9d161a8c25c8fffd1ea69df34a7da89dd549c7d7c888185
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194312104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d7f530fd356645b29ddd48efba5f5331795b5e3e8fde000d6398dcc4ae6148`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:43:42 GMT
ENV NEO4J_SHA256=ea80cfca918dd70ea5d10a125f5c3a5be02e45dd497b67dfa2d22770a891acea
# Thu, 11 Aug 2016 18:43:43 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.2-unix.tar.gz
# Thu, 11 Aug 2016 18:43:45 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
# Thu, 11 Aug 2016 18:43:47 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:44:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:44:05 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:44:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:44:10 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:44:12 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:44:16 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:44:19 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:44:20 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f93a8ef3c5e9c40f1e96f10b343aa548a995f338e8de3dd28463321bb1e0af`  
		Last Modified: Thu, 11 Aug 2016 18:44:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f4cc573ed9ec83048690e1aeb507ddbe554684423109a5cc9e765da1a2049a`  
		Last Modified: Thu, 11 Aug 2016 18:44:42 GMT  
		Size: 61.5 MB (61530578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575350ecaba8a057ee18f1cabafa4df9d71d8fd7d3308a45e2227a38f3af4acb`  
		Last Modified: Thu, 11 Aug 2016 18:44:35 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd423d82525f0e4e66419f80a22326789a7f3eb7b6639773761c65a0a182d47b`  
		Last Modified: Thu, 11 Aug 2016 18:44:34 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1`

```console
$ docker pull neo4j@sha256:89394e5da0d8f6826baf8747db8fa5f024674c4e1c8839236527e6d418908e31
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191788459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903ecce5df503bb702c543704a75df0158b5d0bf14219d74b0e52ed951b01de8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:40:29 GMT
ENV NEO4J_SHA256=7b2f30d73af107eacd9a3a619475ef448a08eecb2cdb42ab1f8a38d091c70ecb
# Thu, 11 Aug 2016 18:40:30 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.1-unix.tar.gz
# Thu, 11 Aug 2016 18:40:31 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
# Thu, 11 Aug 2016 18:40:33 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:40:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:40:50 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:40:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:40:55 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:40:57 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:40:59 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:41:00 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:41:02 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4900ba6b5f8a649092477f595ca1075bcd4a7a554943362babafb4f0decad8c`  
		Last Modified: Thu, 11 Aug 2016 18:41:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2aa958f7e92e65d3ddc9ac783fc2ad8e86753b7ae2100e8fbc790317e71ee0`  
		Last Modified: Thu, 11 Aug 2016 18:41:23 GMT  
		Size: 59.0 MB (59006936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4a92b484f43b2a3d7b863eb4c9b1b14879962c021ee5e09ceb982672c79302`  
		Last Modified: Thu, 11 Aug 2016 18:41:15 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b33cb6ea47263d930ad817e22128f568a4043835e462d29a4f90053760af6`  
		Last Modified: Thu, 11 Aug 2016 18:41:15 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1-enterprise`

```console
$ docker pull neo4j@sha256:5681ece5b51a0080014b43c409148b1fdcaa8c5bdb5363a1e06f9bcbf5b90d46
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194223984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf5903030adfb34fa6930a2b7d86eb92f58f80cf66e7dc7713342f415037a93`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:41:32 GMT
ENV NEO4J_SHA256=93f0950b0c3a5a604f80183814b7cda2988a652e9278159c47d036daa96e3d29
# Thu, 11 Aug 2016 18:41:33 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.1-unix.tar.gz
# Thu, 11 Aug 2016 18:41:35 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
# Thu, 11 Aug 2016 18:41:37 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:41:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:41:54 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:41:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:41:59 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:42:01 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:42:03 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:42:05 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:42:07 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c80c6be729588e178058be050e0089b216a7bdc4e02d1e47480d966ffa5c`  
		Last Modified: Thu, 11 Aug 2016 18:42:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e4b527827d31a587f5bed6a12a85cdcd4049ce8a3b23e67a54e5f06816b6a9`  
		Last Modified: Thu, 11 Aug 2016 18:42:28 GMT  
		Size: 61.4 MB (61442463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7062dcfb7d14c83cfb1e1f22327ea96f463acf624c3733e6737dfeab4234a86d`  
		Last Modified: Thu, 11 Aug 2016 18:42:19 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b92ec24e5f30960e02ce106cd0663a1674b7d2c0aba74bce964663d046c580`  
		Last Modified: Thu, 11 Aug 2016 18:42:20 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0`

```console
$ docker pull neo4j@sha256:52b21d167419d47ac7b2ba676ce2cedabd9189d2eee77e708d964f68b37af051
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191373648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b7aaeac561412879db1536cd6c1266a53be6b5349bb42e21f64f118ed27e8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Wed, 31 Aug 2016 21:12:36 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:12:36 GMT
ENV NEO4J_SHA256=88fee93884700dae6a1f870dd84b3da9d094db33d57db1c88904954ef2cb4830
# Wed, 31 Aug 2016 21:12:37 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.0-unix.tar.gz
# Wed, 31 Aug 2016 21:12:37 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
# Wed, 31 Aug 2016 21:12:37 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 31 Aug 2016 21:12:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 31 Aug 2016 21:12:49 GMT
WORKDIR /var/lib/neo4j
# Wed, 31 Aug 2016 21:12:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 31 Aug 2016 21:12:51 GMT
VOLUME [/data]
# Wed, 31 Aug 2016 21:12:51 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Wed, 31 Aug 2016 21:12:52 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 31 Aug 2016 21:12:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 21:12:52 GMT
CMD ["neo4j"]
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
	-	`sha256:836627596fade75a3f0bf03301ec0195230c0f1c08651dc46d57784f3a4820a0`  
		Last Modified: Wed, 31 Aug 2016 21:13:01 GMT  
		Size: 8.6 MB (8633762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602ff9b7c272ea4a6b668a23bbe941539ff034b7d874dc93b58243659f609156`  
		Last Modified: Wed, 31 Aug 2016 21:12:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d16f5d473f8fb93708cf59d7819525e2ebfd7d15cea5e19d844df34d5972ced`  
		Last Modified: Wed, 31 Aug 2016 21:13:04 GMT  
		Size: 58.6 MB (58589218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9203ed5cc1ee1bc4764785702aa96045fefa2cf04d9acb033767e6b42846fe3`  
		Last Modified: Wed, 31 Aug 2016 21:12:57 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a274b5fc720c494ffb1f5ba54d3f36e94452480e90e99560a3fcb4d79515479`  
		Last Modified: Wed, 31 Aug 2016 21:12:57 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0-enterprise`

```console
$ docker pull neo4j@sha256:d072139eb6087226caea1a43e7fdf8340dc09880f8269a79ba388b696335d45c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0-enterprise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193829104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c862b8670af62a01a90f0ed89434aa5e967e8349ca51a7cb9110113303f663b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 18:34:40 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:39:25 GMT
ENV NEO4J_SHA256=0d3f370f8141d8bc37065f843af190c405cba098d1bb82065ffc0cb5b99950b7
# Thu, 11 Aug 2016 18:39:26 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.0-unix.tar.gz
# Thu, 11 Aug 2016 18:39:28 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
# Thu, 11 Aug 2016 18:39:30 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/
# Thu, 11 Aug 2016 18:39:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 Aug 2016 18:39:46 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 Aug 2016 18:39:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Thu, 11 Aug 2016 18:39:51 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 18:39:53 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh
# Thu, 11 Aug 2016 18:39:55 GMT
EXPOSE 7473/tcp 7474/tcp
# Thu, 11 Aug 2016 18:39:57 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 18:39:59 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f36f94fd1cf0519cf7446e4e6d09f9c864c462ad2abb4c3f6dc158026df8b6`  
		Last Modified: Thu, 11 Aug 2016 18:35:26 GMT  
		Size: 8.6 MB (8633526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c590bfca3316ebf01280b3fbb6377b9993f937c22e704303ff6e386fc75b557`  
		Last Modified: Thu, 11 Aug 2016 18:40:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278641fe618c7ad24fd261b2eec7f4717c217bc9e7d7f87fab8075efe5bc0f8f`  
		Last Modified: Thu, 11 Aug 2016 18:40:19 GMT  
		Size: 61.0 MB (61047541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b415b8fe9fc845f037aa5cd8a59bed1b07e6468f3ccc2df0c213fcd321beace`  
		Last Modified: Thu, 11 Aug 2016 18:40:12 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9167a5673079c45c2e4c9c72ff21a54f429d8820c8f7a41d7cf9e3d84260d`  
		Last Modified: Thu, 11 Aug 2016 18:40:12 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
