<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `logstash`

-	[`logstash:1.5.6-1`](#logstash156-1)
-	[`logstash:1.5.6`](#logstash156)
-	[`logstash:1.5`](#logstash15)
-	[`logstash:1`](#logstash1)
-	[`logstash:2.0.0-1`](#logstash200-1)
-	[`logstash:2.0.0`](#logstash200)
-	[`logstash:2.0`](#logstash20)
-	[`logstash:2.1.3-1`](#logstash213-1)
-	[`logstash:2.1.3`](#logstash213)
-	[`logstash:2.1`](#logstash21)
-	[`logstash:2.2.4-1`](#logstash224-1)
-	[`logstash:2.2.4`](#logstash224)
-	[`logstash:2.2`](#logstash22)
-	[`logstash:2.3.4-1`](#logstash234-1)
-	[`logstash:2.3.4`](#logstash234)
-	[`logstash:2.3`](#logstash23)
-	[`logstash:2.4.0-1`](#logstash240-1)
-	[`logstash:2.4.0`](#logstash240)
-	[`logstash:2.4`](#logstash24)
-	[`logstash:2`](#logstash2)
-	[`logstash:latest`](#logstashlatest)
-	[`logstash:5.0.0-alpha5-1`](#logstash500-alpha5-1)
-	[`logstash:5.0.0-alpha5`](#logstash500-alpha5)
-	[`logstash:5.0.0`](#logstash500)
-	[`logstash:5.0`](#logstash50)
-	[`logstash:5`](#logstash5)

## `logstash:1.5.6-1`

```console
$ docker pull logstash@sha256:8ef421cd629f53095163479a620999c87b3dc4a7f830e72d671d853659623964
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216646113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507f388205b467a4f18a4cd661137b29ea131630cfa28ea39ed25249836b4c7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:43:26 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 31 Aug 2016 17:43:27 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 31 Aug 2016 17:43:28 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:43:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:43:56 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:43:57 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:43:58 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:43:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:43:59 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e087ad95dee80250895e0263aeb3dd0a2c30f3cb1369854f9bd109b9437a1f0`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d7bce9787313a447582a3a1f3e3388255bec99fce5b969a2ef43cd6e1891c4`  
		Last Modified: Wed, 31 Aug 2016 17:48:05 GMT  
		Size: 90.8 MB (90753552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b7421738d08b389bab0bc64c783523af1f02aaf9c4765e3516b5bdea62d17f`  
		Last Modified: Wed, 31 Aug 2016 17:47:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6`

```console
$ docker pull logstash@sha256:8ef421cd629f53095163479a620999c87b3dc4a7f830e72d671d853659623964
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216646113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507f388205b467a4f18a4cd661137b29ea131630cfa28ea39ed25249836b4c7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:43:26 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 31 Aug 2016 17:43:27 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 31 Aug 2016 17:43:28 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:43:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:43:56 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:43:57 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:43:58 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:43:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:43:59 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e087ad95dee80250895e0263aeb3dd0a2c30f3cb1369854f9bd109b9437a1f0`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d7bce9787313a447582a3a1f3e3388255bec99fce5b969a2ef43cd6e1891c4`  
		Last Modified: Wed, 31 Aug 2016 17:48:05 GMT  
		Size: 90.8 MB (90753552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b7421738d08b389bab0bc64c783523af1f02aaf9c4765e3516b5bdea62d17f`  
		Last Modified: Wed, 31 Aug 2016 17:47:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5`

```console
$ docker pull logstash@sha256:8ef421cd629f53095163479a620999c87b3dc4a7f830e72d671d853659623964
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216646113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507f388205b467a4f18a4cd661137b29ea131630cfa28ea39ed25249836b4c7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:43:26 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 31 Aug 2016 17:43:27 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 31 Aug 2016 17:43:28 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:43:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:43:56 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:43:57 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:43:58 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:43:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:43:59 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e087ad95dee80250895e0263aeb3dd0a2c30f3cb1369854f9bd109b9437a1f0`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d7bce9787313a447582a3a1f3e3388255bec99fce5b969a2ef43cd6e1891c4`  
		Last Modified: Wed, 31 Aug 2016 17:48:05 GMT  
		Size: 90.8 MB (90753552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b7421738d08b389bab0bc64c783523af1f02aaf9c4765e3516b5bdea62d17f`  
		Last Modified: Wed, 31 Aug 2016 17:47:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1`

```console
$ docker pull logstash@sha256:8ef421cd629f53095163479a620999c87b3dc4a7f830e72d671d853659623964
```

-	Platforms:
	-	linux; amd64

### `logstash:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216646113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507f388205b467a4f18a4cd661137b29ea131630cfa28ea39ed25249836b4c7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:43:26 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 31 Aug 2016 17:43:27 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 31 Aug 2016 17:43:28 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:43:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:43:56 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:43:57 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:43:58 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:43:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:43:59 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e087ad95dee80250895e0263aeb3dd0a2c30f3cb1369854f9bd109b9437a1f0`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d7bce9787313a447582a3a1f3e3388255bec99fce5b969a2ef43cd6e1891c4`  
		Last Modified: Wed, 31 Aug 2016 17:48:05 GMT  
		Size: 90.8 MB (90753552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b7421738d08b389bab0bc64c783523af1f02aaf9c4765e3516b5bdea62d17f`  
		Last Modified: Wed, 31 Aug 2016 17:47:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0.0-1`

```console
$ docker pull logstash@sha256:1eb85de1ac49cf8f460d2e783496acbe242bd76e3fd9f1f2117b8669798db69d
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207426349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316fcb21a33902b58b4e6b0bd4b5ba39f32f19ef84c7e3f9574407d1542837f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:43:59 GMT
ENV LOGSTASH_MAJOR=2.0
# Wed, 31 Aug 2016 17:44:00 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Wed, 31 Aug 2016 17:44:01 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:44:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:44:32 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:44:32 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:44:33 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:44:34 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:44:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:44:35 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df205e0b2c223cff40c556058233d0bcd7636342bc1b5d42652b5fb77e948425`  
		Last Modified: Wed, 31 Aug 2016 17:48:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad1c3736486843528159023bd67814e9ff41afa25f0b42eb58b55a69bd1c0d`  
		Last Modified: Wed, 31 Aug 2016 17:49:03 GMT  
		Size: 81.5 MB (81533788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478f70cdb8c796c9030feebf725ae6fd6bf8f916c5d199aebd78b8e07be7aaf`  
		Last Modified: Wed, 31 Aug 2016 17:48:45 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0.0`

```console
$ docker pull logstash@sha256:1eb85de1ac49cf8f460d2e783496acbe242bd76e3fd9f1f2117b8669798db69d
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207426349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316fcb21a33902b58b4e6b0bd4b5ba39f32f19ef84c7e3f9574407d1542837f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:43:59 GMT
ENV LOGSTASH_MAJOR=2.0
# Wed, 31 Aug 2016 17:44:00 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Wed, 31 Aug 2016 17:44:01 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:44:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:44:32 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:44:32 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:44:33 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:44:34 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:44:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:44:35 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df205e0b2c223cff40c556058233d0bcd7636342bc1b5d42652b5fb77e948425`  
		Last Modified: Wed, 31 Aug 2016 17:48:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad1c3736486843528159023bd67814e9ff41afa25f0b42eb58b55a69bd1c0d`  
		Last Modified: Wed, 31 Aug 2016 17:49:03 GMT  
		Size: 81.5 MB (81533788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478f70cdb8c796c9030feebf725ae6fd6bf8f916c5d199aebd78b8e07be7aaf`  
		Last Modified: Wed, 31 Aug 2016 17:48:45 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0`

```console
$ docker pull logstash@sha256:1eb85de1ac49cf8f460d2e783496acbe242bd76e3fd9f1f2117b8669798db69d
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207426349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316fcb21a33902b58b4e6b0bd4b5ba39f32f19ef84c7e3f9574407d1542837f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:43:59 GMT
ENV LOGSTASH_MAJOR=2.0
# Wed, 31 Aug 2016 17:44:00 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Wed, 31 Aug 2016 17:44:01 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:44:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:44:32 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:44:32 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:44:33 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:44:34 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:44:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:44:35 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df205e0b2c223cff40c556058233d0bcd7636342bc1b5d42652b5fb77e948425`  
		Last Modified: Wed, 31 Aug 2016 17:48:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad1c3736486843528159023bd67814e9ff41afa25f0b42eb58b55a69bd1c0d`  
		Last Modified: Wed, 31 Aug 2016 17:49:03 GMT  
		Size: 81.5 MB (81533788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478f70cdb8c796c9030feebf725ae6fd6bf8f916c5d199aebd78b8e07be7aaf`  
		Last Modified: Wed, 31 Aug 2016 17:48:45 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1.3-1`

```console
$ docker pull logstash@sha256:4cd42f6d0a63bd1149330b84b77b57c716e55ec61d3568518cb8d79307497b55
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201230075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b542a723088727fd300f221b93339d7342858ac45daf64d03d9f2b9b59eb198`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:44:35 GMT
ENV LOGSTASH_MAJOR=2.1
# Wed, 31 Aug 2016 17:44:36 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Wed, 31 Aug 2016 17:44:37 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:45:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:45:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:45:05 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:45:06 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:45:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:45:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:45:10 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaa445503ff6cb76740b85badf424f6ab32bf4694f49bb4e2b90edb69522028`  
		Last Modified: Wed, 31 Aug 2016 17:49:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac2a349320efea8b7907728094fc225350847fac026461dfca7c1d6b0acc8f8`  
		Last Modified: Wed, 31 Aug 2016 17:49:54 GMT  
		Size: 75.3 MB (75337514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c015814524fe9db16ec22838cda64a400330cd8f0a11c7014b92059f128200`  
		Last Modified: Wed, 31 Aug 2016 17:49:37 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1.3`

```console
$ docker pull logstash@sha256:4cd42f6d0a63bd1149330b84b77b57c716e55ec61d3568518cb8d79307497b55
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201230075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b542a723088727fd300f221b93339d7342858ac45daf64d03d9f2b9b59eb198`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:44:35 GMT
ENV LOGSTASH_MAJOR=2.1
# Wed, 31 Aug 2016 17:44:36 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Wed, 31 Aug 2016 17:44:37 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:45:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:45:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:45:05 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:45:06 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:45:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:45:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:45:10 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaa445503ff6cb76740b85badf424f6ab32bf4694f49bb4e2b90edb69522028`  
		Last Modified: Wed, 31 Aug 2016 17:49:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac2a349320efea8b7907728094fc225350847fac026461dfca7c1d6b0acc8f8`  
		Last Modified: Wed, 31 Aug 2016 17:49:54 GMT  
		Size: 75.3 MB (75337514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c015814524fe9db16ec22838cda64a400330cd8f0a11c7014b92059f128200`  
		Last Modified: Wed, 31 Aug 2016 17:49:37 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1`

```console
$ docker pull logstash@sha256:4cd42f6d0a63bd1149330b84b77b57c716e55ec61d3568518cb8d79307497b55
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201230075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b542a723088727fd300f221b93339d7342858ac45daf64d03d9f2b9b59eb198`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:44:35 GMT
ENV LOGSTASH_MAJOR=2.1
# Wed, 31 Aug 2016 17:44:36 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Wed, 31 Aug 2016 17:44:37 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:45:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:45:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:45:05 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:45:06 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:45:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:45:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:45:10 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaa445503ff6cb76740b85badf424f6ab32bf4694f49bb4e2b90edb69522028`  
		Last Modified: Wed, 31 Aug 2016 17:49:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac2a349320efea8b7907728094fc225350847fac026461dfca7c1d6b0acc8f8`  
		Last Modified: Wed, 31 Aug 2016 17:49:54 GMT  
		Size: 75.3 MB (75337514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c015814524fe9db16ec22838cda64a400330cd8f0a11c7014b92059f128200`  
		Last Modified: Wed, 31 Aug 2016 17:49:37 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2.4-1`

```console
$ docker pull logstash@sha256:fed3cd898253e380d5c1c856aafc954da3287017b48231ed06710225c6675e40
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202030627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdc40ebec221394069561e0dddbeaf1fd2fc982324eff3f4b3cf3599135c437`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:45:10 GMT
ENV LOGSTASH_MAJOR=2.2
# Wed, 31 Aug 2016 17:45:11 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Wed, 31 Aug 2016 17:45:12 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:45:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:45:42 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:45:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:45:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:45:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:45:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:45:44 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1399a433b72785c7bcca4d6fb7157f3dbede972600e9128a0f9770f2d4196b6d`  
		Last Modified: Wed, 31 Aug 2016 17:50:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d973a7de1a8f9db8d3d84bed42623a2264df8ad8b9e2764843eeed6189a5eea`  
		Last Modified: Wed, 31 Aug 2016 17:50:41 GMT  
		Size: 76.1 MB (76138067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e957f62d6ad11c27d7a85bedf93e93d82c5923f12ecd7f7c1dab7b71d646b88c`  
		Last Modified: Wed, 31 Aug 2016 17:50:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2.4`

```console
$ docker pull logstash@sha256:fed3cd898253e380d5c1c856aafc954da3287017b48231ed06710225c6675e40
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202030627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdc40ebec221394069561e0dddbeaf1fd2fc982324eff3f4b3cf3599135c437`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:45:10 GMT
ENV LOGSTASH_MAJOR=2.2
# Wed, 31 Aug 2016 17:45:11 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Wed, 31 Aug 2016 17:45:12 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:45:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:45:42 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:45:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:45:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:45:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:45:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:45:44 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1399a433b72785c7bcca4d6fb7157f3dbede972600e9128a0f9770f2d4196b6d`  
		Last Modified: Wed, 31 Aug 2016 17:50:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d973a7de1a8f9db8d3d84bed42623a2264df8ad8b9e2764843eeed6189a5eea`  
		Last Modified: Wed, 31 Aug 2016 17:50:41 GMT  
		Size: 76.1 MB (76138067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e957f62d6ad11c27d7a85bedf93e93d82c5923f12ecd7f7c1dab7b71d646b88c`  
		Last Modified: Wed, 31 Aug 2016 17:50:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2`

```console
$ docker pull logstash@sha256:fed3cd898253e380d5c1c856aafc954da3287017b48231ed06710225c6675e40
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202030627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdc40ebec221394069561e0dddbeaf1fd2fc982324eff3f4b3cf3599135c437`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:45:10 GMT
ENV LOGSTASH_MAJOR=2.2
# Wed, 31 Aug 2016 17:45:11 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Wed, 31 Aug 2016 17:45:12 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:45:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:45:42 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:45:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:45:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:45:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:45:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:45:44 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1399a433b72785c7bcca4d6fb7157f3dbede972600e9128a0f9770f2d4196b6d`  
		Last Modified: Wed, 31 Aug 2016 17:50:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d973a7de1a8f9db8d3d84bed42623a2264df8ad8b9e2764843eeed6189a5eea`  
		Last Modified: Wed, 31 Aug 2016 17:50:41 GMT  
		Size: 76.1 MB (76138067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e957f62d6ad11c27d7a85bedf93e93d82c5923f12ecd7f7c1dab7b71d646b88c`  
		Last Modified: Wed, 31 Aug 2016 17:50:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3.4-1`

```console
$ docker pull logstash@sha256:2396584c4745272a69cec69e658f9272499c196322c8c4dfd7fc102453daa095
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206617706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092b86631fc91cf39b0a750a54bcf7cbe0bc5e37d1de8eda912a4f5cd72ba5c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:45:45 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 31 Aug 2016 17:45:45 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 31 Aug 2016 17:45:47 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:17 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:18 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:19 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:19 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9a38fac7c85f4babf2e309e46f8abb14aae9a842b5614d40fa02d3970bd95b`  
		Last Modified: Wed, 31 Aug 2016 17:51:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7618d7bcee0fa7f91e0b02233a489774cca5262a7c2e366faa32fb76979b4f90`  
		Last Modified: Wed, 31 Aug 2016 17:51:31 GMT  
		Size: 80.7 MB (80725148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda62155d9459cff29c4126c78bc158e136d3ee301a534261e947d173423f451`  
		Last Modified: Wed, 31 Aug 2016 17:51:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3.4`

```console
$ docker pull logstash@sha256:2396584c4745272a69cec69e658f9272499c196322c8c4dfd7fc102453daa095
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206617706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092b86631fc91cf39b0a750a54bcf7cbe0bc5e37d1de8eda912a4f5cd72ba5c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:45:45 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 31 Aug 2016 17:45:45 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 31 Aug 2016 17:45:47 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:17 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:18 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:19 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:19 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9a38fac7c85f4babf2e309e46f8abb14aae9a842b5614d40fa02d3970bd95b`  
		Last Modified: Wed, 31 Aug 2016 17:51:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7618d7bcee0fa7f91e0b02233a489774cca5262a7c2e366faa32fb76979b4f90`  
		Last Modified: Wed, 31 Aug 2016 17:51:31 GMT  
		Size: 80.7 MB (80725148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda62155d9459cff29c4126c78bc158e136d3ee301a534261e947d173423f451`  
		Last Modified: Wed, 31 Aug 2016 17:51:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3`

```console
$ docker pull logstash@sha256:2396584c4745272a69cec69e658f9272499c196322c8c4dfd7fc102453daa095
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206617706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092b86631fc91cf39b0a750a54bcf7cbe0bc5e37d1de8eda912a4f5cd72ba5c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:45:45 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 31 Aug 2016 17:45:45 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 31 Aug 2016 17:45:47 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:17 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:18 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:19 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:19 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9a38fac7c85f4babf2e309e46f8abb14aae9a842b5614d40fa02d3970bd95b`  
		Last Modified: Wed, 31 Aug 2016 17:51:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7618d7bcee0fa7f91e0b02233a489774cca5262a7c2e366faa32fb76979b4f90`  
		Last Modified: Wed, 31 Aug 2016 17:51:31 GMT  
		Size: 80.7 MB (80725148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda62155d9459cff29c4126c78bc158e136d3ee301a534261e947d173423f451`  
		Last Modified: Wed, 31 Aug 2016 17:51:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.0-1`

```console
$ docker pull logstash@sha256:13626bcc473076b5da3b1b81df1c71cd8ea80d5c79591d0f0d8886cf4617d0b8
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.0-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210695564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a814b4d36427d306d20dfc547e8c84c6f3a85b34c8433a34661aba03d5b880f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:46:20 GMT
ENV LOGSTASH_MAJOR=2.4
# Wed, 31 Aug 2016 17:46:23 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Wed, 31 Aug 2016 17:46:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:53 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:56 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:57 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:57 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bb71b09dd33b6489c80e82cc626b6ba860c1a1018e8991dda248fc052d9af7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb20d5d0844e5286d7fbcecdf2fb5847d14a4504c98c2cf436c0abdf761fc102`  
		Last Modified: Wed, 31 Aug 2016 17:52:20 GMT  
		Size: 84.8 MB (84803005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98a42bd5f72fa520f13245aefdbc50ee7f52c733221b292be976892fe3b85e7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.0`

```console
$ docker pull logstash@sha256:13626bcc473076b5da3b1b81df1c71cd8ea80d5c79591d0f0d8886cf4617d0b8
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210695564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a814b4d36427d306d20dfc547e8c84c6f3a85b34c8433a34661aba03d5b880f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:46:20 GMT
ENV LOGSTASH_MAJOR=2.4
# Wed, 31 Aug 2016 17:46:23 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Wed, 31 Aug 2016 17:46:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:53 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:56 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:57 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:57 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bb71b09dd33b6489c80e82cc626b6ba860c1a1018e8991dda248fc052d9af7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb20d5d0844e5286d7fbcecdf2fb5847d14a4504c98c2cf436c0abdf761fc102`  
		Last Modified: Wed, 31 Aug 2016 17:52:20 GMT  
		Size: 84.8 MB (84803005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98a42bd5f72fa520f13245aefdbc50ee7f52c733221b292be976892fe3b85e7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:13626bcc473076b5da3b1b81df1c71cd8ea80d5c79591d0f0d8886cf4617d0b8
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210695564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a814b4d36427d306d20dfc547e8c84c6f3a85b34c8433a34661aba03d5b880f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:46:20 GMT
ENV LOGSTASH_MAJOR=2.4
# Wed, 31 Aug 2016 17:46:23 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Wed, 31 Aug 2016 17:46:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:53 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:56 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:57 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:57 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bb71b09dd33b6489c80e82cc626b6ba860c1a1018e8991dda248fc052d9af7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb20d5d0844e5286d7fbcecdf2fb5847d14a4504c98c2cf436c0abdf761fc102`  
		Last Modified: Wed, 31 Aug 2016 17:52:20 GMT  
		Size: 84.8 MB (84803005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98a42bd5f72fa520f13245aefdbc50ee7f52c733221b292be976892fe3b85e7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2`

```console
$ docker pull logstash@sha256:13626bcc473076b5da3b1b81df1c71cd8ea80d5c79591d0f0d8886cf4617d0b8
```

-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210695564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a814b4d36427d306d20dfc547e8c84c6f3a85b34c8433a34661aba03d5b880f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:46:20 GMT
ENV LOGSTASH_MAJOR=2.4
# Wed, 31 Aug 2016 17:46:23 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Wed, 31 Aug 2016 17:46:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:53 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:56 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:57 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:57 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bb71b09dd33b6489c80e82cc626b6ba860c1a1018e8991dda248fc052d9af7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb20d5d0844e5286d7fbcecdf2fb5847d14a4504c98c2cf436c0abdf761fc102`  
		Last Modified: Wed, 31 Aug 2016 17:52:20 GMT  
		Size: 84.8 MB (84803005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98a42bd5f72fa520f13245aefdbc50ee7f52c733221b292be976892fe3b85e7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:13626bcc473076b5da3b1b81df1c71cd8ea80d5c79591d0f0d8886cf4617d0b8
```

-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210695564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a814b4d36427d306d20dfc547e8c84c6f3a85b34c8433a34661aba03d5b880f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:46:20 GMT
ENV LOGSTASH_MAJOR=2.4
# Wed, 31 Aug 2016 17:46:23 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Wed, 31 Aug 2016 17:46:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:46:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:46:53 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:46:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:46:56 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:46:57 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:46:57 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bb71b09dd33b6489c80e82cc626b6ba860c1a1018e8991dda248fc052d9af7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb20d5d0844e5286d7fbcecdf2fb5847d14a4504c98c2cf436c0abdf761fc102`  
		Last Modified: Wed, 31 Aug 2016 17:52:20 GMT  
		Size: 84.8 MB (84803005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98a42bd5f72fa520f13245aefdbc50ee7f52c733221b292be976892fe3b85e7`  
		Last Modified: Wed, 31 Aug 2016 17:52:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0.0-alpha5-1`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0-alpha5-1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
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
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0.0-alpha5`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0-alpha5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
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
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0.0`

```console
$ docker pull logstash@sha256:e5101792795747bc61f4d4cb2f3c19cd7362c819933ea48e69401e7d50044b40
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228683731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3091fd3ad007439b8ae4f8e8d2fc5965af27eb718e9533b8fcc3e8e8f241208d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:46:58 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 31 Aug 2016 17:46:59 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 31 Aug 2016 17:47:00 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:47:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:47:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:47:36 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:47:37 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:47:38 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:47:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:47:38 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebf0a5a0097c4672a460f0a8bd752e67888774adade9449231d74a3fed4853b`  
		Last Modified: Wed, 31 Aug 2016 17:53:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273b107f2948498de4c8ca5a958ab02c4f84ed2bb0ca8c4d59f280bf7281b05f`  
		Last Modified: Wed, 31 Aug 2016 17:53:43 GMT  
		Size: 102.8 MB (102789845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf571c5186d0223c18c7e108036f17a8d77a582ec4f7d548b3cd1b473c991bec`  
		Last Modified: Wed, 31 Aug 2016 17:53:09 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d27908725be102227a3522e14e3c6d108a72e47028fc9629cd5a5c62c1600b`  
		Last Modified: Wed, 31 Aug 2016 17:53:09 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0`

```console
$ docker pull logstash@sha256:e5101792795747bc61f4d4cb2f3c19cd7362c819933ea48e69401e7d50044b40
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228683731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3091fd3ad007439b8ae4f8e8d2fc5965af27eb718e9533b8fcc3e8e8f241208d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 31 Aug 2016 17:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:43:18 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 31 Aug 2016 17:43:18 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:43:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 17:43:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 31 Aug 2016 17:46:58 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 31 Aug 2016 17:46:59 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 31 Aug 2016 17:47:00 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 31 Aug 2016 17:47:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:47:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 17:47:36 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 31 Aug 2016 17:47:37 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 31 Aug 2016 17:47:38 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Wed, 31 Aug 2016 17:47:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:47:38 GMT
CMD ["-e" ""]
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
	-	`sha256:c05d88e04510ba9520a0e33eb0af256ed2e045c84b9b442e72516278ee1aa65e`  
		Last Modified: Wed, 31 Aug 2016 17:47:52 GMT  
		Size: 934.0 KB (934007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805365ff503047748a6cf83fcabceb6a5de67123ae08ef8934f30022feee44`  
		Last Modified: Wed, 31 Aug 2016 17:47:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add191373081377c6068009e96b25f17f6278807be39d6549d0f88aedeccd494`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7876981e367921d568d2c7d1d0cad08555d386903fbd5e62c731871c99dafdf`  
		Last Modified: Wed, 31 Aug 2016 17:47:48 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebf0a5a0097c4672a460f0a8bd752e67888774adade9449231d74a3fed4853b`  
		Last Modified: Wed, 31 Aug 2016 17:53:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273b107f2948498de4c8ca5a958ab02c4f84ed2bb0ca8c4d59f280bf7281b05f`  
		Last Modified: Wed, 31 Aug 2016 17:53:43 GMT  
		Size: 102.8 MB (102789845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf571c5186d0223c18c7e108036f17a8d77a582ec4f7d548b3cd1b473c991bec`  
		Last Modified: Wed, 31 Aug 2016 17:53:09 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d27908725be102227a3522e14e3c6d108a72e47028fc9629cd5a5c62c1600b`  
		Last Modified: Wed, 31 Aug 2016 17:53:09 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
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
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
