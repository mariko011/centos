<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5.4.2`](#elasticsearch542)
-	[`elasticsearch:5.4`](#elasticsearch54)
-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:latest`](#elasticsearchlatest)
-	[`elasticsearch:5.4.2-alpine`](#elasticsearch542-alpine)
-	[`elasticsearch:5.4-alpine`](#elasticsearch54-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:2.4.5`](#elasticsearch245)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:2.4.5-alpine`](#elasticsearch245-alpine)
-	[`elasticsearch:2.4-alpine`](#elasticsearch24-alpine)
-	[`elasticsearch:2-alpine`](#elasticsearch2-alpine)

## `elasticsearch:5.4.2`

```console
$ docker pull elasticsearch@sha256:dc043768ac60bbaa87aa8655e6b753006bd454e584f4502932047f81f8d0f2bb
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161158902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51598fcd8c804463c2702a27531adfbfe7762c7ca573bbd5b8543f0831623a04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Jun 2017 21:35:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 21:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 21:36:24 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 21:37:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 20 Jun 2017 21:37:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:21 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:57 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:39:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 21:39:58 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 21:40:23 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 20 Jun 2017 21:40:47 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:41:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:41:35 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 20 Jun 2017 21:41:58 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:42:46 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396cebaadda8156820cc0c0d17a4190310610d2a365a89ca90d54bc5d1e8e6`  
		Last Modified: Tue, 20 Jun 2017 21:58:20 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d7a6ea943fbb56f58c4a75f7170492c7db4aa67ec50299bdbdbd09292adbf`  
		Last Modified: Tue, 20 Jun 2017 21:58:18 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a00ca0b0a304a0cebdee7b848e23102a7149ffbde6fd192040bc8bcb1639c0`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 537.7 KB (537664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473a651c0187fec3c195fc27c29e697c631994b09f0fb928d5484a6ed4b0aa11`  
		Last Modified: Tue, 20 Jun 2017 21:58:21 GMT  
		Size: 33.4 MB (33354272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f7e00ea84eabc491a96609d822060fce25ef9d6757a5dee137badd91061b3`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dfec328eb193406960ae44a5b1962c736e49b5ecc53689193401baad184b5a`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e41cc33a72420c04f8582dde445a83e89df8cbc62021ef3c79c9e57b6068158`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4`

```console
$ docker pull elasticsearch@sha256:dc043768ac60bbaa87aa8655e6b753006bd454e584f4502932047f81f8d0f2bb
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161158902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51598fcd8c804463c2702a27531adfbfe7762c7ca573bbd5b8543f0831623a04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Jun 2017 21:35:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 21:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 21:36:24 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 21:37:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 20 Jun 2017 21:37:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:21 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:57 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:39:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 21:39:58 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 21:40:23 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 20 Jun 2017 21:40:47 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:41:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:41:35 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 20 Jun 2017 21:41:58 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:42:46 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396cebaadda8156820cc0c0d17a4190310610d2a365a89ca90d54bc5d1e8e6`  
		Last Modified: Tue, 20 Jun 2017 21:58:20 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d7a6ea943fbb56f58c4a75f7170492c7db4aa67ec50299bdbdbd09292adbf`  
		Last Modified: Tue, 20 Jun 2017 21:58:18 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a00ca0b0a304a0cebdee7b848e23102a7149ffbde6fd192040bc8bcb1639c0`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 537.7 KB (537664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473a651c0187fec3c195fc27c29e697c631994b09f0fb928d5484a6ed4b0aa11`  
		Last Modified: Tue, 20 Jun 2017 21:58:21 GMT  
		Size: 33.4 MB (33354272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f7e00ea84eabc491a96609d822060fce25ef9d6757a5dee137badd91061b3`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dfec328eb193406960ae44a5b1962c736e49b5ecc53689193401baad184b5a`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e41cc33a72420c04f8582dde445a83e89df8cbc62021ef3c79c9e57b6068158`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:dc043768ac60bbaa87aa8655e6b753006bd454e584f4502932047f81f8d0f2bb
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161158902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51598fcd8c804463c2702a27531adfbfe7762c7ca573bbd5b8543f0831623a04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Jun 2017 21:35:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 21:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 21:36:24 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 21:37:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 20 Jun 2017 21:37:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:21 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:57 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:39:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 21:39:58 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 21:40:23 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 20 Jun 2017 21:40:47 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:41:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:41:35 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 20 Jun 2017 21:41:58 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:42:46 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396cebaadda8156820cc0c0d17a4190310610d2a365a89ca90d54bc5d1e8e6`  
		Last Modified: Tue, 20 Jun 2017 21:58:20 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d7a6ea943fbb56f58c4a75f7170492c7db4aa67ec50299bdbdbd09292adbf`  
		Last Modified: Tue, 20 Jun 2017 21:58:18 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a00ca0b0a304a0cebdee7b848e23102a7149ffbde6fd192040bc8bcb1639c0`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 537.7 KB (537664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473a651c0187fec3c195fc27c29e697c631994b09f0fb928d5484a6ed4b0aa11`  
		Last Modified: Tue, 20 Jun 2017 21:58:21 GMT  
		Size: 33.4 MB (33354272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f7e00ea84eabc491a96609d822060fce25ef9d6757a5dee137badd91061b3`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dfec328eb193406960ae44a5b1962c736e49b5ecc53689193401baad184b5a`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e41cc33a72420c04f8582dde445a83e89df8cbc62021ef3c79c9e57b6068158`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:dc043768ac60bbaa87aa8655e6b753006bd454e584f4502932047f81f8d0f2bb
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161158902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51598fcd8c804463c2702a27531adfbfe7762c7ca573bbd5b8543f0831623a04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Jun 2017 21:35:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 21:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 21:36:24 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 21:37:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 20 Jun 2017 21:37:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:21 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.2
# Tue, 20 Jun 2017 21:38:57 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:39:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 21:39:58 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 21:40:23 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 20 Jun 2017 21:40:47 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:41:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:41:35 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 20 Jun 2017 21:41:58 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:42:46 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396cebaadda8156820cc0c0d17a4190310610d2a365a89ca90d54bc5d1e8e6`  
		Last Modified: Tue, 20 Jun 2017 21:58:20 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d7a6ea943fbb56f58c4a75f7170492c7db4aa67ec50299bdbdbd09292adbf`  
		Last Modified: Tue, 20 Jun 2017 21:58:18 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a00ca0b0a304a0cebdee7b848e23102a7149ffbde6fd192040bc8bcb1639c0`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 537.7 KB (537664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473a651c0187fec3c195fc27c29e697c631994b09f0fb928d5484a6ed4b0aa11`  
		Last Modified: Tue, 20 Jun 2017 21:58:21 GMT  
		Size: 33.4 MB (33354272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f7e00ea84eabc491a96609d822060fce25ef9d6757a5dee137badd91061b3`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dfec328eb193406960ae44a5b1962c736e49b5ecc53689193401baad184b5a`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e41cc33a72420c04f8582dde445a83e89df8cbc62021ef3c79c9e57b6068158`  
		Last Modified: Tue, 20 Jun 2017 21:58:17 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4.2-alpine`

```console
$ docker pull elasticsearch@sha256:8a3c6a42bdc8a775f563f19dfccebb82f902533933d57c3a30a0ec8193ef92a5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91149348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6716a05b6d3f9972e90dc71bd66792a6bc98d13a0b42284a1dbd4e11b2bed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:47:03 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:47:27 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=87c884a637ac8d06a77acb881599ee81d136412c
# Tue, 20 Jun 2017 21:48:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:48:39 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:49:02 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:49:04 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:49:05 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:49:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498112d1bce47069415d89b4128924555f02c6f9e0863ee5993778292dc6fb64`  
		Last Modified: Tue, 20 Jun 2017 22:01:11 GMT  
		Size: 33.8 MB (33750857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb090101120bd0ca67fe13be45ad910fbca24a857118b50f443746ef83fecbc`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31927ac8e37d67de7e3adfa9c0e44d9ccfdc3aa2c15a6de5c14e8571fd361301`  
		Last Modified: Tue, 20 Jun 2017 22:01:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4-alpine`

```console
$ docker pull elasticsearch@sha256:8a3c6a42bdc8a775f563f19dfccebb82f902533933d57c3a30a0ec8193ef92a5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91149348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6716a05b6d3f9972e90dc71bd66792a6bc98d13a0b42284a1dbd4e11b2bed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:47:03 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:47:27 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=87c884a637ac8d06a77acb881599ee81d136412c
# Tue, 20 Jun 2017 21:48:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:48:39 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:49:02 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:49:04 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:49:05 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:49:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498112d1bce47069415d89b4128924555f02c6f9e0863ee5993778292dc6fb64`  
		Last Modified: Tue, 20 Jun 2017 22:01:11 GMT  
		Size: 33.8 MB (33750857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb090101120bd0ca67fe13be45ad910fbca24a857118b50f443746ef83fecbc`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31927ac8e37d67de7e3adfa9c0e44d9ccfdc3aa2c15a6de5c14e8571fd361301`  
		Last Modified: Tue, 20 Jun 2017 22:01:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:8a3c6a42bdc8a775f563f19dfccebb82f902533933d57c3a30a0ec8193ef92a5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91149348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6716a05b6d3f9972e90dc71bd66792a6bc98d13a0b42284a1dbd4e11b2bed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:47:03 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:47:27 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=87c884a637ac8d06a77acb881599ee81d136412c
# Tue, 20 Jun 2017 21:48:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:48:39 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:49:02 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:49:04 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:49:05 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:49:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498112d1bce47069415d89b4128924555f02c6f9e0863ee5993778292dc6fb64`  
		Last Modified: Tue, 20 Jun 2017 22:01:11 GMT  
		Size: 33.8 MB (33750857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb090101120bd0ca67fe13be45ad910fbca24a857118b50f443746ef83fecbc`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31927ac8e37d67de7e3adfa9c0e44d9ccfdc3aa2c15a6de5c14e8571fd361301`  
		Last Modified: Tue, 20 Jun 2017 22:01:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:8a3c6a42bdc8a775f563f19dfccebb82f902533933d57c3a30a0ec8193ef92a5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91149348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6716a05b6d3f9972e90dc71bd66792a6bc98d13a0b42284a1dbd4e11b2bed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:47:03 GMT
ENV ELASTICSEARCH_VERSION=5.4.2
# Tue, 20 Jun 2017 21:47:27 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.2.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=87c884a637ac8d06a77acb881599ee81d136412c
# Tue, 20 Jun 2017 21:48:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:48:39 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 20 Jun 2017 21:49:02 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:49:04 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:49:05 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:49:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:49:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498112d1bce47069415d89b4128924555f02c6f9e0863ee5993778292dc6fb64`  
		Last Modified: Tue, 20 Jun 2017 22:01:11 GMT  
		Size: 33.8 MB (33750857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb090101120bd0ca67fe13be45ad910fbca24a857118b50f443746ef83fecbc`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31927ac8e37d67de7e3adfa9c0e44d9ccfdc3aa2c15a6de5c14e8571fd361301`  
		Last Modified: Tue, 20 Jun 2017 22:01:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.5`

```console
$ docker pull elasticsearch@sha256:8f3f926b3a6a649e2f1901a92bb8daf64f7fa68bc72c2b3da1261c299f19ece2
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155168292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899f1f4ec638b60e455b5a2a3139de4b6f996129cf4505b75081c10e249b1ecb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Jun 2017 21:35:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 21:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 21:36:24 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 21:50:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 20 Jun 2017 21:50:49 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 20 Jun 2017 21:51:13 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Tue, 20 Jun 2017 21:51:47 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:52:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 21:52:26 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 21:52:27 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 20 Jun 2017 21:52:53 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 20 Jun 2017 21:52:54 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:53:19 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 20 Jun 2017 21:54:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:54:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:54:31 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396cebaadda8156820cc0c0d17a4190310610d2a365a89ca90d54bc5d1e8e6`  
		Last Modified: Tue, 20 Jun 2017 21:58:20 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d7a6ea943fbb56f58c4a75f7170492c7db4aa67ec50299bdbdbd09292adbf`  
		Last Modified: Tue, 20 Jun 2017 21:58:18 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da2b4d5ed80a3d32a62eade2171a029892601d72d095c6420ef07b0e86fbec`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 537.7 KB (537684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cc895dae63548a276b2c9e6b75606e1deebe4b89e4a3a00811ca28334025a0`  
		Last Modified: Tue, 20 Jun 2017 22:03:58 GMT  
		Size: 27.4 MB (27363585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6717d5eb26f2f09dab1ca1adea3ebb80171024b3569971ceb03217e0ad2f11`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368146937151eeaeea68ccc0a04687a38b884fe542d80669845b1f9bf180f325`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e997f774aa253e4280d1bbc4a8b71ff6a54f49f7ed2380fa44bf44c2c2b9f8`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:8f3f926b3a6a649e2f1901a92bb8daf64f7fa68bc72c2b3da1261c299f19ece2
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155168292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899f1f4ec638b60e455b5a2a3139de4b6f996129cf4505b75081c10e249b1ecb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Jun 2017 21:35:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 21:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 21:36:24 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 21:50:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 20 Jun 2017 21:50:49 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 20 Jun 2017 21:51:13 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Tue, 20 Jun 2017 21:51:47 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:52:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 21:52:26 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 21:52:27 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 20 Jun 2017 21:52:53 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 20 Jun 2017 21:52:54 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:53:19 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 20 Jun 2017 21:54:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:54:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:54:31 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396cebaadda8156820cc0c0d17a4190310610d2a365a89ca90d54bc5d1e8e6`  
		Last Modified: Tue, 20 Jun 2017 21:58:20 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d7a6ea943fbb56f58c4a75f7170492c7db4aa67ec50299bdbdbd09292adbf`  
		Last Modified: Tue, 20 Jun 2017 21:58:18 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da2b4d5ed80a3d32a62eade2171a029892601d72d095c6420ef07b0e86fbec`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 537.7 KB (537684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cc895dae63548a276b2c9e6b75606e1deebe4b89e4a3a00811ca28334025a0`  
		Last Modified: Tue, 20 Jun 2017 22:03:58 GMT  
		Size: 27.4 MB (27363585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6717d5eb26f2f09dab1ca1adea3ebb80171024b3569971ceb03217e0ad2f11`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368146937151eeaeea68ccc0a04687a38b884fe542d80669845b1f9bf180f325`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e997f774aa253e4280d1bbc4a8b71ff6a54f49f7ed2380fa44bf44c2c2b9f8`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:8f3f926b3a6a649e2f1901a92bb8daf64f7fa68bc72c2b3da1261c299f19ece2
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155168292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899f1f4ec638b60e455b5a2a3139de4b6f996129cf4505b75081c10e249b1ecb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Jun 2017 21:35:33 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 21:36:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 21:36:24 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 21:50:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 20 Jun 2017 21:50:49 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 20 Jun 2017 21:51:13 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Tue, 20 Jun 2017 21:51:47 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:52:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 21:52:26 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 21:52:27 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 20 Jun 2017 21:52:53 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 20 Jun 2017 21:52:54 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:53:19 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 20 Jun 2017 21:54:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:54:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:54:31 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396cebaadda8156820cc0c0d17a4190310610d2a365a89ca90d54bc5d1e8e6`  
		Last Modified: Tue, 20 Jun 2017 21:58:20 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d7a6ea943fbb56f58c4a75f7170492c7db4aa67ec50299bdbdbd09292adbf`  
		Last Modified: Tue, 20 Jun 2017 21:58:18 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da2b4d5ed80a3d32a62eade2171a029892601d72d095c6420ef07b0e86fbec`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 537.7 KB (537684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cc895dae63548a276b2c9e6b75606e1deebe4b89e4a3a00811ca28334025a0`  
		Last Modified: Tue, 20 Jun 2017 22:03:58 GMT  
		Size: 27.4 MB (27363585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6717d5eb26f2f09dab1ca1adea3ebb80171024b3569971ceb03217e0ad2f11`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368146937151eeaeea68ccc0a04687a38b884fe542d80669845b1f9bf180f325`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e997f774aa253e4280d1bbc4a8b71ff6a54f49f7ed2380fa44bf44c2c2b9f8`  
		Last Modified: Tue, 20 Jun 2017 22:03:55 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.5-alpine`

```console
$ docker pull elasticsearch@sha256:cfbaf4d08a888d32d23607f505fa1bddc867a34e9de8526d43cd60f57dcae8e4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85162757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea94e220d827b6043269a3086a4f192922f01e2749599d927192d2a04bd36c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:55:21 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 20 Jun 2017 21:55:22 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Tue, 20 Jun 2017 21:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:55:49 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 20 Jun 2017 21:55:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:56:14 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:56:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:57:03 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517aeece7b158a1f5d1930fc3392a3a3aa5aec739214a120c9696e12893e5577`  
		Last Modified: Tue, 20 Jun 2017 22:06:18 GMT  
		Size: 27.8 MB (27764209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70082549f5cd8071bee3b35d6d314c8ec52dd04578a52330c1431deae759a2c`  
		Last Modified: Tue, 20 Jun 2017 22:06:16 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930214c07de09035913a979652808d1922133448e33911477a0c3851fee64138`  
		Last Modified: Tue, 20 Jun 2017 22:06:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:cfbaf4d08a888d32d23607f505fa1bddc867a34e9de8526d43cd60f57dcae8e4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85162757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea94e220d827b6043269a3086a4f192922f01e2749599d927192d2a04bd36c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:55:21 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 20 Jun 2017 21:55:22 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Tue, 20 Jun 2017 21:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:55:49 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 20 Jun 2017 21:55:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:56:14 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:56:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:57:03 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517aeece7b158a1f5d1930fc3392a3a3aa5aec739214a120c9696e12893e5577`  
		Last Modified: Tue, 20 Jun 2017 22:06:18 GMT  
		Size: 27.8 MB (27764209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70082549f5cd8071bee3b35d6d314c8ec52dd04578a52330c1431deae759a2c`  
		Last Modified: Tue, 20 Jun 2017 22:06:16 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930214c07de09035913a979652808d1922133448e33911477a0c3851fee64138`  
		Last Modified: Tue, 20 Jun 2017 22:06:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:cfbaf4d08a888d32d23607f505fa1bddc867a34e9de8526d43cd60f57dcae8e4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85162757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea94e220d827b6043269a3086a4f192922f01e2749599d927192d2a04bd36c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:55:21 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 20 Jun 2017 21:55:22 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Tue, 20 Jun 2017 21:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:55:49 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 20 Jun 2017 21:55:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:56:14 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:56:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:57:03 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517aeece7b158a1f5d1930fc3392a3a3aa5aec739214a120c9696e12893e5577`  
		Last Modified: Tue, 20 Jun 2017 22:06:18 GMT  
		Size: 27.8 MB (27764209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70082549f5cd8071bee3b35d6d314c8ec52dd04578a52330c1431deae759a2c`  
		Last Modified: Tue, 20 Jun 2017 22:06:16 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930214c07de09035913a979652808d1922133448e33911477a0c3851fee64138`  
		Last Modified: Tue, 20 Jun 2017 22:06:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
