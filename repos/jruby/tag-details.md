<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:1.7`](#jruby17)
-	[`jruby:1.7.27`](#jruby1727)
-	[`jruby:1.7.27-jdk`](#jruby1727-jdk)
-	[`jruby:1.7.27-jre`](#jruby1727-jre)
-	[`jruby:1.7.27-onbuild`](#jruby1727-onbuild)
-	[`jruby:1.7-jdk`](#jruby17-jdk)
-	[`jruby:1.7-jre`](#jruby17-jre)
-	[`jruby:1.7-onbuild`](#jruby17-onbuild)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1.13`](#jruby9113)
-	[`jruby:9.1.13.0`](#jruby91130)
-	[`jruby:9.1.13.0-alpine`](#jruby91130-alpine)
-	[`jruby:9.1.13.0-jdk`](#jruby91130-jdk)
-	[`jruby:9.1.13.0-jdk-alpine`](#jruby91130-jdk-alpine)
-	[`jruby:9.1.13.0-jre`](#jruby91130-jre)
-	[`jruby:9.1.13.0-jre-alpine`](#jruby91130-jre-alpine)
-	[`jruby:9.1.13.0-onbuild`](#jruby91130-onbuild)
-	[`jruby:9.1.13-alpine`](#jruby9113-alpine)
-	[`jruby:9.1.13-jdk`](#jruby9113-jdk)
-	[`jruby:9.1.13-jdk-alpine`](#jruby9113-jdk-alpine)
-	[`jruby:9.1.13-jre`](#jruby9113-jre)
-	[`jruby:9.1.13-jre-alpine`](#jruby9113-jre-alpine)
-	[`jruby:9.1.13-onbuild`](#jruby9113-onbuild)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:latest`](#jrubylatest)

## `jruby:1.7`

```console
$ docker pull jruby@sha256:cbd472916d73a407fd1ac5fa87d684c53bd0ec4d8741fe88f82ec854b59287bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

```console
$ docker pull jruby@sha256:609f2c28ce2c7794dac6fada795c6a5c28fffb95c307959e6f7e064bbab381fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258253570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62024cc1f90292696f433571ee6bb03683b2cf930b5a7a6f3ef3d4b63f217c07`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:19:44 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:19:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:59 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cbfd6fcabf923ca61dae59b67029cb9112544d3079deab6f387512ba10e3c3`  
		Last Modified: Tue, 10 Oct 2017 09:23:36 GMT  
		Size: 22.8 MB (22762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89562145bc22db19bcc92b8a98e4053807d5452ba6d88ab4d656d7908d737664`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441470578fe515fd02cf5629de723eedfd870cd41634585271064064d0108eb2`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 676.8 KB (676832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289e5af807ee106ff750a5dd8252671ad173f212f2415d485f2e301dfcecdc5`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27`

```console
$ docker pull jruby@sha256:cbd472916d73a407fd1ac5fa87d684c53bd0ec4d8741fe88f82ec854b59287bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27` - linux; amd64

```console
$ docker pull jruby@sha256:609f2c28ce2c7794dac6fada795c6a5c28fffb95c307959e6f7e064bbab381fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258253570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62024cc1f90292696f433571ee6bb03683b2cf930b5a7a6f3ef3d4b63f217c07`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:19:44 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:19:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:59 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cbfd6fcabf923ca61dae59b67029cb9112544d3079deab6f387512ba10e3c3`  
		Last Modified: Tue, 10 Oct 2017 09:23:36 GMT  
		Size: 22.8 MB (22762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89562145bc22db19bcc92b8a98e4053807d5452ba6d88ab4d656d7908d737664`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441470578fe515fd02cf5629de723eedfd870cd41634585271064064d0108eb2`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 676.8 KB (676832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289e5af807ee106ff750a5dd8252671ad173f212f2415d485f2e301dfcecdc5`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jdk`

```console
$ docker pull jruby@sha256:4d1c8e31ad23fbf81a3fe2a9b63419034e073bbf9a50b423b947d783ae653294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:5fe011e8795b853d71c712278c7d4e177f79791f531d6a14539f51772a150c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325872610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a021ac36792c3ca20205908c80b1f18ca3ac57b43f305fc7f7ae52c7243eca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:20:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:20:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:17 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:20:25 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:20:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8d21f90ee43e0ebfebba36a927fb6ce700a7d7c7df64e79c050ad3933bb925`  
		Last Modified: Tue, 10 Oct 2017 09:26:47 GMT  
		Size: 22.8 MB (22763374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1081357dc38038b7f1389c140177bb14298f1693770570df565989743024428c`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b5f401c83716c645a970ca8a384dc778f9f72646110fac13385a266afcd286`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 676.8 KB (676822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4befcb8856cb69f5d3933322b2db56e334f88d0b7a8ba6f769eddfdc7edc57ea`  
		Last Modified: Tue, 10 Oct 2017 09:26:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jre`

```console
$ docker pull jruby@sha256:cbd472916d73a407fd1ac5fa87d684c53bd0ec4d8741fe88f82ec854b59287bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jre` - linux; amd64

```console
$ docker pull jruby@sha256:609f2c28ce2c7794dac6fada795c6a5c28fffb95c307959e6f7e064bbab381fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258253570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62024cc1f90292696f433571ee6bb03683b2cf930b5a7a6f3ef3d4b63f217c07`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:19:44 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:19:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:59 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cbfd6fcabf923ca61dae59b67029cb9112544d3079deab6f387512ba10e3c3`  
		Last Modified: Tue, 10 Oct 2017 09:23:36 GMT  
		Size: 22.8 MB (22762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89562145bc22db19bcc92b8a98e4053807d5452ba6d88ab4d656d7908d737664`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441470578fe515fd02cf5629de723eedfd870cd41634585271064064d0108eb2`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 676.8 KB (676832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289e5af807ee106ff750a5dd8252671ad173f212f2415d485f2e301dfcecdc5`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-onbuild`

```console
$ docker pull jruby@sha256:154a9f1f538ba0b2a54e39db1df7bbcb96c1b75aaf42595e0f9c71b3e5e6da46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:322b196a522e9d55bd49c9581d1f6afe8c4ee9cdffabb53faad63d7207723507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325872742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36e926f7fc0118d7a544307fc378d7bb39a5aeea490f0ae4570c46fa83ceb8a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:20:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:20:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:17 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:20:25 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:20:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 09:20:36 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 09:20:36 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 09:20:36 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 10 Oct 2017 09:20:36 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 09:20:41 GMT
ONBUILD RUN bundle install --system
# Tue, 10 Oct 2017 09:20:41 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8d21f90ee43e0ebfebba36a927fb6ce700a7d7c7df64e79c050ad3933bb925`  
		Last Modified: Tue, 10 Oct 2017 09:26:47 GMT  
		Size: 22.8 MB (22763374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1081357dc38038b7f1389c140177bb14298f1693770570df565989743024428c`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b5f401c83716c645a970ca8a384dc778f9f72646110fac13385a266afcd286`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 676.8 KB (676822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4befcb8856cb69f5d3933322b2db56e334f88d0b7a8ba6f769eddfdc7edc57ea`  
		Last Modified: Tue, 10 Oct 2017 09:26:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5422d35901e8812f1c7224e1adee132969a1957e2a14acac65c6a1fcfc9a4dd`  
		Last Modified: Tue, 10 Oct 2017 09:27:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:4d1c8e31ad23fbf81a3fe2a9b63419034e073bbf9a50b423b947d783ae653294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:5fe011e8795b853d71c712278c7d4e177f79791f531d6a14539f51772a150c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325872610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a021ac36792c3ca20205908c80b1f18ca3ac57b43f305fc7f7ae52c7243eca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:20:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:20:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:17 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:20:25 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:20:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8d21f90ee43e0ebfebba36a927fb6ce700a7d7c7df64e79c050ad3933bb925`  
		Last Modified: Tue, 10 Oct 2017 09:26:47 GMT  
		Size: 22.8 MB (22763374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1081357dc38038b7f1389c140177bb14298f1693770570df565989743024428c`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b5f401c83716c645a970ca8a384dc778f9f72646110fac13385a266afcd286`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 676.8 KB (676822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4befcb8856cb69f5d3933322b2db56e334f88d0b7a8ba6f769eddfdc7edc57ea`  
		Last Modified: Tue, 10 Oct 2017 09:26:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:cbd472916d73a407fd1ac5fa87d684c53bd0ec4d8741fe88f82ec854b59287bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

```console
$ docker pull jruby@sha256:609f2c28ce2c7794dac6fada795c6a5c28fffb95c307959e6f7e064bbab381fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258253570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62024cc1f90292696f433571ee6bb03683b2cf930b5a7a6f3ef3d4b63f217c07`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:19:38 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:19:44 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:19:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:59 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:59 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cbfd6fcabf923ca61dae59b67029cb9112544d3079deab6f387512ba10e3c3`  
		Last Modified: Tue, 10 Oct 2017 09:23:36 GMT  
		Size: 22.8 MB (22762112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89562145bc22db19bcc92b8a98e4053807d5452ba6d88ab4d656d7908d737664`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441470578fe515fd02cf5629de723eedfd870cd41634585271064064d0108eb2`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 676.8 KB (676832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f289e5af807ee106ff750a5dd8252671ad173f212f2415d485f2e301dfcecdc5`  
		Last Modified: Tue, 10 Oct 2017 09:23:33 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:154a9f1f538ba0b2a54e39db1df7bbcb96c1b75aaf42595e0f9c71b3e5e6da46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:322b196a522e9d55bd49c9581d1f6afe8c4ee9cdffabb53faad63d7207723507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325872742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36e926f7fc0118d7a544307fc378d7bb39a5aeea490f0ae4570c46fa83ceb8a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_VERSION=1.7.27
# Tue, 10 Oct 2017 09:20:11 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Tue, 10 Oct 2017 09:20:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:20:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:17 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:20:25 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:20:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:20:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:20:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:20:27 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 09:20:36 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 09:20:36 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 09:20:36 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 10 Oct 2017 09:20:36 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 09:20:41 GMT
ONBUILD RUN bundle install --system
# Tue, 10 Oct 2017 09:20:41 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8d21f90ee43e0ebfebba36a927fb6ce700a7d7c7df64e79c050ad3933bb925`  
		Last Modified: Tue, 10 Oct 2017 09:26:47 GMT  
		Size: 22.8 MB (22763374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1081357dc38038b7f1389c140177bb14298f1693770570df565989743024428c`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b5f401c83716c645a970ca8a384dc778f9f72646110fac13385a266afcd286`  
		Last Modified: Tue, 10 Oct 2017 09:26:43 GMT  
		Size: 676.8 KB (676822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4befcb8856cb69f5d3933322b2db56e334f88d0b7a8ba6f769eddfdc7edc57ea`  
		Last Modified: Tue, 10 Oct 2017 09:26:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5422d35901e8812f1c7224e1adee132969a1957e2a14acac65c6a1fcfc9a4dd`  
		Last Modified: Tue, 10 Oct 2017 09:27:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-alpine`

```console
$ docker pull jruby@sha256:842350115dd7d376bf86650cb85db9a0e404f06f3a3f74c9aa78bda78a0f22f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:a61cfd304194c51c3a6434fdf26fa8458b307813d0cb04002b743eb872206396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79251411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5f26d10258d6e742a1fc4854fc2e71e48c5d5842a71244e8821afc725ca00`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:52:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:53:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:53:15 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:53:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:53:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96ad6d9a5059bc51effd14d12b1124aa72038b45160c1a78906745f59225b5`  
		Last Modified: Thu, 26 Oct 2017 04:54:54 GMT  
		Size: 1.1 MB (1142511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0703e7fa611b07b96c6c2a9b754805fab8b1890306cd0f68c38539d45e51bf0`  
		Last Modified: Thu, 26 Oct 2017 04:55:10 GMT  
		Size: 21.2 MB (21153779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdaa448a566e90721e204227bd8e2df71c9e1597cb6d9f9e666805cc235f8ba`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725552ff2282a44f7d921c83a77c68416acdb9bd681f0cdfcd7d65b493f0bb95`  
		Last Modified: Thu, 26 Oct 2017 04:54:52 GMT  
		Size: 676.9 KB (676913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2c5b65fdc06fade6503b90415527915948c9b33d89cf00ca793018fe6cca4`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jdk`

```console
$ docker pull jruby@sha256:f21d38583b5a91a84836232053fee3f1e790837705aca20931557f58a2255704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:b5f3bf72aa80e4b40358b3ab2317951572f99b2c0aac2c78ebc5631007f588ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324177962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5646d285108e17583ee508f66eedd69b7779cb227d302da5b042c4f48a67c61`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:18:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:07 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:19:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579178398b2e1f0e1c231e58af9e309fb5717656d00ba2c1da07ca1ac9d8cac`  
		Last Modified: Tue, 10 Oct 2017 09:22:20 GMT  
		Size: 21.1 MB (21068636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e453119e0fa78a8f08554c3394e867062f26b9c009a9867f751e847d136b82`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f77bca2f1063031af6ff4bbcef135a3a5d2db74b2d95020b6cc4ef789be04a`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 676.9 KB (676910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be73d5fa60e3413736d119f4a0c43b52cab323f639ee1866fce8b7c0b5d31431`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jdk-alpine`

```console
$ docker pull jruby@sha256:023e06903446e7e9d7d9e0b97cfcd0446a0bf378c10b656678c102b4ade410e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:db1b9b63c992e67fd594659158729144cc0626524ffd2fe7d61fbaf79494bffb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95021604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66c3a33c1c92327ae432f9caa422c0341a2c965a0f859a2bddce28d7e4d65ee`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:53:45 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:53:50 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:53:50 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:58 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:54:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:54:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:54:17 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:54:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:54:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:54:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:54:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:54:24 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82811f9d034d787d9938d302b0acf7d49d1e8d0254c43a6986ad442b27d5eac`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 1.1 MB (1142992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7052f2b02424d0f7b3dfee441327aeaac1c6d23887ed269a9abf6b84734072b6`  
		Last Modified: Thu, 26 Oct 2017 04:56:42 GMT  
		Size: 21.2 MB (21155845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04de254707ce62c4144d44163839aa854befcce13127109da3fb3d18473964d3`  
		Last Modified: Thu, 26 Oct 2017 04:56:41 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b958ec41de71f3bb945917fd339bf8627f23e98f364318680b044d3cf1185a3f`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 676.9 KB (676924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b10388be16611a7f3e7218f8c485b33e6ff60414100ef40108e2b6adb9f08c`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jre`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jre` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jre-alpine`

```console
$ docker pull jruby@sha256:842350115dd7d376bf86650cb85db9a0e404f06f3a3f74c9aa78bda78a0f22f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:a61cfd304194c51c3a6434fdf26fa8458b307813d0cb04002b743eb872206396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79251411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5f26d10258d6e742a1fc4854fc2e71e48c5d5842a71244e8821afc725ca00`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:52:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:53:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:53:15 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:53:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:53:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96ad6d9a5059bc51effd14d12b1124aa72038b45160c1a78906745f59225b5`  
		Last Modified: Thu, 26 Oct 2017 04:54:54 GMT  
		Size: 1.1 MB (1142511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0703e7fa611b07b96c6c2a9b754805fab8b1890306cd0f68c38539d45e51bf0`  
		Last Modified: Thu, 26 Oct 2017 04:55:10 GMT  
		Size: 21.2 MB (21153779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdaa448a566e90721e204227bd8e2df71c9e1597cb6d9f9e666805cc235f8ba`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725552ff2282a44f7d921c83a77c68416acdb9bd681f0cdfcd7d65b493f0bb95`  
		Last Modified: Thu, 26 Oct 2017 04:54:52 GMT  
		Size: 676.9 KB (676913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2c5b65fdc06fade6503b90415527915948c9b33d89cf00ca793018fe6cca4`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-onbuild`

```console
$ docker pull jruby@sha256:4122dfbfca948acaf4941b1c3e538752e1278e8eb80086303a137d03ac0ed55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:fc8f2056986831d6c672e8a75a6e7174774e3910c317f4bfdd9f239704a00d55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324178092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b570a1d1b8df3b3e183fa466cff4558865063bc309d785c301d3243d990924c7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:18:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:07 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:19:13 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 09:19:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD RUN bundle install --system
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579178398b2e1f0e1c231e58af9e309fb5717656d00ba2c1da07ca1ac9d8cac`  
		Last Modified: Tue, 10 Oct 2017 09:22:20 GMT  
		Size: 21.1 MB (21068636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e453119e0fa78a8f08554c3394e867062f26b9c009a9867f751e847d136b82`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f77bca2f1063031af6ff4bbcef135a3a5d2db74b2d95020b6cc4ef789be04a`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 676.9 KB (676910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be73d5fa60e3413736d119f4a0c43b52cab323f639ee1866fce8b7c0b5d31431`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b42e0eb0327551529c03a1133c5066ff0b10fe7df1ede4c06530c263e2ea74`  
		Last Modified: Tue, 10 Oct 2017 09:22:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-alpine`

```console
$ docker pull jruby@sha256:842350115dd7d376bf86650cb85db9a0e404f06f3a3f74c9aa78bda78a0f22f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:a61cfd304194c51c3a6434fdf26fa8458b307813d0cb04002b743eb872206396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79251411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5f26d10258d6e742a1fc4854fc2e71e48c5d5842a71244e8821afc725ca00`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:52:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:53:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:53:15 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:53:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:53:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96ad6d9a5059bc51effd14d12b1124aa72038b45160c1a78906745f59225b5`  
		Last Modified: Thu, 26 Oct 2017 04:54:54 GMT  
		Size: 1.1 MB (1142511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0703e7fa611b07b96c6c2a9b754805fab8b1890306cd0f68c38539d45e51bf0`  
		Last Modified: Thu, 26 Oct 2017 04:55:10 GMT  
		Size: 21.2 MB (21153779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdaa448a566e90721e204227bd8e2df71c9e1597cb6d9f9e666805cc235f8ba`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725552ff2282a44f7d921c83a77c68416acdb9bd681f0cdfcd7d65b493f0bb95`  
		Last Modified: Thu, 26 Oct 2017 04:54:52 GMT  
		Size: 676.9 KB (676913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2c5b65fdc06fade6503b90415527915948c9b33d89cf00ca793018fe6cca4`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jdk`

```console
$ docker pull jruby@sha256:f21d38583b5a91a84836232053fee3f1e790837705aca20931557f58a2255704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:b5f3bf72aa80e4b40358b3ab2317951572f99b2c0aac2c78ebc5631007f588ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324177962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5646d285108e17583ee508f66eedd69b7779cb227d302da5b042c4f48a67c61`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:18:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:07 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:19:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579178398b2e1f0e1c231e58af9e309fb5717656d00ba2c1da07ca1ac9d8cac`  
		Last Modified: Tue, 10 Oct 2017 09:22:20 GMT  
		Size: 21.1 MB (21068636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e453119e0fa78a8f08554c3394e867062f26b9c009a9867f751e847d136b82`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f77bca2f1063031af6ff4bbcef135a3a5d2db74b2d95020b6cc4ef789be04a`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 676.9 KB (676910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be73d5fa60e3413736d119f4a0c43b52cab323f639ee1866fce8b7c0b5d31431`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jdk-alpine`

```console
$ docker pull jruby@sha256:023e06903446e7e9d7d9e0b97cfcd0446a0bf378c10b656678c102b4ade410e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:db1b9b63c992e67fd594659158729144cc0626524ffd2fe7d61fbaf79494bffb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95021604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66c3a33c1c92327ae432f9caa422c0341a2c965a0f859a2bddce28d7e4d65ee`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:53:45 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:53:50 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:53:50 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:58 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:54:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:54:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:54:17 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:54:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:54:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:54:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:54:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:54:24 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82811f9d034d787d9938d302b0acf7d49d1e8d0254c43a6986ad442b27d5eac`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 1.1 MB (1142992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7052f2b02424d0f7b3dfee441327aeaac1c6d23887ed269a9abf6b84734072b6`  
		Last Modified: Thu, 26 Oct 2017 04:56:42 GMT  
		Size: 21.2 MB (21155845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04de254707ce62c4144d44163839aa854befcce13127109da3fb3d18473964d3`  
		Last Modified: Thu, 26 Oct 2017 04:56:41 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b958ec41de71f3bb945917fd339bf8627f23e98f364318680b044d3cf1185a3f`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 676.9 KB (676924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b10388be16611a7f3e7218f8c485b33e6ff60414100ef40108e2b6adb9f08c`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jre`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jre` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jre-alpine`

```console
$ docker pull jruby@sha256:842350115dd7d376bf86650cb85db9a0e404f06f3a3f74c9aa78bda78a0f22f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:a61cfd304194c51c3a6434fdf26fa8458b307813d0cb04002b743eb872206396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79251411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5f26d10258d6e742a1fc4854fc2e71e48c5d5842a71244e8821afc725ca00`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:52:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:53:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:53:15 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:53:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:53:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96ad6d9a5059bc51effd14d12b1124aa72038b45160c1a78906745f59225b5`  
		Last Modified: Thu, 26 Oct 2017 04:54:54 GMT  
		Size: 1.1 MB (1142511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0703e7fa611b07b96c6c2a9b754805fab8b1890306cd0f68c38539d45e51bf0`  
		Last Modified: Thu, 26 Oct 2017 04:55:10 GMT  
		Size: 21.2 MB (21153779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdaa448a566e90721e204227bd8e2df71c9e1597cb6d9f9e666805cc235f8ba`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725552ff2282a44f7d921c83a77c68416acdb9bd681f0cdfcd7d65b493f0bb95`  
		Last Modified: Thu, 26 Oct 2017 04:54:52 GMT  
		Size: 676.9 KB (676913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2c5b65fdc06fade6503b90415527915948c9b33d89cf00ca793018fe6cca4`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-onbuild`

```console
$ docker pull jruby@sha256:4122dfbfca948acaf4941b1c3e538752e1278e8eb80086303a137d03ac0ed55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:fc8f2056986831d6c672e8a75a6e7174774e3910c317f4bfdd9f239704a00d55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324178092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b570a1d1b8df3b3e183fa466cff4558865063bc309d785c301d3243d990924c7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:18:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:07 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:19:13 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 09:19:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD RUN bundle install --system
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579178398b2e1f0e1c231e58af9e309fb5717656d00ba2c1da07ca1ac9d8cac`  
		Last Modified: Tue, 10 Oct 2017 09:22:20 GMT  
		Size: 21.1 MB (21068636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e453119e0fa78a8f08554c3394e867062f26b9c009a9867f751e847d136b82`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f77bca2f1063031af6ff4bbcef135a3a5d2db74b2d95020b6cc4ef789be04a`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 676.9 KB (676910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be73d5fa60e3413736d119f4a0c43b52cab323f639ee1866fce8b7c0b5d31431`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b42e0eb0327551529c03a1133c5066ff0b10fe7df1ede4c06530c263e2ea74`  
		Last Modified: Tue, 10 Oct 2017 09:22:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:842350115dd7d376bf86650cb85db9a0e404f06f3a3f74c9aa78bda78a0f22f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:a61cfd304194c51c3a6434fdf26fa8458b307813d0cb04002b743eb872206396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79251411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5f26d10258d6e742a1fc4854fc2e71e48c5d5842a71244e8821afc725ca00`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:52:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:53:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:53:15 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:53:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:53:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96ad6d9a5059bc51effd14d12b1124aa72038b45160c1a78906745f59225b5`  
		Last Modified: Thu, 26 Oct 2017 04:54:54 GMT  
		Size: 1.1 MB (1142511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0703e7fa611b07b96c6c2a9b754805fab8b1890306cd0f68c38539d45e51bf0`  
		Last Modified: Thu, 26 Oct 2017 04:55:10 GMT  
		Size: 21.2 MB (21153779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdaa448a566e90721e204227bd8e2df71c9e1597cb6d9f9e666805cc235f8ba`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725552ff2282a44f7d921c83a77c68416acdb9bd681f0cdfcd7d65b493f0bb95`  
		Last Modified: Thu, 26 Oct 2017 04:54:52 GMT  
		Size: 676.9 KB (676913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2c5b65fdc06fade6503b90415527915948c9b33d89cf00ca793018fe6cca4`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:f21d38583b5a91a84836232053fee3f1e790837705aca20931557f58a2255704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:b5f3bf72aa80e4b40358b3ab2317951572f99b2c0aac2c78ebc5631007f588ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324177962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5646d285108e17583ee508f66eedd69b7779cb227d302da5b042c4f48a67c61`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:18:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:07 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:19:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579178398b2e1f0e1c231e58af9e309fb5717656d00ba2c1da07ca1ac9d8cac`  
		Last Modified: Tue, 10 Oct 2017 09:22:20 GMT  
		Size: 21.1 MB (21068636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e453119e0fa78a8f08554c3394e867062f26b9c009a9867f751e847d136b82`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f77bca2f1063031af6ff4bbcef135a3a5d2db74b2d95020b6cc4ef789be04a`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 676.9 KB (676910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be73d5fa60e3413736d119f4a0c43b52cab323f639ee1866fce8b7c0b5d31431`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:023e06903446e7e9d7d9e0b97cfcd0446a0bf378c10b656678c102b4ade410e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:db1b9b63c992e67fd594659158729144cc0626524ffd2fe7d61fbaf79494bffb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95021604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66c3a33c1c92327ae432f9caa422c0341a2c965a0f859a2bddce28d7e4d65ee`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:53:45 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:53:50 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:53:50 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:58 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:54:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:54:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:54:17 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:54:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:54:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:54:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:54:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:54:24 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82811f9d034d787d9938d302b0acf7d49d1e8d0254c43a6986ad442b27d5eac`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 1.1 MB (1142992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7052f2b02424d0f7b3dfee441327aeaac1c6d23887ed269a9abf6b84734072b6`  
		Last Modified: Thu, 26 Oct 2017 04:56:42 GMT  
		Size: 21.2 MB (21155845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04de254707ce62c4144d44163839aa854befcce13127109da3fb3d18473964d3`  
		Last Modified: Thu, 26 Oct 2017 04:56:41 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b958ec41de71f3bb945917fd339bf8627f23e98f364318680b044d3cf1185a3f`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 676.9 KB (676924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b10388be16611a7f3e7218f8c485b33e6ff60414100ef40108e2b6adb9f08c`  
		Last Modified: Thu, 26 Oct 2017 04:56:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:842350115dd7d376bf86650cb85db9a0e404f06f3a3f74c9aa78bda78a0f22f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:a61cfd304194c51c3a6434fdf26fa8458b307813d0cb04002b743eb872206396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79251411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5f26d10258d6e742a1fc4854fc2e71e48c5d5842a71244e8821afc725ca00`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:52:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:53:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:53:15 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:53:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:53:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96ad6d9a5059bc51effd14d12b1124aa72038b45160c1a78906745f59225b5`  
		Last Modified: Thu, 26 Oct 2017 04:54:54 GMT  
		Size: 1.1 MB (1142511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0703e7fa611b07b96c6c2a9b754805fab8b1890306cd0f68c38539d45e51bf0`  
		Last Modified: Thu, 26 Oct 2017 04:55:10 GMT  
		Size: 21.2 MB (21153779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdaa448a566e90721e204227bd8e2df71c9e1597cb6d9f9e666805cc235f8ba`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725552ff2282a44f7d921c83a77c68416acdb9bd681f0cdfcd7d65b493f0bb95`  
		Last Modified: Thu, 26 Oct 2017 04:54:52 GMT  
		Size: 676.9 KB (676913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2c5b65fdc06fade6503b90415527915948c9b33d89cf00ca793018fe6cca4`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:4122dfbfca948acaf4941b1c3e538752e1278e8eb80086303a137d03ac0ed55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:fc8f2056986831d6c672e8a75a6e7174774e3910c317f4bfdd9f239704a00d55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324178092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b570a1d1b8df3b3e183fa466cff4558865063bc309d785c301d3243d990924c7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:18:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:07 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:19:13 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 09:19:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD RUN bundle install --system
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579178398b2e1f0e1c231e58af9e309fb5717656d00ba2c1da07ca1ac9d8cac`  
		Last Modified: Tue, 10 Oct 2017 09:22:20 GMT  
		Size: 21.1 MB (21068636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e453119e0fa78a8f08554c3394e867062f26b9c009a9867f751e847d136b82`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f77bca2f1063031af6ff4bbcef135a3a5d2db74b2d95020b6cc4ef789be04a`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 676.9 KB (676910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be73d5fa60e3413736d119f4a0c43b52cab323f639ee1866fce8b7c0b5d31431`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b42e0eb0327551529c03a1133c5066ff0b10fe7df1ede4c06530c263e2ea74`  
		Last Modified: Tue, 10 Oct 2017 09:22:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:842350115dd7d376bf86650cb85db9a0e404f06f3a3f74c9aa78bda78a0f22f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:a61cfd304194c51c3a6434fdf26fa8458b307813d0cb04002b743eb872206396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79251411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a5f26d10258d6e742a1fc4854fc2e71e48c5d5842a71244e8821afc725ca00`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:52:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Thu, 26 Oct 2017 04:52:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Thu, 26 Oct 2017 04:53:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 26 Oct 2017 04:53:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 26 Oct 2017 04:53:15 GMT
RUN gem install bundler
# Thu, 26 Oct 2017 04:53:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 04:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:53:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 04:53:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96ad6d9a5059bc51effd14d12b1124aa72038b45160c1a78906745f59225b5`  
		Last Modified: Thu, 26 Oct 2017 04:54:54 GMT  
		Size: 1.1 MB (1142511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0703e7fa611b07b96c6c2a9b754805fab8b1890306cd0f68c38539d45e51bf0`  
		Last Modified: Thu, 26 Oct 2017 04:55:10 GMT  
		Size: 21.2 MB (21153779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdaa448a566e90721e204227bd8e2df71c9e1597cb6d9f9e666805cc235f8ba`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725552ff2282a44f7d921c83a77c68416acdb9bd681f0cdfcd7d65b493f0bb95`  
		Last Modified: Thu, 26 Oct 2017 04:54:52 GMT  
		Size: 676.9 KB (676913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2c5b65fdc06fade6503b90415527915948c9b33d89cf00ca793018fe6cca4`  
		Last Modified: Thu, 26 Oct 2017 04:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:4122dfbfca948acaf4941b1c3e538752e1278e8eb80086303a137d03ac0ed55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:fc8f2056986831d6c672e8a75a6e7174774e3910c317f4bfdd9f239704a00d55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324178092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b570a1d1b8df3b3e183fa466cff4558865063bc309d785c301d3243d990924c7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:18:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:18:46 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:18:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:19:07 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:19:13 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 09:19:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD RUN bundle install --system
# Tue, 10 Oct 2017 09:19:31 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fccdc58306ded46aebb4597c570f32072b60b2114a019e8d0f2fdf4dc3ff27`  
		Last Modified: Tue, 10 Oct 2017 09:22:22 GMT  
		Size: 6.7 MB (6685460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579178398b2e1f0e1c231e58af9e309fb5717656d00ba2c1da07ca1ac9d8cac`  
		Last Modified: Tue, 10 Oct 2017 09:22:20 GMT  
		Size: 21.1 MB (21068636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e453119e0fa78a8f08554c3394e867062f26b9c009a9867f751e847d136b82`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f77bca2f1063031af6ff4bbcef135a3a5d2db74b2d95020b6cc4ef789be04a`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 676.9 KB (676910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be73d5fa60e3413736d119f4a0c43b52cab323f639ee1866fce8b7c0b5d31431`  
		Last Modified: Tue, 10 Oct 2017 09:22:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b42e0eb0327551529c03a1133c5066ff0b10fe7df1ede4c06530c263e2ea74`  
		Last Modified: Tue, 10 Oct 2017 09:22:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:latest`

```console
$ docker pull jruby@sha256:3c8caeb37ee7ec9409899e1d62e7ad83db1e8e867dc430f6f656a532782bf267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

```console
$ docker pull jruby@sha256:f5ba65d0555d803db7b993f0cd94994ff3ad94f1640d3a86b999f87aa94eb4dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8f245e00a25709385839af57229716bd476e1dc97cc2180a10851857c82585`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:16:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_VERSION=9.1.13.0
# Tue, 10 Oct 2017 09:16:13 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Tue, 10 Oct 2017 09:16:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 10 Oct 2017 09:16:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:16:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 10 Oct 2017 09:17:05 GMT
RUN gem install bundler
# Tue, 10 Oct 2017 09:18:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 09:18:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:18:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 09:18:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f3919fb286d0d7d61287a53fd953bcc7f73f55f94faebef6d19d4278bca3dc`  
		Last Modified: Tue, 10 Oct 2017 09:20:59 GMT  
		Size: 6.6 MB (6649623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df49ec9efa1fa0bd59cc29b2b48283ca583cab19a50d590f64a8dc3c73c914c4`  
		Last Modified: Tue, 10 Oct 2017 09:21:00 GMT  
		Size: 21.1 MB (21067614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3141f3ad2ce78dc1ef90f0b6a892f1fe744332c788ec199f438a2021fb7ae`  
		Last Modified: Tue, 10 Oct 2017 09:20:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98172ee262e5fd9a7bcd3a9117a7cb5325cbaca63aa76a6a2aecc7cea9d3dcd7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 676.9 KB (676906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a85ce10f339abb6b4d6f5fbcb5e39d4a5460fe64b6efe6d38c0c5f22ad90f7`  
		Last Modified: Tue, 10 Oct 2017 09:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
