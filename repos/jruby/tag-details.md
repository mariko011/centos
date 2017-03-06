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
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8`

```console
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jre`

```console
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0`

```console
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jre`

```console
$ docker pull jruby@sha256:0277b46beeb2449a7b0bdc672882331c0b1c5b60e4f0dbcb8f134698f695237f
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150286403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c479de718dfacc4845998a7974876a248f3d2420e5cbdd38c1c4c233417b5d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:38:50 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:38:51 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:38:59 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:00 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:15 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e613206a4c1cec6f481f9dc764b3791eba56a7e63655b467333f2453ea1b2d7`  
		Last Modified: Mon, 06 Mar 2017 22:41:42 GMT  
		Size: 20.5 MB (20533264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2218b93951b542e868b7bece47dbf5e63de16e4611a168c1b6382edcf60ff15d`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0706e457d2c8f66da91780b1ed90b9bf915e5b63f368b0025fdbf5262dbf87a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 637.9 KB (637900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f43f608a4cc4d3bd447c2fa6a3d35825127177d2a66fe33541a7528e6b38a`  
		Last Modified: Mon, 06 Mar 2017 22:41:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:8580053bbf4b1df5d42771deb610efaa35353749385f63ab3c005a82cf08248a
```

-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64342619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64814732dc36e862c7ceedddca3c75d811d69690e2ab1fbe0f349a26409f2a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:39:19 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:20 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:39:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:41 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a316b2c1509e3ab72e32732a16237eb5466d9fb60a383f31af7efb125c413b`  
		Last Modified: Sat, 04 Mar 2017 07:07:18 GMT  
		Size: 1.1 MB (1096477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3432627264e7f39494328fb385609c8c7f3c5de32a2b978ae347ac0fd8c278`  
		Last Modified: Mon, 06 Mar 2017 22:45:07 GMT  
		Size: 20.6 MB (20615941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af109842af2e1e3e028c0143198b422c782c1d90c578ba595f9a9d4de8dc883`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd054a0b5f5577318178768cd6d993e1a65cb40e2037cdf9779de5a8bca33d1`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 637.9 KB (637905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d15ade700a467f0c575d9d28ed2988b672107e875132e42c9915e4cafc127`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:8580053bbf4b1df5d42771deb610efaa35353749385f63ab3c005a82cf08248a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64342619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64814732dc36e862c7ceedddca3c75d811d69690e2ab1fbe0f349a26409f2a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:39:19 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:20 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:39:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:41 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a316b2c1509e3ab72e32732a16237eb5466d9fb60a383f31af7efb125c413b`  
		Last Modified: Sat, 04 Mar 2017 07:07:18 GMT  
		Size: 1.1 MB (1096477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3432627264e7f39494328fb385609c8c7f3c5de32a2b978ae347ac0fd8c278`  
		Last Modified: Mon, 06 Mar 2017 22:45:07 GMT  
		Size: 20.6 MB (20615941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af109842af2e1e3e028c0143198b422c782c1d90c578ba595f9a9d4de8dc883`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd054a0b5f5577318178768cd6d993e1a65cb40e2037cdf9779de5a8bca33d1`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 637.9 KB (637905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d15ade700a467f0c575d9d28ed2988b672107e875132e42c9915e4cafc127`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:8580053bbf4b1df5d42771deb610efaa35353749385f63ab3c005a82cf08248a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64342619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64814732dc36e862c7ceedddca3c75d811d69690e2ab1fbe0f349a26409f2a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:39:19 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:20 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:39:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:41 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a316b2c1509e3ab72e32732a16237eb5466d9fb60a383f31af7efb125c413b`  
		Last Modified: Sat, 04 Mar 2017 07:07:18 GMT  
		Size: 1.1 MB (1096477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3432627264e7f39494328fb385609c8c7f3c5de32a2b978ae347ac0fd8c278`  
		Last Modified: Mon, 06 Mar 2017 22:45:07 GMT  
		Size: 20.6 MB (20615941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af109842af2e1e3e028c0143198b422c782c1d90c578ba595f9a9d4de8dc883`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd054a0b5f5577318178768cd6d993e1a65cb40e2037cdf9779de5a8bca33d1`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 637.9 KB (637905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d15ade700a467f0c575d9d28ed2988b672107e875132e42c9915e4cafc127`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-alpine`

```console
$ docker pull jruby@sha256:8580053bbf4b1df5d42771deb610efaa35353749385f63ab3c005a82cf08248a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64342619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64814732dc36e862c7ceedddca3c75d811d69690e2ab1fbe0f349a26409f2a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:39:19 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:20 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:39:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:41 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a316b2c1509e3ab72e32732a16237eb5466d9fb60a383f31af7efb125c413b`  
		Last Modified: Sat, 04 Mar 2017 07:07:18 GMT  
		Size: 1.1 MB (1096477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3432627264e7f39494328fb385609c8c7f3c5de32a2b978ae347ac0fd8c278`  
		Last Modified: Mon, 06 Mar 2017 22:45:07 GMT  
		Size: 20.6 MB (20615941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af109842af2e1e3e028c0143198b422c782c1d90c578ba595f9a9d4de8dc883`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd054a0b5f5577318178768cd6d993e1a65cb40e2037cdf9779de5a8bca33d1`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 637.9 KB (637905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d15ade700a467f0c575d9d28ed2988b672107e875132e42c9915e4cafc127`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jre-alpine`

```console
$ docker pull jruby@sha256:8580053bbf4b1df5d42771deb610efaa35353749385f63ab3c005a82cf08248a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64342619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64814732dc36e862c7ceedddca3c75d811d69690e2ab1fbe0f349a26409f2a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:39:19 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:20 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:39:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:41 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a316b2c1509e3ab72e32732a16237eb5466d9fb60a383f31af7efb125c413b`  
		Last Modified: Sat, 04 Mar 2017 07:07:18 GMT  
		Size: 1.1 MB (1096477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3432627264e7f39494328fb385609c8c7f3c5de32a2b978ae347ac0fd8c278`  
		Last Modified: Mon, 06 Mar 2017 22:45:07 GMT  
		Size: 20.6 MB (20615941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af109842af2e1e3e028c0143198b422c782c1d90c578ba595f9a9d4de8dc883`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd054a0b5f5577318178768cd6d993e1a65cb40e2037cdf9779de5a8bca33d1`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 637.9 KB (637905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d15ade700a467f0c575d9d28ed2988b672107e875132e42c9915e4cafc127`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-alpine`

```console
$ docker pull jruby@sha256:8580053bbf4b1df5d42771deb610efaa35353749385f63ab3c005a82cf08248a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64342619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64814732dc36e862c7ceedddca3c75d811d69690e2ab1fbe0f349a26409f2a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:39:19 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:20 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:39:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:41 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a316b2c1509e3ab72e32732a16237eb5466d9fb60a383f31af7efb125c413b`  
		Last Modified: Sat, 04 Mar 2017 07:07:18 GMT  
		Size: 1.1 MB (1096477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3432627264e7f39494328fb385609c8c7f3c5de32a2b978ae347ac0fd8c278`  
		Last Modified: Mon, 06 Mar 2017 22:45:07 GMT  
		Size: 20.6 MB (20615941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af109842af2e1e3e028c0143198b422c782c1d90c578ba595f9a9d4de8dc883`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd054a0b5f5577318178768cd6d993e1a65cb40e2037cdf9779de5a8bca33d1`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 637.9 KB (637905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d15ade700a467f0c575d9d28ed2988b672107e875132e42c9915e4cafc127`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jre-alpine`

```console
$ docker pull jruby@sha256:8580053bbf4b1df5d42771deb610efaa35353749385f63ab3c005a82cf08248a
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64342619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64814732dc36e862c7ceedddca3c75d811d69690e2ab1fbe0f349a26409f2a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:39:19 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:20 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:39:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:39:41 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:39:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:39:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:39:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:39:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a316b2c1509e3ab72e32732a16237eb5466d9fb60a383f31af7efb125c413b`  
		Last Modified: Sat, 04 Mar 2017 07:07:18 GMT  
		Size: 1.1 MB (1096477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3432627264e7f39494328fb385609c8c7f3c5de32a2b978ae347ac0fd8c278`  
		Last Modified: Mon, 06 Mar 2017 22:45:07 GMT  
		Size: 20.6 MB (20615941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af109842af2e1e3e028c0143198b422c782c1d90c578ba595f9a9d4de8dc883`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd054a0b5f5577318178768cd6d993e1a65cb40e2037cdf9779de5a8bca33d1`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 637.9 KB (637905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d15ade700a467f0c575d9d28ed2988b672107e875132e42c9915e4cafc127`  
		Last Modified: Mon, 06 Mar 2017 22:45:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:4c5848a69d68c1418cfecb785df1e4f23f6262c2e29f7062afa47c213986f4f7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269695924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ca4ee35df162beb9e74ba853b5aa46f412529aee25dcb74ea26980c7c7166`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:39:45 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:46 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:07 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f47ee6423e0c410c67d82454a45c6decc3cab8e80da0d3a9bfbe06ade1e6bb`  
		Last Modified: Mon, 06 Mar 2017 22:47:19 GMT  
		Size: 20.5 MB (20534642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00caa749cc663965d4276fac0734753f8756b5dbdc9de705729c0cee1c11d4f7`  
		Last Modified: Mon, 06 Mar 2017 22:47:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2be45623f5058637547788aa3e93f94c73578d156603f452924240ce25277`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1624e497d49d919975c8ff99316f5e081fbcaa99e14f3b7bc881c30c4acbca8`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jdk`

```console
$ docker pull jruby@sha256:4c5848a69d68c1418cfecb785df1e4f23f6262c2e29f7062afa47c213986f4f7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269695924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ca4ee35df162beb9e74ba853b5aa46f412529aee25dcb74ea26980c7c7166`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:39:45 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:46 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:07 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f47ee6423e0c410c67d82454a45c6decc3cab8e80da0d3a9bfbe06ade1e6bb`  
		Last Modified: Mon, 06 Mar 2017 22:47:19 GMT  
		Size: 20.5 MB (20534642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00caa749cc663965d4276fac0734753f8756b5dbdc9de705729c0cee1c11d4f7`  
		Last Modified: Mon, 06 Mar 2017 22:47:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2be45623f5058637547788aa3e93f94c73578d156603f452924240ce25277`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1624e497d49d919975c8ff99316f5e081fbcaa99e14f3b7bc881c30c4acbca8`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jdk`

```console
$ docker pull jruby@sha256:4c5848a69d68c1418cfecb785df1e4f23f6262c2e29f7062afa47c213986f4f7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269695924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ca4ee35df162beb9e74ba853b5aa46f412529aee25dcb74ea26980c7c7166`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:39:45 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:46 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:07 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f47ee6423e0c410c67d82454a45c6decc3cab8e80da0d3a9bfbe06ade1e6bb`  
		Last Modified: Mon, 06 Mar 2017 22:47:19 GMT  
		Size: 20.5 MB (20534642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00caa749cc663965d4276fac0734753f8756b5dbdc9de705729c0cee1c11d4f7`  
		Last Modified: Mon, 06 Mar 2017 22:47:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2be45623f5058637547788aa3e93f94c73578d156603f452924240ce25277`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1624e497d49d919975c8ff99316f5e081fbcaa99e14f3b7bc881c30c4acbca8`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:a735182045eb5ac34c9052aedbc8cf908e313c633a2106a8cb58fa03c65ec6c7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74026315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844af4e0ac60aeb1942a9be47a7bb1758ef194387042f9a27bdd34e024b2c3f6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:30 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:40:11 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:40:11 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:40:17 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:40:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:40:18 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:33 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:40:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c178d6ab9b11255cb27946af9cb08304a20b6dd19f3b656fa3ea7eeb872619c`  
		Last Modified: Sat, 04 Mar 2017 07:09:35 GMT  
		Size: 1.1 MB (1097382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafb81d9d7da39bde45d3db4bbc766991f70ee1c833bfae49ac8c4ee91690026`  
		Last Modified: Mon, 06 Mar 2017 22:48:24 GMT  
		Size: 20.6 MB (20616416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620406551518abed4e45a94b620a32a7274086758823d0380341bae91a11f756`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3fa05567934dd02574a3a49e5af13439c869f6304bc0cffc3f251cbeb91800`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 637.9 KB (637912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15048271d1e6a56d3c8829912f12658a1cfcbb1b36db72e8a6f6d6648505a0e6`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-jdk-alpine`

```console
$ docker pull jruby@sha256:a735182045eb5ac34c9052aedbc8cf908e313c633a2106a8cb58fa03c65ec6c7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74026315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844af4e0ac60aeb1942a9be47a7bb1758ef194387042f9a27bdd34e024b2c3f6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:30 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:40:11 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:40:11 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:40:17 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:40:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:40:18 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:33 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:40:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c178d6ab9b11255cb27946af9cb08304a20b6dd19f3b656fa3ea7eeb872619c`  
		Last Modified: Sat, 04 Mar 2017 07:09:35 GMT  
		Size: 1.1 MB (1097382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafb81d9d7da39bde45d3db4bbc766991f70ee1c833bfae49ac8c4ee91690026`  
		Last Modified: Mon, 06 Mar 2017 22:48:24 GMT  
		Size: 20.6 MB (20616416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620406551518abed4e45a94b620a32a7274086758823d0380341bae91a11f756`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3fa05567934dd02574a3a49e5af13439c869f6304bc0cffc3f251cbeb91800`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 637.9 KB (637912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15048271d1e6a56d3c8829912f12658a1cfcbb1b36db72e8a6f6d6648505a0e6`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-jdk-alpine`

```console
$ docker pull jruby@sha256:a735182045eb5ac34c9052aedbc8cf908e313c633a2106a8cb58fa03c65ec6c7
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74026315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844af4e0ac60aeb1942a9be47a7bb1758ef194387042f9a27bdd34e024b2c3f6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:30 GMT
RUN apk add --no-cache       bash       libc6-compat
# Mon, 06 Mar 2017 22:40:11 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:40:11 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:40:17 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Mon, 06 Mar 2017 22:40:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:40:18 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:33 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Mar 2017 22:40:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c178d6ab9b11255cb27946af9cb08304a20b6dd19f3b656fa3ea7eeb872619c`  
		Last Modified: Sat, 04 Mar 2017 07:09:35 GMT  
		Size: 1.1 MB (1097382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafb81d9d7da39bde45d3db4bbc766991f70ee1c833bfae49ac8c4ee91690026`  
		Last Modified: Mon, 06 Mar 2017 22:48:24 GMT  
		Size: 20.6 MB (20616416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620406551518abed4e45a94b620a32a7274086758823d0380341bae91a11f756`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3fa05567934dd02574a3a49e5af13439c869f6304bc0cffc3f251cbeb91800`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 637.9 KB (637912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15048271d1e6a56d3c8829912f12658a1cfcbb1b36db72e8a6f6d6648505a0e6`  
		Last Modified: Mon, 06 Mar 2017 22:48:18 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:581413f006347aec8f8ec25fc95cd602b30dad68226d0ef0a1f4db899228d218
```

-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269696051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad88c3515e63b974bd93c188939983620e21b65cf0cf9e6238d4192ff6bf37b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:39:45 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:46 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:07 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:10 GMT
CMD ["irb"]
# Mon, 06 Mar 2017 22:40:37 GMT
RUN mkdir -p /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
WORKDIR /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD RUN bundle install --system
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f47ee6423e0c410c67d82454a45c6decc3cab8e80da0d3a9bfbe06ade1e6bb`  
		Last Modified: Mon, 06 Mar 2017 22:47:19 GMT  
		Size: 20.5 MB (20534642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00caa749cc663965d4276fac0734753f8756b5dbdc9de705729c0cee1c11d4f7`  
		Last Modified: Mon, 06 Mar 2017 22:47:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2be45623f5058637547788aa3e93f94c73578d156603f452924240ce25277`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1624e497d49d919975c8ff99316f5e081fbcaa99e14f3b7bc881c30c4acbca8`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cb7114e9a5e641ff1726f68e763756b5c0636f8e933d7ce5dd39b0a49ef0fe`  
		Last Modified: Mon, 06 Mar 2017 22:49:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:581413f006347aec8f8ec25fc95cd602b30dad68226d0ef0a1f4db899228d218
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269696051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad88c3515e63b974bd93c188939983620e21b65cf0cf9e6238d4192ff6bf37b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:39:45 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:46 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:07 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:10 GMT
CMD ["irb"]
# Mon, 06 Mar 2017 22:40:37 GMT
RUN mkdir -p /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
WORKDIR /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD RUN bundle install --system
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f47ee6423e0c410c67d82454a45c6decc3cab8e80da0d3a9bfbe06ade1e6bb`  
		Last Modified: Mon, 06 Mar 2017 22:47:19 GMT  
		Size: 20.5 MB (20534642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00caa749cc663965d4276fac0734753f8756b5dbdc9de705729c0cee1c11d4f7`  
		Last Modified: Mon, 06 Mar 2017 22:47:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2be45623f5058637547788aa3e93f94c73578d156603f452924240ce25277`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1624e497d49d919975c8ff99316f5e081fbcaa99e14f3b7bc881c30c4acbca8`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cb7114e9a5e641ff1726f68e763756b5c0636f8e933d7ce5dd39b0a49ef0fe`  
		Last Modified: Mon, 06 Mar 2017 22:49:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8-onbuild`

```console
$ docker pull jruby@sha256:581413f006347aec8f8ec25fc95cd602b30dad68226d0ef0a1f4db899228d218
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269696051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad88c3515e63b974bd93c188939983620e21b65cf0cf9e6238d4192ff6bf37b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:39:45 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:46 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:07 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:10 GMT
CMD ["irb"]
# Mon, 06 Mar 2017 22:40:37 GMT
RUN mkdir -p /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
WORKDIR /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD RUN bundle install --system
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f47ee6423e0c410c67d82454a45c6decc3cab8e80da0d3a9bfbe06ade1e6bb`  
		Last Modified: Mon, 06 Mar 2017 22:47:19 GMT  
		Size: 20.5 MB (20534642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00caa749cc663965d4276fac0734753f8756b5dbdc9de705729c0cee1c11d4f7`  
		Last Modified: Mon, 06 Mar 2017 22:47:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2be45623f5058637547788aa3e93f94c73578d156603f452924240ce25277`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1624e497d49d919975c8ff99316f5e081fbcaa99e14f3b7bc881c30c4acbca8`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cb7114e9a5e641ff1726f68e763756b5c0636f8e933d7ce5dd39b0a49ef0fe`  
		Last Modified: Mon, 06 Mar 2017 22:49:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.8.0-onbuild`

```console
$ docker pull jruby@sha256:581413f006347aec8f8ec25fc95cd602b30dad68226d0ef0a1f4db899228d218
```

-	Platforms:
	-	linux; amd64

### `jruby:9.1.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269696051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad88c3515e63b974bd93c188939983620e21b65cf0cf9e6238d4192ff6bf37b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:39:45 GMT
ENV JRUBY_VERSION=9.1.8.0
# Mon, 06 Mar 2017 22:39:46 GMT
ENV JRUBY_SHA256=20ac501c99a7cb3cf53ded64ac1b8bb6e0b0f6ba34a41b8bacc9715cd4bb2601
# Mon, 06 Mar 2017 22:39:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:39:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:39:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:07 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:10 GMT
CMD ["irb"]
# Mon, 06 Mar 2017 22:40:37 GMT
RUN mkdir -p /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
WORKDIR /usr/src/app
# Mon, 06 Mar 2017 22:40:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD RUN bundle install --system
# Mon, 06 Mar 2017 22:40:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f47ee6423e0c410c67d82454a45c6decc3cab8e80da0d3a9bfbe06ade1e6bb`  
		Last Modified: Mon, 06 Mar 2017 22:47:19 GMT  
		Size: 20.5 MB (20534642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00caa749cc663965d4276fac0734753f8756b5dbdc9de705729c0cee1c11d4f7`  
		Last Modified: Mon, 06 Mar 2017 22:47:16 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2be45623f5058637547788aa3e93f94c73578d156603f452924240ce25277`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 637.9 KB (637908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1624e497d49d919975c8ff99316f5e081fbcaa99e14f3b7bc881c30c4acbca8`  
		Last Modified: Mon, 06 Mar 2017 22:47:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cb7114e9a5e641ff1726f68e763756b5c0636f8e933d7ce5dd39b0a49ef0fe`  
		Last Modified: Mon, 06 Mar 2017 22:49:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7`

```console
$ docker pull jruby@sha256:b2c7f0c0313cbc290747ab9eb6f708c83b3d89b0622a3aa0742ec226c918c022
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151872224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b46d45f2355f3228f43cd4b99f04b5fdb2fc0060c36099d0c1838484c7273ca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:40:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:40:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:54 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a92589969a247703d6c43ba68e31afb9e261fe13d8683d7d82a055f8c40331a`  
		Last Modified: Mon, 06 Mar 2017 22:50:42 GMT  
		Size: 22.1 MB (22119101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49282f9f7b96a965c6a9ad657bb8f869cfd3d4af97ad70590884a2e1a0c23fea`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8920fe3b614742007267a9ab4ad7b8334ce9cd0812988f046f6b24521d3a874a`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 637.9 KB (637884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d67f32c0be5d466f54790934ee8b1c4d6bf00f2d6eb13dec3a747a1d4b81b1`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26`

```console
$ docker pull jruby@sha256:b2c7f0c0313cbc290747ab9eb6f708c83b3d89b0622a3aa0742ec226c918c022
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151872224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b46d45f2355f3228f43cd4b99f04b5fdb2fc0060c36099d0c1838484c7273ca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:40:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:40:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:54 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a92589969a247703d6c43ba68e31afb9e261fe13d8683d7d82a055f8c40331a`  
		Last Modified: Mon, 06 Mar 2017 22:50:42 GMT  
		Size: 22.1 MB (22119101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49282f9f7b96a965c6a9ad657bb8f869cfd3d4af97ad70590884a2e1a0c23fea`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8920fe3b614742007267a9ab4ad7b8334ce9cd0812988f046f6b24521d3a874a`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 637.9 KB (637884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d67f32c0be5d466f54790934ee8b1c4d6bf00f2d6eb13dec3a747a1d4b81b1`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:b2c7f0c0313cbc290747ab9eb6f708c83b3d89b0622a3aa0742ec226c918c022
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151872224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b46d45f2355f3228f43cd4b99f04b5fdb2fc0060c36099d0c1838484c7273ca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:40:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:40:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:54 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a92589969a247703d6c43ba68e31afb9e261fe13d8683d7d82a055f8c40331a`  
		Last Modified: Mon, 06 Mar 2017 22:50:42 GMT  
		Size: 22.1 MB (22119101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49282f9f7b96a965c6a9ad657bb8f869cfd3d4af97ad70590884a2e1a0c23fea`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8920fe3b614742007267a9ab4ad7b8334ce9cd0812988f046f6b24521d3a874a`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 637.9 KB (637884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d67f32c0be5d466f54790934ee8b1c4d6bf00f2d6eb13dec3a747a1d4b81b1`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26-jre`

```console
$ docker pull jruby@sha256:b2c7f0c0313cbc290747ab9eb6f708c83b3d89b0622a3aa0742ec226c918c022
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151872224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b46d45f2355f3228f43cd4b99f04b5fdb2fc0060c36099d0c1838484c7273ca`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:54:20 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:40 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:40:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:40:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:40:54 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:40:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:40:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:40:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:40:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32704660d9a975c53c45e848e4cb086cfa7f25446963cd45660e191d45a55c37`  
		Last Modified: Thu, 02 Mar 2017 05:42:20 GMT  
		Size: 4.8 MB (4840668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a92589969a247703d6c43ba68e31afb9e261fe13d8683d7d82a055f8c40331a`  
		Last Modified: Mon, 06 Mar 2017 22:50:42 GMT  
		Size: 22.1 MB (22119101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49282f9f7b96a965c6a9ad657bb8f869cfd3d4af97ad70590884a2e1a0c23fea`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8920fe3b614742007267a9ab4ad7b8334ce9cd0812988f046f6b24521d3a874a`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 637.9 KB (637884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d67f32c0be5d466f54790934ee8b1c4d6bf00f2d6eb13dec3a747a1d4b81b1`  
		Last Modified: Mon, 06 Mar 2017 22:50:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:6b63a3d0a0b434ce2c4d8efe73d7c839190af82caf855776a1b58177d0bb2c13
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271281363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b95b70b9f1533009a57b3d806342d1aadce126d1409ca10c63fa6158ff2556`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:57 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:58 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:41:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:41:04 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:05 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:41:12 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:41:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:41:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0e78b668ceab83c8ce7911fb4b37b9a6346c394fbdad1558098d6f85ba3dac`  
		Last Modified: Mon, 06 Mar 2017 22:52:04 GMT  
		Size: 22.1 MB (22120094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da0bdd31f33ea470d48f6fd35a6dfd02a9986b0e3ff24bc8175308ac91dd8ca`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67adcad9782bef49168607fd6df6848fa566fc708626d5f1740cb872c51f4afc`  
		Last Modified: Mon, 06 Mar 2017 22:52:01 GMT  
		Size: 637.9 KB (637895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19119b86118157917800a9113a16244f5943845d354b630cf0e9709ebecc2a30`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26-jdk`

```console
$ docker pull jruby@sha256:6b63a3d0a0b434ce2c4d8efe73d7c839190af82caf855776a1b58177d0bb2c13
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271281363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b95b70b9f1533009a57b3d806342d1aadce126d1409ca10c63fa6158ff2556`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:57 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:58 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:41:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:41:04 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:05 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:41:12 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:41:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:41:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0e78b668ceab83c8ce7911fb4b37b9a6346c394fbdad1558098d6f85ba3dac`  
		Last Modified: Mon, 06 Mar 2017 22:52:04 GMT  
		Size: 22.1 MB (22120094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da0bdd31f33ea470d48f6fd35a6dfd02a9986b0e3ff24bc8175308ac91dd8ca`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67adcad9782bef49168607fd6df6848fa566fc708626d5f1740cb872c51f4afc`  
		Last Modified: Mon, 06 Mar 2017 22:52:01 GMT  
		Size: 637.9 KB (637895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19119b86118157917800a9113a16244f5943845d354b630cf0e9709ebecc2a30`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:8a2fb49681fe5b709d6b7727eb43b4430bab828a1cd62ec757d6a0bb73d1d289
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271281488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6514ce4501bd61cf9f421d0990728d0d942f12d400d4a6505db63203e7063af`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:57 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:58 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:41:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:41:04 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:05 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:41:12 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:41:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:41:14 GMT
CMD ["irb"]
# Mon, 06 Mar 2017 22:41:15 GMT
RUN mkdir -p /usr/src/app
# Mon, 06 Mar 2017 22:41:16 GMT
WORKDIR /usr/src/app
# Mon, 06 Mar 2017 22:41:16 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 06 Mar 2017 22:41:17 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 06 Mar 2017 22:41:17 GMT
ONBUILD RUN bundle install --system
# Mon, 06 Mar 2017 22:41:17 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0e78b668ceab83c8ce7911fb4b37b9a6346c394fbdad1558098d6f85ba3dac`  
		Last Modified: Mon, 06 Mar 2017 22:52:04 GMT  
		Size: 22.1 MB (22120094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da0bdd31f33ea470d48f6fd35a6dfd02a9986b0e3ff24bc8175308ac91dd8ca`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67adcad9782bef49168607fd6df6848fa566fc708626d5f1740cb872c51f4afc`  
		Last Modified: Mon, 06 Mar 2017 22:52:01 GMT  
		Size: 637.9 KB (637895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19119b86118157917800a9113a16244f5943845d354b630cf0e9709ebecc2a30`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb9e5f88d81fd0cebeca5641e3b587fb6cca8e02238a49526c1fa7a0100a51f`  
		Last Modified: Mon, 06 Mar 2017 22:52:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.26-onbuild`

```console
$ docker pull jruby@sha256:8a2fb49681fe5b709d6b7727eb43b4430bab828a1cd62ec757d6a0bb73d1d289
```

-	Platforms:
	-	linux; amd64

### `jruby:1.7.26-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271281488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6514ce4501bd61cf9f421d0990728d0d942f12d400d4a6505db63203e7063af`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:55:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 06 Mar 2017 22:40:57 GMT
ENV JRUBY_VERSION=1.7.26
# Mon, 06 Mar 2017 22:40:58 GMT
ENV JRUBY_SHA1=cca25a1ffb8b75a8d4a4d4667e7f6b20341c2b74
# Mon, 06 Mar 2017 22:41:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Mon, 06 Mar 2017 22:41:04 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:05 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Mon, 06 Mar 2017 22:41:12 GMT
RUN gem install bundler
# Mon, 06 Mar 2017 22:41:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 06 Mar 2017 22:41:13 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Mar 2017 22:41:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 06 Mar 2017 22:41:14 GMT
CMD ["irb"]
# Mon, 06 Mar 2017 22:41:15 GMT
RUN mkdir -p /usr/src/app
# Mon, 06 Mar 2017 22:41:16 GMT
WORKDIR /usr/src/app
# Mon, 06 Mar 2017 22:41:16 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Mon, 06 Mar 2017 22:41:17 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Mon, 06 Mar 2017 22:41:17 GMT
ONBUILD RUN bundle install --system
# Mon, 06 Mar 2017 22:41:17 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dcc6e36d1e8eac5cd58e48d285fe65a5242a9be848bb718377e9f3ddcc197`  
		Last Modified: Thu, 02 Mar 2017 05:43:52 GMT  
		Size: 4.9 MB (4924129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0e78b668ceab83c8ce7911fb4b37b9a6346c394fbdad1558098d6f85ba3dac`  
		Last Modified: Mon, 06 Mar 2017 22:52:04 GMT  
		Size: 22.1 MB (22120094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da0bdd31f33ea470d48f6fd35a6dfd02a9986b0e3ff24bc8175308ac91dd8ca`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67adcad9782bef49168607fd6df6848fa566fc708626d5f1740cb872c51f4afc`  
		Last Modified: Mon, 06 Mar 2017 22:52:01 GMT  
		Size: 637.9 KB (637895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19119b86118157917800a9113a16244f5943845d354b630cf0e9709ebecc2a30`  
		Last Modified: Mon, 06 Mar 2017 22:52:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb9e5f88d81fd0cebeca5641e3b587fb6cca8e02238a49526c1fa7a0100a51f`  
		Last Modified: Mon, 06 Mar 2017 22:52:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
