<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jruby`

-	[`jruby:latest`](#jrubylatest)
-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1.3`](#jruby913)
-	[`jruby:9.1.3-jre`](#jruby913-jre)
-	[`jruby:9.1.3.0`](#jruby9130)
-	[`jruby:9.1.3.0-jre`](#jruby9130-jre)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1.3-alpine`](#jruby913-alpine)
-	[`jruby:9.1.3-jre-alpine`](#jruby913-jre-alpine)
-	[`jruby:9.1.3.0-alpine`](#jruby9130-alpine)
-	[`jruby:9.1.3.0-jre-alpine`](#jruby9130-jre-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1.3-jdk`](#jruby913-jdk)
-	[`jruby:9.1.3.0-jdk`](#jruby9130-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1.3-jdk-alpine`](#jruby913-jdk-alpine)
-	[`jruby:9.1.3.0-jdk-alpine`](#jruby9130-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9.1.3-onbuild`](#jruby913-onbuild)
-	[`jruby:9.1.3.0-onbuild`](#jruby9130-onbuild)
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
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3`

```console
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3-jre`

```console
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3.0`

```console
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3.0-jre`

```console
$ docker pull jruby@sha256:d483e00b12cd63537f1b1ac0f738b69ef524db8d200bfe3a4bb3671bf79c6e6b
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3.0-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161405293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52b2cd2a5bb2d1efa906670cc6a77a1fcb78085c09f37277570959577b08b44`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:50 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:51:51 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:51:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:51:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:51:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:08 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:09 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7faacfc8f6036aeb788745634f1b7632f7c69519b2a373d57c520b417bf3f7`  
		Last Modified: Tue, 30 Aug 2016 21:52:49 GMT  
		Size: 31.9 MB (31881748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0d888c6e44fe9240b27a80efd0a2fd12fdea59445ff224a976756aa18554da`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a1ebd566a9159968c1adc02a26961b29ff15848a9edb6230307badc89abcb0`  
		Last Modified: Tue, 30 Aug 2016 21:52:45 GMT  
		Size: 557.3 KB (557302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4d26bfdccaf906b03e366e9f8f84626f277d10eb0fec2b1609db9b53cb76f4`  
		Last Modified: Tue, 30 Aug 2016 21:52:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:93089a44503dff24860b0979d31efbeb41fd5b5c159b66ba09a65efc3c577eb4
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76667702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f74c0c1c824db0346be432e640fae0a29a8c2bede9b04dfd7a76e867cddae`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:11 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:11 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:12 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:09:18 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:09:19 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:19 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:09:28 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:09:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:09:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97edc5003bec2706446592539d168a6a1d46c85555e2d96d6d75e973f37cb03e`  
		Last Modified: Tue, 30 Aug 2016 21:53:45 GMT  
		Size: 1.5 MB (1477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf051dad224484a520e1dc9f197a5f5de4081f5540cae450c063984b7678680`  
		Last Modified: Tue, 30 Aug 2016 21:53:51 GMT  
		Size: 32.7 MB (32674251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800ae74c6b6fcf9259e1db52e83c41942182525baeb6715e48174f953a09a03`  
		Last Modified: Tue, 30 Aug 2016 21:53:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd7d84b32f7f58266cc6777005f0cc8fac5915ddd4161f60afa2a2a6da81a11`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 557.3 KB (557278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc992be1751550604f3b9d00cc55be8898bd88220f23c082e4ebc671364cf575`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:93089a44503dff24860b0979d31efbeb41fd5b5c159b66ba09a65efc3c577eb4
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76667702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f74c0c1c824db0346be432e640fae0a29a8c2bede9b04dfd7a76e867cddae`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:11 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:11 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:12 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:09:18 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:09:19 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:19 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:09:28 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:09:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:09:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97edc5003bec2706446592539d168a6a1d46c85555e2d96d6d75e973f37cb03e`  
		Last Modified: Tue, 30 Aug 2016 21:53:45 GMT  
		Size: 1.5 MB (1477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf051dad224484a520e1dc9f197a5f5de4081f5540cae450c063984b7678680`  
		Last Modified: Tue, 30 Aug 2016 21:53:51 GMT  
		Size: 32.7 MB (32674251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800ae74c6b6fcf9259e1db52e83c41942182525baeb6715e48174f953a09a03`  
		Last Modified: Tue, 30 Aug 2016 21:53:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd7d84b32f7f58266cc6777005f0cc8fac5915ddd4161f60afa2a2a6da81a11`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 557.3 KB (557278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc992be1751550604f3b9d00cc55be8898bd88220f23c082e4ebc671364cf575`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:93089a44503dff24860b0979d31efbeb41fd5b5c159b66ba09a65efc3c577eb4
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76667702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f74c0c1c824db0346be432e640fae0a29a8c2bede9b04dfd7a76e867cddae`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:11 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:11 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:12 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:09:18 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:09:19 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:19 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:09:28 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:09:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:09:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97edc5003bec2706446592539d168a6a1d46c85555e2d96d6d75e973f37cb03e`  
		Last Modified: Tue, 30 Aug 2016 21:53:45 GMT  
		Size: 1.5 MB (1477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf051dad224484a520e1dc9f197a5f5de4081f5540cae450c063984b7678680`  
		Last Modified: Tue, 30 Aug 2016 21:53:51 GMT  
		Size: 32.7 MB (32674251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800ae74c6b6fcf9259e1db52e83c41942182525baeb6715e48174f953a09a03`  
		Last Modified: Tue, 30 Aug 2016 21:53:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd7d84b32f7f58266cc6777005f0cc8fac5915ddd4161f60afa2a2a6da81a11`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 557.3 KB (557278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc992be1751550604f3b9d00cc55be8898bd88220f23c082e4ebc671364cf575`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3-alpine`

```console
$ docker pull jruby@sha256:93089a44503dff24860b0979d31efbeb41fd5b5c159b66ba09a65efc3c577eb4
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76667702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f74c0c1c824db0346be432e640fae0a29a8c2bede9b04dfd7a76e867cddae`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:11 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:11 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:12 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:09:18 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:09:19 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:19 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:09:28 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:09:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:09:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97edc5003bec2706446592539d168a6a1d46c85555e2d96d6d75e973f37cb03e`  
		Last Modified: Tue, 30 Aug 2016 21:53:45 GMT  
		Size: 1.5 MB (1477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf051dad224484a520e1dc9f197a5f5de4081f5540cae450c063984b7678680`  
		Last Modified: Tue, 30 Aug 2016 21:53:51 GMT  
		Size: 32.7 MB (32674251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800ae74c6b6fcf9259e1db52e83c41942182525baeb6715e48174f953a09a03`  
		Last Modified: Tue, 30 Aug 2016 21:53:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd7d84b32f7f58266cc6777005f0cc8fac5915ddd4161f60afa2a2a6da81a11`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 557.3 KB (557278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc992be1751550604f3b9d00cc55be8898bd88220f23c082e4ebc671364cf575`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3-jre-alpine`

```console
$ docker pull jruby@sha256:93089a44503dff24860b0979d31efbeb41fd5b5c159b66ba09a65efc3c577eb4
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76667702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f74c0c1c824db0346be432e640fae0a29a8c2bede9b04dfd7a76e867cddae`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:11 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:11 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:12 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:09:18 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:09:19 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:19 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:09:28 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:09:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:09:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97edc5003bec2706446592539d168a6a1d46c85555e2d96d6d75e973f37cb03e`  
		Last Modified: Tue, 30 Aug 2016 21:53:45 GMT  
		Size: 1.5 MB (1477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf051dad224484a520e1dc9f197a5f5de4081f5540cae450c063984b7678680`  
		Last Modified: Tue, 30 Aug 2016 21:53:51 GMT  
		Size: 32.7 MB (32674251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800ae74c6b6fcf9259e1db52e83c41942182525baeb6715e48174f953a09a03`  
		Last Modified: Tue, 30 Aug 2016 21:53:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd7d84b32f7f58266cc6777005f0cc8fac5915ddd4161f60afa2a2a6da81a11`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 557.3 KB (557278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc992be1751550604f3b9d00cc55be8898bd88220f23c082e4ebc671364cf575`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3.0-alpine`

```console
$ docker pull jruby@sha256:93089a44503dff24860b0979d31efbeb41fd5b5c159b66ba09a65efc3c577eb4
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76667702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f74c0c1c824db0346be432e640fae0a29a8c2bede9b04dfd7a76e867cddae`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:11 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:11 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:12 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:09:18 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:09:19 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:19 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:09:28 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:09:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:09:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97edc5003bec2706446592539d168a6a1d46c85555e2d96d6d75e973f37cb03e`  
		Last Modified: Tue, 30 Aug 2016 21:53:45 GMT  
		Size: 1.5 MB (1477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf051dad224484a520e1dc9f197a5f5de4081f5540cae450c063984b7678680`  
		Last Modified: Tue, 30 Aug 2016 21:53:51 GMT  
		Size: 32.7 MB (32674251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800ae74c6b6fcf9259e1db52e83c41942182525baeb6715e48174f953a09a03`  
		Last Modified: Tue, 30 Aug 2016 21:53:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd7d84b32f7f58266cc6777005f0cc8fac5915ddd4161f60afa2a2a6da81a11`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 557.3 KB (557278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc992be1751550604f3b9d00cc55be8898bd88220f23c082e4ebc671364cf575`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3.0-jre-alpine`

```console
$ docker pull jruby@sha256:93089a44503dff24860b0979d31efbeb41fd5b5c159b66ba09a65efc3c577eb4
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3.0-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76667702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f74c0c1c824db0346be432e640fae0a29a8c2bede9b04dfd7a76e867cddae`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:11 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:11 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:12 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:09:18 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:09:19 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:19 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:09:28 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:09:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:09:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:09:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:09:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97edc5003bec2706446592539d168a6a1d46c85555e2d96d6d75e973f37cb03e`  
		Last Modified: Tue, 30 Aug 2016 21:53:45 GMT  
		Size: 1.5 MB (1477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf051dad224484a520e1dc9f197a5f5de4081f5540cae450c063984b7678680`  
		Last Modified: Tue, 30 Aug 2016 21:53:51 GMT  
		Size: 32.7 MB (32674251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800ae74c6b6fcf9259e1db52e83c41942182525baeb6715e48174f953a09a03`  
		Last Modified: Tue, 30 Aug 2016 21:53:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd7d84b32f7f58266cc6777005f0cc8fac5915ddd4161f60afa2a2a6da81a11`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 557.3 KB (557278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc992be1751550604f3b9d00cc55be8898bd88220f23c082e4ebc671364cf575`  
		Last Modified: Tue, 30 Aug 2016 21:53:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:ff2cb42ce6fd0ff7126528a7e235f5e2ba2049bcadad46bb1255f2c4a4b50b73
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280683205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba724a70d8d590f48f5f39d9fc8e3f1dc870082ce70e8b5068abbe09a9b1328a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:52:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:52:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:34 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815a3b062439c9336c59c4d1ba8e9994bd176c6ce4da4b0b23ece45d5ff21f6`  
		Last Modified: Tue, 30 Aug 2016 21:54:44 GMT  
		Size: 31.9 MB (31882983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9677a9bb5f0c22c03c2f35beeb61424c21fa058dd2eab4a6c4d2830a55a8064`  
		Last Modified: Tue, 30 Aug 2016 21:54:38 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca35fe0ae8b274aa66f7901ea3c56b812635be95b6d1f9d54c253a850c33b9f`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 557.3 KB (557310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd7b480cc4df3474221cffed5fc6dc55d71df17f82147d74439faf9afbd1c3a`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3-jdk`

```console
$ docker pull jruby@sha256:ff2cb42ce6fd0ff7126528a7e235f5e2ba2049bcadad46bb1255f2c4a4b50b73
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280683205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba724a70d8d590f48f5f39d9fc8e3f1dc870082ce70e8b5068abbe09a9b1328a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:52:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:52:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:34 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815a3b062439c9336c59c4d1ba8e9994bd176c6ce4da4b0b23ece45d5ff21f6`  
		Last Modified: Tue, 30 Aug 2016 21:54:44 GMT  
		Size: 31.9 MB (31882983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9677a9bb5f0c22c03c2f35beeb61424c21fa058dd2eab4a6c4d2830a55a8064`  
		Last Modified: Tue, 30 Aug 2016 21:54:38 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca35fe0ae8b274aa66f7901ea3c56b812635be95b6d1f9d54c253a850c33b9f`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 557.3 KB (557310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd7b480cc4df3474221cffed5fc6dc55d71df17f82147d74439faf9afbd1c3a`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3.0-jdk`

```console
$ docker pull jruby@sha256:ff2cb42ce6fd0ff7126528a7e235f5e2ba2049bcadad46bb1255f2c4a4b50b73
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3.0-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280683205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba724a70d8d590f48f5f39d9fc8e3f1dc870082ce70e8b5068abbe09a9b1328a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:52:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:52:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:34 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815a3b062439c9336c59c4d1ba8e9994bd176c6ce4da4b0b23ece45d5ff21f6`  
		Last Modified: Tue, 30 Aug 2016 21:54:44 GMT  
		Size: 31.9 MB (31882983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9677a9bb5f0c22c03c2f35beeb61424c21fa058dd2eab4a6c4d2830a55a8064`  
		Last Modified: Tue, 30 Aug 2016 21:54:38 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca35fe0ae8b274aa66f7901ea3c56b812635be95b6d1f9d54c253a850c33b9f`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 557.3 KB (557310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd7b480cc4df3474221cffed5fc6dc55d71df17f82147d74439faf9afbd1c3a`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:b059ef2318a48b11219f525a7f09fa84970cf07d6db8ecc9da67c5de0b1b2e05
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86345818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64be2f1184e3a4e4ba828fc44b66ce5b0f379690e83ae29da8c7b529dab8e3a4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:56 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:56 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:57 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:10:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:10:04 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:10:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:13 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:14 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:10:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac876b04c1ee2ed3f464b85776d716574c25e75e83eed350b8260015dfbfe898`  
		Last Modified: Tue, 30 Aug 2016 21:55:51 GMT  
		Size: 1.5 MB (1478375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c391712e2646a47546e1f703c798dc0a3ba8361ddfa4664cbb8d9e7267f60`  
		Last Modified: Tue, 30 Aug 2016 21:55:57 GMT  
		Size: 32.7 MB (32673976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a03de5c890b1426af620a6de39aac7ee12fed6b4d08a09d95ffcd9066cd5a`  
		Last Modified: Tue, 30 Aug 2016 21:55:49 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f17dfe86c427cb58e4a37ef233d89181b008b3b7a2d64d9be1952988d5e5553`  
		Last Modified: Tue, 30 Aug 2016 21:55:50 GMT  
		Size: 557.3 KB (557269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6bf256c23b9bb1d25fe2c96502190c0c5f13cf58266fd8c2db78fc0e342ec7`  
		Last Modified: Tue, 30 Aug 2016 21:55:50 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3-jdk-alpine`

```console
$ docker pull jruby@sha256:b059ef2318a48b11219f525a7f09fa84970cf07d6db8ecc9da67c5de0b1b2e05
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86345818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64be2f1184e3a4e4ba828fc44b66ce5b0f379690e83ae29da8c7b529dab8e3a4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:56 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:56 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:57 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:10:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:10:04 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:10:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:13 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:14 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:10:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac876b04c1ee2ed3f464b85776d716574c25e75e83eed350b8260015dfbfe898`  
		Last Modified: Tue, 30 Aug 2016 21:55:51 GMT  
		Size: 1.5 MB (1478375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c391712e2646a47546e1f703c798dc0a3ba8361ddfa4664cbb8d9e7267f60`  
		Last Modified: Tue, 30 Aug 2016 21:55:57 GMT  
		Size: 32.7 MB (32673976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a03de5c890b1426af620a6de39aac7ee12fed6b4d08a09d95ffcd9066cd5a`  
		Last Modified: Tue, 30 Aug 2016 21:55:49 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f17dfe86c427cb58e4a37ef233d89181b008b3b7a2d64d9be1952988d5e5553`  
		Last Modified: Tue, 30 Aug 2016 21:55:50 GMT  
		Size: 557.3 KB (557269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6bf256c23b9bb1d25fe2c96502190c0c5f13cf58266fd8c2db78fc0e342ec7`  
		Last Modified: Tue, 30 Aug 2016 21:55:50 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3.0-jdk-alpine`

```console
$ docker pull jruby@sha256:b059ef2318a48b11219f525a7f09fa84970cf07d6db8ecc9da67c5de0b1b2e05
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3.0-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86345818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64be2f1184e3a4e4ba828fc44b66ce5b0f379690e83ae29da8c7b529dab8e3a4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:09:56 GMT
RUN apk add --no-cache       bash       libc6-compat
# Tue, 30 Aug 2016 20:09:56 GMT
ENV JRUBY_VERSION=9.1.2.0
# Tue, 30 Aug 2016 20:09:57 GMT
ENV JRUBY_SHA256=60598a465883ab4c933f805de4a7f280052bddc793b95735465619c03ca43f35
# Tue, 30 Aug 2016 20:10:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 30 Aug 2016 20:10:04 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:10:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:13 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:14 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:10:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac876b04c1ee2ed3f464b85776d716574c25e75e83eed350b8260015dfbfe898`  
		Last Modified: Tue, 30 Aug 2016 21:55:51 GMT  
		Size: 1.5 MB (1478375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c391712e2646a47546e1f703c798dc0a3ba8361ddfa4664cbb8d9e7267f60`  
		Last Modified: Tue, 30 Aug 2016 21:55:57 GMT  
		Size: 32.7 MB (32673976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a03de5c890b1426af620a6de39aac7ee12fed6b4d08a09d95ffcd9066cd5a`  
		Last Modified: Tue, 30 Aug 2016 21:55:49 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f17dfe86c427cb58e4a37ef233d89181b008b3b7a2d64d9be1952988d5e5553`  
		Last Modified: Tue, 30 Aug 2016 21:55:50 GMT  
		Size: 557.3 KB (557269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6bf256c23b9bb1d25fe2c96502190c0c5f13cf58266fd8c2db78fc0e342ec7`  
		Last Modified: Tue, 30 Aug 2016 21:55:50 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:a977465066d651b39ea2b8ca11fa6cde2afbf390ea9488a986552d3eea0f19f7
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280683331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a3baf2bb7831f720b9bea727199e8205c57f5fcfc0e33f30f59619740d678`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:52:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:52:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:34 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:36 GMT
CMD ["irb"]
# Tue, 30 Aug 2016 21:52:37 GMT
RUN mkdir -p /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
WORKDIR /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD RUN bundle install --system
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815a3b062439c9336c59c4d1ba8e9994bd176c6ce4da4b0b23ece45d5ff21f6`  
		Last Modified: Tue, 30 Aug 2016 21:54:44 GMT  
		Size: 31.9 MB (31882983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9677a9bb5f0c22c03c2f35beeb61424c21fa058dd2eab4a6c4d2830a55a8064`  
		Last Modified: Tue, 30 Aug 2016 21:54:38 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca35fe0ae8b274aa66f7901ea3c56b812635be95b6d1f9d54c253a850c33b9f`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 557.3 KB (557310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd7b480cc4df3474221cffed5fc6dc55d71df17f82147d74439faf9afbd1c3a`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27dcb286db4067f6a86ecd9ae57a2edd9dcc8c225fd514ccff7f7a6d9b38da7`  
		Last Modified: Tue, 30 Aug 2016 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:a977465066d651b39ea2b8ca11fa6cde2afbf390ea9488a986552d3eea0f19f7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280683331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a3baf2bb7831f720b9bea727199e8205c57f5fcfc0e33f30f59619740d678`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:52:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:52:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:34 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:36 GMT
CMD ["irb"]
# Tue, 30 Aug 2016 21:52:37 GMT
RUN mkdir -p /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
WORKDIR /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD RUN bundle install --system
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815a3b062439c9336c59c4d1ba8e9994bd176c6ce4da4b0b23ece45d5ff21f6`  
		Last Modified: Tue, 30 Aug 2016 21:54:44 GMT  
		Size: 31.9 MB (31882983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9677a9bb5f0c22c03c2f35beeb61424c21fa058dd2eab4a6c4d2830a55a8064`  
		Last Modified: Tue, 30 Aug 2016 21:54:38 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca35fe0ae8b274aa66f7901ea3c56b812635be95b6d1f9d54c253a850c33b9f`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 557.3 KB (557310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd7b480cc4df3474221cffed5fc6dc55d71df17f82147d74439faf9afbd1c3a`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27dcb286db4067f6a86ecd9ae57a2edd9dcc8c225fd514ccff7f7a6d9b38da7`  
		Last Modified: Tue, 30 Aug 2016 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3-onbuild`

```console
$ docker pull jruby@sha256:a977465066d651b39ea2b8ca11fa6cde2afbf390ea9488a986552d3eea0f19f7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280683331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a3baf2bb7831f720b9bea727199e8205c57f5fcfc0e33f30f59619740d678`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:52:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:52:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:34 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:36 GMT
CMD ["irb"]
# Tue, 30 Aug 2016 21:52:37 GMT
RUN mkdir -p /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
WORKDIR /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD RUN bundle install --system
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815a3b062439c9336c59c4d1ba8e9994bd176c6ce4da4b0b23ece45d5ff21f6`  
		Last Modified: Tue, 30 Aug 2016 21:54:44 GMT  
		Size: 31.9 MB (31882983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9677a9bb5f0c22c03c2f35beeb61424c21fa058dd2eab4a6c4d2830a55a8064`  
		Last Modified: Tue, 30 Aug 2016 21:54:38 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca35fe0ae8b274aa66f7901ea3c56b812635be95b6d1f9d54c253a850c33b9f`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 557.3 KB (557310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd7b480cc4df3474221cffed5fc6dc55d71df17f82147d74439faf9afbd1c3a`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27dcb286db4067f6a86ecd9ae57a2edd9dcc8c225fd514ccff7f7a6d9b38da7`  
		Last Modified: Tue, 30 Aug 2016 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.3.0-onbuild`

```console
$ docker pull jruby@sha256:a977465066d651b39ea2b8ca11fa6cde2afbf390ea9488a986552d3eea0f19f7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.3.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280683331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a3baf2bb7831f720b9bea727199e8205c57f5fcfc0e33f30f59619740d678`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_VERSION=9.1.3.0
# Tue, 30 Aug 2016 21:52:10 GMT
ENV JRUBY_SHA256=3bf36ad72bfb49ba4424c5403df3b1da4f614186d82267f2481973f1fcaaeb20
# Tue, 30 Aug 2016 21:52:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 21:52:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 21:52:34 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 21:52:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 21:52:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:52:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 21:52:36 GMT
CMD ["irb"]
# Tue, 30 Aug 2016 21:52:37 GMT
RUN mkdir -p /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
WORKDIR /usr/src/app
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 30 Aug 2016 21:52:37 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD RUN bundle install --system
# Tue, 30 Aug 2016 21:52:38 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a815a3b062439c9336c59c4d1ba8e9994bd176c6ce4da4b0b23ece45d5ff21f6`  
		Last Modified: Tue, 30 Aug 2016 21:54:44 GMT  
		Size: 31.9 MB (31882983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9677a9bb5f0c22c03c2f35beeb61424c21fa058dd2eab4a6c4d2830a55a8064`  
		Last Modified: Tue, 30 Aug 2016 21:54:38 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca35fe0ae8b274aa66f7901ea3c56b812635be95b6d1f9d54c253a850c33b9f`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 557.3 KB (557310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd7b480cc4df3474221cffed5fc6dc55d71df17f82147d74439faf9afbd1c3a`  
		Last Modified: Tue, 30 Aug 2016 21:54:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27dcb286db4067f6a86ecd9ae57a2edd9dcc8c225fd514ccff7f7a6d9b38da7`  
		Last Modified: Tue, 30 Aug 2016 21:56:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:289e5ae9434b4007c66656998a1861df071dc7a0a521e35a6c83c2f9b560702b
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151640549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eddbb044a0a94ec346dae0f0eb5c30188a5a4374de6a02389a5a5094b64ae7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:17 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:18 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:23 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:24 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:31 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c797ee28643bd908c7223597d1ffd6f23a8646e836fc3af20410616394930fc`  
		Last Modified: Tue, 30 Aug 2016 21:57:08 GMT  
		Size: 22.1 MB (22117027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b418a646af61c950a66b498a7197d4b4dd47155a9c8a3ba1dbffb1b0068d61`  
		Last Modified: Tue, 30 Aug 2016 21:57:02 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbad85b62953e0155219cb1e6889e9bc0bba2ac26fff9ac6303db9464b4b9ff9`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 557.3 KB (557277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6c76c6f3f68d0d306843040fe09c667ba1247b2f82d12bdd176e65c3ad8d7`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25`

```console
$ docker pull jruby@sha256:289e5ae9434b4007c66656998a1861df071dc7a0a521e35a6c83c2f9b560702b
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151640549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eddbb044a0a94ec346dae0f0eb5c30188a5a4374de6a02389a5a5094b64ae7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:17 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:18 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:23 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:24 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:31 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c797ee28643bd908c7223597d1ffd6f23a8646e836fc3af20410616394930fc`  
		Last Modified: Tue, 30 Aug 2016 21:57:08 GMT  
		Size: 22.1 MB (22117027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b418a646af61c950a66b498a7197d4b4dd47155a9c8a3ba1dbffb1b0068d61`  
		Last Modified: Tue, 30 Aug 2016 21:57:02 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbad85b62953e0155219cb1e6889e9bc0bba2ac26fff9ac6303db9464b4b9ff9`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 557.3 KB (557277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6c76c6f3f68d0d306843040fe09c667ba1247b2f82d12bdd176e65c3ad8d7`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:289e5ae9434b4007c66656998a1861df071dc7a0a521e35a6c83c2f9b560702b
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151640549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eddbb044a0a94ec346dae0f0eb5c30188a5a4374de6a02389a5a5094b64ae7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:17 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:18 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:23 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:24 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:31 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c797ee28643bd908c7223597d1ffd6f23a8646e836fc3af20410616394930fc`  
		Last Modified: Tue, 30 Aug 2016 21:57:08 GMT  
		Size: 22.1 MB (22117027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b418a646af61c950a66b498a7197d4b4dd47155a9c8a3ba1dbffb1b0068d61`  
		Last Modified: Tue, 30 Aug 2016 21:57:02 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbad85b62953e0155219cb1e6889e9bc0bba2ac26fff9ac6303db9464b4b9ff9`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 557.3 KB (557277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6c76c6f3f68d0d306843040fe09c667ba1247b2f82d12bdd176e65c3ad8d7`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-jre`

```console
$ docker pull jruby@sha256:289e5ae9434b4007c66656998a1861df071dc7a0a521e35a6c83c2f9b560702b
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151640549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eddbb044a0a94ec346dae0f0eb5c30188a5a4374de6a02389a5a5094b64ae7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:08:52 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:17 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:18 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:23 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:24 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:31 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cd45121cf494a4cc39c99328cd7aa525adfae4f32d1d5926e474dee731c1df`  
		Last Modified: Tue, 30 Aug 2016 21:52:46 GMT  
		Size: 4.8 MB (4819983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c797ee28643bd908c7223597d1ffd6f23a8646e836fc3af20410616394930fc`  
		Last Modified: Tue, 30 Aug 2016 21:57:08 GMT  
		Size: 22.1 MB (22117027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b418a646af61c950a66b498a7197d4b4dd47155a9c8a3ba1dbffb1b0068d61`  
		Last Modified: Tue, 30 Aug 2016 21:57:02 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbad85b62953e0155219cb1e6889e9bc0bba2ac26fff9ac6303db9464b4b9ff9`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 557.3 KB (557277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6c76c6f3f68d0d306843040fe09c667ba1247b2f82d12bdd176e65c3ad8d7`  
		Last Modified: Tue, 30 Aug 2016 21:57:03 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:87129f8fcf5c8fd2022ef7c1b04f2314048b0c46d16021ba7a99afe9478a073e
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a590f930cd3a799bfb8d4d6ca9ea18c3fcdaff58c214bb0b9eb644dabd0d13f1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:40 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:47 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae741389a3453731bb71b90c491ae4ebb0d6a8912acc64980f335450d0781c9`  
		Last Modified: Tue, 30 Aug 2016 21:57:42 GMT  
		Size: 22.1 MB (22117909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da1f5c345a61ba33d087f4f3314680954751a346b0b40da6d6569ba9c8e5f7`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7637e822df0a2c76870a04188cc7b68357b472287db3056aa04831bb50483ef1`  
		Last Modified: Tue, 30 Aug 2016 21:57:38 GMT  
		Size: 557.3 KB (557263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224670aabd597e2fa42b3fca880aef219b93a486bd6d3e825d1187b6697bee6a`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-jdk`

```console
$ docker pull jruby@sha256:87129f8fcf5c8fd2022ef7c1b04f2314048b0c46d16021ba7a99afe9478a073e
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a590f930cd3a799bfb8d4d6ca9ea18c3fcdaff58c214bb0b9eb644dabd0d13f1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:40 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:47 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae741389a3453731bb71b90c491ae4ebb0d6a8912acc64980f335450d0781c9`  
		Last Modified: Tue, 30 Aug 2016 21:57:42 GMT  
		Size: 22.1 MB (22117909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da1f5c345a61ba33d087f4f3314680954751a346b0b40da6d6569ba9c8e5f7`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7637e822df0a2c76870a04188cc7b68357b472287db3056aa04831bb50483ef1`  
		Last Modified: Tue, 30 Aug 2016 21:57:38 GMT  
		Size: 557.3 KB (557263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224670aabd597e2fa42b3fca880aef219b93a486bd6d3e825d1187b6697bee6a`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:dd80d806a1a369b38351fcb1de9748690b9053f504b0a740d184cdaa632efd7b
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7571b3a5d1fcfbb86806403083b7dcef362e38af20a6425fb2c12df3e544278d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:40 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:47 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:48 GMT
CMD ["irb"]
# Tue, 30 Aug 2016 20:10:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 30 Aug 2016 20:10:50 GMT
WORKDIR /usr/src/app
# Tue, 30 Aug 2016 20:10:50 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 30 Aug 2016 20:10:50 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 30 Aug 2016 20:10:50 GMT
ONBUILD RUN bundle install --system
# Tue, 30 Aug 2016 20:10:51 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae741389a3453731bb71b90c491ae4ebb0d6a8912acc64980f335450d0781c9`  
		Last Modified: Tue, 30 Aug 2016 21:57:42 GMT  
		Size: 22.1 MB (22117909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da1f5c345a61ba33d087f4f3314680954751a346b0b40da6d6569ba9c8e5f7`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7637e822df0a2c76870a04188cc7b68357b472287db3056aa04831bb50483ef1`  
		Last Modified: Tue, 30 Aug 2016 21:57:38 GMT  
		Size: 557.3 KB (557263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224670aabd597e2fa42b3fca880aef219b93a486bd6d3e825d1187b6697bee6a`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f55c26bc3fd9674006f28e63d9391faa4e410637faabc5ceab021c3632ede1b`  
		Last Modified: Tue, 30 Aug 2016 21:58:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.25-onbuild`

```console
$ docker pull jruby@sha256:dd80d806a1a369b38351fcb1de9748690b9053f504b0a740d184cdaa632efd7b
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.25-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7571b3a5d1fcfbb86806403083b7dcef362e38af20a6425fb2c12df3e544278d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:54:28 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:54:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:54:29 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:54:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:55:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:55:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:09:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_VERSION=1.7.25
# Tue, 30 Aug 2016 20:10:33 GMT
ENV JRUBY_SHA1=cd15aef419f97cff274491e53fcfb8b88ec36785
# Tue, 30 Aug 2016 20:10:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 30 Aug 2016 20:10:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:40 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 30 Aug 2016 20:10:47 GMT
RUN gem install bundler
# Tue, 30 Aug 2016 20:10:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Aug 2016 20:10:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:10:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 30 Aug 2016 20:10:48 GMT
CMD ["irb"]
# Tue, 30 Aug 2016 20:10:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 30 Aug 2016 20:10:50 GMT
WORKDIR /usr/src/app
# Tue, 30 Aug 2016 20:10:50 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 30 Aug 2016 20:10:50 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 30 Aug 2016 20:10:50 GMT
ONBUILD RUN bundle install --system
# Tue, 30 Aug 2016 20:10:51 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66597b54f2a82802e220800c1004036c3a92438333f922b0a238871b517bed`  
		Last Modified: Tue, 30 Aug 2016 21:55:09 GMT  
		Size: 42.5 MB (42495147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013d02f99500e88887cf95fa25a074e7829584ba978e5f761a801a5fd28eb25f`  
		Last Modified: Tue, 30 Aug 2016 21:54:46 GMT  
		Size: 593.1 KB (593096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfa6ff45a20a4492ddd8148acbc81a2b642415c99b4170d4d92df974321216`  
		Last Modified: Tue, 30 Aug 2016 21:54:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d66f7026527f4bb7d3c5940e14d8bd78706547b109df8b12a0fef2a23b4d6`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e232d317cbc10dc833a43d90567d4932a06155e859578d5b49d9a764374d3`  
		Last Modified: Tue, 30 Aug 2016 21:55:24 GMT  
		Size: 130.1 MB (130073468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b772200f313f31d7aa1e982290ffba52148c11b2bc58f4567462be2836065f`  
		Last Modified: Tue, 30 Aug 2016 21:54:42 GMT  
		Size: 284.2 KB (284195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b9b28b39d60dcc22ba8300bd72e52c7f542d806cb0ab79e03ad42461a19be5`  
		Last Modified: Tue, 30 Aug 2016 21:54:43 GMT  
		Size: 4.9 MB (4903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae741389a3453731bb71b90c491ae4ebb0d6a8912acc64980f335450d0781c9`  
		Last Modified: Tue, 30 Aug 2016 21:57:42 GMT  
		Size: 22.1 MB (22117909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da1f5c345a61ba33d087f4f3314680954751a346b0b40da6d6569ba9c8e5f7`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7637e822df0a2c76870a04188cc7b68357b472287db3056aa04831bb50483ef1`  
		Last Modified: Tue, 30 Aug 2016 21:57:38 GMT  
		Size: 557.3 KB (557263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224670aabd597e2fa42b3fca880aef219b93a486bd6d3e825d1187b6697bee6a`  
		Last Modified: Tue, 30 Aug 2016 21:57:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f55c26bc3fd9674006f28e63d9391faa4e410637faabc5ceab021c3632ede1b`  
		Last Modified: Tue, 30 Aug 2016 21:58:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
