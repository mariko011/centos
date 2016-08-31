<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `clojure`

-	[`clojure:latest`](#clojurelatest)
-	[`clojure:lein-2.7.0`](#clojurelein-270)
-	[`clojure:onbuild`](#clojureonbuild)
-	[`clojure:lein-2.7.0-onbuild`](#clojurelein-270-onbuild)
-	[`clojure:alpine`](#clojurealpine)
-	[`clojure:lein-2.7.0-alpine`](#clojurelein-270-alpine)
-	[`clojure:alpine-onbuild`](#clojurealpine-onbuild)
-	[`clojure:lein-2.7.0-alpine-onbuild`](#clojurelein-270-alpine-onbuild)

## `clojure:latest`

```console
$ docker pull clojure@sha256:34204d7bb60746837c1796c41c76b262098e3950f6631ac4c6be203a668a970f
```

-	Platforms:
	-	linux; amd64

### `clojure:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257352475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7546256d9b135100a3b405c514c5a20c15cb1683e4dc3dae856b4903d397b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:43:09 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 31 Aug 2016 20:43:09 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 20:43:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 20:43:10 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 20:43:23 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:43:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 31 Aug 2016 20:43:24 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 20:43:30 GMT
RUN lein
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e63053ca3fc53dd5b7c0c3490d2a058ff4c345069130d1f683974d8685fc25`  
		Last Modified: Wed, 31 Aug 2016 20:43:38 GMT  
		Size: 14.0 MB (14010453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c34f6b095b8b00f1d66a5cb26225635b6f2227175085d43728b4b4654cf44`  
		Last Modified: Wed, 31 Aug 2016 20:43:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0`

```console
$ docker pull clojure@sha256:34204d7bb60746837c1796c41c76b262098e3950f6631ac4c6be203a668a970f
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257352475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7546256d9b135100a3b405c514c5a20c15cb1683e4dc3dae856b4903d397b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:43:09 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 31 Aug 2016 20:43:09 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 20:43:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 20:43:10 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 20:43:23 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:43:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 31 Aug 2016 20:43:24 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 20:43:30 GMT
RUN lein
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e63053ca3fc53dd5b7c0c3490d2a058ff4c345069130d1f683974d8685fc25`  
		Last Modified: Wed, 31 Aug 2016 20:43:38 GMT  
		Size: 14.0 MB (14010453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c34f6b095b8b00f1d66a5cb26225635b6f2227175085d43728b4b4654cf44`  
		Last Modified: Wed, 31 Aug 2016 20:43:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:onbuild`

```console
$ docker pull clojure@sha256:5aaa9e23d1ae920505800c45bd1d5fe96863ae3426e879e9680ec537f7ff2235
```

-	Platforms:
	-	linux; amd64

### `clojure:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257352602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb7f8a982b5a97a350d72793a06c0fae5e3db9d6e0c5d397583290a448000ff`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:43:09 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 31 Aug 2016 20:43:09 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 20:43:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 20:43:10 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 20:43:23 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:43:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 31 Aug 2016 20:43:24 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 20:43:30 GMT
RUN lein
# Wed, 31 Aug 2016 20:43:53 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 31 Aug 2016 20:43:53 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 20:43:53 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 31 Aug 2016 20:43:53 GMT
ONBUILD RUN lein deps
# Wed, 31 Aug 2016 20:43:54 GMT
ONBUILD COPY . /usr/src/app
# Wed, 31 Aug 2016 20:43:54 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e63053ca3fc53dd5b7c0c3490d2a058ff4c345069130d1f683974d8685fc25`  
		Last Modified: Wed, 31 Aug 2016 20:43:38 GMT  
		Size: 14.0 MB (14010453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c34f6b095b8b00f1d66a5cb26225635b6f2227175085d43728b4b4654cf44`  
		Last Modified: Wed, 31 Aug 2016 20:43:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b755c49a5383c7934f18a0351a2defa47d32a92036da7a4d11069ded92c71cd`  
		Last Modified: Wed, 31 Aug 2016 20:43:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0-onbuild`

```console
$ docker pull clojure@sha256:5aaa9e23d1ae920505800c45bd1d5fe96863ae3426e879e9680ec537f7ff2235
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257352602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb7f8a982b5a97a350d72793a06c0fae5e3db9d6e0c5d397583290a448000ff`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:43:09 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 31 Aug 2016 20:43:09 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 20:43:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 20:43:10 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 20:43:23 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:43:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 31 Aug 2016 20:43:24 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 20:43:30 GMT
RUN lein
# Wed, 31 Aug 2016 20:43:53 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 31 Aug 2016 20:43:53 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 20:43:53 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 31 Aug 2016 20:43:53 GMT
ONBUILD RUN lein deps
# Wed, 31 Aug 2016 20:43:54 GMT
ONBUILD COPY . /usr/src/app
# Wed, 31 Aug 2016 20:43:54 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e63053ca3fc53dd5b7c0c3490d2a058ff4c345069130d1f683974d8685fc25`  
		Last Modified: Wed, 31 Aug 2016 20:43:38 GMT  
		Size: 14.0 MB (14010453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c34f6b095b8b00f1d66a5cb26225635b6f2227175085d43728b4b4654cf44`  
		Last Modified: Wed, 31 Aug 2016 20:43:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b755c49a5383c7934f18a0351a2defa47d32a92036da7a4d11069ded92c71cd`  
		Last Modified: Wed, 31 Aug 2016 20:43:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine`

```console
$ docker pull clojure@sha256:3420df78d3b0d172df546f1db7fae1403e9b06eab7e445107ec2ab7b3caab5f1
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90eea6e7dcfa933c4301a45ceaf4bf6e9bab36a8b7a9d3351eac657fe04dcda2`

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
# Wed, 31 Aug 2016 04:39:10 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 31 Aug 2016 04:39:10 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 04:39:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 04:39:11 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 04:39:14 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Wed, 31 Aug 2016 04:39:37 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 31 Aug 2016 04:39:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 31 Aug 2016 04:39:37 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 04:39:43 GMT
RUN lein
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
	-	`sha256:40afbbd73b632ca0a9188e3fd263d86f2318d065f50c10ce8bae4d23ea10fb15`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 5.2 MB (5181784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e37b37558dec6a695150d3845efd472d359e2f7a9c88476a93599d539a8df3`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 13.8 MB (13801369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eb62d087be3ca401e8ca398715b9b9e303a61c4d6c6f07a606db7a15adae12`  
		Last Modified: Wed, 31 Aug 2016 20:42:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0-alpine`

```console
$ docker pull clojure@sha256:3420df78d3b0d172df546f1db7fae1403e9b06eab7e445107ec2ab7b3caab5f1
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90eea6e7dcfa933c4301a45ceaf4bf6e9bab36a8b7a9d3351eac657fe04dcda2`

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
# Wed, 31 Aug 2016 04:39:10 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 31 Aug 2016 04:39:10 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 04:39:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 04:39:11 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 04:39:14 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Wed, 31 Aug 2016 04:39:37 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 31 Aug 2016 04:39:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 31 Aug 2016 04:39:37 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 04:39:43 GMT
RUN lein
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
	-	`sha256:40afbbd73b632ca0a9188e3fd263d86f2318d065f50c10ce8bae4d23ea10fb15`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 5.2 MB (5181784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e37b37558dec6a695150d3845efd472d359e2f7a9c88476a93599d539a8df3`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 13.8 MB (13801369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eb62d087be3ca401e8ca398715b9b9e303a61c4d6c6f07a606db7a15adae12`  
		Last Modified: Wed, 31 Aug 2016 20:42:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:24ab63cafea8f18539d7c52dcd1a2ad89f0db78e0924023b0c5cb83807bc3d9d
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a2d1f370f7f0bd2b25e963b46ca67259700799558ac7f369037f78f93d6a71`
-	Default Command: `["lein","run"]`

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
# Wed, 31 Aug 2016 04:39:10 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 31 Aug 2016 04:39:10 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 04:39:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 04:39:11 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 04:39:14 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Wed, 31 Aug 2016 04:39:37 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 31 Aug 2016 04:39:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 31 Aug 2016 04:39:37 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 04:39:43 GMT
RUN lein
# Wed, 31 Aug 2016 04:39:44 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 31 Aug 2016 04:39:44 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:39:45 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 31 Aug 2016 04:39:45 GMT
ONBUILD RUN lein deps
# Wed, 31 Aug 2016 04:39:45 GMT
ONBUILD COPY . /usr/src/app
# Wed, 31 Aug 2016 04:39:45 GMT
CMD ["lein" "run"]
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
	-	`sha256:40afbbd73b632ca0a9188e3fd263d86f2318d065f50c10ce8bae4d23ea10fb15`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 5.2 MB (5181784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e37b37558dec6a695150d3845efd472d359e2f7a9c88476a93599d539a8df3`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 13.8 MB (13801369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eb62d087be3ca401e8ca398715b9b9e303a61c4d6c6f07a606db7a15adae12`  
		Last Modified: Wed, 31 Aug 2016 20:42:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf4c23ab5ebd7255e0e0cecc6b6f8e1cca3132c18239ef1489c1c56c5c670f8`  
		Last Modified: Wed, 31 Aug 2016 20:44:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0-alpine-onbuild`

```console
$ docker pull clojure@sha256:24ab63cafea8f18539d7c52dcd1a2ad89f0db78e0924023b0c5cb83807bc3d9d
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0-alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a2d1f370f7f0bd2b25e963b46ca67259700799558ac7f369037f78f93d6a71`
-	Default Command: `["lein","run"]`

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
# Wed, 31 Aug 2016 04:39:10 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 31 Aug 2016 04:39:10 GMT
ENV LEIN_VERSION=2.7.0
# Wed, 31 Aug 2016 04:39:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 31 Aug 2016 04:39:11 GMT
WORKDIR /tmp
# Wed, 31 Aug 2016 04:39:14 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Wed, 31 Aug 2016 04:39:37 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 31 Aug 2016 04:39:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Wed, 31 Aug 2016 04:39:37 GMT
ENV LEIN_ROOT=1
# Wed, 31 Aug 2016 04:39:43 GMT
RUN lein
# Wed, 31 Aug 2016 04:39:44 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Wed, 31 Aug 2016 04:39:44 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:39:45 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 31 Aug 2016 04:39:45 GMT
ONBUILD RUN lein deps
# Wed, 31 Aug 2016 04:39:45 GMT
ONBUILD COPY . /usr/src/app
# Wed, 31 Aug 2016 04:39:45 GMT
CMD ["lein" "run"]
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
	-	`sha256:40afbbd73b632ca0a9188e3fd263d86f2318d065f50c10ce8bae4d23ea10fb15`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 5.2 MB (5181784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e37b37558dec6a695150d3845efd472d359e2f7a9c88476a93599d539a8df3`  
		Last Modified: Wed, 31 Aug 2016 20:42:54 GMT  
		Size: 13.8 MB (13801369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eb62d087be3ca401e8ca398715b9b9e303a61c4d6c6f07a606db7a15adae12`  
		Last Modified: Wed, 31 Aug 2016 20:42:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf4c23ab5ebd7255e0e0cecc6b6f8e1cca3132c18239ef1489c1c56c5c670f8`  
		Last Modified: Wed, 31 Aug 2016 20:44:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
