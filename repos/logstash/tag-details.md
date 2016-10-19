<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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
-	[`logstash:5.0.0-rc1-1`](#logstash500-rc1-1)
-	[`logstash:5.0.0-rc1`](#logstash500-rc1)
-	[`logstash:5.0.0`](#logstash500)
-	[`logstash:5.0`](#logstash50)
-	[`logstash:5`](#logstash5)

## `logstash:1.5.6-1`

```console
$ docker pull logstash@sha256:7c86bc85fabebafebf11fa0657137a379d7bafecff44d8ba4ce858fdf6faa168
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217055728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b739dc9dc3beff5b57e10ba1fdff0ad72a27df22531d176dd3f87385b57a6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:26:25 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:26:26 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Fri, 14 Oct 2016 17:26:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:26:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:26:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:26:45 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:26:46 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:26:47 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b8f3bae496a52465ba0ec55c17b9531ebd02010e0bd0e77e5f883d7005f56f`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f955e212e386050c056d3e7083864b5563be3120bde6bd2fcda848eca01090fb`  
		Last Modified: Fri, 14 Oct 2016 17:29:30 GMT  
		Size: 90.8 MB (90753379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9948d65d7ee315f036d62a1fe44d004f5c98545343b766c20faec45cd03824`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6`

```console
$ docker pull logstash@sha256:7c86bc85fabebafebf11fa0657137a379d7bafecff44d8ba4ce858fdf6faa168
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217055728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b739dc9dc3beff5b57e10ba1fdff0ad72a27df22531d176dd3f87385b57a6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:26:25 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:26:26 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Fri, 14 Oct 2016 17:26:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:26:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:26:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:26:45 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:26:46 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:26:47 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b8f3bae496a52465ba0ec55c17b9531ebd02010e0bd0e77e5f883d7005f56f`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f955e212e386050c056d3e7083864b5563be3120bde6bd2fcda848eca01090fb`  
		Last Modified: Fri, 14 Oct 2016 17:29:30 GMT  
		Size: 90.8 MB (90753379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9948d65d7ee315f036d62a1fe44d004f5c98545343b766c20faec45cd03824`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5`

```console
$ docker pull logstash@sha256:7c86bc85fabebafebf11fa0657137a379d7bafecff44d8ba4ce858fdf6faa168
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217055728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b739dc9dc3beff5b57e10ba1fdff0ad72a27df22531d176dd3f87385b57a6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:26:25 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:26:26 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Fri, 14 Oct 2016 17:26:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:26:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:26:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:26:45 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:26:46 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:26:47 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b8f3bae496a52465ba0ec55c17b9531ebd02010e0bd0e77e5f883d7005f56f`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f955e212e386050c056d3e7083864b5563be3120bde6bd2fcda848eca01090fb`  
		Last Modified: Fri, 14 Oct 2016 17:29:30 GMT  
		Size: 90.8 MB (90753379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9948d65d7ee315f036d62a1fe44d004f5c98545343b766c20faec45cd03824`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1`

```console
$ docker pull logstash@sha256:7c86bc85fabebafebf11fa0657137a379d7bafecff44d8ba4ce858fdf6faa168
```

-	Platforms:
	-	linux; amd64

### `logstash:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217055728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b739dc9dc3beff5b57e10ba1fdff0ad72a27df22531d176dd3f87385b57a6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:26:25 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:26:26 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Fri, 14 Oct 2016 17:26:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:26:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:26:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:26:45 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:26:46 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:26:47 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b8f3bae496a52465ba0ec55c17b9531ebd02010e0bd0e77e5f883d7005f56f`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f955e212e386050c056d3e7083864b5563be3120bde6bd2fcda848eca01090fb`  
		Last Modified: Fri, 14 Oct 2016 17:29:30 GMT  
		Size: 90.8 MB (90753379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9948d65d7ee315f036d62a1fe44d004f5c98545343b766c20faec45cd03824`  
		Last Modified: Fri, 14 Oct 2016 17:29:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0.0-1`

```console
$ docker pull logstash@sha256:5db8bc09d9ce206afbf2470cdfa5382726e266925fa2c9dcf857ecc717387e8b
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207835520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b08f4eb4b29ce19fb73df6aef352ad8c02d8ffc9fb5caa1d94199b51f84857`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:26:48 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.0/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:26:48 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Fri, 14 Oct 2016 17:27:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf49f436a989e07d32e09c8011c9f8b2df44d7e02bc22aa53eef88d59d3ea2f`  
		Last Modified: Fri, 14 Oct 2016 17:30:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c0aba4cb984e54cfd23fa59acca70834cc26d9a10093a50ec03fc1eb06c1`  
		Last Modified: Fri, 14 Oct 2016 17:30:31 GMT  
		Size: 81.5 MB (81533171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0aea0fcb0ed4aeeb9cb0e0faf3ce93e013cc44eef2f597a357f6e65acca985`  
		Last Modified: Fri, 14 Oct 2016 17:30:19 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0.0`

```console
$ docker pull logstash@sha256:5db8bc09d9ce206afbf2470cdfa5382726e266925fa2c9dcf857ecc717387e8b
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207835520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b08f4eb4b29ce19fb73df6aef352ad8c02d8ffc9fb5caa1d94199b51f84857`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:26:48 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.0/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:26:48 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Fri, 14 Oct 2016 17:27:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf49f436a989e07d32e09c8011c9f8b2df44d7e02bc22aa53eef88d59d3ea2f`  
		Last Modified: Fri, 14 Oct 2016 17:30:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c0aba4cb984e54cfd23fa59acca70834cc26d9a10093a50ec03fc1eb06c1`  
		Last Modified: Fri, 14 Oct 2016 17:30:31 GMT  
		Size: 81.5 MB (81533171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0aea0fcb0ed4aeeb9cb0e0faf3ce93e013cc44eef2f597a357f6e65acca985`  
		Last Modified: Fri, 14 Oct 2016 17:30:19 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0`

```console
$ docker pull logstash@sha256:5db8bc09d9ce206afbf2470cdfa5382726e266925fa2c9dcf857ecc717387e8b
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207835520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b08f4eb4b29ce19fb73df6aef352ad8c02d8ffc9fb5caa1d94199b51f84857`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:26:48 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.0/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:26:48 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Fri, 14 Oct 2016 17:27:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf49f436a989e07d32e09c8011c9f8b2df44d7e02bc22aa53eef88d59d3ea2f`  
		Last Modified: Fri, 14 Oct 2016 17:30:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036c0aba4cb984e54cfd23fa59acca70834cc26d9a10093a50ec03fc1eb06c1`  
		Last Modified: Fri, 14 Oct 2016 17:30:31 GMT  
		Size: 81.5 MB (81533171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0aea0fcb0ed4aeeb9cb0e0faf3ce93e013cc44eef2f597a357f6e65acca985`  
		Last Modified: Fri, 14 Oct 2016 17:30:19 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1.3-1`

```console
$ docker pull logstash@sha256:d88492f7a69b450fffe8ead7203d06df8b2d163bca80d4eca3ed4699623fdc5b
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201640019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec6ff4e14378c32675bc7a9831a82afddc949a0a1c4f9bbe80b406158eda388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:11 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.1/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:11 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Fri, 14 Oct 2016 17:27:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:29 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:29 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:30 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:31 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:31 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53016bd1274475743e426564a4f3e3ec391fa3086c8036a8f0724e0265a451f4`  
		Last Modified: Fri, 14 Oct 2016 17:31:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a32a42db6f5042959c3897844d496da976d5c434faa70e955d82e1f6c78178f`  
		Last Modified: Fri, 14 Oct 2016 17:31:21 GMT  
		Size: 75.3 MB (75337668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945b815803909e61ed52120d65bc29ddc4fb9911ed124a80a512f590bb993395`  
		Last Modified: Fri, 14 Oct 2016 17:31:07 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1.3`

```console
$ docker pull logstash@sha256:d88492f7a69b450fffe8ead7203d06df8b2d163bca80d4eca3ed4699623fdc5b
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201640019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec6ff4e14378c32675bc7a9831a82afddc949a0a1c4f9bbe80b406158eda388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:11 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.1/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:11 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Fri, 14 Oct 2016 17:27:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:29 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:29 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:30 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:31 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:31 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53016bd1274475743e426564a4f3e3ec391fa3086c8036a8f0724e0265a451f4`  
		Last Modified: Fri, 14 Oct 2016 17:31:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a32a42db6f5042959c3897844d496da976d5c434faa70e955d82e1f6c78178f`  
		Last Modified: Fri, 14 Oct 2016 17:31:21 GMT  
		Size: 75.3 MB (75337668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945b815803909e61ed52120d65bc29ddc4fb9911ed124a80a512f590bb993395`  
		Last Modified: Fri, 14 Oct 2016 17:31:07 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1`

```console
$ docker pull logstash@sha256:d88492f7a69b450fffe8ead7203d06df8b2d163bca80d4eca3ed4699623fdc5b
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201640019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec6ff4e14378c32675bc7a9831a82afddc949a0a1c4f9bbe80b406158eda388`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:11 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.1/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:11 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Fri, 14 Oct 2016 17:27:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:29 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:29 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:30 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:31 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:31 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53016bd1274475743e426564a4f3e3ec391fa3086c8036a8f0724e0265a451f4`  
		Last Modified: Fri, 14 Oct 2016 17:31:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a32a42db6f5042959c3897844d496da976d5c434faa70e955d82e1f6c78178f`  
		Last Modified: Fri, 14 Oct 2016 17:31:21 GMT  
		Size: 75.3 MB (75337668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945b815803909e61ed52120d65bc29ddc4fb9911ed124a80a512f590bb993395`  
		Last Modified: Fri, 14 Oct 2016 17:31:07 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2.4-1`

```console
$ docker pull logstash@sha256:61a17f284014f902606e1adf571eab8e2a17530bcb61901a7bceef378f48fe9d
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202440816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03e6de79c66050c68774009e8d09694086b16b0674787194fde5bf0af2ebce7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:33 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:33 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Fri, 14 Oct 2016 17:27:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:51 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:51 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:52 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:53 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:54 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4926a47366fb3d023a6c42858919e830c16aa7c800c26dbb6d13f1c68355b8c`  
		Last Modified: Fri, 14 Oct 2016 17:32:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7971d3bf1ac558c17225b8810140ba28889f5b004a2407ded91dcb0604d98fb0`  
		Last Modified: Fri, 14 Oct 2016 17:32:14 GMT  
		Size: 76.1 MB (76138466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd608cba1ca9af6570d19c72675b2b2d754945ca3c6f594bc38669427f567fca`  
		Last Modified: Fri, 14 Oct 2016 17:32:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2.4`

```console
$ docker pull logstash@sha256:61a17f284014f902606e1adf571eab8e2a17530bcb61901a7bceef378f48fe9d
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202440816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03e6de79c66050c68774009e8d09694086b16b0674787194fde5bf0af2ebce7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:33 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:33 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Fri, 14 Oct 2016 17:27:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:51 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:51 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:52 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:53 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:54 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4926a47366fb3d023a6c42858919e830c16aa7c800c26dbb6d13f1c68355b8c`  
		Last Modified: Fri, 14 Oct 2016 17:32:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7971d3bf1ac558c17225b8810140ba28889f5b004a2407ded91dcb0604d98fb0`  
		Last Modified: Fri, 14 Oct 2016 17:32:14 GMT  
		Size: 76.1 MB (76138466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd608cba1ca9af6570d19c72675b2b2d754945ca3c6f594bc38669427f567fca`  
		Last Modified: Fri, 14 Oct 2016 17:32:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2`

```console
$ docker pull logstash@sha256:61a17f284014f902606e1adf571eab8e2a17530bcb61901a7bceef378f48fe9d
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202440816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03e6de79c66050c68774009e8d09694086b16b0674787194fde5bf0af2ebce7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:33 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:33 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Fri, 14 Oct 2016 17:27:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:27:51 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:27:51 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:27:52 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:27:53 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:27:54 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4926a47366fb3d023a6c42858919e830c16aa7c800c26dbb6d13f1c68355b8c`  
		Last Modified: Fri, 14 Oct 2016 17:32:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7971d3bf1ac558c17225b8810140ba28889f5b004a2407ded91dcb0604d98fb0`  
		Last Modified: Fri, 14 Oct 2016 17:32:14 GMT  
		Size: 76.1 MB (76138466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd608cba1ca9af6570d19c72675b2b2d754945ca3c6f594bc38669427f567fca`  
		Last Modified: Fri, 14 Oct 2016 17:32:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3.4-1`

```console
$ docker pull logstash@sha256:e3d6408771582c19826a7d7498678de93620697dc3be7d0f1067c00af91d1f81
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207027406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f07e90a11b293bffc134d90822c223d9451db5955be29abd76405cc47f599c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:55 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.3/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:55 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Fri, 14 Oct 2016 17:28:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:13 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:14 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:15 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:15 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:16 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153ac03261437912f32b0538ea2b176d133d0deba15b1cb3130f3be7a8bfab12`  
		Last Modified: Fri, 14 Oct 2016 17:32:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffe16c7ac9d06749e2595d0ec6fbd26c22e53e32f16d617a627c3196a3b3867`  
		Last Modified: Fri, 14 Oct 2016 17:33:05 GMT  
		Size: 80.7 MB (80725055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f89c9eeb6c8771bb8d8611f9c1ccb7de342329308065ff393004aea55927ae4`  
		Last Modified: Fri, 14 Oct 2016 17:32:52 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3.4`

```console
$ docker pull logstash@sha256:e3d6408771582c19826a7d7498678de93620697dc3be7d0f1067c00af91d1f81
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207027406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f07e90a11b293bffc134d90822c223d9451db5955be29abd76405cc47f599c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:55 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.3/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:55 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Fri, 14 Oct 2016 17:28:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:13 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:14 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:15 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:15 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:16 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153ac03261437912f32b0538ea2b176d133d0deba15b1cb3130f3be7a8bfab12`  
		Last Modified: Fri, 14 Oct 2016 17:32:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffe16c7ac9d06749e2595d0ec6fbd26c22e53e32f16d617a627c3196a3b3867`  
		Last Modified: Fri, 14 Oct 2016 17:33:05 GMT  
		Size: 80.7 MB (80725055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f89c9eeb6c8771bb8d8611f9c1ccb7de342329308065ff393004aea55927ae4`  
		Last Modified: Fri, 14 Oct 2016 17:32:52 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3`

```console
$ docker pull logstash@sha256:e3d6408771582c19826a7d7498678de93620697dc3be7d0f1067c00af91d1f81
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207027406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f07e90a11b293bffc134d90822c223d9451db5955be29abd76405cc47f599c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:27:55 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.3/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:27:55 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Fri, 14 Oct 2016 17:28:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:13 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:14 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:15 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:15 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:16 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153ac03261437912f32b0538ea2b176d133d0deba15b1cb3130f3be7a8bfab12`  
		Last Modified: Fri, 14 Oct 2016 17:32:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffe16c7ac9d06749e2595d0ec6fbd26c22e53e32f16d617a627c3196a3b3867`  
		Last Modified: Fri, 14 Oct 2016 17:33:05 GMT  
		Size: 80.7 MB (80725055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f89c9eeb6c8771bb8d8611f9c1ccb7de342329308065ff393004aea55927ae4`  
		Last Modified: Fri, 14 Oct 2016 17:32:52 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.0-1`

```console
$ docker pull logstash@sha256:85b7140753f0f1bf9764c15c4ef09c6c0738be64b9d7dc81ba7dbcb1151756af
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.0-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211105425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca34df702f8dba3300cc248ff4925cb83ed16aa648575c1fc7988150bb74858`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:17 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:18 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Fri, 14 Oct 2016 17:28:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:38 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:38 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146e442e4e35a52d5aee89c4a1a22931711bf7c011cab4cb19c0dda7295394e`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e8027a23649e4003ad22ffd5535d5c822c21e69a932a5a2d07a2f9734b7bf9`  
		Last Modified: Fri, 14 Oct 2016 17:33:56 GMT  
		Size: 84.8 MB (84803073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ccab6595e6eebeea5c5bbf8070ee7383b711ee486f6c4930da36ea82062581`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.0`

```console
$ docker pull logstash@sha256:85b7140753f0f1bf9764c15c4ef09c6c0738be64b9d7dc81ba7dbcb1151756af
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211105425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca34df702f8dba3300cc248ff4925cb83ed16aa648575c1fc7988150bb74858`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:17 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:18 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Fri, 14 Oct 2016 17:28:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:38 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:38 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146e442e4e35a52d5aee89c4a1a22931711bf7c011cab4cb19c0dda7295394e`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e8027a23649e4003ad22ffd5535d5c822c21e69a932a5a2d07a2f9734b7bf9`  
		Last Modified: Fri, 14 Oct 2016 17:33:56 GMT  
		Size: 84.8 MB (84803073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ccab6595e6eebeea5c5bbf8070ee7383b711ee486f6c4930da36ea82062581`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:85b7140753f0f1bf9764c15c4ef09c6c0738be64b9d7dc81ba7dbcb1151756af
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211105425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca34df702f8dba3300cc248ff4925cb83ed16aa648575c1fc7988150bb74858`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:17 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:18 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Fri, 14 Oct 2016 17:28:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:38 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:38 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146e442e4e35a52d5aee89c4a1a22931711bf7c011cab4cb19c0dda7295394e`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e8027a23649e4003ad22ffd5535d5c822c21e69a932a5a2d07a2f9734b7bf9`  
		Last Modified: Fri, 14 Oct 2016 17:33:56 GMT  
		Size: 84.8 MB (84803073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ccab6595e6eebeea5c5bbf8070ee7383b711ee486f6c4930da36ea82062581`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2`

```console
$ docker pull logstash@sha256:85b7140753f0f1bf9764c15c4ef09c6c0738be64b9d7dc81ba7dbcb1151756af
```

-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211105425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca34df702f8dba3300cc248ff4925cb83ed16aa648575c1fc7988150bb74858`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:17 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:18 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Fri, 14 Oct 2016 17:28:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:38 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:38 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146e442e4e35a52d5aee89c4a1a22931711bf7c011cab4cb19c0dda7295394e`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e8027a23649e4003ad22ffd5535d5c822c21e69a932a5a2d07a2f9734b7bf9`  
		Last Modified: Fri, 14 Oct 2016 17:33:56 GMT  
		Size: 84.8 MB (84803073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ccab6595e6eebeea5c5bbf8070ee7383b711ee486f6c4930da36ea82062581`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:85b7140753f0f1bf9764c15c4ef09c6c0738be64b9d7dc81ba7dbcb1151756af
```

-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211105425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca34df702f8dba3300cc248ff4925cb83ed16aa648575c1fc7988150bb74858`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:17 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:18 GMT
ENV LOGSTASH_VERSION=1:2.4.0-1
# Fri, 14 Oct 2016 17:28:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:28:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:28:37 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:28:38 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:28:38 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:28:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:28:39 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146e442e4e35a52d5aee89c4a1a22931711bf7c011cab4cb19c0dda7295394e`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e8027a23649e4003ad22ffd5535d5c822c21e69a932a5a2d07a2f9734b7bf9`  
		Last Modified: Fri, 14 Oct 2016 17:33:56 GMT  
		Size: 84.8 MB (84803073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ccab6595e6eebeea5c5bbf8070ee7383b711ee486f6c4930da36ea82062581`  
		Last Modified: Fri, 14 Oct 2016 17:33:42 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0.0-rc1-1`

```console
$ docker pull logstash@sha256:97489c63583951c6d430692b70998fafb9a765f05e867d2edc4e21579283a819
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0-rc1-1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (231977163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5639612ae67c6e8a9e8859a856b31bbaaa7e5b22ba4651c2662f99bd87ec701b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:41 GMT
ENV LOGSTASH_VERSION=1:5.0.0~rc1-1
# Fri, 14 Oct 2016 17:29:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:29:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:29:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:29:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:29:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:29:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:29:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bf5fcf1141900b4c55de0eb73bb2a44b5ab1282e93991110e8f4af6bcc0841`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7b4c230f6d8b996c0981a2ba38371e76fb4033103c870b024034fa99507864`  
		Last Modified: Fri, 14 Oct 2016 17:35:14 GMT  
		Size: 105.7 MB (105673460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5c6d7cb2b928d150fe72f4944107d9a32d33b58956c4608e3c87d30b4efe8b`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1eafc37816231c26cc602f90bf886308fbb0d8d3b532309947e00658cdcf5`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0.0-rc1`

```console
$ docker pull logstash@sha256:97489c63583951c6d430692b70998fafb9a765f05e867d2edc4e21579283a819
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (231977163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5639612ae67c6e8a9e8859a856b31bbaaa7e5b22ba4651c2662f99bd87ec701b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:41 GMT
ENV LOGSTASH_VERSION=1:5.0.0~rc1-1
# Fri, 14 Oct 2016 17:29:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:29:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:29:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:29:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:29:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:29:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:29:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bf5fcf1141900b4c55de0eb73bb2a44b5ab1282e93991110e8f4af6bcc0841`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7b4c230f6d8b996c0981a2ba38371e76fb4033103c870b024034fa99507864`  
		Last Modified: Fri, 14 Oct 2016 17:35:14 GMT  
		Size: 105.7 MB (105673460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5c6d7cb2b928d150fe72f4944107d9a32d33b58956c4608e3c87d30b4efe8b`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1eafc37816231c26cc602f90bf886308fbb0d8d3b532309947e00658cdcf5`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0.0`

```console
$ docker pull logstash@sha256:97489c63583951c6d430692b70998fafb9a765f05e867d2edc4e21579283a819
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (231977163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5639612ae67c6e8a9e8859a856b31bbaaa7e5b22ba4651c2662f99bd87ec701b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:41 GMT
ENV LOGSTASH_VERSION=1:5.0.0~rc1-1
# Fri, 14 Oct 2016 17:29:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:29:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:29:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:29:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:29:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:29:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:29:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bf5fcf1141900b4c55de0eb73bb2a44b5ab1282e93991110e8f4af6bcc0841`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7b4c230f6d8b996c0981a2ba38371e76fb4033103c870b024034fa99507864`  
		Last Modified: Fri, 14 Oct 2016 17:35:14 GMT  
		Size: 105.7 MB (105673460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5c6d7cb2b928d150fe72f4944107d9a32d33b58956c4608e3c87d30b4efe8b`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1eafc37816231c26cc602f90bf886308fbb0d8d3b532309947e00658cdcf5`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0`

```console
$ docker pull logstash@sha256:97489c63583951c6d430692b70998fafb9a765f05e867d2edc4e21579283a819
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (231977163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5639612ae67c6e8a9e8859a856b31bbaaa7e5b22ba4651c2662f99bd87ec701b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:41 GMT
ENV LOGSTASH_VERSION=1:5.0.0~rc1-1
# Fri, 14 Oct 2016 17:29:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:29:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:29:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:29:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:29:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:29:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:29:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bf5fcf1141900b4c55de0eb73bb2a44b5ab1282e93991110e8f4af6bcc0841`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7b4c230f6d8b996c0981a2ba38371e76fb4033103c870b024034fa99507864`  
		Last Modified: Fri, 14 Oct 2016 17:35:14 GMT  
		Size: 105.7 MB (105673460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5c6d7cb2b928d150fe72f4944107d9a32d33b58956c4608e3c87d30b4efe8b`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1eafc37816231c26cc602f90bf886308fbb0d8d3b532309947e00658cdcf5`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:97489c63583951c6d430692b70998fafb9a765f05e867d2edc4e21579283a819
```

-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (231977163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5639612ae67c6e8a9e8859a856b31bbaaa7e5b22ba4651c2662f99bd87ec701b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 11 Oct 2016 21:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:12:19 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 11 Oct 2016 21:12:19 GMT
ENV GOSU_VERSION=1.7
# Tue, 11 Oct 2016 21:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:12:25 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 14 Oct 2016 17:28:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x-prerelease/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 14 Oct 2016 17:28:41 GMT
ENV LOGSTASH_VERSION=1:5.0.0~rc1-1
# Fri, 14 Oct 2016 17:29:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:29:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:29:07 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 14 Oct 2016 17:29:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Fri, 14 Oct 2016 17:29:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Fri, 14 Oct 2016 17:29:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:29:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86112dfd1497a5d875ff367da7266ca6f4405ea3ca35cd4f8a9aaa3c2358b19f`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 1.4 MB (1356605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989fe7fe97f9dc3b9802687961469586a697502e1c88b651613786653667631`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b32254697188345fb050e3dffadbd38367de39e098062f37a048cd6883bab6`  
		Last Modified: Tue, 11 Oct 2016 21:16:42 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5b4978626d1784a772dd4b3aef3ecd9acf4ab949fdfb03df84dffd880e8a4`  
		Last Modified: Tue, 11 Oct 2016 21:16:39 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bf5fcf1141900b4c55de0eb73bb2a44b5ab1282e93991110e8f4af6bcc0841`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7b4c230f6d8b996c0981a2ba38371e76fb4033103c870b024034fa99507864`  
		Last Modified: Fri, 14 Oct 2016 17:35:14 GMT  
		Size: 105.7 MB (105673460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5c6d7cb2b928d150fe72f4944107d9a32d33b58956c4608e3c87d30b4efe8b`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c1eafc37816231c26cc602f90bf886308fbb0d8d3b532309947e00658cdcf5`  
		Last Modified: Fri, 14 Oct 2016 17:34:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
