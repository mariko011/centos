<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:latest`](#jrubylatest)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1.8`](#jruby918)
-	[`jruby:9.1.8-jre`](#jruby918-jre)
-	[`jruby:9.1.8.0`](#jruby9180)
-	[`jruby:9.1.8.0-jre`](#jruby9180-jre)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1.8-alpine`](#jruby918-alpine)
-	[`jruby:9.1.8-jre-alpine`](#jruby918-jre-alpine)
-	[`jruby:9.1.8.0-alpine`](#jruby9180-alpine)
-	[`jruby:9.1.8.0-jre-alpine`](#jruby9180-jre-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1.8-jdk`](#jruby918-jdk)
-	[`jruby:9.1.8.0-jdk`](#jruby9180-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1.8-jdk-alpine`](#jruby918-jdk-alpine)
-	[`jruby:9.1.8.0-jdk-alpine`](#jruby9180-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9.1.8-onbuild`](#jruby918-onbuild)
-	[`jruby:9.1.8.0-onbuild`](#jruby9180-onbuild)
-	[`jruby:1.7`](#jruby17)
-	[`jruby:1.7.26`](#jruby1726)
-	[`jruby:1.7-jre`](#jruby17-jre)
-	[`jruby:1.7.26-jre`](#jruby1726-jre)
-	[`jruby:1.7-jdk`](#jruby17-jdk)
-	[`jruby:1.7.26-jdk`](#jruby1726-jdk)
-	[`jruby:1.7-onbuild`](#jruby17-onbuild)
-	[`jruby:1.7.26-onbuild`](#jruby1726-onbuild)

## `jruby:latest`

```console
$ docker pull jruby@sha256:8a8b4d9fccfa9a796e4f6870f506b288ed892d3fa3e0d4aa6b15428820aece7e
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152849297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2f6caa8b12c0fc0a63682a9a82c50a7019b60a78cd7771ec62ee32ca7e8388`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 00:59:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:02:15 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:02:16 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:02:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:02:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:02:35 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:02:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:02:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863c5084bf8054e4f1afe6a9c844bc50972583f75bfd317b823e8f49540fa525`  
		Last Modified: Thu, 27 Apr 2017 01:03:27 GMT  
		Size: 4.9 MB (4865158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067073315485a1bc5941900c783627ca77737bd50767e6b7eaa451e35bc2e4a9`  
		Last Modified: Thu, 27 Apr 2017 01:10:40 GMT  
		Size: 20.6 MB (20605056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da72dd0a375bfc2a8258556789b32caab1f3d779d1d55a00e4e90e5eac4f8045`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10f434f05845e62d9254710cf5a6d3335a8ed042eaf6bd391da799b0fa61ec`  
		Last Modified: Thu, 27 Apr 2017 01:10:38 GMT  
		Size: 639.3 KB (639307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b2c5a8cee8790e0e692e49fd13628004f4b4d8f427a558b3918bdae9ba56dc`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:efe97c800983ea6c3571d244a64d3ae65492660408ab511cb51b1ca266bc60df
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158209114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f824d375cc58e0884f2de04c836c612c8a0380d539a5811fda56bf03f3fecb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:20:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:23:18 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 08 May 2017 22:23:19 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 08 May 2017 22:23:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:23:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:23:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:23:35 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:23:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:23:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cf9b6a7b9043f835f186a9ad8cb4679e1a9db3509ab687119117cbb3856296`  
		Last Modified: Mon, 08 May 2017 22:24:29 GMT  
		Size: 10.2 MB (10224812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2aef8eee900d0f713875bccfdc054aabfc4b2012cb6f4c34c924648506a56b`  
		Last Modified: Mon, 08 May 2017 22:31:56 GMT  
		Size: 20.6 MB (20605082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca7f4e47820fb30318d05fe1f7ab27f6bce4707cbfec76f77890fb37c5d16c6`  
		Last Modified: Mon, 08 May 2017 22:31:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4313887c611ed4365aae909e8c14b4274b5f4678dbba29215bc826f2b44aa7`  
		Last Modified: Mon, 08 May 2017 22:31:54 GMT  
		Size: 639.3 KB (639282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db57ebd4b1d84f2ea38a2db9173702c1e9a487c40807dd10b7b9640e6280ca9`  
		Last Modified: Mon, 08 May 2017 22:31:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:efe97c800983ea6c3571d244a64d3ae65492660408ab511cb51b1ca266bc60df
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158209114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f824d375cc58e0884f2de04c836c612c8a0380d539a5811fda56bf03f3fecb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:20:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:23:18 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 08 May 2017 22:23:19 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 08 May 2017 22:23:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:23:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:23:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:23:35 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:23:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:23:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:23:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:23:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:23:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cf9b6a7b9043f835f186a9ad8cb4679e1a9db3509ab687119117cbb3856296`  
		Last Modified: Mon, 08 May 2017 22:24:29 GMT  
		Size: 10.2 MB (10224812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2aef8eee900d0f713875bccfdc054aabfc4b2012cb6f4c34c924648506a56b`  
		Last Modified: Mon, 08 May 2017 22:31:56 GMT  
		Size: 20.6 MB (20605082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca7f4e47820fb30318d05fe1f7ab27f6bce4707cbfec76f77890fb37c5d16c6`  
		Last Modified: Mon, 08 May 2017 22:31:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4313887c611ed4365aae909e8c14b4274b5f4678dbba29215bc826f2b44aa7`  
		Last Modified: Mon, 08 May 2017 22:31:54 GMT  
		Size: 639.3 KB (639282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db57ebd4b1d84f2ea38a2db9173702c1e9a487c40807dd10b7b9640e6280ca9`  
		Last Modified: Mon, 08 May 2017 22:31:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:8a8b4d9fccfa9a796e4f6870f506b288ed892d3fa3e0d4aa6b15428820aece7e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152849297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2f6caa8b12c0fc0a63682a9a82c50a7019b60a78cd7771ec62ee32ca7e8388`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 00:59:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:02:15 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:02:16 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:02:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:02:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:02:35 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:02:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:02:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863c5084bf8054e4f1afe6a9c844bc50972583f75bfd317b823e8f49540fa525`  
		Last Modified: Thu, 27 Apr 2017 01:03:27 GMT  
		Size: 4.9 MB (4865158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067073315485a1bc5941900c783627ca77737bd50767e6b7eaa451e35bc2e4a9`  
		Last Modified: Thu, 27 Apr 2017 01:10:40 GMT  
		Size: 20.6 MB (20605056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da72dd0a375bfc2a8258556789b32caab1f3d779d1d55a00e4e90e5eac4f8045`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10f434f05845e62d9254710cf5a6d3335a8ed042eaf6bd391da799b0fa61ec`  
		Last Modified: Thu, 27 Apr 2017 01:10:38 GMT  
		Size: 639.3 KB (639307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b2c5a8cee8790e0e692e49fd13628004f4b4d8f427a558b3918bdae9ba56dc`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8`

```console
$ docker pull jruby@sha256:8a8b4d9fccfa9a796e4f6870f506b288ed892d3fa3e0d4aa6b15428820aece7e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152849297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2f6caa8b12c0fc0a63682a9a82c50a7019b60a78cd7771ec62ee32ca7e8388`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 00:59:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:02:15 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:02:16 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:02:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:02:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:02:35 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:02:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:02:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863c5084bf8054e4f1afe6a9c844bc50972583f75bfd317b823e8f49540fa525`  
		Last Modified: Thu, 27 Apr 2017 01:03:27 GMT  
		Size: 4.9 MB (4865158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067073315485a1bc5941900c783627ca77737bd50767e6b7eaa451e35bc2e4a9`  
		Last Modified: Thu, 27 Apr 2017 01:10:40 GMT  
		Size: 20.6 MB (20605056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da72dd0a375bfc2a8258556789b32caab1f3d779d1d55a00e4e90e5eac4f8045`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10f434f05845e62d9254710cf5a6d3335a8ed042eaf6bd391da799b0fa61ec`  
		Last Modified: Thu, 27 Apr 2017 01:10:38 GMT  
		Size: 639.3 KB (639307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b2c5a8cee8790e0e692e49fd13628004f4b4d8f427a558b3918bdae9ba56dc`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jre`

```console
$ docker pull jruby@sha256:8a8b4d9fccfa9a796e4f6870f506b288ed892d3fa3e0d4aa6b15428820aece7e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152849297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2f6caa8b12c0fc0a63682a9a82c50a7019b60a78cd7771ec62ee32ca7e8388`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 00:59:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:02:15 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:02:16 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:02:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:02:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:02:35 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:02:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:02:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863c5084bf8054e4f1afe6a9c844bc50972583f75bfd317b823e8f49540fa525`  
		Last Modified: Thu, 27 Apr 2017 01:03:27 GMT  
		Size: 4.9 MB (4865158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067073315485a1bc5941900c783627ca77737bd50767e6b7eaa451e35bc2e4a9`  
		Last Modified: Thu, 27 Apr 2017 01:10:40 GMT  
		Size: 20.6 MB (20605056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da72dd0a375bfc2a8258556789b32caab1f3d779d1d55a00e4e90e5eac4f8045`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10f434f05845e62d9254710cf5a6d3335a8ed042eaf6bd391da799b0fa61ec`  
		Last Modified: Thu, 27 Apr 2017 01:10:38 GMT  
		Size: 639.3 KB (639307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b2c5a8cee8790e0e692e49fd13628004f4b4d8f427a558b3918bdae9ba56dc`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0`

```console
$ docker pull jruby@sha256:8a8b4d9fccfa9a796e4f6870f506b288ed892d3fa3e0d4aa6b15428820aece7e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152849297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2f6caa8b12c0fc0a63682a9a82c50a7019b60a78cd7771ec62ee32ca7e8388`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 00:59:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:02:15 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:02:16 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:02:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:02:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:02:35 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:02:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:02:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863c5084bf8054e4f1afe6a9c844bc50972583f75bfd317b823e8f49540fa525`  
		Last Modified: Thu, 27 Apr 2017 01:03:27 GMT  
		Size: 4.9 MB (4865158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067073315485a1bc5941900c783627ca77737bd50767e6b7eaa451e35bc2e4a9`  
		Last Modified: Thu, 27 Apr 2017 01:10:40 GMT  
		Size: 20.6 MB (20605056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da72dd0a375bfc2a8258556789b32caab1f3d779d1d55a00e4e90e5eac4f8045`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10f434f05845e62d9254710cf5a6d3335a8ed042eaf6bd391da799b0fa61ec`  
		Last Modified: Thu, 27 Apr 2017 01:10:38 GMT  
		Size: 639.3 KB (639307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b2c5a8cee8790e0e692e49fd13628004f4b4d8f427a558b3918bdae9ba56dc`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jre`

```console
$ docker pull jruby@sha256:8a8b4d9fccfa9a796e4f6870f506b288ed892d3fa3e0d4aa6b15428820aece7e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152849297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2f6caa8b12c0fc0a63682a9a82c50a7019b60a78cd7771ec62ee32ca7e8388`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 00:59:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:02:15 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:02:16 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:02:24 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:02:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:02:35 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:02:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:02:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:02:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863c5084bf8054e4f1afe6a9c844bc50972583f75bfd317b823e8f49540fa525`  
		Last Modified: Thu, 27 Apr 2017 01:03:27 GMT  
		Size: 4.9 MB (4865158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067073315485a1bc5941900c783627ca77737bd50767e6b7eaa451e35bc2e4a9`  
		Last Modified: Thu, 27 Apr 2017 01:10:40 GMT  
		Size: 20.6 MB (20605056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da72dd0a375bfc2a8258556789b32caab1f3d779d1d55a00e4e90e5eac4f8045`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10f434f05845e62d9254710cf5a6d3335a8ed042eaf6bd391da799b0fa61ec`  
		Last Modified: Thu, 27 Apr 2017 01:10:38 GMT  
		Size: 639.3 KB (639307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b2c5a8cee8790e0e692e49fd13628004f4b4d8f427a558b3918bdae9ba56dc`  
		Last Modified: Thu, 27 Apr 2017 01:10:37 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:5e51c6a3799a32012b78227f736e9b1830271c3b222dccd5c193d799dbb8106e
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78067896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b831f0740d3a0ad31d15b24a33d639f6a4ca3b3337da4e741e205b8d21e102bc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:42:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:42:55 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:42:56 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:15 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5cd2507d8301c9d531971a027999951ccbbfc1f7c11ae821e960235df38939`  
		Last Modified: Tue, 07 Mar 2017 18:46:38 GMT  
		Size: 1.1 MB (1093373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36add901509161cb3f603d924645c7d7efe9e1df9e49c4035afb84db9fbbef`  
		Last Modified: Tue, 07 Mar 2017 18:46:40 GMT  
		Size: 20.6 MB (20619667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8ed3d2f0b1099499b1e8301ab9b4a5b7d7999a1d943e98afc56a22d6559e8`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdafa04b8806378e5e8bb9211ddd72e83d280e09daa2dca86c38b6d0a886f44`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684859e704e5e2c41225bb9889474c8c7c861514f5787856c2e12d6e9e092422`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:5e51c6a3799a32012b78227f736e9b1830271c3b222dccd5c193d799dbb8106e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78067896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b831f0740d3a0ad31d15b24a33d639f6a4ca3b3337da4e741e205b8d21e102bc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:42:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:42:55 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:42:56 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:15 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5cd2507d8301c9d531971a027999951ccbbfc1f7c11ae821e960235df38939`  
		Last Modified: Tue, 07 Mar 2017 18:46:38 GMT  
		Size: 1.1 MB (1093373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36add901509161cb3f603d924645c7d7efe9e1df9e49c4035afb84db9fbbef`  
		Last Modified: Tue, 07 Mar 2017 18:46:40 GMT  
		Size: 20.6 MB (20619667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8ed3d2f0b1099499b1e8301ab9b4a5b7d7999a1d943e98afc56a22d6559e8`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdafa04b8806378e5e8bb9211ddd72e83d280e09daa2dca86c38b6d0a886f44`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684859e704e5e2c41225bb9889474c8c7c861514f5787856c2e12d6e9e092422`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:5e51c6a3799a32012b78227f736e9b1830271c3b222dccd5c193d799dbb8106e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78067896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b831f0740d3a0ad31d15b24a33d639f6a4ca3b3337da4e741e205b8d21e102bc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:42:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:42:55 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:42:56 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:15 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5cd2507d8301c9d531971a027999951ccbbfc1f7c11ae821e960235df38939`  
		Last Modified: Tue, 07 Mar 2017 18:46:38 GMT  
		Size: 1.1 MB (1093373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36add901509161cb3f603d924645c7d7efe9e1df9e49c4035afb84db9fbbef`  
		Last Modified: Tue, 07 Mar 2017 18:46:40 GMT  
		Size: 20.6 MB (20619667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8ed3d2f0b1099499b1e8301ab9b4a5b7d7999a1d943e98afc56a22d6559e8`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdafa04b8806378e5e8bb9211ddd72e83d280e09daa2dca86c38b6d0a886f44`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684859e704e5e2c41225bb9889474c8c7c861514f5787856c2e12d6e9e092422`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-alpine`

```console
$ docker pull jruby@sha256:5e51c6a3799a32012b78227f736e9b1830271c3b222dccd5c193d799dbb8106e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78067896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b831f0740d3a0ad31d15b24a33d639f6a4ca3b3337da4e741e205b8d21e102bc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:42:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:42:55 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:42:56 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:15 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5cd2507d8301c9d531971a027999951ccbbfc1f7c11ae821e960235df38939`  
		Last Modified: Tue, 07 Mar 2017 18:46:38 GMT  
		Size: 1.1 MB (1093373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36add901509161cb3f603d924645c7d7efe9e1df9e49c4035afb84db9fbbef`  
		Last Modified: Tue, 07 Mar 2017 18:46:40 GMT  
		Size: 20.6 MB (20619667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8ed3d2f0b1099499b1e8301ab9b4a5b7d7999a1d943e98afc56a22d6559e8`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdafa04b8806378e5e8bb9211ddd72e83d280e09daa2dca86c38b6d0a886f44`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684859e704e5e2c41225bb9889474c8c7c861514f5787856c2e12d6e9e092422`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jre-alpine`

```console
$ docker pull jruby@sha256:5e51c6a3799a32012b78227f736e9b1830271c3b222dccd5c193d799dbb8106e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78067896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b831f0740d3a0ad31d15b24a33d639f6a4ca3b3337da4e741e205b8d21e102bc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:42:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:42:55 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:42:56 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:15 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5cd2507d8301c9d531971a027999951ccbbfc1f7c11ae821e960235df38939`  
		Last Modified: Tue, 07 Mar 2017 18:46:38 GMT  
		Size: 1.1 MB (1093373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36add901509161cb3f603d924645c7d7efe9e1df9e49c4035afb84db9fbbef`  
		Last Modified: Tue, 07 Mar 2017 18:46:40 GMT  
		Size: 20.6 MB (20619667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8ed3d2f0b1099499b1e8301ab9b4a5b7d7999a1d943e98afc56a22d6559e8`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdafa04b8806378e5e8bb9211ddd72e83d280e09daa2dca86c38b6d0a886f44`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684859e704e5e2c41225bb9889474c8c7c861514f5787856c2e12d6e9e092422`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-alpine`

```console
$ docker pull jruby@sha256:5e51c6a3799a32012b78227f736e9b1830271c3b222dccd5c193d799dbb8106e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78067896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b831f0740d3a0ad31d15b24a33d639f6a4ca3b3337da4e741e205b8d21e102bc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:42:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:42:55 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:42:56 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:15 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5cd2507d8301c9d531971a027999951ccbbfc1f7c11ae821e960235df38939`  
		Last Modified: Tue, 07 Mar 2017 18:46:38 GMT  
		Size: 1.1 MB (1093373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36add901509161cb3f603d924645c7d7efe9e1df9e49c4035afb84db9fbbef`  
		Last Modified: Tue, 07 Mar 2017 18:46:40 GMT  
		Size: 20.6 MB (20619667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8ed3d2f0b1099499b1e8301ab9b4a5b7d7999a1d943e98afc56a22d6559e8`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdafa04b8806378e5e8bb9211ddd72e83d280e09daa2dca86c38b6d0a886f44`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684859e704e5e2c41225bb9889474c8c7c861514f5787856c2e12d6e9e092422`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jre-alpine`

```console
$ docker pull jruby@sha256:5e51c6a3799a32012b78227f736e9b1830271c3b222dccd5c193d799dbb8106e
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78067896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b831f0740d3a0ad31d15b24a33d639f6a4ca3b3337da4e741e205b8d21e102bc`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:42:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:42:55 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:42:56 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:15 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:17 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5cd2507d8301c9d531971a027999951ccbbfc1f7c11ae821e960235df38939`  
		Last Modified: Tue, 07 Mar 2017 18:46:38 GMT  
		Size: 1.1 MB (1093373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee36add901509161cb3f603d924645c7d7efe9e1df9e49c4035afb84db9fbbef`  
		Last Modified: Tue, 07 Mar 2017 18:46:40 GMT  
		Size: 20.6 MB (20619667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8ed3d2f0b1099499b1e8301ab9b4a5b7d7999a1d943e98afc56a22d6559e8`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdafa04b8806378e5e8bb9211ddd72e83d280e09daa2dca86c38b6d0a886f44`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684859e704e5e2c41225bb9889474c8c7c861514f5787856c2e12d6e9e092422`  
		Last Modified: Tue, 07 Mar 2017 18:46:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:e3bddc44f01ccf3dc61a970399e4892b913eaff0e780e1cf2f4f04bee6b6186d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279386049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca4519e6de1a9a0ad6c1cb51e72ecb46ae1f7967630f386430887348817e62b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:21:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:22:37 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 08 May 2017 22:22:38 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 08 May 2017 22:22:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:22:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:22:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:22:55 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:22:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:22:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:22:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:22:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2775f8e89617e7679937a28140dc0e20995f95dd902eaff9b60b1627751747`  
		Last Modified: Mon, 08 May 2017 22:25:57 GMT  
		Size: 10.3 MB (10314232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08503e9b22b63587f842b342297b88373dceced6afae3f479cbd77540271f9b`  
		Last Modified: Mon, 08 May 2017 22:29:49 GMT  
		Size: 20.6 MB (20606600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a35b6cdbdea0a184438c95d7b19ab6061b4990a7c393321b062f27fbe641db`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389948f569b2a8da1e04e85df1c73caa0127d48f2fe78fb64d2b888324123ae8`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 639.3 KB (639291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e8a7c063ecc5346dc432c80c25be4ff78aef518ed405fdb0b7f30ff06ac2dd`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jdk`

```console
$ docker pull jruby@sha256:e3bddc44f01ccf3dc61a970399e4892b913eaff0e780e1cf2f4f04bee6b6186d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279386049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca4519e6de1a9a0ad6c1cb51e72ecb46ae1f7967630f386430887348817e62b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:21:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:22:37 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 08 May 2017 22:22:38 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 08 May 2017 22:22:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:22:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:22:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:22:55 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:22:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:22:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:22:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:22:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2775f8e89617e7679937a28140dc0e20995f95dd902eaff9b60b1627751747`  
		Last Modified: Mon, 08 May 2017 22:25:57 GMT  
		Size: 10.3 MB (10314232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08503e9b22b63587f842b342297b88373dceced6afae3f479cbd77540271f9b`  
		Last Modified: Mon, 08 May 2017 22:29:49 GMT  
		Size: 20.6 MB (20606600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a35b6cdbdea0a184438c95d7b19ab6061b4990a7c393321b062f27fbe641db`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389948f569b2a8da1e04e85df1c73caa0127d48f2fe78fb64d2b888324123ae8`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 639.3 KB (639291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e8a7c063ecc5346dc432c80c25be4ff78aef518ed405fdb0b7f30ff06ac2dd`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jdk`

```console
$ docker pull jruby@sha256:e3bddc44f01ccf3dc61a970399e4892b913eaff0e780e1cf2f4f04bee6b6186d
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279386049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca4519e6de1a9a0ad6c1cb51e72ecb46ae1f7967630f386430887348817e62b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:21:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:22:37 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 08 May 2017 22:22:38 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 08 May 2017 22:22:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:22:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:22:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:22:55 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:22:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:22:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:22:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:22:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:22:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2775f8e89617e7679937a28140dc0e20995f95dd902eaff9b60b1627751747`  
		Last Modified: Mon, 08 May 2017 22:25:57 GMT  
		Size: 10.3 MB (10314232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08503e9b22b63587f842b342297b88373dceced6afae3f479cbd77540271f9b`  
		Last Modified: Mon, 08 May 2017 22:29:49 GMT  
		Size: 20.6 MB (20606600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a35b6cdbdea0a184438c95d7b19ab6061b4990a7c393321b062f27fbe641db`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389948f569b2a8da1e04e85df1c73caa0127d48f2fe78fb64d2b888324123ae8`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 639.3 KB (639291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e8a7c063ecc5346dc432c80c25be4ff78aef518ed405fdb0b7f30ff06ac2dd`  
		Last Modified: Mon, 08 May 2017 22:29:47 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:cd6f82e9a46061d14c974dd34890b607a4fc3e89b51b984a39610cc376f9c127
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93825173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ae55132c07dbdc3fbc0373c27bcbd233295252ddc55ad9c3f3f332529f67cb`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:43:22 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:43:23 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:43:24 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:30 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:32 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:44 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222e39b094025fcd2871d67eecfb57b13920435cabae90f363abefaf90e393f3`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 1.1 MB (1095021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4487ba19d45814bc2fae65f350b9d2b8781576acf4f1bf591a07d445aa8e0326`  
		Last Modified: Tue, 07 Mar 2017 18:49:49 GMT  
		Size: 20.6 MB (20621468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f44d8dc29f384f0d693b2e759c078644b4e4582120d56b5ac4717782b1b80a7`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1536089e7c3d0b20ef99a4e909156e49a5ad51c697e3992881b0abea64081ac6`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 637.9 KB (637915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8abae8af60212d43504d0d4d35d505f7752c1747b526854ad88a46ad1da5e2`  
		Last Modified: Tue, 07 Mar 2017 18:49:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jdk-alpine`

```console
$ docker pull jruby@sha256:cd6f82e9a46061d14c974dd34890b607a4fc3e89b51b984a39610cc376f9c127
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93825173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ae55132c07dbdc3fbc0373c27bcbd233295252ddc55ad9c3f3f332529f67cb`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:43:22 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:43:23 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:43:24 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:30 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:32 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:44 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222e39b094025fcd2871d67eecfb57b13920435cabae90f363abefaf90e393f3`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 1.1 MB (1095021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4487ba19d45814bc2fae65f350b9d2b8781576acf4f1bf591a07d445aa8e0326`  
		Last Modified: Tue, 07 Mar 2017 18:49:49 GMT  
		Size: 20.6 MB (20621468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f44d8dc29f384f0d693b2e759c078644b4e4582120d56b5ac4717782b1b80a7`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1536089e7c3d0b20ef99a4e909156e49a5ad51c697e3992881b0abea64081ac6`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 637.9 KB (637915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8abae8af60212d43504d0d4d35d505f7752c1747b526854ad88a46ad1da5e2`  
		Last Modified: Tue, 07 Mar 2017 18:49:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jdk-alpine`

```console
$ docker pull jruby@sha256:cd6f82e9a46061d14c974dd34890b607a4fc3e89b51b984a39610cc376f9c127
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93825173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ae55132c07dbdc3fbc0373c27bcbd233295252ddc55ad9c3f3f332529f67cb`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:43:22 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 07 Mar 2017 18:43:23 GMT
ENV JRUBY_VERSION=9.1.8.0
# Tue, 07 Mar 2017 18:43:24 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Tue, 07 Mar 2017 18:43:30 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 07 Mar 2017 18:43:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:32 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 07 Mar 2017 18:43:44 GMT
RUN gem install bundler
# Tue, 07 Mar 2017 18:43:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 18:43:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 18:43:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 18:43:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222e39b094025fcd2871d67eecfb57b13920435cabae90f363abefaf90e393f3`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 1.1 MB (1095021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4487ba19d45814bc2fae65f350b9d2b8781576acf4f1bf591a07d445aa8e0326`  
		Last Modified: Tue, 07 Mar 2017 18:49:49 GMT  
		Size: 20.6 MB (20621468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f44d8dc29f384f0d693b2e759c078644b4e4582120d56b5ac4717782b1b80a7`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1536089e7c3d0b20ef99a4e909156e49a5ad51c697e3992881b0abea64081ac6`  
		Last Modified: Tue, 07 Mar 2017 18:49:46 GMT  
		Size: 637.9 KB (637915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8abae8af60212d43504d0d4d35d505f7752c1747b526854ad88a46ad1da5e2`  
		Last Modified: Tue, 07 Mar 2017 18:49:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:987a9f68a9ae21563454cfc02e1a15e3aaa9ce2693f98db484af92691ee34139
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (274008419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8cc1a1b6baec87b5354015cf77e59bab757997573dd568bb1750f185ff9d41`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:09:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 01:00:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:01:35 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:01:36 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:01:41 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:01:42 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:43 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:01:53 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:01:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:01:57 GMT
CMD ["irb"]
# Thu, 27 Apr 2017 01:02:59 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:02:59 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:03:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 27 Apr 2017 01:03:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD RUN bundle install --system
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006ab57a18c399320e0e15f64ed4850aad31a6027fbf58464a66bbd2026ad89a`  
		Last Modified: Wed, 26 Apr 2017 23:20:20 GMT  
		Size: 131.9 MB (131875552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dff5c5e2c2579c03eb46ba0b3faf59525ac60d1c44a28b36e76f000649f908`  
		Last Modified: Wed, 26 Apr 2017 23:19:56 GMT  
		Size: 289.6 KB (289633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026ee34d06557040cc3b7b5444ebba20dc58025f690f2f91c8bbdadcc55e335c`  
		Last Modified: Thu, 27 Apr 2017 01:04:52 GMT  
		Size: 4.9 MB (4948973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911204b0dc92878da2d357f1e498c2e9af0c70641d98892acd0c6904263672d`  
		Last Modified: Thu, 27 Apr 2017 01:08:37 GMT  
		Size: 20.6 MB (20606615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31c6a319b9975e9be127bdef984bdf640d295ad13fa79e913e16f219cb3631`  
		Last Modified: Thu, 27 Apr 2017 01:08:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f32965bb379815679883822a023e1f96dba342b72cdb0d10165540e7759c4`  
		Last Modified: Thu, 27 Apr 2017 01:08:35 GMT  
		Size: 639.3 KB (639290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91100c9e115644fdedf27365aa048a65b13b8f68183456aaf88e92fd052a289a`  
		Last Modified: Thu, 27 Apr 2017 01:08:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59465d9639dce98ded3cc6ae4a0764187938ecb413011433edd6aac09b98c9b1`  
		Last Modified: Thu, 27 Apr 2017 01:13:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:987a9f68a9ae21563454cfc02e1a15e3aaa9ce2693f98db484af92691ee34139
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (274008419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8cc1a1b6baec87b5354015cf77e59bab757997573dd568bb1750f185ff9d41`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:09:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 01:00:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:01:35 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:01:36 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:01:41 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:01:42 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:43 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:01:53 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:01:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:01:57 GMT
CMD ["irb"]
# Thu, 27 Apr 2017 01:02:59 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:02:59 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:03:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 27 Apr 2017 01:03:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD RUN bundle install --system
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006ab57a18c399320e0e15f64ed4850aad31a6027fbf58464a66bbd2026ad89a`  
		Last Modified: Wed, 26 Apr 2017 23:20:20 GMT  
		Size: 131.9 MB (131875552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dff5c5e2c2579c03eb46ba0b3faf59525ac60d1c44a28b36e76f000649f908`  
		Last Modified: Wed, 26 Apr 2017 23:19:56 GMT  
		Size: 289.6 KB (289633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026ee34d06557040cc3b7b5444ebba20dc58025f690f2f91c8bbdadcc55e335c`  
		Last Modified: Thu, 27 Apr 2017 01:04:52 GMT  
		Size: 4.9 MB (4948973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911204b0dc92878da2d357f1e498c2e9af0c70641d98892acd0c6904263672d`  
		Last Modified: Thu, 27 Apr 2017 01:08:37 GMT  
		Size: 20.6 MB (20606615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31c6a319b9975e9be127bdef984bdf640d295ad13fa79e913e16f219cb3631`  
		Last Modified: Thu, 27 Apr 2017 01:08:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f32965bb379815679883822a023e1f96dba342b72cdb0d10165540e7759c4`  
		Last Modified: Thu, 27 Apr 2017 01:08:35 GMT  
		Size: 639.3 KB (639290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91100c9e115644fdedf27365aa048a65b13b8f68183456aaf88e92fd052a289a`  
		Last Modified: Thu, 27 Apr 2017 01:08:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59465d9639dce98ded3cc6ae4a0764187938ecb413011433edd6aac09b98c9b1`  
		Last Modified: Thu, 27 Apr 2017 01:13:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-onbuild`

```console
$ docker pull jruby@sha256:987a9f68a9ae21563454cfc02e1a15e3aaa9ce2693f98db484af92691ee34139
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (274008419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8cc1a1b6baec87b5354015cf77e59bab757997573dd568bb1750f185ff9d41`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:09:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 01:00:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:01:35 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:01:36 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:01:41 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:01:42 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:43 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:01:53 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:01:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:01:57 GMT
CMD ["irb"]
# Thu, 27 Apr 2017 01:02:59 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:02:59 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:03:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 27 Apr 2017 01:03:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD RUN bundle install --system
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006ab57a18c399320e0e15f64ed4850aad31a6027fbf58464a66bbd2026ad89a`  
		Last Modified: Wed, 26 Apr 2017 23:20:20 GMT  
		Size: 131.9 MB (131875552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dff5c5e2c2579c03eb46ba0b3faf59525ac60d1c44a28b36e76f000649f908`  
		Last Modified: Wed, 26 Apr 2017 23:19:56 GMT  
		Size: 289.6 KB (289633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026ee34d06557040cc3b7b5444ebba20dc58025f690f2f91c8bbdadcc55e335c`  
		Last Modified: Thu, 27 Apr 2017 01:04:52 GMT  
		Size: 4.9 MB (4948973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911204b0dc92878da2d357f1e498c2e9af0c70641d98892acd0c6904263672d`  
		Last Modified: Thu, 27 Apr 2017 01:08:37 GMT  
		Size: 20.6 MB (20606615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31c6a319b9975e9be127bdef984bdf640d295ad13fa79e913e16f219cb3631`  
		Last Modified: Thu, 27 Apr 2017 01:08:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f32965bb379815679883822a023e1f96dba342b72cdb0d10165540e7759c4`  
		Last Modified: Thu, 27 Apr 2017 01:08:35 GMT  
		Size: 639.3 KB (639290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91100c9e115644fdedf27365aa048a65b13b8f68183456aaf88e92fd052a289a`  
		Last Modified: Thu, 27 Apr 2017 01:08:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59465d9639dce98ded3cc6ae4a0764187938ecb413011433edd6aac09b98c9b1`  
		Last Modified: Thu, 27 Apr 2017 01:13:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-onbuild`

```console
$ docker pull jruby@sha256:987a9f68a9ae21563454cfc02e1a15e3aaa9ce2693f98db484af92691ee34139
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (274008419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8cc1a1b6baec87b5354015cf77e59bab757997573dd568bb1750f185ff9d41`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:09:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 01:00:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 01:01:35 GMT
ENV JRUBY_VERSION=9.1.8.0
# Thu, 27 Apr 2017 01:01:36 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Thu, 27 Apr 2017 01:01:41 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 27 Apr 2017 01:01:42 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:43 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 27 Apr 2017 01:01:53 GMT
RUN gem install bundler
# Thu, 27 Apr 2017 01:01:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 27 Apr 2017 01:01:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 01:01:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 27 Apr 2017 01:01:57 GMT
CMD ["irb"]
# Thu, 27 Apr 2017 01:02:59 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:02:59 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:03:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 27 Apr 2017 01:03:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD RUN bundle install --system
# Thu, 27 Apr 2017 01:03:02 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006ab57a18c399320e0e15f64ed4850aad31a6027fbf58464a66bbd2026ad89a`  
		Last Modified: Wed, 26 Apr 2017 23:20:20 GMT  
		Size: 131.9 MB (131875552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dff5c5e2c2579c03eb46ba0b3faf59525ac60d1c44a28b36e76f000649f908`  
		Last Modified: Wed, 26 Apr 2017 23:19:56 GMT  
		Size: 289.6 KB (289633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026ee34d06557040cc3b7b5444ebba20dc58025f690f2f91c8bbdadcc55e335c`  
		Last Modified: Thu, 27 Apr 2017 01:04:52 GMT  
		Size: 4.9 MB (4948973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911204b0dc92878da2d357f1e498c2e9af0c70641d98892acd0c6904263672d`  
		Last Modified: Thu, 27 Apr 2017 01:08:37 GMT  
		Size: 20.6 MB (20606615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c31c6a319b9975e9be127bdef984bdf640d295ad13fa79e913e16f219cb3631`  
		Last Modified: Thu, 27 Apr 2017 01:08:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f32965bb379815679883822a023e1f96dba342b72cdb0d10165540e7759c4`  
		Last Modified: Thu, 27 Apr 2017 01:08:35 GMT  
		Size: 639.3 KB (639290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91100c9e115644fdedf27365aa048a65b13b8f68183456aaf88e92fd052a289a`  
		Last Modified: Thu, 27 Apr 2017 01:08:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59465d9639dce98ded3cc6ae4a0764187938ecb413011433edd6aac09b98c9b1`  
		Last Modified: Thu, 27 Apr 2017 01:13:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:d34f3bee9f7a90d34de8ea0fa0e7ac19428ad1b0dafc95b1817e9eae8650abb0
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159806391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06a02a066de53969c08cb8906e596e5f5bd18137e42376df5a6ff733797579a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:20:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:20:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:20:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:20:54 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:20:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:20:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cf9b6a7b9043f835f186a9ad8cb4679e1a9db3509ab687119117cbb3856296`  
		Last Modified: Mon, 08 May 2017 22:24:29 GMT  
		Size: 10.2 MB (10224812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faf1e7fe4f9e71cf99a6cca5d82871a4ad744bc56aacc3001a39fadf079d56`  
		Last Modified: Mon, 08 May 2017 22:24:30 GMT  
		Size: 22.2 MB (22202382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9a1bf878a1a1557bbc963a6d7fe60cc16d563d2913bbb4e7a21e4390d458e3`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8785622576920d8ddf9d4bc1890a3fb5fc83338c9146267decda9ad5c3dae`  
		Last Modified: Mon, 08 May 2017 22:24:28 GMT  
		Size: 639.3 KB (639260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa845a880cebdb439847744f4c79935c3d51be7328ce15b5a97b026aba8ca0`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26`

```console
$ docker pull jruby@sha256:d34f3bee9f7a90d34de8ea0fa0e7ac19428ad1b0dafc95b1817e9eae8650abb0
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159806391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06a02a066de53969c08cb8906e596e5f5bd18137e42376df5a6ff733797579a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:20:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:20:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:20:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:20:54 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:20:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:20:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cf9b6a7b9043f835f186a9ad8cb4679e1a9db3509ab687119117cbb3856296`  
		Last Modified: Mon, 08 May 2017 22:24:29 GMT  
		Size: 10.2 MB (10224812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faf1e7fe4f9e71cf99a6cca5d82871a4ad744bc56aacc3001a39fadf079d56`  
		Last Modified: Mon, 08 May 2017 22:24:30 GMT  
		Size: 22.2 MB (22202382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9a1bf878a1a1557bbc963a6d7fe60cc16d563d2913bbb4e7a21e4390d458e3`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8785622576920d8ddf9d4bc1890a3fb5fc83338c9146267decda9ad5c3dae`  
		Last Modified: Mon, 08 May 2017 22:24:28 GMT  
		Size: 639.3 KB (639260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa845a880cebdb439847744f4c79935c3d51be7328ce15b5a97b026aba8ca0`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:d34f3bee9f7a90d34de8ea0fa0e7ac19428ad1b0dafc95b1817e9eae8650abb0
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159806391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06a02a066de53969c08cb8906e596e5f5bd18137e42376df5a6ff733797579a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:20:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:20:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:20:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:20:54 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:20:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:20:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cf9b6a7b9043f835f186a9ad8cb4679e1a9db3509ab687119117cbb3856296`  
		Last Modified: Mon, 08 May 2017 22:24:29 GMT  
		Size: 10.2 MB (10224812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faf1e7fe4f9e71cf99a6cca5d82871a4ad744bc56aacc3001a39fadf079d56`  
		Last Modified: Mon, 08 May 2017 22:24:30 GMT  
		Size: 22.2 MB (22202382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9a1bf878a1a1557bbc963a6d7fe60cc16d563d2913bbb4e7a21e4390d458e3`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8785622576920d8ddf9d4bc1890a3fb5fc83338c9146267decda9ad5c3dae`  
		Last Modified: Mon, 08 May 2017 22:24:28 GMT  
		Size: 639.3 KB (639260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa845a880cebdb439847744f4c79935c3d51be7328ce15b5a97b026aba8ca0`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26-jre`

```console
$ docker pull jruby@sha256:d34f3bee9f7a90d34de8ea0fa0e7ac19428ad1b0dafc95b1817e9eae8650abb0
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159806391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06a02a066de53969c08cb8906e596e5f5bd18137e42376df5a6ff733797579a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:20:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:20:37 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:20:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:20:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:20:54 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:20:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:20:56 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:20:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:20:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cf9b6a7b9043f835f186a9ad8cb4679e1a9db3509ab687119117cbb3856296`  
		Last Modified: Mon, 08 May 2017 22:24:29 GMT  
		Size: 10.2 MB (10224812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49faf1e7fe4f9e71cf99a6cca5d82871a4ad744bc56aacc3001a39fadf079d56`  
		Last Modified: Mon, 08 May 2017 22:24:30 GMT  
		Size: 22.2 MB (22202382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9a1bf878a1a1557bbc963a6d7fe60cc16d563d2913bbb4e7a21e4390d458e3`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8785622576920d8ddf9d4bc1890a3fb5fc83338c9146267decda9ad5c3dae`  
		Last Modified: Mon, 08 May 2017 22:24:28 GMT  
		Size: 639.3 KB (639260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa845a880cebdb439847744f4c79935c3d51be7328ce15b5a97b026aba8ca0`  
		Last Modified: Mon, 08 May 2017 22:24:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:5606ea393865b84dc92ba57c5c00ab57ba9f7ad670dede53a1d13ed03f32da4d
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (280983426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2910a458b9751eb10ebbebe84e288f1288f67a9a5e8493382d620e452d99c2a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:21:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:21:32 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:21:33 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:21:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:21:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:21:50 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:21:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:21:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:21:52 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:21:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2775f8e89617e7679937a28140dc0e20995f95dd902eaff9b60b1627751747`  
		Last Modified: Mon, 08 May 2017 22:25:57 GMT  
		Size: 10.3 MB (10314232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbe0e2fe01dbc92cb2b61cc105c5943ae22583328e4063c0813a8dd944fd84a`  
		Last Modified: Mon, 08 May 2017 22:25:58 GMT  
		Size: 22.2 MB (22204001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015ecacefb24857271c872b002b8f7a819daf6767e779e844832861df898c1d`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a0ada3ccdf8ebe8ba779933085449132beb8f0b11661780df0a47965a2230`  
		Last Modified: Mon, 08 May 2017 22:25:56 GMT  
		Size: 639.3 KB (639266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1113558b3e089549c1988cecd45951dc953be4157926679909c84b6261a6dd95`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26-jdk`

```console
$ docker pull jruby@sha256:5606ea393865b84dc92ba57c5c00ab57ba9f7ad670dede53a1d13ed03f32da4d
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (280983426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2910a458b9751eb10ebbebe84e288f1288f67a9a5e8493382d620e452d99c2a6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:21:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:21:32 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:21:33 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:21:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:21:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:21:50 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:21:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:21:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:21:52 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:21:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2775f8e89617e7679937a28140dc0e20995f95dd902eaff9b60b1627751747`  
		Last Modified: Mon, 08 May 2017 22:25:57 GMT  
		Size: 10.3 MB (10314232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbe0e2fe01dbc92cb2b61cc105c5943ae22583328e4063c0813a8dd944fd84a`  
		Last Modified: Mon, 08 May 2017 22:25:58 GMT  
		Size: 22.2 MB (22204001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015ecacefb24857271c872b002b8f7a819daf6767e779e844832861df898c1d`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a0ada3ccdf8ebe8ba779933085449132beb8f0b11661780df0a47965a2230`  
		Last Modified: Mon, 08 May 2017 22:25:56 GMT  
		Size: 639.3 KB (639266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1113558b3e089549c1988cecd45951dc953be4157926679909c84b6261a6dd95`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:a59575f4f2ce3c7b31b59b022b57bf7aaf97e0f9a7f659ad047f64f62b42ec4c
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (280983552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aee88d8680b0f224189c2cbbd5810b18c07cfc65d40ec4293fca6e70791ce72`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:21:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:21:32 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:21:33 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:21:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:21:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:21:50 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:21:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:21:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:21:52 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:21:54 GMT
CMD ["irb"]
# Mon, 08 May 2017 22:22:14 GMT
RUN mkdir -p /usr/src/app
# Mon, 08 May 2017 22:22:15 GMT
WORKDIR /usr/src/app
# Mon, 08 May 2017 22:22:16 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 08 May 2017 22:22:16 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 08 May 2017 22:22:17 GMT
ONBUILD RUN bundle install --system
# Mon, 08 May 2017 22:22:18 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2775f8e89617e7679937a28140dc0e20995f95dd902eaff9b60b1627751747`  
		Last Modified: Mon, 08 May 2017 22:25:57 GMT  
		Size: 10.3 MB (10314232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbe0e2fe01dbc92cb2b61cc105c5943ae22583328e4063c0813a8dd944fd84a`  
		Last Modified: Mon, 08 May 2017 22:25:58 GMT  
		Size: 22.2 MB (22204001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015ecacefb24857271c872b002b8f7a819daf6767e779e844832861df898c1d`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a0ada3ccdf8ebe8ba779933085449132beb8f0b11661780df0a47965a2230`  
		Last Modified: Mon, 08 May 2017 22:25:56 GMT  
		Size: 639.3 KB (639266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1113558b3e089549c1988cecd45951dc953be4157926679909c84b6261a6dd95`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d381777b277b2db998da6a7e0a8ecd1a7c59db95d455521d81c97347c28f988`  
		Last Modified: Mon, 08 May 2017 22:26:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26-onbuild`

```console
$ docker pull jruby@sha256:a59575f4f2ce3c7b31b59b022b57bf7aaf97e0f9a7f659ad047f64f62b42ec4c
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (280983552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aee88d8680b0f224189c2cbbd5810b18c07cfc65d40ec4293fca6e70791ce72`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:21:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:21:32 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 08 May 2017 22:21:33 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 08 May 2017 22:21:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 08 May 2017 22:21:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 08 May 2017 22:21:50 GMT
RUN gem install bundler
# Mon, 08 May 2017 22:21:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 08 May 2017 22:21:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 08 May 2017 22:21:52 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 May 2017 22:21:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 08 May 2017 22:21:54 GMT
CMD ["irb"]
# Mon, 08 May 2017 22:22:14 GMT
RUN mkdir -p /usr/src/app
# Mon, 08 May 2017 22:22:15 GMT
WORKDIR /usr/src/app
# Mon, 08 May 2017 22:22:16 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 08 May 2017 22:22:16 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 08 May 2017 22:22:17 GMT
ONBUILD RUN bundle install --system
# Mon, 08 May 2017 22:22:18 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2775f8e89617e7679937a28140dc0e20995f95dd902eaff9b60b1627751747`  
		Last Modified: Mon, 08 May 2017 22:25:57 GMT  
		Size: 10.3 MB (10314232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbe0e2fe01dbc92cb2b61cc105c5943ae22583328e4063c0813a8dd944fd84a`  
		Last Modified: Mon, 08 May 2017 22:25:58 GMT  
		Size: 22.2 MB (22204001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8015ecacefb24857271c872b002b8f7a819daf6767e779e844832861df898c1d`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a0ada3ccdf8ebe8ba779933085449132beb8f0b11661780df0a47965a2230`  
		Last Modified: Mon, 08 May 2017 22:25:56 GMT  
		Size: 639.3 KB (639266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1113558b3e089549c1988cecd45951dc953be4157926679909c84b6261a6dd95`  
		Last Modified: Mon, 08 May 2017 22:25:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d381777b277b2db998da6a7e0a8ecd1a7c59db95d455521d81c97347c28f988`  
		Last Modified: Mon, 08 May 2017 22:26:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
