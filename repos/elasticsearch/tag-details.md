<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5.4.0`](#elasticsearch540)
-	[`elasticsearch:5.4`](#elasticsearch54)
-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:latest`](#elasticsearchlatest)
-	[`elasticsearch:5.4.0-alpine`](#elasticsearch540-alpine)
-	[`elasticsearch:5.4-alpine`](#elasticsearch54-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:2.4.5`](#elasticsearch245)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:2.4.5-alpine`](#elasticsearch245-alpine)
-	[`elasticsearch:2.4-alpine`](#elasticsearch24-alpine)
-	[`elasticsearch:2-alpine`](#elasticsearch2-alpine)
-	[`elasticsearch:1.7.6`](#elasticsearch176)
-	[`elasticsearch:1.7`](#elasticsearch17)
-	[`elasticsearch:1`](#elasticsearch1)
-	[`elasticsearch:1.7.6-alpine`](#elasticsearch176-alpine)
-	[`elasticsearch:1.7-alpine`](#elasticsearch17-alpine)
-	[`elasticsearch:1-alpine`](#elasticsearch1-alpine)

## `elasticsearch:5.4.0`

```console
$ docker pull elasticsearch@sha256:d64b435e0ddc707e38eee786190f0d2c84ce13e22bc27db606e05b44b5f47101
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161475103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99bc08f2bc4978fe85fb343b6ba9df277d7550ef4a7b91bb59f24d19e7e29e96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 00:25:57 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 00:26:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 00:26:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 11 May 2017 00:29:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 May 2017 00:29:13 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:14 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Thu, 11 May 2017 00:29:25 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 00:29:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 00:29:27 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:29:29 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 May 2017 00:29:30 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:29:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:29:32 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 11 May 2017 00:29:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:29:34 GMT
CMD ["elasticsearch"]
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
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e3a816b6100cd0ef141a6c9b7c1760d09c8c3614f22595c37026af3d9ea44`  
		Last Modified: Sat, 13 May 2017 15:14:37 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd4231d619ec0ca94d125af3db09ea925e34790f9dc240ee735fd1637b5a7e`  
		Last Modified: Sat, 13 May 2017 15:14:34 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e177865951c92cade9e7f130eaa99fc6660210fa8dc19d67046c38fc980d35d`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 542.6 KB (542578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47855e3753ca93aec57f4d5cf8e1eaebd6935a4ad2ddcac7001542c9427bbaa1`  
		Last Modified: Sat, 13 May 2017 15:19:36 GMT  
		Size: 33.3 MB (33337184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329456a068cb693140f3451373e701e83a369c3c496489561db85de3094cf6d7`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1bcc750198af768404f38860ffe2affcbf35ca4f538f59f7acbee289465ab`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a2d1205c1772b33da64107ee62ad4d77a9fe82ab394776350e537abaf8f975`  
		Last Modified: Sat, 13 May 2017 15:19:34 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4`

```console
$ docker pull elasticsearch@sha256:d64b435e0ddc707e38eee786190f0d2c84ce13e22bc27db606e05b44b5f47101
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161475103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99bc08f2bc4978fe85fb343b6ba9df277d7550ef4a7b91bb59f24d19e7e29e96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 00:25:57 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 00:26:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 00:26:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 11 May 2017 00:29:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 May 2017 00:29:13 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:14 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Thu, 11 May 2017 00:29:25 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 00:29:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 00:29:27 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:29:29 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 May 2017 00:29:30 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:29:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:29:32 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 11 May 2017 00:29:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:29:34 GMT
CMD ["elasticsearch"]
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
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e3a816b6100cd0ef141a6c9b7c1760d09c8c3614f22595c37026af3d9ea44`  
		Last Modified: Sat, 13 May 2017 15:14:37 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd4231d619ec0ca94d125af3db09ea925e34790f9dc240ee735fd1637b5a7e`  
		Last Modified: Sat, 13 May 2017 15:14:34 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e177865951c92cade9e7f130eaa99fc6660210fa8dc19d67046c38fc980d35d`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 542.6 KB (542578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47855e3753ca93aec57f4d5cf8e1eaebd6935a4ad2ddcac7001542c9427bbaa1`  
		Last Modified: Sat, 13 May 2017 15:19:36 GMT  
		Size: 33.3 MB (33337184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329456a068cb693140f3451373e701e83a369c3c496489561db85de3094cf6d7`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1bcc750198af768404f38860ffe2affcbf35ca4f538f59f7acbee289465ab`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a2d1205c1772b33da64107ee62ad4d77a9fe82ab394776350e537abaf8f975`  
		Last Modified: Sat, 13 May 2017 15:19:34 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:d64b435e0ddc707e38eee786190f0d2c84ce13e22bc27db606e05b44b5f47101
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161475103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99bc08f2bc4978fe85fb343b6ba9df277d7550ef4a7b91bb59f24d19e7e29e96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 00:25:57 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 00:26:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 00:26:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 11 May 2017 00:29:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 May 2017 00:29:13 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:14 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Thu, 11 May 2017 00:29:25 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 00:29:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 00:29:27 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:29:29 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 May 2017 00:29:30 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:29:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:29:32 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 11 May 2017 00:29:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:29:34 GMT
CMD ["elasticsearch"]
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
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e3a816b6100cd0ef141a6c9b7c1760d09c8c3614f22595c37026af3d9ea44`  
		Last Modified: Sat, 13 May 2017 15:14:37 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd4231d619ec0ca94d125af3db09ea925e34790f9dc240ee735fd1637b5a7e`  
		Last Modified: Sat, 13 May 2017 15:14:34 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e177865951c92cade9e7f130eaa99fc6660210fa8dc19d67046c38fc980d35d`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 542.6 KB (542578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47855e3753ca93aec57f4d5cf8e1eaebd6935a4ad2ddcac7001542c9427bbaa1`  
		Last Modified: Sat, 13 May 2017 15:19:36 GMT  
		Size: 33.3 MB (33337184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329456a068cb693140f3451373e701e83a369c3c496489561db85de3094cf6d7`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1bcc750198af768404f38860ffe2affcbf35ca4f538f59f7acbee289465ab`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a2d1205c1772b33da64107ee62ad4d77a9fe82ab394776350e537abaf8f975`  
		Last Modified: Sat, 13 May 2017 15:19:34 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:d64b435e0ddc707e38eee786190f0d2c84ce13e22bc27db606e05b44b5f47101
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161475103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99bc08f2bc4978fe85fb343b6ba9df277d7550ef4a7b91bb59f24d19e7e29e96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 00:25:57 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 00:26:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 00:26:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 11 May 2017 00:29:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 May 2017 00:29:13 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:14 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Thu, 11 May 2017 00:29:25 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 00:29:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 00:29:27 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:29:29 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 May 2017 00:29:30 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:29:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:29:32 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 11 May 2017 00:29:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:29:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:29:34 GMT
CMD ["elasticsearch"]
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
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e3a816b6100cd0ef141a6c9b7c1760d09c8c3614f22595c37026af3d9ea44`  
		Last Modified: Sat, 13 May 2017 15:14:37 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd4231d619ec0ca94d125af3db09ea925e34790f9dc240ee735fd1637b5a7e`  
		Last Modified: Sat, 13 May 2017 15:14:34 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e177865951c92cade9e7f130eaa99fc6660210fa8dc19d67046c38fc980d35d`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 542.6 KB (542578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47855e3753ca93aec57f4d5cf8e1eaebd6935a4ad2ddcac7001542c9427bbaa1`  
		Last Modified: Sat, 13 May 2017 15:19:36 GMT  
		Size: 33.3 MB (33337184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329456a068cb693140f3451373e701e83a369c3c496489561db85de3094cf6d7`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1bcc750198af768404f38860ffe2affcbf35ca4f538f59f7acbee289465ab`  
		Last Modified: Sat, 13 May 2017 15:19:33 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a2d1205c1772b33da64107ee62ad4d77a9fe82ab394776350e537abaf8f975`  
		Last Modified: Sat, 13 May 2017 15:19:34 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4.0-alpine`

```console
$ docker pull elasticsearch@sha256:f5babe01eaf20d9773c4f1f12cf1bb88e4155e73aee5282ce7000e8da06dffef
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91063341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab27d6253bbc78c476324047052eb77de9e332a469d9d3f1a2f0269364ff011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:29:54 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:55 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Thu, 11 May 2017 00:30:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:30:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:30:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:30:08 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:30:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:30:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:30:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fcb8aaa394963d3fc23c0a1390189c5ab544f71ab0f2dc15fcd8529d4fe14c`  
		Last Modified: Sat, 13 May 2017 15:21:14 GMT  
		Size: 33.7 MB (33729137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9752a8e3fc0b7b953c6323756a78330c3adc3973e69be9dcd61abd13015209a`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97e86d75ccdc8f31c93b498e7328cacaa5e63007988536cfbac90a07ff4f399`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4-alpine`

```console
$ docker pull elasticsearch@sha256:f5babe01eaf20d9773c4f1f12cf1bb88e4155e73aee5282ce7000e8da06dffef
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91063341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab27d6253bbc78c476324047052eb77de9e332a469d9d3f1a2f0269364ff011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:29:54 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:55 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Thu, 11 May 2017 00:30:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:30:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:30:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:30:08 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:30:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:30:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:30:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fcb8aaa394963d3fc23c0a1390189c5ab544f71ab0f2dc15fcd8529d4fe14c`  
		Last Modified: Sat, 13 May 2017 15:21:14 GMT  
		Size: 33.7 MB (33729137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9752a8e3fc0b7b953c6323756a78330c3adc3973e69be9dcd61abd13015209a`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97e86d75ccdc8f31c93b498e7328cacaa5e63007988536cfbac90a07ff4f399`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:f5babe01eaf20d9773c4f1f12cf1bb88e4155e73aee5282ce7000e8da06dffef
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91063341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab27d6253bbc78c476324047052eb77de9e332a469d9d3f1a2f0269364ff011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:29:54 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:55 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Thu, 11 May 2017 00:30:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:30:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:30:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:30:08 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:30:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:30:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:30:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fcb8aaa394963d3fc23c0a1390189c5ab544f71ab0f2dc15fcd8529d4fe14c`  
		Last Modified: Sat, 13 May 2017 15:21:14 GMT  
		Size: 33.7 MB (33729137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9752a8e3fc0b7b953c6323756a78330c3adc3973e69be9dcd61abd13015209a`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97e86d75ccdc8f31c93b498e7328cacaa5e63007988536cfbac90a07ff4f399`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:f5babe01eaf20d9773c4f1f12cf1bb88e4155e73aee5282ce7000e8da06dffef
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91063341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab27d6253bbc78c476324047052eb77de9e332a469d9d3f1a2f0269364ff011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:29:54 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Thu, 11 May 2017 00:29:55 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Thu, 11 May 2017 00:30:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:30:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 11 May 2017 00:30:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:30:08 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:30:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:30:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:30:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fcb8aaa394963d3fc23c0a1390189c5ab544f71ab0f2dc15fcd8529d4fe14c`  
		Last Modified: Sat, 13 May 2017 15:21:14 GMT  
		Size: 33.7 MB (33729137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9752a8e3fc0b7b953c6323756a78330c3adc3973e69be9dcd61abd13015209a`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97e86d75ccdc8f31c93b498e7328cacaa5e63007988536cfbac90a07ff4f399`  
		Last Modified: Sat, 13 May 2017 15:21:11 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.5`

```console
$ docker pull elasticsearch@sha256:f34c2c78343ae596a854d1cd6100fe07842756889aaeff096c9df3b67627614c
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155526274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fead69562d1cd3a3ffce4f15b745ff199c22e4a468bb5f3d12c2c0573e141be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:20:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 May 2017 20:21:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 May 2017 20:23:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 16 May 2017 20:23:21 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 16 May 2017 20:23:22 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Tue, 16 May 2017 20:23:32 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:23:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:23:34 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 16 May 2017 20:23:35 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 16 May 2017 20:23:36 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 16 May 2017 20:23:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 16 May 2017 20:23:38 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 16 May 2017 20:23:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 16 May 2017 20:23:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:23:40 GMT
CMD ["elasticsearch"]
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
	-	`sha256:eb968d8ad5ed8b70b7693ef7272bd3089992940bb8f3f5c50a2f6c6e2ab4feef`  
		Last Modified: Tue, 16 May 2017 20:24:58 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d104994ea4bcb210f8d07ebcc277e7f745f4c720f7e02dffa2d1110d042edc`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c20f4488c7659daf05fdc5669c064f99365065d7194b21b63ec31b2e561bba6`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 542.6 KB (542551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e1937638b35a920fdc48983c0cf67279c51342625959f7ad98bd6bb63c1d15`  
		Last Modified: Tue, 16 May 2017 20:27:49 GMT  
		Size: 27.4 MB (27368199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da2b8249305d90ed83f06faf4207ae9ce9e143dd6d218f077c513d77667a170`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a99c8194d73f05349974a832c9d7fdb4a9b4df560043548d4d7741cc140365b`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a45d84fe23d4ce52e5b86cdb53244c3475bdee0a8d9a3c83345d1117f97b2c7`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:f34c2c78343ae596a854d1cd6100fe07842756889aaeff096c9df3b67627614c
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155526274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fead69562d1cd3a3ffce4f15b745ff199c22e4a468bb5f3d12c2c0573e141be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:20:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 May 2017 20:21:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 May 2017 20:23:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 16 May 2017 20:23:21 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 16 May 2017 20:23:22 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Tue, 16 May 2017 20:23:32 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:23:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:23:34 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 16 May 2017 20:23:35 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 16 May 2017 20:23:36 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 16 May 2017 20:23:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 16 May 2017 20:23:38 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 16 May 2017 20:23:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 16 May 2017 20:23:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:23:40 GMT
CMD ["elasticsearch"]
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
	-	`sha256:eb968d8ad5ed8b70b7693ef7272bd3089992940bb8f3f5c50a2f6c6e2ab4feef`  
		Last Modified: Tue, 16 May 2017 20:24:58 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d104994ea4bcb210f8d07ebcc277e7f745f4c720f7e02dffa2d1110d042edc`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c20f4488c7659daf05fdc5669c064f99365065d7194b21b63ec31b2e561bba6`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 542.6 KB (542551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e1937638b35a920fdc48983c0cf67279c51342625959f7ad98bd6bb63c1d15`  
		Last Modified: Tue, 16 May 2017 20:27:49 GMT  
		Size: 27.4 MB (27368199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da2b8249305d90ed83f06faf4207ae9ce9e143dd6d218f077c513d77667a170`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a99c8194d73f05349974a832c9d7fdb4a9b4df560043548d4d7741cc140365b`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a45d84fe23d4ce52e5b86cdb53244c3475bdee0a8d9a3c83345d1117f97b2c7`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:f34c2c78343ae596a854d1cd6100fe07842756889aaeff096c9df3b67627614c
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155526274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fead69562d1cd3a3ffce4f15b745ff199c22e4a468bb5f3d12c2c0573e141be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:20:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 May 2017 20:21:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 May 2017 20:23:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 16 May 2017 20:23:21 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 16 May 2017 20:23:22 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Tue, 16 May 2017 20:23:32 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:23:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:23:34 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 16 May 2017 20:23:35 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 16 May 2017 20:23:36 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 16 May 2017 20:23:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 16 May 2017 20:23:38 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 16 May 2017 20:23:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 16 May 2017 20:23:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:23:40 GMT
CMD ["elasticsearch"]
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
	-	`sha256:eb968d8ad5ed8b70b7693ef7272bd3089992940bb8f3f5c50a2f6c6e2ab4feef`  
		Last Modified: Tue, 16 May 2017 20:24:58 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d104994ea4bcb210f8d07ebcc277e7f745f4c720f7e02dffa2d1110d042edc`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c20f4488c7659daf05fdc5669c064f99365065d7194b21b63ec31b2e561bba6`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 542.6 KB (542551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e1937638b35a920fdc48983c0cf67279c51342625959f7ad98bd6bb63c1d15`  
		Last Modified: Tue, 16 May 2017 20:27:49 GMT  
		Size: 27.4 MB (27368199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da2b8249305d90ed83f06faf4207ae9ce9e143dd6d218f077c513d77667a170`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a99c8194d73f05349974a832c9d7fdb4a9b4df560043548d4d7741cc140365b`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a45d84fe23d4ce52e5b86cdb53244c3475bdee0a8d9a3c83345d1117f97b2c7`  
		Last Modified: Tue, 16 May 2017 20:27:39 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.5-alpine`

```console
$ docker pull elasticsearch@sha256:b4b3fee8a478c7c468fb90a948a30981d4f8d90c57bcfb55b8ff95bcbfbe2632
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85097895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1c35a4b330432163a5d12edc5d58b12e0de6048acc25cb24d31a5820fabf7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:28:28 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Thu, 11 May 2017 00:28:29 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Thu, 11 May 2017 00:28:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:28:39 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Thu, 11 May 2017 00:28:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:28:41 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:28:42 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:28:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:28:43 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b7ea78a4d106218462a55fcd408b9da9801fde2863ce5604b89a7dcefb3d3f`  
		Last Modified: Sat, 13 May 2017 15:18:22 GMT  
		Size: 27.8 MB (27763635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bd212ef531488ed34a25d1980a496e4bdd436af6ffec2f5958448bbe4bd764`  
		Last Modified: Sat, 13 May 2017 15:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207ee5348d93adbb59889527c88c91e250424dc3e0e19c75da4b75e061661dc`  
		Last Modified: Sat, 13 May 2017 15:18:19 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:b4b3fee8a478c7c468fb90a948a30981d4f8d90c57bcfb55b8ff95bcbfbe2632
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85097895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1c35a4b330432163a5d12edc5d58b12e0de6048acc25cb24d31a5820fabf7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:28:28 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Thu, 11 May 2017 00:28:29 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Thu, 11 May 2017 00:28:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:28:39 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Thu, 11 May 2017 00:28:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:28:41 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:28:42 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:28:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:28:43 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b7ea78a4d106218462a55fcd408b9da9801fde2863ce5604b89a7dcefb3d3f`  
		Last Modified: Sat, 13 May 2017 15:18:22 GMT  
		Size: 27.8 MB (27763635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bd212ef531488ed34a25d1980a496e4bdd436af6ffec2f5958448bbe4bd764`  
		Last Modified: Sat, 13 May 2017 15:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207ee5348d93adbb59889527c88c91e250424dc3e0e19c75da4b75e061661dc`  
		Last Modified: Sat, 13 May 2017 15:18:19 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:b4b3fee8a478c7c468fb90a948a30981d4f8d90c57bcfb55b8ff95bcbfbe2632
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85097895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1c35a4b330432163a5d12edc5d58b12e0de6048acc25cb24d31a5820fabf7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:28:28 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Thu, 11 May 2017 00:28:29 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Thu, 11 May 2017 00:28:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:28:39 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Thu, 11 May 2017 00:28:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:28:41 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:28:42 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:28:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:28:43 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b7ea78a4d106218462a55fcd408b9da9801fde2863ce5604b89a7dcefb3d3f`  
		Last Modified: Sat, 13 May 2017 15:18:22 GMT  
		Size: 27.8 MB (27763635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bd212ef531488ed34a25d1980a496e4bdd436af6ffec2f5958448bbe4bd764`  
		Last Modified: Sat, 13 May 2017 15:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207ee5348d93adbb59889527c88c91e250424dc3e0e19c75da4b75e061661dc`  
		Last Modified: Sat, 13 May 2017 15:18:19 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.6`

```console
$ docker pull elasticsearch@sha256:c27013c24deaca363f27dab03585afd36641f449ffccdb98a46653831afe3637
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155611929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc3d8a09f54d5e1614a56b38514a2feae387c15f4e5815f311680536d6005d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:20:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 May 2017 20:21:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 May 2017 20:21:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 16 May 2017 20:21:43 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 16 May 2017 20:21:44 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Tue, 16 May 2017 20:21:55 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:22:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:22:07 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 16 May 2017 20:22:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 16 May 2017 20:22:29 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 16 May 2017 20:22:30 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 16 May 2017 20:22:31 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 16 May 2017 20:22:32 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 16 May 2017 20:22:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:22:34 GMT
CMD ["elasticsearch"]
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
	-	`sha256:eb968d8ad5ed8b70b7693ef7272bd3089992940bb8f3f5c50a2f6c6e2ab4feef`  
		Last Modified: Tue, 16 May 2017 20:24:58 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d104994ea4bcb210f8d07ebcc277e7f745f4c720f7e02dffa2d1110d042edc`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ec0b64b65fa524f7f9f8214dc754869c109980f5dedce43de2837b46ca766`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 542.6 KB (542564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7841c403fb67176dc68855041e70d62c5187624e0e70bd2f8e97e0408e33469f`  
		Last Modified: Tue, 16 May 2017 20:24:57 GMT  
		Size: 27.5 MB (27453880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19730a39ed95c76ff15f8b250909c6f2ceb92b538dffc82a893f1e167cc130bf`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b29747546833dd8f7b94a127ba2412e200b2cad305520234132dadc5f4a0f5`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf25d751e119c5d7a2b252f4bb405d60cefee63888da624eef6bd214cd582b29`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7`

```console
$ docker pull elasticsearch@sha256:c27013c24deaca363f27dab03585afd36641f449ffccdb98a46653831afe3637
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155611929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc3d8a09f54d5e1614a56b38514a2feae387c15f4e5815f311680536d6005d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:20:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 May 2017 20:21:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 May 2017 20:21:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 16 May 2017 20:21:43 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 16 May 2017 20:21:44 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Tue, 16 May 2017 20:21:55 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:22:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:22:07 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 16 May 2017 20:22:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 16 May 2017 20:22:29 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 16 May 2017 20:22:30 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 16 May 2017 20:22:31 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 16 May 2017 20:22:32 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 16 May 2017 20:22:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:22:34 GMT
CMD ["elasticsearch"]
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
	-	`sha256:eb968d8ad5ed8b70b7693ef7272bd3089992940bb8f3f5c50a2f6c6e2ab4feef`  
		Last Modified: Tue, 16 May 2017 20:24:58 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d104994ea4bcb210f8d07ebcc277e7f745f4c720f7e02dffa2d1110d042edc`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ec0b64b65fa524f7f9f8214dc754869c109980f5dedce43de2837b46ca766`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 542.6 KB (542564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7841c403fb67176dc68855041e70d62c5187624e0e70bd2f8e97e0408e33469f`  
		Last Modified: Tue, 16 May 2017 20:24:57 GMT  
		Size: 27.5 MB (27453880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19730a39ed95c76ff15f8b250909c6f2ceb92b538dffc82a893f1e167cc130bf`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b29747546833dd8f7b94a127ba2412e200b2cad305520234132dadc5f4a0f5`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf25d751e119c5d7a2b252f4bb405d60cefee63888da624eef6bd214cd582b29`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1`

```console
$ docker pull elasticsearch@sha256:c27013c24deaca363f27dab03585afd36641f449ffccdb98a46653831afe3637
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155611929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc3d8a09f54d5e1614a56b38514a2feae387c15f4e5815f311680536d6005d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:20:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 May 2017 20:21:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 16 May 2017 20:21:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 16 May 2017 20:21:43 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 16 May 2017 20:21:44 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Tue, 16 May 2017 20:21:55 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:22:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:22:07 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 16 May 2017 20:22:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 16 May 2017 20:22:29 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 16 May 2017 20:22:30 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 16 May 2017 20:22:31 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 16 May 2017 20:22:32 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 16 May 2017 20:22:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:22:34 GMT
CMD ["elasticsearch"]
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
	-	`sha256:eb968d8ad5ed8b70b7693ef7272bd3089992940bb8f3f5c50a2f6c6e2ab4feef`  
		Last Modified: Tue, 16 May 2017 20:24:58 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d104994ea4bcb210f8d07ebcc277e7f745f4c720f7e02dffa2d1110d042edc`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206ec0b64b65fa524f7f9f8214dc754869c109980f5dedce43de2837b46ca766`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 542.6 KB (542564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7841c403fb67176dc68855041e70d62c5187624e0e70bd2f8e97e0408e33469f`  
		Last Modified: Tue, 16 May 2017 20:24:57 GMT  
		Size: 27.5 MB (27453880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19730a39ed95c76ff15f8b250909c6f2ceb92b538dffc82a893f1e167cc130bf`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b29747546833dd8f7b94a127ba2412e200b2cad305520234132dadc5f4a0f5`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf25d751e119c5d7a2b252f4bb405d60cefee63888da624eef6bd214cd582b29`  
		Last Modified: Tue, 16 May 2017 20:24:55 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.6-alpine`

```console
$ docker pull elasticsearch@sha256:2fc88b76921d14fa0bda4446859e0ffb61cdf784cee01f7f7dfd1b12f93f60d1
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.6-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86272147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b318c1a6d5032facd575f8e065fa3daf449d1422c3ce02613823e436e3cf60ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:27:04 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Thu, 11 May 2017 00:27:05 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Thu, 11 May 2017 00:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:27:14 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Thu, 11 May 2017 00:27:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:27:16 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:27:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:27:18 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca336ef21aec5130a2f83761a51656cc46b1fa51e381fcbb5453d202a0f1385`  
		Last Modified: Sat, 13 May 2017 15:15:52 GMT  
		Size: 28.9 MB (28937928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e8999e9a37ef27bd1fdbe7c93dc6f8cdf37eccc357f6660bde5b170a0cb0cc`  
		Last Modified: Sat, 13 May 2017 15:15:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5faf43dd0fbaa68d5a82f96d19e28a213f943821e91bdad1bfb9f2c6b4158e`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7-alpine`

```console
$ docker pull elasticsearch@sha256:2fc88b76921d14fa0bda4446859e0ffb61cdf784cee01f7f7dfd1b12f93f60d1
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86272147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b318c1a6d5032facd575f8e065fa3daf449d1422c3ce02613823e436e3cf60ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:27:04 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Thu, 11 May 2017 00:27:05 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Thu, 11 May 2017 00:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:27:14 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Thu, 11 May 2017 00:27:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:27:16 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:27:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:27:18 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca336ef21aec5130a2f83761a51656cc46b1fa51e381fcbb5453d202a0f1385`  
		Last Modified: Sat, 13 May 2017 15:15:52 GMT  
		Size: 28.9 MB (28937928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e8999e9a37ef27bd1fdbe7c93dc6f8cdf37eccc357f6660bde5b170a0cb0cc`  
		Last Modified: Sat, 13 May 2017 15:15:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5faf43dd0fbaa68d5a82f96d19e28a213f943821e91bdad1bfb9f2c6b4158e`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1-alpine`

```console
$ docker pull elasticsearch@sha256:2fc88b76921d14fa0bda4446859e0ffb61cdf784cee01f7f7dfd1b12f93f60d1
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86272147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b318c1a6d5032facd575f8e065fa3daf449d1422c3ce02613823e436e3cf60ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:26:58 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 11 May 2017 00:27:01 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 11 May 2017 00:27:02 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 00:27:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 May 2017 00:27:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 00:27:04 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Thu, 11 May 2017 00:27:05 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Thu, 11 May 2017 00:27:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 11 May 2017 00:27:14 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Thu, 11 May 2017 00:27:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 May 2017 00:27:16 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 11 May 2017 00:27:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 May 2017 00:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 00:27:18 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed8bdf6a3840e46defdb5244431cc24d75f206059d8b8c909e1a7e0573d077f`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8a601693bd7e0b36ce2ca9eca8f899a784fdef4d1ad453b69990099cb44fef`  
		Last Modified: Sat, 13 May 2017 15:15:51 GMT  
		Size: 1.1 MB (1122665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6e5c46f2266a5621e489993e3e0dd2d3936510356bec0d373557a06fea03f0`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca336ef21aec5130a2f83761a51656cc46b1fa51e381fcbb5453d202a0f1385`  
		Last Modified: Sat, 13 May 2017 15:15:52 GMT  
		Size: 28.9 MB (28937928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e8999e9a37ef27bd1fdbe7c93dc6f8cdf37eccc357f6660bde5b170a0cb0cc`  
		Last Modified: Sat, 13 May 2017 15:15:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5faf43dd0fbaa68d5a82f96d19e28a213f943821e91bdad1bfb9f2c6b4158e`  
		Last Modified: Sat, 13 May 2017 15:15:49 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
