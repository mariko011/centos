<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:latest`](#jrubylatest)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1.12`](#jruby9112)
-	[`jruby:9.1.12-jre`](#jruby9112-jre)
-	[`jruby:9.1.12.0`](#jruby91120)
-	[`jruby:9.1.12.0-jre`](#jruby91120-jre)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1.12-alpine`](#jruby9112-alpine)
-	[`jruby:9.1.12-jre-alpine`](#jruby9112-jre-alpine)
-	[`jruby:9.1.12.0-alpine`](#jruby91120-alpine)
-	[`jruby:9.1.12.0-jre-alpine`](#jruby91120-jre-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1.12-jdk`](#jruby9112-jdk)
-	[`jruby:9.1.12.0-jdk`](#jruby91120-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1.12-jdk-alpine`](#jruby9112-jdk-alpine)
-	[`jruby:9.1.12.0-jdk-alpine`](#jruby91120-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9.1.12-onbuild`](#jruby9112-onbuild)
-	[`jruby:9.1.12.0-onbuild`](#jruby91120-onbuild)
-	[`jruby:1.7`](#jruby17)
-	[`jruby:1.7.27`](#jruby1727)
-	[`jruby:1.7-jre`](#jruby17-jre)
-	[`jruby:1.7.27-jre`](#jruby1727-jre)
-	[`jruby:1.7-jdk`](#jruby17-jdk)
-	[`jruby:1.7.27-jdk`](#jruby1727-jdk)
-	[`jruby:1.7-onbuild`](#jruby17-onbuild)
-	[`jruby:1.7.27-onbuild`](#jruby1727-onbuild)

## `jruby:latest`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12-jre`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12.0`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12.0-jre`

```console
$ docker pull jruby@sha256:b4ff2a4f45aae345b162f761d5df5f9e8b5cfc51a7583f4e3cfd0786766cec3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12.0-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153356370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805bbce7cfc92cf39f01b22d9987b798d3ffe35ac2649ac2ab54e36e31215095`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:33:06 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:33:13 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:33:27 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:33:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:33:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:33:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:33:31 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef5217f9d7a0884c3a0ae1cb565175092fc24ba6b35b710ccb12e2716ee292`  
		Last Modified: Sun, 25 Jun 2017 12:05:48 GMT  
		Size: 21.0 MB (20991170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7e01dd5b818bab02de976fc00ab10f98254ec2bb251e491f636d92f31d9b51`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fcd8c1d37ff9362241c7c31aba1963ae53f42320b2099faef9727624bd7822`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 677.6 KB (677609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168a60f447e4489964afba84ab1b86a3a6efe3623de5b74c5b3e59ae74fda2b`  
		Last Modified: Sun, 25 Jun 2017 12:05:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:27f9ac9682d74a75be2147c8d7da0396a7cb0545c8ce05dc4af00d9183cc8515
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79150439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae965a13e9cff55cc95282594d347b7270c2f2d072af069c3939d50fc22bd71d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:40:34 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:40:35 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:40:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:40:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:40:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:40:57 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:40:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:40:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:41:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:41:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d758a6365c201f5dc8229b37f7541e654ad6fbbd452da1bbfa59c33afb22b7`  
		Last Modified: Fri, 30 Jun 2017 17:52:09 GMT  
		Size: 21.1 MB (21078404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d59f5ec9d744498f9ba0bda4091f4f69ccb348b2d5f33eab36ca6c9c19bc0f`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa47cc9db2098d0e0a5ad45aef3b8ec7ce967096e39999b5c74e7e4573feb5e`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 677.6 KB (677611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c2ee2f663db9bb9e520918440cf836081f34313d8effd251e7a4f954521e1`  
		Last Modified: Fri, 30 Jun 2017 17:52:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:27f9ac9682d74a75be2147c8d7da0396a7cb0545c8ce05dc4af00d9183cc8515
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79150439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae965a13e9cff55cc95282594d347b7270c2f2d072af069c3939d50fc22bd71d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:40:34 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:40:35 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:40:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:40:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:40:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:40:57 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:40:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:40:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:41:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:41:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d758a6365c201f5dc8229b37f7541e654ad6fbbd452da1bbfa59c33afb22b7`  
		Last Modified: Fri, 30 Jun 2017 17:52:09 GMT  
		Size: 21.1 MB (21078404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d59f5ec9d744498f9ba0bda4091f4f69ccb348b2d5f33eab36ca6c9c19bc0f`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa47cc9db2098d0e0a5ad45aef3b8ec7ce967096e39999b5c74e7e4573feb5e`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 677.6 KB (677611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c2ee2f663db9bb9e520918440cf836081f34313d8effd251e7a4f954521e1`  
		Last Modified: Fri, 30 Jun 2017 17:52:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:27f9ac9682d74a75be2147c8d7da0396a7cb0545c8ce05dc4af00d9183cc8515
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79150439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae965a13e9cff55cc95282594d347b7270c2f2d072af069c3939d50fc22bd71d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:40:34 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:40:35 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:40:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:40:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:40:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:40:57 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:40:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:40:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:41:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:41:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d758a6365c201f5dc8229b37f7541e654ad6fbbd452da1bbfa59c33afb22b7`  
		Last Modified: Fri, 30 Jun 2017 17:52:09 GMT  
		Size: 21.1 MB (21078404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d59f5ec9d744498f9ba0bda4091f4f69ccb348b2d5f33eab36ca6c9c19bc0f`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa47cc9db2098d0e0a5ad45aef3b8ec7ce967096e39999b5c74e7e4573feb5e`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 677.6 KB (677611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c2ee2f663db9bb9e520918440cf836081f34313d8effd251e7a4f954521e1`  
		Last Modified: Fri, 30 Jun 2017 17:52:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12-alpine`

```console
$ docker pull jruby@sha256:27f9ac9682d74a75be2147c8d7da0396a7cb0545c8ce05dc4af00d9183cc8515
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79150439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae965a13e9cff55cc95282594d347b7270c2f2d072af069c3939d50fc22bd71d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:40:34 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:40:35 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:40:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:40:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:40:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:40:57 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:40:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:40:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:41:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:41:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d758a6365c201f5dc8229b37f7541e654ad6fbbd452da1bbfa59c33afb22b7`  
		Last Modified: Fri, 30 Jun 2017 17:52:09 GMT  
		Size: 21.1 MB (21078404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d59f5ec9d744498f9ba0bda4091f4f69ccb348b2d5f33eab36ca6c9c19bc0f`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa47cc9db2098d0e0a5ad45aef3b8ec7ce967096e39999b5c74e7e4573feb5e`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 677.6 KB (677611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c2ee2f663db9bb9e520918440cf836081f34313d8effd251e7a4f954521e1`  
		Last Modified: Fri, 30 Jun 2017 17:52:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12-jre-alpine`

```console
$ docker pull jruby@sha256:27f9ac9682d74a75be2147c8d7da0396a7cb0545c8ce05dc4af00d9183cc8515
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79150439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae965a13e9cff55cc95282594d347b7270c2f2d072af069c3939d50fc22bd71d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:40:34 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:40:35 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:40:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:40:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:40:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:40:57 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:40:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:40:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:41:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:41:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d758a6365c201f5dc8229b37f7541e654ad6fbbd452da1bbfa59c33afb22b7`  
		Last Modified: Fri, 30 Jun 2017 17:52:09 GMT  
		Size: 21.1 MB (21078404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d59f5ec9d744498f9ba0bda4091f4f69ccb348b2d5f33eab36ca6c9c19bc0f`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa47cc9db2098d0e0a5ad45aef3b8ec7ce967096e39999b5c74e7e4573feb5e`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 677.6 KB (677611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c2ee2f663db9bb9e520918440cf836081f34313d8effd251e7a4f954521e1`  
		Last Modified: Fri, 30 Jun 2017 17:52:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12.0-alpine`

```console
$ docker pull jruby@sha256:27f9ac9682d74a75be2147c8d7da0396a7cb0545c8ce05dc4af00d9183cc8515
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79150439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae965a13e9cff55cc95282594d347b7270c2f2d072af069c3939d50fc22bd71d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:40:34 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:40:35 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:40:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:40:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:40:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:40:57 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:40:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:40:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:41:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:41:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d758a6365c201f5dc8229b37f7541e654ad6fbbd452da1bbfa59c33afb22b7`  
		Last Modified: Fri, 30 Jun 2017 17:52:09 GMT  
		Size: 21.1 MB (21078404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d59f5ec9d744498f9ba0bda4091f4f69ccb348b2d5f33eab36ca6c9c19bc0f`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa47cc9db2098d0e0a5ad45aef3b8ec7ce967096e39999b5c74e7e4573feb5e`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 677.6 KB (677611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c2ee2f663db9bb9e520918440cf836081f34313d8effd251e7a4f954521e1`  
		Last Modified: Fri, 30 Jun 2017 17:52:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12.0-jre-alpine`

```console
$ docker pull jruby@sha256:27f9ac9682d74a75be2147c8d7da0396a7cb0545c8ce05dc4af00d9183cc8515
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12.0-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79150439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae965a13e9cff55cc95282594d347b7270c2f2d072af069c3939d50fc22bd71d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:40:34 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:40:35 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:40:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:40:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:40:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:40:57 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:40:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:40:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:41:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:41:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ee92fbad02f4e7696a655f4239422585489b56e259de935e71a8271068b1b2`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 1.1 MB (1122146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d758a6365c201f5dc8229b37f7541e654ad6fbbd452da1bbfa59c33afb22b7`  
		Last Modified: Fri, 30 Jun 2017 17:52:09 GMT  
		Size: 21.1 MB (21078404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d59f5ec9d744498f9ba0bda4091f4f69ccb348b2d5f33eab36ca6c9c19bc0f`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa47cc9db2098d0e0a5ad45aef3b8ec7ce967096e39999b5c74e7e4573feb5e`  
		Last Modified: Fri, 30 Jun 2017 17:52:06 GMT  
		Size: 677.6 KB (677611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c2ee2f663db9bb9e520918440cf836081f34313d8effd251e7a4f954521e1`  
		Last Modified: Fri, 30 Jun 2017 17:52:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:c871d76fc04de10915b7c5931ed8555f2afab76daa50363cc0ba718b2eb0fc66
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261971709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91eeaf99774cf79ea91f7a354ef02ced00bdea381a624086f9048c17478b0cb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:34:09 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:34:10 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:34:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:34:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:34:32 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:34:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:34:37 GMT
CMD ["irb"]
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c063480e21e32d2a1b690db58822c53a2cec1a8a6c33f9b239a00cd8633e476`  
		Last Modified: Sun, 25 Jun 2017 12:13:13 GMT  
		Size: 21.0 MB (20992504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ccc704038e823e05624756d7577f7b731e1239c7de992a0494017419a0a47f`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65469b1e5b3e6d174825390dca39070d24e3a7ca013f4028d5651d54837180`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 677.6 KB (677607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01091d37e37f59c3b80fd65d4dc2c21cc578787e7e111e107c5ef3c17bca23`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12-jdk`

```console
$ docker pull jruby@sha256:c871d76fc04de10915b7c5931ed8555f2afab76daa50363cc0ba718b2eb0fc66
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261971709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91eeaf99774cf79ea91f7a354ef02ced00bdea381a624086f9048c17478b0cb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:34:09 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:34:10 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:34:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:34:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:34:32 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:34:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:34:37 GMT
CMD ["irb"]
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c063480e21e32d2a1b690db58822c53a2cec1a8a6c33f9b239a00cd8633e476`  
		Last Modified: Sun, 25 Jun 2017 12:13:13 GMT  
		Size: 21.0 MB (20992504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ccc704038e823e05624756d7577f7b731e1239c7de992a0494017419a0a47f`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65469b1e5b3e6d174825390dca39070d24e3a7ca013f4028d5651d54837180`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 677.6 KB (677607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01091d37e37f59c3b80fd65d4dc2c21cc578787e7e111e107c5ef3c17bca23`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12.0-jdk`

```console
$ docker pull jruby@sha256:c871d76fc04de10915b7c5931ed8555f2afab76daa50363cc0ba718b2eb0fc66
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12.0-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261971709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91eeaf99774cf79ea91f7a354ef02ced00bdea381a624086f9048c17478b0cb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:34:09 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:34:10 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:34:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:34:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:34:32 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:34:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:34:37 GMT
CMD ["irb"]
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c063480e21e32d2a1b690db58822c53a2cec1a8a6c33f9b239a00cd8633e476`  
		Last Modified: Sun, 25 Jun 2017 12:13:13 GMT  
		Size: 21.0 MB (20992504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ccc704038e823e05624756d7577f7b731e1239c7de992a0494017419a0a47f`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65469b1e5b3e6d174825390dca39070d24e3a7ca013f4028d5651d54837180`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 677.6 KB (677607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01091d37e37f59c3b80fd65d4dc2c21cc578787e7e111e107c5ef3c17bca23`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:a03b8047375d944450b3f1110713b085d9f396bdc51332df7988eda6f17bc35d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94921516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7540ceaeaefc2fe80ae4720d16de68e4257b6cb096495b1ac9d2ba0000af3379`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:41:35 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:41:36 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:41:37 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:41:46 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:41:47 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:48 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:42:00 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:42:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:42:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:42:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:42:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:42:05 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28685f496f3a41488ea356b27a8ebb88cfeb7f9b0f746209e80d6d31ba4052ab`  
		Last Modified: Fri, 30 Jun 2017 17:57:57 GMT  
		Size: 1.1 MB (1123152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57b47d0a02ff3d252c86003419ec7146fb391ee12851ec3b2f5de9ec757fa2a`  
		Last Modified: Fri, 30 Jun 2017 17:57:59 GMT  
		Size: 21.1 MB (21079600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce780d056c19c731248492981831ba8d48acc17c85b5d525733c11cf7a6fb33`  
		Last Modified: Fri, 30 Jun 2017 17:57:56 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829d79e5996d53f7d2488c1f0a8aea3c7fef9efc5a69b13907d3262414f23640`  
		Last Modified: Fri, 30 Jun 2017 17:57:56 GMT  
		Size: 677.6 KB (677602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99550941a224ffd46e1b49c33b7ce4d30d129094e04e3d21a4862af5d08a0ad`  
		Last Modified: Fri, 30 Jun 2017 17:57:55 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12-jdk-alpine`

```console
$ docker pull jruby@sha256:a03b8047375d944450b3f1110713b085d9f396bdc51332df7988eda6f17bc35d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94921516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7540ceaeaefc2fe80ae4720d16de68e4257b6cb096495b1ac9d2ba0000af3379`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:41:35 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:41:36 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:41:37 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:41:46 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:41:47 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:48 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:42:00 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:42:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:42:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:42:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:42:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:42:05 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28685f496f3a41488ea356b27a8ebb88cfeb7f9b0f746209e80d6d31ba4052ab`  
		Last Modified: Fri, 30 Jun 2017 17:57:57 GMT  
		Size: 1.1 MB (1123152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57b47d0a02ff3d252c86003419ec7146fb391ee12851ec3b2f5de9ec757fa2a`  
		Last Modified: Fri, 30 Jun 2017 17:57:59 GMT  
		Size: 21.1 MB (21079600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce780d056c19c731248492981831ba8d48acc17c85b5d525733c11cf7a6fb33`  
		Last Modified: Fri, 30 Jun 2017 17:57:56 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829d79e5996d53f7d2488c1f0a8aea3c7fef9efc5a69b13907d3262414f23640`  
		Last Modified: Fri, 30 Jun 2017 17:57:56 GMT  
		Size: 677.6 KB (677602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99550941a224ffd46e1b49c33b7ce4d30d129094e04e3d21a4862af5d08a0ad`  
		Last Modified: Fri, 30 Jun 2017 17:57:55 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12.0-jdk-alpine`

```console
$ docker pull jruby@sha256:a03b8047375d944450b3f1110713b085d9f396bdc51332df7988eda6f17bc35d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12.0-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94921516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7540ceaeaefc2fe80ae4720d16de68e4257b6cb096495b1ac9d2ba0000af3379`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:41:35 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 29 Jun 2017 02:41:36 GMT
ENV JRUBY_VERSION=9.1.12.0
# Thu, 29 Jun 2017 02:41:37 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Thu, 29 Jun 2017 02:41:46 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 29 Jun 2017 02:41:47 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:41:48 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 29 Jun 2017 02:42:00 GMT
RUN gem install bundler
# Thu, 29 Jun 2017 02:42:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Jun 2017 02:42:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Jun 2017 02:42:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:42:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Jun 2017 02:42:05 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28685f496f3a41488ea356b27a8ebb88cfeb7f9b0f746209e80d6d31ba4052ab`  
		Last Modified: Fri, 30 Jun 2017 17:57:57 GMT  
		Size: 1.1 MB (1123152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57b47d0a02ff3d252c86003419ec7146fb391ee12851ec3b2f5de9ec757fa2a`  
		Last Modified: Fri, 30 Jun 2017 17:57:59 GMT  
		Size: 21.1 MB (21079600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce780d056c19c731248492981831ba8d48acc17c85b5d525733c11cf7a6fb33`  
		Last Modified: Fri, 30 Jun 2017 17:57:56 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829d79e5996d53f7d2488c1f0a8aea3c7fef9efc5a69b13907d3262414f23640`  
		Last Modified: Fri, 30 Jun 2017 17:57:56 GMT  
		Size: 677.6 KB (677602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99550941a224ffd46e1b49c33b7ce4d30d129094e04e3d21a4862af5d08a0ad`  
		Last Modified: Fri, 30 Jun 2017 17:57:55 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:f80b3c39c601bda865898786165886e2475d9cbdfc420bbe2cfe74905002ff3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261971835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd483d076425eaf87ad66873aeea6ab27e00e488711b48491a258f0fd112ff5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:34:09 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:34:10 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:34:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:34:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:34:32 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:34:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:34:37 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 15:35:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 15:35:05 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 15:35:06 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Jun 2017 15:35:07 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Jun 2017 15:35:08 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Jun 2017 15:35:09 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c063480e21e32d2a1b690db58822c53a2cec1a8a6c33f9b239a00cd8633e476`  
		Last Modified: Sun, 25 Jun 2017 12:13:13 GMT  
		Size: 21.0 MB (20992504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ccc704038e823e05624756d7577f7b731e1239c7de992a0494017419a0a47f`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65469b1e5b3e6d174825390dca39070d24e3a7ca013f4028d5651d54837180`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 677.6 KB (677607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01091d37e37f59c3b80fd65d4dc2c21cc578787e7e111e107c5ef3c17bca23`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cd1f4b1f128a905db847b586d259470135990be0c087a25f95f65efe462c12`  
		Last Modified: Sun, 25 Jun 2017 12:16:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:f80b3c39c601bda865898786165886e2475d9cbdfc420bbe2cfe74905002ff3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261971835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd483d076425eaf87ad66873aeea6ab27e00e488711b48491a258f0fd112ff5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:34:09 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:34:10 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:34:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:34:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:34:32 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:34:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:34:37 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 15:35:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 15:35:05 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 15:35:06 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Jun 2017 15:35:07 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Jun 2017 15:35:08 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Jun 2017 15:35:09 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c063480e21e32d2a1b690db58822c53a2cec1a8a6c33f9b239a00cd8633e476`  
		Last Modified: Sun, 25 Jun 2017 12:13:13 GMT  
		Size: 21.0 MB (20992504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ccc704038e823e05624756d7577f7b731e1239c7de992a0494017419a0a47f`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65469b1e5b3e6d174825390dca39070d24e3a7ca013f4028d5651d54837180`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 677.6 KB (677607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01091d37e37f59c3b80fd65d4dc2c21cc578787e7e111e107c5ef3c17bca23`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cd1f4b1f128a905db847b586d259470135990be0c087a25f95f65efe462c12`  
		Last Modified: Sun, 25 Jun 2017 12:16:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12-onbuild`

```console
$ docker pull jruby@sha256:f80b3c39c601bda865898786165886e2475d9cbdfc420bbe2cfe74905002ff3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261971835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd483d076425eaf87ad66873aeea6ab27e00e488711b48491a258f0fd112ff5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:34:09 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:34:10 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:34:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:34:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:34:32 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:34:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:34:37 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 15:35:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 15:35:05 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 15:35:06 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Jun 2017 15:35:07 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Jun 2017 15:35:08 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Jun 2017 15:35:09 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c063480e21e32d2a1b690db58822c53a2cec1a8a6c33f9b239a00cd8633e476`  
		Last Modified: Sun, 25 Jun 2017 12:13:13 GMT  
		Size: 21.0 MB (20992504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ccc704038e823e05624756d7577f7b731e1239c7de992a0494017419a0a47f`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65469b1e5b3e6d174825390dca39070d24e3a7ca013f4028d5651d54837180`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 677.6 KB (677607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01091d37e37f59c3b80fd65d4dc2c21cc578787e7e111e107c5ef3c17bca23`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cd1f4b1f128a905db847b586d259470135990be0c087a25f95f65efe462c12`  
		Last Modified: Sun, 25 Jun 2017 12:16:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.12.0-onbuild`

```console
$ docker pull jruby@sha256:f80b3c39c601bda865898786165886e2475d9cbdfc420bbe2cfe74905002ff3a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.12.0-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (261971835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd483d076425eaf87ad66873aeea6ab27e00e488711b48491a258f0fd112ff5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:34:09 GMT
ENV JRUBY_VERSION=9.1.12.0
# Fri, 23 Jun 2017 15:34:10 GMT
ENV JRUBY_SHA256=ddb23c95f4b3cc3fc1cc57b81cb4ceee776496ede402b9a6eb0622cf15e1a597
# Fri, 23 Jun 2017 15:34:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:34:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:34:32 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:34:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:34:37 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 15:35:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 15:35:05 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 15:35:06 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Jun 2017 15:35:07 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Jun 2017 15:35:08 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Jun 2017 15:35:09 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c063480e21e32d2a1b690db58822c53a2cec1a8a6c33f9b239a00cd8633e476`  
		Last Modified: Sun, 25 Jun 2017 12:13:13 GMT  
		Size: 21.0 MB (20992504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ccc704038e823e05624756d7577f7b731e1239c7de992a0494017419a0a47f`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf65469b1e5b3e6d174825390dca39070d24e3a7ca013f4028d5651d54837180`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 677.6 KB (677607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01091d37e37f59c3b80fd65d4dc2c21cc578787e7e111e107c5ef3c17bca23`  
		Last Modified: Sun, 25 Jun 2017 12:13:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cd1f4b1f128a905db847b586d259470135990be0c087a25f95f65efe462c12`  
		Last Modified: Sun, 25 Jun 2017 12:16:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:efce82f50ed42c7357f6c3efee4898e1cab4ee17a45a01b24d200c6289de8cc6
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155126912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db02c69df367682fd5fb46c039230aefabfb6b5fda72f42eb8832ebfb7ac20cf`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:35:35 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:35:36 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:35:42 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:35:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:35:52 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:35:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:35:57 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbfcf7040a10b0e77267d64bddd1ca4e4ee89dbddbf0aa899bad9dc09f59a84`  
		Last Modified: Sun, 25 Jun 2017 12:18:04 GMT  
		Size: 22.8 MB (22761743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3854c6b0e4929c64fa8d91da0748f35bf61efce89e6d6bfb3d8dc7796481be4`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dcfb3ceca2a112222d15970a6aeb4ded7ff338896adc0801672bbc0fe11a58`  
		Last Modified: Sun, 25 Jun 2017 12:18:00 GMT  
		Size: 677.6 KB (677579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4d268a01a76460c7f7f8890e31e6d3a9f926160bc0c6b078700db57314889`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27`

```console
$ docker pull jruby@sha256:efce82f50ed42c7357f6c3efee4898e1cab4ee17a45a01b24d200c6289de8cc6
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155126912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db02c69df367682fd5fb46c039230aefabfb6b5fda72f42eb8832ebfb7ac20cf`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:35:35 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:35:36 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:35:42 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:35:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:35:52 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:35:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:35:57 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbfcf7040a10b0e77267d64bddd1ca4e4ee89dbddbf0aa899bad9dc09f59a84`  
		Last Modified: Sun, 25 Jun 2017 12:18:04 GMT  
		Size: 22.8 MB (22761743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3854c6b0e4929c64fa8d91da0748f35bf61efce89e6d6bfb3d8dc7796481be4`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dcfb3ceca2a112222d15970a6aeb4ded7ff338896adc0801672bbc0fe11a58`  
		Last Modified: Sun, 25 Jun 2017 12:18:00 GMT  
		Size: 677.6 KB (677579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4d268a01a76460c7f7f8890e31e6d3a9f926160bc0c6b078700db57314889`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:efce82f50ed42c7357f6c3efee4898e1cab4ee17a45a01b24d200c6289de8cc6
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155126912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db02c69df367682fd5fb46c039230aefabfb6b5fda72f42eb8832ebfb7ac20cf`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:35:35 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:35:36 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:35:42 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:35:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:35:52 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:35:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:35:57 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbfcf7040a10b0e77267d64bddd1ca4e4ee89dbddbf0aa899bad9dc09f59a84`  
		Last Modified: Sun, 25 Jun 2017 12:18:04 GMT  
		Size: 22.8 MB (22761743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3854c6b0e4929c64fa8d91da0748f35bf61efce89e6d6bfb3d8dc7796481be4`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dcfb3ceca2a112222d15970a6aeb4ded7ff338896adc0801672bbc0fe11a58`  
		Last Modified: Sun, 25 Jun 2017 12:18:00 GMT  
		Size: 677.6 KB (677579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4d268a01a76460c7f7f8890e31e6d3a9f926160bc0c6b078700db57314889`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jre`

```console
$ docker pull jruby@sha256:efce82f50ed42c7357f6c3efee4898e1cab4ee17a45a01b24d200c6289de8cc6
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155126912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db02c69df367682fd5fb46c039230aefabfb6b5fda72f42eb8832ebfb7ac20cf`
-	Default Command: `["irb"]`

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
# Fri, 23 Jun 2017 15:33:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:35:35 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:35:36 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:35:42 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:35:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:35:52 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:35:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:35:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:35:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:35:57 GMT
CMD ["irb"]
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
	-	`sha256:846a07236f7a1f713d3bc9c6b6ec98206cb5d163abd09f957a9b36baa9d7817a`  
		Last Modified: Sun, 25 Jun 2017 12:05:46 GMT  
		Size: 4.9 MB (4874464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbfcf7040a10b0e77267d64bddd1ca4e4ee89dbddbf0aa899bad9dc09f59a84`  
		Last Modified: Sun, 25 Jun 2017 12:18:04 GMT  
		Size: 22.8 MB (22761743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3854c6b0e4929c64fa8d91da0748f35bf61efce89e6d6bfb3d8dc7796481be4`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dcfb3ceca2a112222d15970a6aeb4ded7ff338896adc0801672bbc0fe11a58`  
		Last Modified: Sun, 25 Jun 2017 12:18:00 GMT  
		Size: 677.6 KB (677579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4d268a01a76460c7f7f8890e31e6d3a9f926160bc0c6b078700db57314889`  
		Last Modified: Sun, 25 Jun 2017 12:17:59 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:8c3cddd6f2bbfa79382643777cc0e4e3eca9b24738088d19f24d0a5a9bc49749
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263742483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53948db6b24f02b3eb1bdeffce17c19110980becce5d2fa570a39b506d09a724`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:36:22 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:36:23 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:36:30 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:36:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:36:40 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:36:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:36:45 GMT
CMD ["irb"]
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c155a1b1a84936d34ca45bb26ec35c66c61b85fa42993dcccee812ecefafb2`  
		Last Modified: Sun, 25 Jun 2017 12:20:03 GMT  
		Size: 22.8 MB (22763330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6bb093d1b533f3233c03ad18e667971ad8878ebd103805cf33b0a9d45d54e2`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1570200a7513958c52ee51176a6d3e339d71a9aa0ac78cb4b30e08a59de48829`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 677.6 KB (677553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0cec0cbae45e3b5c1da0fbe7a689fcb7119517d50222210930ee92edde84b`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jdk`

```console
$ docker pull jruby@sha256:8c3cddd6f2bbfa79382643777cc0e4e3eca9b24738088d19f24d0a5a9bc49749
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263742483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53948db6b24f02b3eb1bdeffce17c19110980becce5d2fa570a39b506d09a724`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:36:22 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:36:23 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:36:30 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:36:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:36:40 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:36:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:36:45 GMT
CMD ["irb"]
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c155a1b1a84936d34ca45bb26ec35c66c61b85fa42993dcccee812ecefafb2`  
		Last Modified: Sun, 25 Jun 2017 12:20:03 GMT  
		Size: 22.8 MB (22763330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6bb093d1b533f3233c03ad18e667971ad8878ebd103805cf33b0a9d45d54e2`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1570200a7513958c52ee51176a6d3e339d71a9aa0ac78cb4b30e08a59de48829`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 677.6 KB (677553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0cec0cbae45e3b5c1da0fbe7a689fcb7119517d50222210930ee92edde84b`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:23fbf7206b6ce259f0b6c8b586cfcf210f56e4513a89e7fac27c3c9855e89ddf
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263742609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863eebe0e910c4a19cfd7695b636e644b33c7efb72770b1ab455ec99e4545159`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:36:22 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:36:23 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:36:30 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:36:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:36:40 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:36:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:36:45 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 15:37:12 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 15:37:13 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 15:37:14 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Jun 2017 15:37:15 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Jun 2017 15:37:16 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Jun 2017 15:37:17 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c155a1b1a84936d34ca45bb26ec35c66c61b85fa42993dcccee812ecefafb2`  
		Last Modified: Sun, 25 Jun 2017 12:20:03 GMT  
		Size: 22.8 MB (22763330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6bb093d1b533f3233c03ad18e667971ad8878ebd103805cf33b0a9d45d54e2`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1570200a7513958c52ee51176a6d3e339d71a9aa0ac78cb4b30e08a59de48829`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 677.6 KB (677553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0cec0cbae45e3b5c1da0fbe7a689fcb7119517d50222210930ee92edde84b`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949e1225ff5145298ea6b8fc71041d8fbc393ba96bb9d2d30457533b92e3c695`  
		Last Modified: Sun, 25 Jun 2017 12:21:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-onbuild`

```console
$ docker pull jruby@sha256:23fbf7206b6ce259f0b6c8b586cfcf210f56e4513a89e7fac27c3c9855e89ddf
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263742609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863eebe0e910c4a19cfd7695b636e644b33c7efb72770b1ab455ec99e4545159`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:34:08 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 15:36:22 GMT
ENV JRUBY_VERSION=1.7.27
# Fri, 23 Jun 2017 15:36:23 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Fri, 23 Jun 2017 15:36:30 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Jun 2017 15:36:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Jun 2017 15:36:40 GMT
RUN gem install bundler
# Fri, 23 Jun 2017 15:36:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 15:36:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 15:36:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 15:36:45 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 15:37:12 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 15:37:13 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 15:37:14 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Jun 2017 15:37:15 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Jun 2017 15:37:16 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Jun 2017 15:37:17 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b2009648ae96cd1d95c1cd5ccb02c5e8e1cef7c68d9c32e8b6fd633f372f2`  
		Last Modified: Sun, 25 Jun 2017 12:13:11 GMT  
		Size: 4.9 MB (4945091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c155a1b1a84936d34ca45bb26ec35c66c61b85fa42993dcccee812ecefafb2`  
		Last Modified: Sun, 25 Jun 2017 12:20:03 GMT  
		Size: 22.8 MB (22763330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6bb093d1b533f3233c03ad18e667971ad8878ebd103805cf33b0a9d45d54e2`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1570200a7513958c52ee51176a6d3e339d71a9aa0ac78cb4b30e08a59de48829`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 677.6 KB (677553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0cec0cbae45e3b5c1da0fbe7a689fcb7119517d50222210930ee92edde84b`  
		Last Modified: Sun, 25 Jun 2017 12:19:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949e1225ff5145298ea6b8fc71041d8fbc393ba96bb9d2d30457533b92e3c695`  
		Last Modified: Sun, 25 Jun 2017 12:21:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
