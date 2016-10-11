<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:latest`](#jrubylatest)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1.5`](#jruby915)
-	[`jruby:9.1.5-jre`](#jruby915-jre)
-	[`jruby:9.1.5.0`](#jruby9150)
-	[`jruby:9.1.5.0-jre`](#jruby9150-jre)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1.5-alpine`](#jruby915-alpine)
-	[`jruby:9.1.5-jre-alpine`](#jruby915-jre-alpine)
-	[`jruby:9.1.5.0-alpine`](#jruby9150-alpine)
-	[`jruby:9.1.5.0-jre-alpine`](#jruby9150-jre-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1.5-jdk`](#jruby915-jdk)
-	[`jruby:9.1.5.0-jdk`](#jruby9150-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1.5-jdk-alpine`](#jruby915-jdk-alpine)
-	[`jruby:9.1.5.0-jdk-alpine`](#jruby9150-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9.1.5-onbuild`](#jruby915-onbuild)
-	[`jruby:9.1.5.0-onbuild`](#jruby9150-onbuild)
-	[`jruby:1.7`](#jruby17)
-	[`jruby:1.7.25`](#jruby1725)
-	[`jruby:1.7-jre`](#jruby17-jre)
-	[`jruby:1.7.25-jre`](#jruby1725-jre)
-	[`jruby:1.7-jdk`](#jruby17-jdk)
-	[`jruby:1.7.25-jdk`](#jruby1725-jdk)
-	[`jruby:1.7-onbuild`](#jruby17-onbuild)
-	[`jruby:1.7.25-onbuild`](#jruby1725-onbuild)

## `jruby:latest`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5-jre`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5.0`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5.0-jre`

```console
$ docker pull jruby@sha256:611dd5739130c3e9397934e6192e1f1397d18b208126dbf83a355be8c12ea86a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5.0-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161463284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01727ab1d044ea2b52993924062f18bf7de8c33aa1896714ae8bbc9bd031031f`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:02:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:02:36 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:02:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:02:47 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:02:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:02:50 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ffbb71366ebcaa4f6459eafa660edd6e1477df758b141569cf1d85b7769dd`  
		Last Modified: Sat, 24 Sep 2016 04:03:02 GMT  
		Size: 31.9 MB (31887911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30bb1a88faf0e6338e321b592d60dd92aed89f21bef6188df56bc29978bfa80`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2b0eebbe790c594ad2a243cd89690e7679b999c37aba1ca9b4dd2b758faaac`  
		Last Modified: Sat, 24 Sep 2016 04:02:58 GMT  
		Size: 609.9 KB (609944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5853419d7f54f456e38e9e72f7568e724be68687ff6d1ca692b51d5a4fd0587d`  
		Last Modified: Sat, 24 Sep 2016 04:02:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:bd41be45c7a24c5fe6116c1b378dcb000886d84d491ff72afb4255205c728974
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75638174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4429269a1bbd4be03fcda7c220d3aac53d2a11549c791d0f93f666eba8d6b8e2`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:54:28 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:54:28 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:54:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:54:37 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:54:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:54:57 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:54:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:55:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16baf44801a993b9f90c0d12742d7b9330fc885b28b8789512208884cf6be3`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 1.1 MB (1098250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a3aa08e2c5f1b8cd34eaf792adf17fa78e37a868b4b2e2f3ca46c5dcd9f03`  
		Last Modified: Fri, 23 Sep 2016 18:55:14 GMT  
		Size: 32.0 MB (31969005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89111db6309c7802fa5f1c2e737c716a72931bbc561ee4e4ee5c48cd6098f43`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfb70715f852eabe9b8e0fe89bd0c6dbe575c26da7a31178dfd63abdc3f1b09`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd2fc1ec8f11a64b2b15a5fe692a5605a536848885b297d9ab659c1571fca`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:bd41be45c7a24c5fe6116c1b378dcb000886d84d491ff72afb4255205c728974
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75638174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4429269a1bbd4be03fcda7c220d3aac53d2a11549c791d0f93f666eba8d6b8e2`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:54:28 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:54:28 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:54:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:54:37 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:54:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:54:57 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:54:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:55:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16baf44801a993b9f90c0d12742d7b9330fc885b28b8789512208884cf6be3`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 1.1 MB (1098250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a3aa08e2c5f1b8cd34eaf792adf17fa78e37a868b4b2e2f3ca46c5dcd9f03`  
		Last Modified: Fri, 23 Sep 2016 18:55:14 GMT  
		Size: 32.0 MB (31969005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89111db6309c7802fa5f1c2e737c716a72931bbc561ee4e4ee5c48cd6098f43`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfb70715f852eabe9b8e0fe89bd0c6dbe575c26da7a31178dfd63abdc3f1b09`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd2fc1ec8f11a64b2b15a5fe692a5605a536848885b297d9ab659c1571fca`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:bd41be45c7a24c5fe6116c1b378dcb000886d84d491ff72afb4255205c728974
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75638174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4429269a1bbd4be03fcda7c220d3aac53d2a11549c791d0f93f666eba8d6b8e2`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:54:28 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:54:28 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:54:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:54:37 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:54:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:54:57 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:54:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:55:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16baf44801a993b9f90c0d12742d7b9330fc885b28b8789512208884cf6be3`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 1.1 MB (1098250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a3aa08e2c5f1b8cd34eaf792adf17fa78e37a868b4b2e2f3ca46c5dcd9f03`  
		Last Modified: Fri, 23 Sep 2016 18:55:14 GMT  
		Size: 32.0 MB (31969005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89111db6309c7802fa5f1c2e737c716a72931bbc561ee4e4ee5c48cd6098f43`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfb70715f852eabe9b8e0fe89bd0c6dbe575c26da7a31178dfd63abdc3f1b09`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd2fc1ec8f11a64b2b15a5fe692a5605a536848885b297d9ab659c1571fca`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5-alpine`

```console
$ docker pull jruby@sha256:bd41be45c7a24c5fe6116c1b378dcb000886d84d491ff72afb4255205c728974
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75638174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4429269a1bbd4be03fcda7c220d3aac53d2a11549c791d0f93f666eba8d6b8e2`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:54:28 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:54:28 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:54:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:54:37 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:54:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:54:57 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:54:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:55:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16baf44801a993b9f90c0d12742d7b9330fc885b28b8789512208884cf6be3`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 1.1 MB (1098250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a3aa08e2c5f1b8cd34eaf792adf17fa78e37a868b4b2e2f3ca46c5dcd9f03`  
		Last Modified: Fri, 23 Sep 2016 18:55:14 GMT  
		Size: 32.0 MB (31969005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89111db6309c7802fa5f1c2e737c716a72931bbc561ee4e4ee5c48cd6098f43`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfb70715f852eabe9b8e0fe89bd0c6dbe575c26da7a31178dfd63abdc3f1b09`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd2fc1ec8f11a64b2b15a5fe692a5605a536848885b297d9ab659c1571fca`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5-jre-alpine`

```console
$ docker pull jruby@sha256:bd41be45c7a24c5fe6116c1b378dcb000886d84d491ff72afb4255205c728974
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75638174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4429269a1bbd4be03fcda7c220d3aac53d2a11549c791d0f93f666eba8d6b8e2`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:54:28 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:54:28 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:54:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:54:37 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:54:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:54:57 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:54:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:55:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16baf44801a993b9f90c0d12742d7b9330fc885b28b8789512208884cf6be3`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 1.1 MB (1098250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a3aa08e2c5f1b8cd34eaf792adf17fa78e37a868b4b2e2f3ca46c5dcd9f03`  
		Last Modified: Fri, 23 Sep 2016 18:55:14 GMT  
		Size: 32.0 MB (31969005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89111db6309c7802fa5f1c2e737c716a72931bbc561ee4e4ee5c48cd6098f43`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfb70715f852eabe9b8e0fe89bd0c6dbe575c26da7a31178dfd63abdc3f1b09`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd2fc1ec8f11a64b2b15a5fe692a5605a536848885b297d9ab659c1571fca`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5.0-alpine`

```console
$ docker pull jruby@sha256:bd41be45c7a24c5fe6116c1b378dcb000886d84d491ff72afb4255205c728974
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75638174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4429269a1bbd4be03fcda7c220d3aac53d2a11549c791d0f93f666eba8d6b8e2`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:54:28 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:54:28 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:54:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:54:37 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:54:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:54:57 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:54:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:55:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16baf44801a993b9f90c0d12742d7b9330fc885b28b8789512208884cf6be3`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 1.1 MB (1098250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a3aa08e2c5f1b8cd34eaf792adf17fa78e37a868b4b2e2f3ca46c5dcd9f03`  
		Last Modified: Fri, 23 Sep 2016 18:55:14 GMT  
		Size: 32.0 MB (31969005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89111db6309c7802fa5f1c2e737c716a72931bbc561ee4e4ee5c48cd6098f43`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfb70715f852eabe9b8e0fe89bd0c6dbe575c26da7a31178dfd63abdc3f1b09`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd2fc1ec8f11a64b2b15a5fe692a5605a536848885b297d9ab659c1571fca`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5.0-jre-alpine`

```console
$ docker pull jruby@sha256:bd41be45c7a24c5fe6116c1b378dcb000886d84d491ff72afb4255205c728974
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5.0-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75638174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4429269a1bbd4be03fcda7c220d3aac53d2a11549c791d0f93f666eba8d6b8e2`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:54:28 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:54:28 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:54:29 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:54:37 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:54:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:54:57 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:54:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:54:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:54:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:55:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16baf44801a993b9f90c0d12742d7b9330fc885b28b8789512208884cf6be3`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 1.1 MB (1098250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a3aa08e2c5f1b8cd34eaf792adf17fa78e37a868b4b2e2f3ca46c5dcd9f03`  
		Last Modified: Fri, 23 Sep 2016 18:55:14 GMT  
		Size: 32.0 MB (31969005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89111db6309c7802fa5f1c2e737c716a72931bbc561ee4e4ee5c48cd6098f43`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfb70715f852eabe9b8e0fe89bd0c6dbe575c26da7a31178dfd63abdc3f1b09`  
		Last Modified: Fri, 23 Sep 2016 18:55:09 GMT  
		Size: 609.9 KB (609941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fcd2fc1ec8f11a64b2b15a5fe692a5605a536848885b297d9ab659c1571fca`  
		Last Modified: Fri, 23 Sep 2016 18:55:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:e12f711dc2d6d68a6412ff45f9e303684c197d3960d0660215e57a7160169c07
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280742516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b79099e7ad522d8f9a77e09c8dd2708359051c7768375c7fc391553add6fa22`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:04:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:04:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:04:41 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:04:43 GMT
CMD ["irb"]
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138e6c26efc939a3d9500215320cf22cf4ee7b1add40d556c26e6cb48f1f8a1`  
		Last Modified: Sat, 24 Sep 2016 04:04:56 GMT  
		Size: 31.9 MB (31889258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fa162ad101ba9909b0d3403eb511e24857cde23f8b97125cda20fc22fa914`  
		Last Modified: Sat, 24 Sep 2016 04:04:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe954c38a860be93d4666a0a0903925be93a529b21329e1b83765a7cd3f7f3b6`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991d0e3e2e00f960a5bcd3ac7a5a112ac7c8f9d23e727f129ed45f3d78b3b4b`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5-jdk`

```console
$ docker pull jruby@sha256:e12f711dc2d6d68a6412ff45f9e303684c197d3960d0660215e57a7160169c07
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280742516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b79099e7ad522d8f9a77e09c8dd2708359051c7768375c7fc391553add6fa22`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:04:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:04:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:04:41 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:04:43 GMT
CMD ["irb"]
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138e6c26efc939a3d9500215320cf22cf4ee7b1add40d556c26e6cb48f1f8a1`  
		Last Modified: Sat, 24 Sep 2016 04:04:56 GMT  
		Size: 31.9 MB (31889258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fa162ad101ba9909b0d3403eb511e24857cde23f8b97125cda20fc22fa914`  
		Last Modified: Sat, 24 Sep 2016 04:04:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe954c38a860be93d4666a0a0903925be93a529b21329e1b83765a7cd3f7f3b6`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991d0e3e2e00f960a5bcd3ac7a5a112ac7c8f9d23e727f129ed45f3d78b3b4b`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5.0-jdk`

```console
$ docker pull jruby@sha256:e12f711dc2d6d68a6412ff45f9e303684c197d3960d0660215e57a7160169c07
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5.0-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280742516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b79099e7ad522d8f9a77e09c8dd2708359051c7768375c7fc391553add6fa22`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:04:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:04:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:04:41 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:04:43 GMT
CMD ["irb"]
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138e6c26efc939a3d9500215320cf22cf4ee7b1add40d556c26e6cb48f1f8a1`  
		Last Modified: Sat, 24 Sep 2016 04:04:56 GMT  
		Size: 31.9 MB (31889258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fa162ad101ba9909b0d3403eb511e24857cde23f8b97125cda20fc22fa914`  
		Last Modified: Sat, 24 Sep 2016 04:04:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe954c38a860be93d4666a0a0903925be93a529b21329e1b83765a7cd3f7f3b6`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991d0e3e2e00f960a5bcd3ac7a5a112ac7c8f9d23e727f129ed45f3d78b3b4b`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:7092b1793e30ddafe1266b41e6ca49d3cc158f6cbe97b25b39eb866705751a2a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85317864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac18a5ea43e44cf3586c7ff30342f1de330a4635a956f1e8c72a70afca2267e6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:56:25 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:56:25 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:56:25 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:56:33 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:56:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:56:34 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:56:48 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:56:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:56:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be5010c42044bb53349a32f3ff0fd5d704b29e82f5930097578738407d6bac3`  
		Last Modified: Fri, 23 Sep 2016 18:57:02 GMT  
		Size: 1.1 MB (1099088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592a9ee9848346132b35cc92b0975dd6a73ab43f7ee0979477db76ef1abac0cf`  
		Last Modified: Fri, 23 Sep 2016 18:57:04 GMT  
		Size: 32.0 MB (31969990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac100f19de2b9ebf0bf60b1a9e62352af2be0fa6efcc11e9eb31f8c0a21a87f6`  
		Last Modified: Fri, 23 Sep 2016 18:56:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141945fba4abeb14cb1b2ea9c7934cfde241b376528f81f94e291c57e7b76ade`  
		Last Modified: Fri, 23 Sep 2016 18:57:00 GMT  
		Size: 609.9 KB (609921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d172975b37f618a36ba3fd8f4f6419780b42a336c22c42ea464b41a14b6fe9`  
		Last Modified: Fri, 23 Sep 2016 18:57:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5-jdk-alpine`

```console
$ docker pull jruby@sha256:7092b1793e30ddafe1266b41e6ca49d3cc158f6cbe97b25b39eb866705751a2a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85317864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac18a5ea43e44cf3586c7ff30342f1de330a4635a956f1e8c72a70afca2267e6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:56:25 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:56:25 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:56:25 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:56:33 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:56:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:56:34 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:56:48 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:56:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:56:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be5010c42044bb53349a32f3ff0fd5d704b29e82f5930097578738407d6bac3`  
		Last Modified: Fri, 23 Sep 2016 18:57:02 GMT  
		Size: 1.1 MB (1099088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592a9ee9848346132b35cc92b0975dd6a73ab43f7ee0979477db76ef1abac0cf`  
		Last Modified: Fri, 23 Sep 2016 18:57:04 GMT  
		Size: 32.0 MB (31969990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac100f19de2b9ebf0bf60b1a9e62352af2be0fa6efcc11e9eb31f8c0a21a87f6`  
		Last Modified: Fri, 23 Sep 2016 18:56:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141945fba4abeb14cb1b2ea9c7934cfde241b376528f81f94e291c57e7b76ade`  
		Last Modified: Fri, 23 Sep 2016 18:57:00 GMT  
		Size: 609.9 KB (609921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d172975b37f618a36ba3fd8f4f6419780b42a336c22c42ea464b41a14b6fe9`  
		Last Modified: Fri, 23 Sep 2016 18:57:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5.0-jdk-alpine`

```console
$ docker pull jruby@sha256:7092b1793e30ddafe1266b41e6ca49d3cc158f6cbe97b25b39eb866705751a2a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5.0-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85317864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac18a5ea43e44cf3586c7ff30342f1de330a4635a956f1e8c72a70afca2267e6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:56:25 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 23 Sep 2016 18:56:25 GMT
ENV JRUBY_VERSION=9.1.5.0
# Fri, 23 Sep 2016 18:56:25 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Fri, 23 Sep 2016 18:56:33 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 23 Sep 2016 18:56:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:56:34 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 18:56:48 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 18:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 18:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 18:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 18:56:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 18:56:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be5010c42044bb53349a32f3ff0fd5d704b29e82f5930097578738407d6bac3`  
		Last Modified: Fri, 23 Sep 2016 18:57:02 GMT  
		Size: 1.1 MB (1099088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592a9ee9848346132b35cc92b0975dd6a73ab43f7ee0979477db76ef1abac0cf`  
		Last Modified: Fri, 23 Sep 2016 18:57:04 GMT  
		Size: 32.0 MB (31969990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac100f19de2b9ebf0bf60b1a9e62352af2be0fa6efcc11e9eb31f8c0a21a87f6`  
		Last Modified: Fri, 23 Sep 2016 18:56:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141945fba4abeb14cb1b2ea9c7934cfde241b376528f81f94e291c57e7b76ade`  
		Last Modified: Fri, 23 Sep 2016 18:57:00 GMT  
		Size: 609.9 KB (609921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d172975b37f618a36ba3fd8f4f6419780b42a336c22c42ea464b41a14b6fe9`  
		Last Modified: Fri, 23 Sep 2016 18:57:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:4f24bfe7d338defe1bd7c33a98d97e56ffe8d7050ee3cc82c130a9a27be2ec0b
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280742643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff2d9e3e3db8a8ecd43bda0d0dbf7e22baf1f2f5163f3e9827490c0b554de5`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:04:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:04:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:04:41 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:04:43 GMT
CMD ["irb"]
# Sat, 24 Sep 2016 05:57:10 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:57:10 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD RUN bundle install --system
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138e6c26efc939a3d9500215320cf22cf4ee7b1add40d556c26e6cb48f1f8a1`  
		Last Modified: Sat, 24 Sep 2016 04:04:56 GMT  
		Size: 31.9 MB (31889258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fa162ad101ba9909b0d3403eb511e24857cde23f8b97125cda20fc22fa914`  
		Last Modified: Sat, 24 Sep 2016 04:04:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe954c38a860be93d4666a0a0903925be93a529b21329e1b83765a7cd3f7f3b6`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991d0e3e2e00f960a5bcd3ac7a5a112ac7c8f9d23e727f129ed45f3d78b3b4b`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c9586ec3fcac722ce5670b8f4db47f0de859ac1f82d119dc6737eb67ff8a5`  
		Last Modified: Sat, 24 Sep 2016 05:57:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:4f24bfe7d338defe1bd7c33a98d97e56ffe8d7050ee3cc82c130a9a27be2ec0b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280742643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff2d9e3e3db8a8ecd43bda0d0dbf7e22baf1f2f5163f3e9827490c0b554de5`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:04:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:04:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:04:41 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:04:43 GMT
CMD ["irb"]
# Sat, 24 Sep 2016 05:57:10 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:57:10 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD RUN bundle install --system
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138e6c26efc939a3d9500215320cf22cf4ee7b1add40d556c26e6cb48f1f8a1`  
		Last Modified: Sat, 24 Sep 2016 04:04:56 GMT  
		Size: 31.9 MB (31889258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fa162ad101ba9909b0d3403eb511e24857cde23f8b97125cda20fc22fa914`  
		Last Modified: Sat, 24 Sep 2016 04:04:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe954c38a860be93d4666a0a0903925be93a529b21329e1b83765a7cd3f7f3b6`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991d0e3e2e00f960a5bcd3ac7a5a112ac7c8f9d23e727f129ed45f3d78b3b4b`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c9586ec3fcac722ce5670b8f4db47f0de859ac1f82d119dc6737eb67ff8a5`  
		Last Modified: Sat, 24 Sep 2016 05:57:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5-onbuild`

```console
$ docker pull jruby@sha256:4f24bfe7d338defe1bd7c33a98d97e56ffe8d7050ee3cc82c130a9a27be2ec0b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280742643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff2d9e3e3db8a8ecd43bda0d0dbf7e22baf1f2f5163f3e9827490c0b554de5`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:04:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:04:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:04:41 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:04:43 GMT
CMD ["irb"]
# Sat, 24 Sep 2016 05:57:10 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:57:10 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD RUN bundle install --system
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138e6c26efc939a3d9500215320cf22cf4ee7b1add40d556c26e6cb48f1f8a1`  
		Last Modified: Sat, 24 Sep 2016 04:04:56 GMT  
		Size: 31.9 MB (31889258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fa162ad101ba9909b0d3403eb511e24857cde23f8b97125cda20fc22fa914`  
		Last Modified: Sat, 24 Sep 2016 04:04:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe954c38a860be93d4666a0a0903925be93a529b21329e1b83765a7cd3f7f3b6`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991d0e3e2e00f960a5bcd3ac7a5a112ac7c8f9d23e727f129ed45f3d78b3b4b`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c9586ec3fcac722ce5670b8f4db47f0de859ac1f82d119dc6737eb67ff8a5`  
		Last Modified: Sat, 24 Sep 2016 05:57:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.5.0-onbuild`

```console
$ docker pull jruby@sha256:4f24bfe7d338defe1bd7c33a98d97e56ffe8d7050ee3cc82c130a9a27be2ec0b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.5.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280742643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff2d9e3e3db8a8ecd43bda0d0dbf7e22baf1f2f5163f3e9827490c0b554de5`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_VERSION=9.1.5.0
# Sat, 24 Sep 2016 04:04:19 GMT
ENV JRUBY_SHA256=28e4f3aefbb4497c5c5edc04246778b3305105c3d3d6de11be067826cc5bb766
# Sat, 24 Sep 2016 04:04:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 24 Sep 2016 04:04:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 24 Sep 2016 04:04:41 GMT
RUN gem install bundler
# Sat, 24 Sep 2016 04:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 04:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 04:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 04:04:43 GMT
CMD ["irb"]
# Sat, 24 Sep 2016 05:57:10 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:57:10 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 24 Sep 2016 05:57:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD RUN bundle install --system
# Sat, 24 Sep 2016 05:57:12 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138e6c26efc939a3d9500215320cf22cf4ee7b1add40d556c26e6cb48f1f8a1`  
		Last Modified: Sat, 24 Sep 2016 04:04:56 GMT  
		Size: 31.9 MB (31889258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fa162ad101ba9909b0d3403eb511e24857cde23f8b97125cda20fc22fa914`  
		Last Modified: Sat, 24 Sep 2016 04:04:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe954c38a860be93d4666a0a0903925be93a529b21329e1b83765a7cd3f7f3b6`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 609.9 KB (609929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c991d0e3e2e00f960a5bcd3ac7a5a112ac7c8f9d23e727f129ed45f3d78b3b4b`  
		Last Modified: Sat, 24 Sep 2016 04:04:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c9586ec3fcac722ce5670b8f4db47f0de859ac1f82d119dc6737eb67ff8a5`  
		Last Modified: Sat, 24 Sep 2016 05:57:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:017566f34be2594a53ab873f6f7d514bfa92b4d4379377f7c4dd26c1b834dbb5
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151692413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08583c9aa66df226d860c96f96204e69c3f9274bbb04541d126a1ae2e9b9afd`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:43:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:43:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:43:33 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:43:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:43:35 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1c3b0719623b658a7c5ff39bf3bf5f4f88de3e44239b755d1b216bddaaa6`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 22.1 MB (22117073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd274749492aef821f0e0430bcaa6332415ffe83adaa98e40c6cf41055d81dee`  
		Last Modified: Fri, 23 Sep 2016 19:43:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2e56e93024dbbea53425a7ca09a0c60d8c9e18ac4622b2d8b32ba6d564907e`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 609.9 KB (609911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0044b118e1028118d722a27e53d40df959bd4ecbe4321327f1adc615bc95fd`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25`

```console
$ docker pull jruby@sha256:017566f34be2594a53ab873f6f7d514bfa92b4d4379377f7c4dd26c1b834dbb5
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151692413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08583c9aa66df226d860c96f96204e69c3f9274bbb04541d126a1ae2e9b9afd`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:43:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:43:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:43:33 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:43:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:43:35 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1c3b0719623b658a7c5ff39bf3bf5f4f88de3e44239b755d1b216bddaaa6`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 22.1 MB (22117073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd274749492aef821f0e0430bcaa6332415ffe83adaa98e40c6cf41055d81dee`  
		Last Modified: Fri, 23 Sep 2016 19:43:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2e56e93024dbbea53425a7ca09a0c60d8c9e18ac4622b2d8b32ba6d564907e`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 609.9 KB (609911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0044b118e1028118d722a27e53d40df959bd4ecbe4321327f1adc615bc95fd`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:017566f34be2594a53ab873f6f7d514bfa92b4d4379377f7c4dd26c1b834dbb5
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151692413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08583c9aa66df226d860c96f96204e69c3f9274bbb04541d126a1ae2e9b9afd`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:43:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:43:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:43:33 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:43:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:43:35 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1c3b0719623b658a7c5ff39bf3bf5f4f88de3e44239b755d1b216bddaaa6`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 22.1 MB (22117073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd274749492aef821f0e0430bcaa6332415ffe83adaa98e40c6cf41055d81dee`  
		Last Modified: Fri, 23 Sep 2016 19:43:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2e56e93024dbbea53425a7ca09a0c60d8c9e18ac4622b2d8b32ba6d564907e`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 609.9 KB (609911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0044b118e1028118d722a27e53d40df959bd4ecbe4321327f1adc615bc95fd`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-jre`

```console
$ docker pull jruby@sha256:017566f34be2594a53ab873f6f7d514bfa92b4d4379377f7c4dd26c1b834dbb5
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151692413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08583c9aa66df226d860c96f96204e69c3f9274bbb04541d126a1ae2e9b9afd`
-	Default Command: `["irb"]`

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
# Fri, 23 Sep 2016 19:43:18 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:43:19 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:43:25 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:43:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:43:33 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:43:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:43:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:43:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:43:35 GMT
CMD ["irb"]
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
	-	`sha256:f430d2677a2c6d978932e20ef0ddd801750c888d04e97cca93cb217b953445df`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 4.8 MB (4829366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1c3b0719623b658a7c5ff39bf3bf5f4f88de3e44239b755d1b216bddaaa6`  
		Last Modified: Fri, 23 Sep 2016 19:43:47 GMT  
		Size: 22.1 MB (22117073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd274749492aef821f0e0430bcaa6332415ffe83adaa98e40c6cf41055d81dee`  
		Last Modified: Fri, 23 Sep 2016 19:43:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2e56e93024dbbea53425a7ca09a0c60d8c9e18ac4622b2d8b32ba6d564907e`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 609.9 KB (609911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0044b118e1028118d722a27e53d40df959bd4ecbe4321327f1adc615bc95fd`  
		Last Modified: Fri, 23 Sep 2016 19:43:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:e40cf3e367b9b559339cc7739aff4cbbae0c5aea258b0a2c92de2415796a1106
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270971324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7c8517af70ee5af62abbbc871d532231338db9191dd95e6a6a6af026d27c6c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:44:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:44:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:39 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:44:46 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:44:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:44:48 GMT
CMD ["irb"]
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959174b05d477c77197a831d2ae2c9a922ec3c654e7f1ae3c7e2d94429b402e1`  
		Last Modified: Fri, 23 Sep 2016 19:45:00 GMT  
		Size: 22.1 MB (22118122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7cca2213a2f0f6a728903d7759e155c96ac7bf2751c7b4e71262ca2902658`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e918636816ee55ebee65fcad37ae729fb0e9073beaa9591e88285f2639b84a`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 609.9 KB (609874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93b5c77a5ce2028c5dc71378dfa3fa8970be5f987304e28560e9c7f59578b54`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-jdk`

```console
$ docker pull jruby@sha256:e40cf3e367b9b559339cc7739aff4cbbae0c5aea258b0a2c92de2415796a1106
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270971324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7c8517af70ee5af62abbbc871d532231338db9191dd95e6a6a6af026d27c6c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:44:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:44:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:39 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:44:46 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:44:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:44:48 GMT
CMD ["irb"]
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959174b05d477c77197a831d2ae2c9a922ec3c654e7f1ae3c7e2d94429b402e1`  
		Last Modified: Fri, 23 Sep 2016 19:45:00 GMT  
		Size: 22.1 MB (22118122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7cca2213a2f0f6a728903d7759e155c96ac7bf2751c7b4e71262ca2902658`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e918636816ee55ebee65fcad37ae729fb0e9073beaa9591e88285f2639b84a`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 609.9 KB (609874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93b5c77a5ce2028c5dc71378dfa3fa8970be5f987304e28560e9c7f59578b54`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:02091f2f07f826a0ba7f5b2a31b571bf3f4b213c806dfbac92ae49fba6b4652f
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270971451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8292d91dde926372adfb0d7ab5f337d5874698050521de6c63bbff5844119b16`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:44:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:44:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:39 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:44:46 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:44:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:44:48 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 19:45:25 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:45:25 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:45:25 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Sep 2016 19:45:26 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Sep 2016 19:45:26 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Sep 2016 19:45:26 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959174b05d477c77197a831d2ae2c9a922ec3c654e7f1ae3c7e2d94429b402e1`  
		Last Modified: Fri, 23 Sep 2016 19:45:00 GMT  
		Size: 22.1 MB (22118122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7cca2213a2f0f6a728903d7759e155c96ac7bf2751c7b4e71262ca2902658`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e918636816ee55ebee65fcad37ae729fb0e9073beaa9591e88285f2639b84a`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 609.9 KB (609874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93b5c77a5ce2028c5dc71378dfa3fa8970be5f987304e28560e9c7f59578b54`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460c910625609d994e45bccf060e8c69e27f600a128ff5deafdf30732944702`  
		Last Modified: Fri, 23 Sep 2016 19:45:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-onbuild`

```console
$ docker pull jruby@sha256:02091f2f07f826a0ba7f5b2a31b571bf3f4b213c806dfbac92ae49fba6b4652f
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270971451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8292d91dde926372adfb0d7ab5f337d5874698050521de6c63bbff5844119b16`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 19:44:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_VERSION=1.7.25
# Fri, 23 Sep 2016 19:44:32 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Fri, 23 Sep 2016 19:44:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Sep 2016 19:44:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:39 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Sep 2016 19:44:46 GMT
RUN gem install bundler
# Fri, 23 Sep 2016 19:44:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 19:44:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:44:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 19:44:48 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 19:45:25 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:45:25 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:45:25 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Sep 2016 19:45:26 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Sep 2016 19:45:26 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Sep 2016 19:45:26 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388ce75627f99d7a6e9a5650ab5f41c53fba623cf5af15f002a1571fc79167`  
		Last Modified: Fri, 23 Sep 2016 19:44:58 GMT  
		Size: 4.9 MB (4912567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959174b05d477c77197a831d2ae2c9a922ec3c654e7f1ae3c7e2d94429b402e1`  
		Last Modified: Fri, 23 Sep 2016 19:45:00 GMT  
		Size: 22.1 MB (22118122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7cca2213a2f0f6a728903d7759e155c96ac7bf2751c7b4e71262ca2902658`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e918636816ee55ebee65fcad37ae729fb0e9073beaa9591e88285f2639b84a`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 609.9 KB (609874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93b5c77a5ce2028c5dc71378dfa3fa8970be5f987304e28560e9c7f59578b54`  
		Last Modified: Fri, 23 Sep 2016 19:44:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460c910625609d994e45bccf060e8c69e27f600a128ff5deafdf30732944702`  
		Last Modified: Fri, 23 Sep 2016 19:45:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
