## `clojure:lein-2.7.1`

```console
$ docker pull clojure@sha256:bb1bb8b3e3962af919f92a1d8e3920a71fe845f7e7afdec8af3b2052fcb0efe1
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257189943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073eca6605b0ccad3106bbbe7671f014777c2123467aafe40490a48a78129607`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:15:02 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 17 Jan 2017 21:15:02 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 17 Jan 2017 21:15:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 17 Jan 2017 21:15:03 GMT
WORKDIR /tmp
# Mon, 23 Jan 2017 18:33:47 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Mon, 23 Jan 2017 18:33:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 23 Jan 2017 18:33:59 GMT
ENV LEIN_ROOT=1
# Mon, 23 Jan 2017 18:34:07 GMT
RUN lein
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b446093840824981f7bb0ad94cdfc98a053dbee97a3eec50af392a7d0fdf5769`  
		Last Modified: Mon, 23 Jan 2017 18:39:21 GMT  
		Size: 13.8 MB (13805820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e26ed35d2ee95512633798d350706ad3da90a6251d6ccd3d78fc31f61b57b`  
		Last Modified: Mon, 23 Jan 2017 18:39:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
