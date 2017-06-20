<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:5.4.2`](#logstash542)
-	[`logstash:5.4`](#logstash54)
-	[`logstash:5`](#logstash5)
-	[`logstash:latest`](#logstashlatest)
-	[`logstash:5.4.2-alpine`](#logstash542-alpine)
-	[`logstash:5.4-alpine`](#logstash54-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:alpine`](#logstashalpine)
-	[`logstash:2.4.1`](#logstash241)
-	[`logstash:2.4`](#logstash24)
-	[`logstash:2`](#logstash2)
-	[`logstash:2.4.1-alpine`](#logstash241-alpine)
-	[`logstash:2.4-alpine`](#logstash24-alpine)
-	[`logstash:2-alpine`](#logstash2-alpine)
-	[`logstash:1.5.6`](#logstash156)
-	[`logstash:1.5`](#logstash15)
-	[`logstash:1`](#logstash1)
-	[`logstash:1.5.6-alpine`](#logstash156-alpine)
-	[`logstash:1.5-alpine`](#logstash15-alpine)
-	[`logstash:1-alpine`](#logstash1-alpine)

## `logstash:5.4.2`

```console
$ docker pull logstash@sha256:7e296ff0e1a85ff42793a494f3cd9bb4bca7e54b3a48bb3ccfb8e99c87342d0b
```

-	Platforms:
	-	linux; amd64

### `logstash:5.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224546654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b34d2abe028266455a97edd2c77f022c864fed4cdbd26bf81393ba835fd3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:41:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 22:41:19 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:41:20 GMT
ENV LOGSTASH_DEB_VERSION=1:5.4.2-1
# Tue, 20 Jun 2017 22:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:41:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:41:57 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 22:41:58 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 22:42:00 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 22:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:01 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0876591a6f0efb58c3e3b10926f8e526af41a5eb7c7a1ad13d2b6731a2e6d7`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eab1d98b6954087bccf7198b36c3f4c07a067f3e60eabe64cafccfa546b957`  
		Last Modified: Tue, 20 Jun 2017 23:08:32 GMT  
		Size: 95.9 MB (95906917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48804a7bf2fc32112a6d8f2b9220837da8b773364fd06647c429eeffa9696219`  
		Last Modified: Tue, 20 Jun 2017 23:08:04 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c39837cbe50233d5131b614fd87d08dd2b5012be23d597b483ca6f7506be08`  
		Last Modified: Tue, 20 Jun 2017 23:08:06 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.4`

```console
$ docker pull logstash@sha256:7e296ff0e1a85ff42793a494f3cd9bb4bca7e54b3a48bb3ccfb8e99c87342d0b
```

-	Platforms:
	-	linux; amd64

### `logstash:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224546654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b34d2abe028266455a97edd2c77f022c864fed4cdbd26bf81393ba835fd3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:41:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 22:41:19 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:41:20 GMT
ENV LOGSTASH_DEB_VERSION=1:5.4.2-1
# Tue, 20 Jun 2017 22:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:41:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:41:57 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 22:41:58 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 22:42:00 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 22:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:01 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0876591a6f0efb58c3e3b10926f8e526af41a5eb7c7a1ad13d2b6731a2e6d7`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eab1d98b6954087bccf7198b36c3f4c07a067f3e60eabe64cafccfa546b957`  
		Last Modified: Tue, 20 Jun 2017 23:08:32 GMT  
		Size: 95.9 MB (95906917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48804a7bf2fc32112a6d8f2b9220837da8b773364fd06647c429eeffa9696219`  
		Last Modified: Tue, 20 Jun 2017 23:08:04 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c39837cbe50233d5131b614fd87d08dd2b5012be23d597b483ca6f7506be08`  
		Last Modified: Tue, 20 Jun 2017 23:08:06 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:7e296ff0e1a85ff42793a494f3cd9bb4bca7e54b3a48bb3ccfb8e99c87342d0b
```

-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224546654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b34d2abe028266455a97edd2c77f022c864fed4cdbd26bf81393ba835fd3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:41:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 22:41:19 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:41:20 GMT
ENV LOGSTASH_DEB_VERSION=1:5.4.2-1
# Tue, 20 Jun 2017 22:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:41:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:41:57 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 22:41:58 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 22:42:00 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 22:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:01 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0876591a6f0efb58c3e3b10926f8e526af41a5eb7c7a1ad13d2b6731a2e6d7`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eab1d98b6954087bccf7198b36c3f4c07a067f3e60eabe64cafccfa546b957`  
		Last Modified: Tue, 20 Jun 2017 23:08:32 GMT  
		Size: 95.9 MB (95906917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48804a7bf2fc32112a6d8f2b9220837da8b773364fd06647c429eeffa9696219`  
		Last Modified: Tue, 20 Jun 2017 23:08:04 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c39837cbe50233d5131b614fd87d08dd2b5012be23d597b483ca6f7506be08`  
		Last Modified: Tue, 20 Jun 2017 23:08:06 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:7e296ff0e1a85ff42793a494f3cd9bb4bca7e54b3a48bb3ccfb8e99c87342d0b
```

-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224546654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b34d2abe028266455a97edd2c77f022c864fed4cdbd26bf81393ba835fd3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:41:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 22:41:19 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:41:20 GMT
ENV LOGSTASH_DEB_VERSION=1:5.4.2-1
# Tue, 20 Jun 2017 22:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:41:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:41:57 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 22:41:58 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 22:42:00 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 22:42:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:01 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0876591a6f0efb58c3e3b10926f8e526af41a5eb7c7a1ad13d2b6731a2e6d7`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11eab1d98b6954087bccf7198b36c3f4c07a067f3e60eabe64cafccfa546b957`  
		Last Modified: Tue, 20 Jun 2017 23:08:32 GMT  
		Size: 95.9 MB (95906917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48804a7bf2fc32112a6d8f2b9220837da8b773364fd06647c429eeffa9696219`  
		Last Modified: Tue, 20 Jun 2017 23:08:04 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c39837cbe50233d5131b614fd87d08dd2b5012be23d597b483ca6f7506be08`  
		Last Modified: Tue, 20 Jun 2017 23:08:06 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.4.2-alpine`

```console
$ docker pull logstash@sha256:2dbe78833ddbc6e7d0eb9830819e60e748747f53695064f90b7b0e93be717c13
```

-	Platforms:
	-	linux; amd64

### `logstash:5.4.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153664308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6287e4accc2b0d590c02ddecb1202ef8095961999d72b17c217e71905f58a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 20 Jun 2017 19:57:28 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Tue, 20 Jun 2017 19:57:33 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Tue, 20 Jun 2017 19:57:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 19:57:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 19:57:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Tue, 20 Jun 2017 19:57:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 22:42:28 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:42:29 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=c5d5f720c1f30e9aa12446a525e350f157b88385
# Tue, 20 Jun 2017 22:42:50 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Tue, 20 Jun 2017 22:42:52 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Tue, 20 Jun 2017 22:42:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:54 GMT
CMD ["-e" ""]
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
	-	`sha256:d476a6e1777eec14030d8be8bc5016f30dada8e11c854057df50c5d3f038624b`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f129fce0aa812ca399fcec63f30eb403f95e8de375ec3c232f6d2730f14bd7`  
		Last Modified: Tue, 20 Jun 2017 23:10:29 GMT  
		Size: 1.5 MB (1486425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f1d0b06736b3a805559995f93f237399a5b95c54d70811aa8bcb85518c4365`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 93.1 KB (93081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ffb0580be0f2e00ca65a56261c33a609e083c25e2df05a97f7592e24a5611f`  
		Last Modified: Tue, 20 Jun 2017 23:10:50 GMT  
		Size: 95.8 MB (95811422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ec1464c10596b53fdd8d1f8a05f2d3a60de544a0fa173326b75c434edd0c`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.4-alpine`

```console
$ docker pull logstash@sha256:2dbe78833ddbc6e7d0eb9830819e60e748747f53695064f90b7b0e93be717c13
```

-	Platforms:
	-	linux; amd64

### `logstash:5.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153664308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6287e4accc2b0d590c02ddecb1202ef8095961999d72b17c217e71905f58a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 20 Jun 2017 19:57:28 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Tue, 20 Jun 2017 19:57:33 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Tue, 20 Jun 2017 19:57:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 19:57:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 19:57:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Tue, 20 Jun 2017 19:57:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 22:42:28 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:42:29 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=c5d5f720c1f30e9aa12446a525e350f157b88385
# Tue, 20 Jun 2017 22:42:50 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Tue, 20 Jun 2017 22:42:52 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Tue, 20 Jun 2017 22:42:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:54 GMT
CMD ["-e" ""]
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
	-	`sha256:d476a6e1777eec14030d8be8bc5016f30dada8e11c854057df50c5d3f038624b`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f129fce0aa812ca399fcec63f30eb403f95e8de375ec3c232f6d2730f14bd7`  
		Last Modified: Tue, 20 Jun 2017 23:10:29 GMT  
		Size: 1.5 MB (1486425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f1d0b06736b3a805559995f93f237399a5b95c54d70811aa8bcb85518c4365`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 93.1 KB (93081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ffb0580be0f2e00ca65a56261c33a609e083c25e2df05a97f7592e24a5611f`  
		Last Modified: Tue, 20 Jun 2017 23:10:50 GMT  
		Size: 95.8 MB (95811422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ec1464c10596b53fdd8d1f8a05f2d3a60de544a0fa173326b75c434edd0c`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:2dbe78833ddbc6e7d0eb9830819e60e748747f53695064f90b7b0e93be717c13
```

-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153664308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6287e4accc2b0d590c02ddecb1202ef8095961999d72b17c217e71905f58a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 20 Jun 2017 19:57:28 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Tue, 20 Jun 2017 19:57:33 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Tue, 20 Jun 2017 19:57:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 19:57:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 19:57:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Tue, 20 Jun 2017 19:57:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 22:42:28 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:42:29 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=c5d5f720c1f30e9aa12446a525e350f157b88385
# Tue, 20 Jun 2017 22:42:50 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Tue, 20 Jun 2017 22:42:52 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Tue, 20 Jun 2017 22:42:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:54 GMT
CMD ["-e" ""]
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
	-	`sha256:d476a6e1777eec14030d8be8bc5016f30dada8e11c854057df50c5d3f038624b`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f129fce0aa812ca399fcec63f30eb403f95e8de375ec3c232f6d2730f14bd7`  
		Last Modified: Tue, 20 Jun 2017 23:10:29 GMT  
		Size: 1.5 MB (1486425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f1d0b06736b3a805559995f93f237399a5b95c54d70811aa8bcb85518c4365`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 93.1 KB (93081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ffb0580be0f2e00ca65a56261c33a609e083c25e2df05a97f7592e24a5611f`  
		Last Modified: Tue, 20 Jun 2017 23:10:50 GMT  
		Size: 95.8 MB (95811422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ec1464c10596b53fdd8d1f8a05f2d3a60de544a0fa173326b75c434edd0c`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:alpine`

```console
$ docker pull logstash@sha256:2dbe78833ddbc6e7d0eb9830819e60e748747f53695064f90b7b0e93be717c13
```

-	Platforms:
	-	linux; amd64

### `logstash:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153664308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6287e4accc2b0d590c02ddecb1202ef8095961999d72b17c217e71905f58a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 20 Jun 2017 19:57:28 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Tue, 20 Jun 2017 19:57:33 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Tue, 20 Jun 2017 19:57:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 19:57:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 19:57:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Tue, 20 Jun 2017 19:57:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 22:42:28 GMT
ENV LOGSTASH_VERSION=5.4.2
# Tue, 20 Jun 2017 22:42:29 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.4.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=c5d5f720c1f30e9aa12446a525e350f157b88385
# Tue, 20 Jun 2017 22:42:50 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Tue, 20 Jun 2017 22:42:52 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Tue, 20 Jun 2017 22:42:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:42:54 GMT
CMD ["-e" ""]
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
	-	`sha256:d476a6e1777eec14030d8be8bc5016f30dada8e11c854057df50c5d3f038624b`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f129fce0aa812ca399fcec63f30eb403f95e8de375ec3c232f6d2730f14bd7`  
		Last Modified: Tue, 20 Jun 2017 23:10:29 GMT  
		Size: 1.5 MB (1486425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f1d0b06736b3a805559995f93f237399a5b95c54d70811aa8bcb85518c4365`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 93.1 KB (93081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ffb0580be0f2e00ca65a56261c33a609e083c25e2df05a97f7592e24a5611f`  
		Last Modified: Tue, 20 Jun 2017 23:10:50 GMT  
		Size: 95.8 MB (95811422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c96ec1464c10596b53fdd8d1f8a05f2d3a60de544a0fa173326b75c434edd0c`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1`

```console
$ docker pull logstash@sha256:a9360c7c1a337ed24bc273fbc7d6c4baac52628d1f587f98f6f9e250086d7c28
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214396710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ca5f10173286a088ee9f900e0b7d8dea09a12e4a29a5d535ef754cafcee92d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:44:12 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 22:44:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 20 Jun 2017 22:44:15 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 20 Jun 2017 22:44:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:44:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:44:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 22:44:47 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 22:44:48 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 22:44:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:44:50 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489eebdf89b8d1a0f21c15a917fd650f9a82241eda13895a16335eb167c347c3`  
		Last Modified: Tue, 20 Jun 2017 23:12:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5a6f3d65d8287f95aa789b3e99933bbd671bb5b67cba078b1d1f0ea90aac68`  
		Last Modified: Tue, 20 Jun 2017 23:12:58 GMT  
		Size: 85.8 MB (85759210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be17621e8e3a76d47a38780d6acd22ab919ad7d531504db29c63981a6d96ca`  
		Last Modified: Tue, 20 Jun 2017 23:12:39 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:a9360c7c1a337ed24bc273fbc7d6c4baac52628d1f587f98f6f9e250086d7c28
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214396710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ca5f10173286a088ee9f900e0b7d8dea09a12e4a29a5d535ef754cafcee92d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:44:12 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 22:44:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 20 Jun 2017 22:44:15 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 20 Jun 2017 22:44:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:44:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:44:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 22:44:47 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 22:44:48 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 22:44:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:44:50 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489eebdf89b8d1a0f21c15a917fd650f9a82241eda13895a16335eb167c347c3`  
		Last Modified: Tue, 20 Jun 2017 23:12:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5a6f3d65d8287f95aa789b3e99933bbd671bb5b67cba078b1d1f0ea90aac68`  
		Last Modified: Tue, 20 Jun 2017 23:12:58 GMT  
		Size: 85.8 MB (85759210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be17621e8e3a76d47a38780d6acd22ab919ad7d531504db29c63981a6d96ca`  
		Last Modified: Tue, 20 Jun 2017 23:12:39 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2`

```console
$ docker pull logstash@sha256:a9360c7c1a337ed24bc273fbc7d6c4baac52628d1f587f98f6f9e250086d7c28
```

-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214396710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ca5f10173286a088ee9f900e0b7d8dea09a12e4a29a5d535ef754cafcee92d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 22:44:12 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 22:44:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 20 Jun 2017 22:44:15 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 20 Jun 2017 22:44:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:44:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 22:44:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 22:44:47 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 22:44:48 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 22:44:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 22:44:50 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489eebdf89b8d1a0f21c15a917fd650f9a82241eda13895a16335eb167c347c3`  
		Last Modified: Tue, 20 Jun 2017 23:12:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5a6f3d65d8287f95aa789b3e99933bbd671bb5b67cba078b1d1f0ea90aac68`  
		Last Modified: Tue, 20 Jun 2017 23:12:58 GMT  
		Size: 85.8 MB (85759210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be17621e8e3a76d47a38780d6acd22ab919ad7d531504db29c63981a6d96ca`  
		Last Modified: Tue, 20 Jun 2017 23:12:39 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1-alpine`

```console
$ docker pull logstash@sha256:7f5bf21a0f083ea9c947a7e1965aeb6227fb89b580cd3e7fd13cc120b023e2e5
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143277120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f1b7f7d08f170051d0a4421be9af21f8d315a110a9f9ef4969dc45d44fc8c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 20 Jun 2017 19:57:28 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Tue, 20 Jun 2017 19:57:33 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Tue, 20 Jun 2017 19:57:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 19:57:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 19:58:25 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Tue, 20 Jun 2017 19:58:26 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 19:58:27 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 20 Jun 2017 19:58:27 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Tue, 20 Jun 2017 23:04:56 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Tue, 20 Jun 2017 23:04:57 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Tue, 20 Jun 2017 23:04:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 23:04:59 GMT
CMD ["-e" ""]
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
	-	`sha256:d476a6e1777eec14030d8be8bc5016f30dada8e11c854057df50c5d3f038624b`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f129fce0aa812ca399fcec63f30eb403f95e8de375ec3c232f6d2730f14bd7`  
		Last Modified: Tue, 20 Jun 2017 23:10:29 GMT  
		Size: 1.5 MB (1486425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f1d0b06736b3a805559995f93f237399a5b95c54d70811aa8bcb85518c4365`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 93.1 KB (93081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10ac5614c9b295f95aa450db7cf671b20b00dea9cfe14068d4641a4dd30d9f`  
		Last Modified: Tue, 20 Jun 2017 23:15:05 GMT  
		Size: 85.4 MB (85424233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d46a59494946e1ae10f31a4e238ef9904f6ca3ffde271f40e5da97264a9123`  
		Last Modified: Tue, 20 Jun 2017 23:14:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:7f5bf21a0f083ea9c947a7e1965aeb6227fb89b580cd3e7fd13cc120b023e2e5
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143277120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f1b7f7d08f170051d0a4421be9af21f8d315a110a9f9ef4969dc45d44fc8c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 20 Jun 2017 19:57:28 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Tue, 20 Jun 2017 19:57:33 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Tue, 20 Jun 2017 19:57:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 19:57:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 19:58:25 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Tue, 20 Jun 2017 19:58:26 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 19:58:27 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 20 Jun 2017 19:58:27 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Tue, 20 Jun 2017 23:04:56 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Tue, 20 Jun 2017 23:04:57 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Tue, 20 Jun 2017 23:04:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 23:04:59 GMT
CMD ["-e" ""]
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
	-	`sha256:d476a6e1777eec14030d8be8bc5016f30dada8e11c854057df50c5d3f038624b`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f129fce0aa812ca399fcec63f30eb403f95e8de375ec3c232f6d2730f14bd7`  
		Last Modified: Tue, 20 Jun 2017 23:10:29 GMT  
		Size: 1.5 MB (1486425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f1d0b06736b3a805559995f93f237399a5b95c54d70811aa8bcb85518c4365`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 93.1 KB (93081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10ac5614c9b295f95aa450db7cf671b20b00dea9cfe14068d4641a4dd30d9f`  
		Last Modified: Tue, 20 Jun 2017 23:15:05 GMT  
		Size: 85.4 MB (85424233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d46a59494946e1ae10f31a4e238ef9904f6ca3ffde271f40e5da97264a9123`  
		Last Modified: Tue, 20 Jun 2017 23:14:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2-alpine`

```console
$ docker pull logstash@sha256:7f5bf21a0f083ea9c947a7e1965aeb6227fb89b580cd3e7fd13cc120b023e2e5
```

-	Platforms:
	-	linux; amd64

### `logstash:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143277120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f1b7f7d08f170051d0a4421be9af21f8d315a110a9f9ef4969dc45d44fc8c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 20 Jun 2017 19:57:28 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Tue, 20 Jun 2017 19:57:33 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Tue, 20 Jun 2017 19:57:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 19:57:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 19:58:25 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Tue, 20 Jun 2017 19:58:26 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 19:58:27 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 20 Jun 2017 19:58:27 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Tue, 20 Jun 2017 23:04:56 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Tue, 20 Jun 2017 23:04:57 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Tue, 20 Jun 2017 23:04:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 23:04:59 GMT
CMD ["-e" ""]
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
	-	`sha256:d476a6e1777eec14030d8be8bc5016f30dada8e11c854057df50c5d3f038624b`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f129fce0aa812ca399fcec63f30eb403f95e8de375ec3c232f6d2730f14bd7`  
		Last Modified: Tue, 20 Jun 2017 23:10:29 GMT  
		Size: 1.5 MB (1486425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f1d0b06736b3a805559995f93f237399a5b95c54d70811aa8bcb85518c4365`  
		Last Modified: Tue, 20 Jun 2017 23:10:28 GMT  
		Size: 93.1 KB (93081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10ac5614c9b295f95aa450db7cf671b20b00dea9cfe14068d4641a4dd30d9f`  
		Last Modified: Tue, 20 Jun 2017 23:15:05 GMT  
		Size: 85.4 MB (85424233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d46a59494946e1ae10f31a4e238ef9904f6ca3ffde271f40e5da97264a9123`  
		Last Modified: Tue, 20 Jun 2017 23:14:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6`

```console
$ docker pull logstash@sha256:5e82cf23b52542dac1f077a45fc4234f98a39bc13c3771727ec095c30b854cfa
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220237610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffef60bc824c00f2364e721b0fe71c1e9b4f0be1e3ba2e131f8f60031286ef03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 23:05:50 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 23:05:51 GMT
ENV LOGSTASH_VERSION=1.5.6
# Tue, 20 Jun 2017 23:05:52 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Tue, 20 Jun 2017 23:06:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:06:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 23:06:35 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 23:06:36 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 23:06:37 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 23:06:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 23:06:39 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8059ddfaca97f27f3d394591fe0a266f29970f21938e9cd4996213d4deb1b3a1`  
		Last Modified: Tue, 20 Jun 2017 23:16:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd06f329cabff3715746ce03693b1f544af5eb2dd162d740b45b3fe86f9a5`  
		Last Modified: Tue, 20 Jun 2017 23:17:14 GMT  
		Size: 91.6 MB (91600110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daac11513fe2241e14754dfe7db10b110007d086e2d538d6b0a68e1eb9d6dc6`  
		Last Modified: Tue, 20 Jun 2017 23:16:57 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5`

```console
$ docker pull logstash@sha256:5e82cf23b52542dac1f077a45fc4234f98a39bc13c3771727ec095c30b854cfa
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220237610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffef60bc824c00f2364e721b0fe71c1e9b4f0be1e3ba2e131f8f60031286ef03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 23:05:50 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 23:05:51 GMT
ENV LOGSTASH_VERSION=1.5.6
# Tue, 20 Jun 2017 23:05:52 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Tue, 20 Jun 2017 23:06:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:06:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 23:06:35 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 23:06:36 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 23:06:37 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 23:06:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 23:06:39 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8059ddfaca97f27f3d394591fe0a266f29970f21938e9cd4996213d4deb1b3a1`  
		Last Modified: Tue, 20 Jun 2017 23:16:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd06f329cabff3715746ce03693b1f544af5eb2dd162d740b45b3fe86f9a5`  
		Last Modified: Tue, 20 Jun 2017 23:17:14 GMT  
		Size: 91.6 MB (91600110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daac11513fe2241e14754dfe7db10b110007d086e2d538d6b0a68e1eb9d6dc6`  
		Last Modified: Tue, 20 Jun 2017 23:16:57 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1`

```console
$ docker pull logstash@sha256:5e82cf23b52542dac1f077a45fc4234f98a39bc13c3771727ec095c30b854cfa
```

-	Platforms:
	-	linux; amd64

### `logstash:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220237610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffef60bc824c00f2364e721b0fe71c1e9b4f0be1e3ba2e131f8f60031286ef03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 13 Jun 2017 23:50:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Jun 2017 23:50:50 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 20 Jun 2017 22:41:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 20 Jun 2017 22:41:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 20 Jun 2017 22:41:17 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 23:05:50 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 20 Jun 2017 23:05:51 GMT
ENV LOGSTASH_VERSION=1.5.6
# Tue, 20 Jun 2017 23:05:52 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Tue, 20 Jun 2017 23:06:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:06:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 23:06:35 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 20 Jun 2017 23:06:36 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 20 Jun 2017 23:06:37 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 20 Jun 2017 23:06:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 23:06:39 GMT
CMD ["-e" ""]
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
	-	`sha256:5b263bd350a305dc5e38312b57397cb14a2eadcd70e545dd1398056259ef7db7`  
		Last Modified: Wed, 14 Jun 2017 13:54:17 GMT  
		Size: 1.4 MB (1371015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9161c5de78d913016759200d16d6c48e001cf446397b98b6f3379ac313de21`  
		Last Modified: Wed, 14 Jun 2017 13:54:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3e05457e773680f2fe1be877f4306f83acda74be73b58e76f36a53a50e3d8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 500.7 KB (500662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a2f2599f8b7844e35effd0dcf1d3279fd966cbc1f99f0d952f6041e26277e8`  
		Last Modified: Tue, 20 Jun 2017 23:08:05 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8059ddfaca97f27f3d394591fe0a266f29970f21938e9cd4996213d4deb1b3a1`  
		Last Modified: Tue, 20 Jun 2017 23:16:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd06f329cabff3715746ce03693b1f544af5eb2dd162d740b45b3fe86f9a5`  
		Last Modified: Tue, 20 Jun 2017 23:17:14 GMT  
		Size: 91.6 MB (91600110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daac11513fe2241e14754dfe7db10b110007d086e2d538d6b0a68e1eb9d6dc6`  
		Last Modified: Tue, 20 Jun 2017 23:16:57 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6-alpine`

```console
$ docker pull logstash@sha256:c18b061b07fdc716f2341382eefd8a4315f1d825d2ebd6aa5a584dc668e92094
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149063752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16729e27a75eed32a564f7dcfb11b0250896defbf330f1f3e222e7aae317d13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Thu, 11 May 2017 05:09:58 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 11 May 2017 05:10:01 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 11 May 2017 05:10:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 11 May 2017 05:10:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 05:10:05 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Thu, 11 May 2017 05:10:06 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 05:10:06 GMT
ENV LOGSTASH_VERSION=1.5.6
# Thu, 11 May 2017 05:10:07 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Thu, 11 May 2017 05:10:25 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 11 May 2017 05:10:27 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 11 May 2017 05:10:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:10:28 GMT
CMD ["-e" ""]
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
	-	`sha256:6f2523092eb6677ba16783c0bf94d15f5b83a86c3c36e5271eaee84fa0b03514`  
		Last Modified: Sat, 13 May 2017 16:54:44 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02fd1bba8dc158389dece55a22e73346a12699ddd0859d0941751749f637b08`  
		Last Modified: Sat, 13 May 2017 16:54:45 GMT  
		Size: 1.4 MB (1434299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b5f589ff632131e2786b70a7d9fbdd8939fc809d81371478e2b93aece7328`  
		Last Modified: Sat, 13 May 2017 16:54:43 GMT  
		Size: 92.5 KB (92459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b61bf09e3a35dc4fbbb62bab1062c3855725bcfcd9a5522af79d7eb04990c4`  
		Last Modified: Sat, 13 May 2017 16:54:58 GMT  
		Size: 91.3 MB (91326282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa20bb61ba3ce01bd3bed1f2de1dcefdb824cd55bba7fe0a6ec489e65978a38`  
		Last Modified: Sat, 13 May 2017 16:54:43 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5-alpine`

```console
$ docker pull logstash@sha256:c18b061b07fdc716f2341382eefd8a4315f1d825d2ebd6aa5a584dc668e92094
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149063752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16729e27a75eed32a564f7dcfb11b0250896defbf330f1f3e222e7aae317d13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Thu, 11 May 2017 05:09:58 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 11 May 2017 05:10:01 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 11 May 2017 05:10:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 11 May 2017 05:10:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 05:10:05 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Thu, 11 May 2017 05:10:06 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 05:10:06 GMT
ENV LOGSTASH_VERSION=1.5.6
# Thu, 11 May 2017 05:10:07 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Thu, 11 May 2017 05:10:25 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 11 May 2017 05:10:27 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 11 May 2017 05:10:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:10:28 GMT
CMD ["-e" ""]
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
	-	`sha256:6f2523092eb6677ba16783c0bf94d15f5b83a86c3c36e5271eaee84fa0b03514`  
		Last Modified: Sat, 13 May 2017 16:54:44 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02fd1bba8dc158389dece55a22e73346a12699ddd0859d0941751749f637b08`  
		Last Modified: Sat, 13 May 2017 16:54:45 GMT  
		Size: 1.4 MB (1434299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b5f589ff632131e2786b70a7d9fbdd8939fc809d81371478e2b93aece7328`  
		Last Modified: Sat, 13 May 2017 16:54:43 GMT  
		Size: 92.5 KB (92459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b61bf09e3a35dc4fbbb62bab1062c3855725bcfcd9a5522af79d7eb04990c4`  
		Last Modified: Sat, 13 May 2017 16:54:58 GMT  
		Size: 91.3 MB (91326282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa20bb61ba3ce01bd3bed1f2de1dcefdb824cd55bba7fe0a6ec489e65978a38`  
		Last Modified: Sat, 13 May 2017 16:54:43 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1-alpine`

```console
$ docker pull logstash@sha256:c18b061b07fdc716f2341382eefd8a4315f1d825d2ebd6aa5a584dc668e92094
```

-	Platforms:
	-	linux; amd64

### `logstash:1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149063752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16729e27a75eed32a564f7dcfb11b0250896defbf330f1f3e222e7aae317d13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Thu, 11 May 2017 05:09:58 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 11 May 2017 05:10:01 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 11 May 2017 05:10:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 11 May 2017 05:10:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 May 2017 05:10:05 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Thu, 11 May 2017 05:10:06 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 11 May 2017 05:10:06 GMT
ENV LOGSTASH_VERSION=1.5.6
# Thu, 11 May 2017 05:10:07 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Thu, 11 May 2017 05:10:25 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 11 May 2017 05:10:27 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 11 May 2017 05:10:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:10:28 GMT
CMD ["-e" ""]
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
	-	`sha256:6f2523092eb6677ba16783c0bf94d15f5b83a86c3c36e5271eaee84fa0b03514`  
		Last Modified: Sat, 13 May 2017 16:54:44 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02fd1bba8dc158389dece55a22e73346a12699ddd0859d0941751749f637b08`  
		Last Modified: Sat, 13 May 2017 16:54:45 GMT  
		Size: 1.4 MB (1434299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b5f589ff632131e2786b70a7d9fbdd8939fc809d81371478e2b93aece7328`  
		Last Modified: Sat, 13 May 2017 16:54:43 GMT  
		Size: 92.5 KB (92459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b61bf09e3a35dc4fbbb62bab1062c3855725bcfcd9a5522af79d7eb04990c4`  
		Last Modified: Sat, 13 May 2017 16:54:58 GMT  
		Size: 91.3 MB (91326282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa20bb61ba3ce01bd3bed1f2de1dcefdb824cd55bba7fe0a6ec489e65978a38`  
		Last Modified: Sat, 13 May 2017 16:54:43 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
