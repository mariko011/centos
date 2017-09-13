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
$ docker pull jruby@sha256:ee9f2f981a4d54d25d63e2902d38c2d3c6fd914342861c675f66028f5db896af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7` - linux; amd64

```console
$ docker pull jruby@sha256:0f12cd3e3f1917a84aa0b67ce46b19021000d1f11e217358cf2614c090c93fc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257996337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1edcc26209e101b767abe1f834c914033ea51de05dcda61f2d040250368a42`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:34 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bde1386574ebabaecf5377fc61ff16ebb13454694bbedf49a1f2475c835d14`  
		Last Modified: Wed, 13 Sep 2017 19:08:31 GMT  
		Size: 22.8 MB (22762220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66107f783d2abee9457148191a029b8d240c39b6a82aeb3d5799f75664449cbb`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2174a808a20454c5d0abba5ba7944458a800fc083d6d0b9e343db910d14150d`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 676.8 KB (676828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d58072d57a9981619dba66218c255c2897c82dad516e771b195e746308212`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27`

```console
$ docker pull jruby@sha256:ee9f2f981a4d54d25d63e2902d38c2d3c6fd914342861c675f66028f5db896af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27` - linux; amd64

```console
$ docker pull jruby@sha256:0f12cd3e3f1917a84aa0b67ce46b19021000d1f11e217358cf2614c090c93fc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257996337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1edcc26209e101b767abe1f834c914033ea51de05dcda61f2d040250368a42`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:34 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bde1386574ebabaecf5377fc61ff16ebb13454694bbedf49a1f2475c835d14`  
		Last Modified: Wed, 13 Sep 2017 19:08:31 GMT  
		Size: 22.8 MB (22762220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66107f783d2abee9457148191a029b8d240c39b6a82aeb3d5799f75664449cbb`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2174a808a20454c5d0abba5ba7944458a800fc083d6d0b9e343db910d14150d`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 676.8 KB (676828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d58072d57a9981619dba66218c255c2897c82dad516e771b195e746308212`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jdk`

```console
$ docker pull jruby@sha256:e197e7c45a0ef7bedc505ed8bf77afceb1fb39f7b45f4ea479c9b9e977a20524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:2ba7146dbaea42a3ba705413b0ae1955d239672bfe315a033f8b386d1287928a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325608280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7191b62659ffe699237aee4b38fa9790cdbb896b074a5fd893b5b7fd693a54b`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:53 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e110a5bd82b41e0832974450da62b9d8d1a4ac290bb4976cc3befc1e20a35da`  
		Last Modified: Wed, 13 Sep 2017 19:08:56 GMT  
		Size: 22.8 MB (22763361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39333674477d33628e11b1ec50f6687638aa5b1307445142c4d20b2cd2ec520e`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f664fde9ef72b95ec14e6534b8cb01ea2507f325b4b9f05b2a84ecda150958`  
		Last Modified: Wed, 13 Sep 2017 19:08:53 GMT  
		Size: 676.8 KB (676838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360d17b526b351ba3a84c21b0e211ca603f4c66cf1a06b8432d240c83c31f5e7`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-jre`

```console
$ docker pull jruby@sha256:ee9f2f981a4d54d25d63e2902d38c2d3c6fd914342861c675f66028f5db896af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-jre` - linux; amd64

```console
$ docker pull jruby@sha256:0f12cd3e3f1917a84aa0b67ce46b19021000d1f11e217358cf2614c090c93fc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257996337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1edcc26209e101b767abe1f834c914033ea51de05dcda61f2d040250368a42`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:34 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bde1386574ebabaecf5377fc61ff16ebb13454694bbedf49a1f2475c835d14`  
		Last Modified: Wed, 13 Sep 2017 19:08:31 GMT  
		Size: 22.8 MB (22762220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66107f783d2abee9457148191a029b8d240c39b6a82aeb3d5799f75664449cbb`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2174a808a20454c5d0abba5ba7944458a800fc083d6d0b9e343db910d14150d`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 676.8 KB (676828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d58072d57a9981619dba66218c255c2897c82dad516e771b195e746308212`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7.27-onbuild`

```console
$ docker pull jruby@sha256:fcbac6b1312ec4ce8d6f338d33d7004f151612c76aa1d165b7c59dbc76fa3d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7.27-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:e814e6f91de99893d24d2d0e768c3e11a5c251b8dcf8f9bb6c7ed6a525f489aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325608411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f7479dc0bd9e250e324e81c74e595397f28b01e92c68905430100826e07381`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:53 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:55 GMT
CMD ["irb"]
# Wed, 13 Sep 2017 19:05:57 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Sep 2017 19:05:57 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 19:05:57 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Sep 2017 19:05:57 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Sep 2017 19:05:57 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Sep 2017 19:05:58 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e110a5bd82b41e0832974450da62b9d8d1a4ac290bb4976cc3befc1e20a35da`  
		Last Modified: Wed, 13 Sep 2017 19:08:56 GMT  
		Size: 22.8 MB (22763361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39333674477d33628e11b1ec50f6687638aa5b1307445142c4d20b2cd2ec520e`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f664fde9ef72b95ec14e6534b8cb01ea2507f325b4b9f05b2a84ecda150958`  
		Last Modified: Wed, 13 Sep 2017 19:08:53 GMT  
		Size: 676.8 KB (676838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360d17b526b351ba3a84c21b0e211ca603f4c66cf1a06b8432d240c83c31f5e7`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0daf6fd26bf7ab5ed118cdb95de3df4e0201b7f49d49094ccd1cfbfc5cc9630`  
		Last Modified: Wed, 13 Sep 2017 19:09:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jdk`

```console
$ docker pull jruby@sha256:e197e7c45a0ef7bedc505ed8bf77afceb1fb39f7b45f4ea479c9b9e977a20524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:2ba7146dbaea42a3ba705413b0ae1955d239672bfe315a033f8b386d1287928a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325608280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7191b62659ffe699237aee4b38fa9790cdbb896b074a5fd893b5b7fd693a54b`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:53 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e110a5bd82b41e0832974450da62b9d8d1a4ac290bb4976cc3befc1e20a35da`  
		Last Modified: Wed, 13 Sep 2017 19:08:56 GMT  
		Size: 22.8 MB (22763361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39333674477d33628e11b1ec50f6687638aa5b1307445142c4d20b2cd2ec520e`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f664fde9ef72b95ec14e6534b8cb01ea2507f325b4b9f05b2a84ecda150958`  
		Last Modified: Wed, 13 Sep 2017 19:08:53 GMT  
		Size: 676.8 KB (676838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360d17b526b351ba3a84c21b0e211ca603f4c66cf1a06b8432d240c83c31f5e7`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-jre`

```console
$ docker pull jruby@sha256:ee9f2f981a4d54d25d63e2902d38c2d3c6fd914342861c675f66028f5db896af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7-jre` - linux; amd64

```console
$ docker pull jruby@sha256:0f12cd3e3f1917a84aa0b67ce46b19021000d1f11e217358cf2614c090c93fc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257996337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1edcc26209e101b767abe1f834c914033ea51de05dcda61f2d040250368a42`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:22 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:34 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:34 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bde1386574ebabaecf5377fc61ff16ebb13454694bbedf49a1f2475c835d14`  
		Last Modified: Wed, 13 Sep 2017 19:08:31 GMT  
		Size: 22.8 MB (22762220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66107f783d2abee9457148191a029b8d240c39b6a82aeb3d5799f75664449cbb`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2174a808a20454c5d0abba5ba7944458a800fc083d6d0b9e343db910d14150d`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 676.8 KB (676828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d58072d57a9981619dba66218c255c2897c82dad516e771b195e746308212`  
		Last Modified: Wed, 13 Sep 2017 19:08:28 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:1.7-onbuild`

```console
$ docker pull jruby@sha256:fcbac6b1312ec4ce8d6f338d33d7004f151612c76aa1d165b7c59dbc76fa3d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:1.7-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:e814e6f91de99893d24d2d0e768c3e11a5c251b8dcf8f9bb6c7ed6a525f489aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325608411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f7479dc0bd9e250e324e81c74e595397f28b01e92c68905430100826e07381`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_VERSION=1.7.27
# Wed, 13 Sep 2017 19:05:37 GMT
ENV JRUBY_SHA1=4a24fe103d3735b23cc58668dec711857125a6f3
# Wed, 13 Sep 2017 19:05:46 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA1 /tmp/jruby.tar.gz" | sha1sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:05:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:53 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:54 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:05:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:55 GMT
CMD ["irb"]
# Wed, 13 Sep 2017 19:05:57 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Sep 2017 19:05:57 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 19:05:57 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Sep 2017 19:05:57 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Sep 2017 19:05:57 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Sep 2017 19:05:58 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e110a5bd82b41e0832974450da62b9d8d1a4ac290bb4976cc3befc1e20a35da`  
		Last Modified: Wed, 13 Sep 2017 19:08:56 GMT  
		Size: 22.8 MB (22763361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39333674477d33628e11b1ec50f6687638aa5b1307445142c4d20b2cd2ec520e`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f664fde9ef72b95ec14e6534b8cb01ea2507f325b4b9f05b2a84ecda150958`  
		Last Modified: Wed, 13 Sep 2017 19:08:53 GMT  
		Size: 676.8 KB (676838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360d17b526b351ba3a84c21b0e211ca603f4c66cf1a06b8432d240c83c31f5e7`  
		Last Modified: Wed, 13 Sep 2017 19:08:52 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0daf6fd26bf7ab5ed118cdb95de3df4e0201b7f49d49094ccd1cfbfc5cc9630`  
		Last Modified: Wed, 13 Sep 2017 19:09:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-alpine`

```console
$ docker pull jruby@sha256:61272404e80e0043f6416868d55bb52bffcc2c42cb708fea31cfbb90888c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:d84530b932023789218c8e7768aea3803afda9a4d8e3d278fcc036e88f97faaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79615127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa23a5ab27c568f6895e27b51f3248baab50d1cbb2b7ba70f3e088888bb9645`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:03:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:03:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:03 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:04:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f34e5495a40531f3a7fe4905c0b85f32273e699ee764ba0091884c014b70def`  
		Last Modified: Wed, 13 Sep 2017 19:06:52 GMT  
		Size: 1.5 MB (1512471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1497da9b4ca25e0ef2bcf1ac7ec857159c152a8fcc88ad3ec29291d55ff06cf`  
		Last Modified: Wed, 13 Sep 2017 19:06:53 GMT  
		Size: 21.2 MB (21151940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b97539ab740852b4beabc6961ef4544c21b6a27ceda6e42c5d7717a70c06b75`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340522bd7053eb7fbcf23807a9200dc766458efb3161c6b7005d30e5ee30113`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 676.9 KB (676938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4b559a5c78700c368ba087485a9ace62168988f616dafa2a8cb1330b34117`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jdk`

```console
$ docker pull jruby@sha256:941530772578ab1dd3cf727a51df1bf46dd6f4c612b28e3637be23de092879c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:7f594673f9502b84bbddf7d608ec9c98e21a32debc41a52949e0007f62a1e457
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323913837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16c8e330f89bcb9aeb4c8448ec76b2835c4732ffe12bc65a7c54836ed556323`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:04:26 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:04:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4036ae1e64456a122caac12fd890c5ae5544a80c9a729d4fa09fc2de685ec`  
		Last Modified: Wed, 13 Sep 2017 19:07:28 GMT  
		Size: 21.1 MB (21068840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86476a982742107289cafb5506dd4e362e87bafec8bf4bd1feb1950825e62971`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e1d1545cee3107dd86deeee0a594601edafa0cf17c888b252fa1e77e76096`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 676.9 KB (676920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064ac88f643ed7d351ae861242971149fb10e5989832bcd95dcf87643c9118ae`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jdk-alpine`

```console
$ docker pull jruby@sha256:8b94f3404686aa1ef1c2bab12fa2eb984239fd0b6167d5d8bef7755d0c7872ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:4f76032149947c5d9b7a43585aaa0987b3b90130869e5a4045d3721ad2299c20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95387374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317b8fa103dc2a91af420f79c5f927e5b01570070ca9525eaddc0fe4efe09f0d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:04:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:04:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:05:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:05:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:05:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:05:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829a80e94386bf8571f042b7fcf0a616d8d3c384fae99d9be7af0e121b274712`  
		Last Modified: Wed, 13 Sep 2017 19:07:46 GMT  
		Size: 1.5 MB (1513895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c881e6e61a7aee97c87130edd92657c68ffa9219afd76936ee86fe02004b8ab5`  
		Last Modified: Wed, 13 Sep 2017 19:07:47 GMT  
		Size: 21.2 MB (21154222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3beaf39b0020581642ff09055304268771111f0f6c590bdf6c714d422d6ae57`  
		Last Modified: Wed, 13 Sep 2017 19:07:44 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bebaa36e5b0ca117066d0d722a8dff30a51438f2d5ea68d90c28813af1dcdd`  
		Last Modified: Wed, 13 Sep 2017 19:07:45 GMT  
		Size: 676.9 KB (676911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fe43920d4aa6b384cbe33e0474c74bb72d3baeafad86f8fc4af03006e109ea`  
		Last Modified: Wed, 13 Sep 2017 19:07:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jre`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jre` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-jre-alpine`

```console
$ docker pull jruby@sha256:61272404e80e0043f6416868d55bb52bffcc2c42cb708fea31cfbb90888c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:d84530b932023789218c8e7768aea3803afda9a4d8e3d278fcc036e88f97faaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79615127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa23a5ab27c568f6895e27b51f3248baab50d1cbb2b7ba70f3e088888bb9645`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:03:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:03:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:03 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:04:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f34e5495a40531f3a7fe4905c0b85f32273e699ee764ba0091884c014b70def`  
		Last Modified: Wed, 13 Sep 2017 19:06:52 GMT  
		Size: 1.5 MB (1512471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1497da9b4ca25e0ef2bcf1ac7ec857159c152a8fcc88ad3ec29291d55ff06cf`  
		Last Modified: Wed, 13 Sep 2017 19:06:53 GMT  
		Size: 21.2 MB (21151940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b97539ab740852b4beabc6961ef4544c21b6a27ceda6e42c5d7717a70c06b75`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340522bd7053eb7fbcf23807a9200dc766458efb3161c6b7005d30e5ee30113`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 676.9 KB (676938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4b559a5c78700c368ba087485a9ace62168988f616dafa2a8cb1330b34117`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13.0-onbuild`

```console
$ docker pull jruby@sha256:9eeb1fa1ba1a178adcba957059961843e1e2e18c407447720b7185754d3a3f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13.0-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:6022bb62ba945842e8464515187fe852a8af8b9888256904d742c643e1cb749e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323913968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8d043eb3f12b4ed057d8af5184cba5d31147a2712e17385e6df5011d8898a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:04:26 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:04:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:49 GMT
CMD ["irb"]
# Wed, 13 Sep 2017 19:05:19 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4036ae1e64456a122caac12fd890c5ae5544a80c9a729d4fa09fc2de685ec`  
		Last Modified: Wed, 13 Sep 2017 19:07:28 GMT  
		Size: 21.1 MB (21068840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86476a982742107289cafb5506dd4e362e87bafec8bf4bd1feb1950825e62971`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e1d1545cee3107dd86deeee0a594601edafa0cf17c888b252fa1e77e76096`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 676.9 KB (676920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064ac88f643ed7d351ae861242971149fb10e5989832bcd95dcf87643c9118ae`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566c34c1c0200e6883460ed12aa568fbcde690be7a4580048e845d52b1388c6`  
		Last Modified: Wed, 13 Sep 2017 19:08:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-alpine`

```console
$ docker pull jruby@sha256:61272404e80e0043f6416868d55bb52bffcc2c42cb708fea31cfbb90888c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:d84530b932023789218c8e7768aea3803afda9a4d8e3d278fcc036e88f97faaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79615127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa23a5ab27c568f6895e27b51f3248baab50d1cbb2b7ba70f3e088888bb9645`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:03:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:03:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:03 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:04:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f34e5495a40531f3a7fe4905c0b85f32273e699ee764ba0091884c014b70def`  
		Last Modified: Wed, 13 Sep 2017 19:06:52 GMT  
		Size: 1.5 MB (1512471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1497da9b4ca25e0ef2bcf1ac7ec857159c152a8fcc88ad3ec29291d55ff06cf`  
		Last Modified: Wed, 13 Sep 2017 19:06:53 GMT  
		Size: 21.2 MB (21151940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b97539ab740852b4beabc6961ef4544c21b6a27ceda6e42c5d7717a70c06b75`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340522bd7053eb7fbcf23807a9200dc766458efb3161c6b7005d30e5ee30113`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 676.9 KB (676938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4b559a5c78700c368ba087485a9ace62168988f616dafa2a8cb1330b34117`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jdk`

```console
$ docker pull jruby@sha256:941530772578ab1dd3cf727a51df1bf46dd6f4c612b28e3637be23de092879c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:7f594673f9502b84bbddf7d608ec9c98e21a32debc41a52949e0007f62a1e457
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323913837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16c8e330f89bcb9aeb4c8448ec76b2835c4732ffe12bc65a7c54836ed556323`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:04:26 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:04:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4036ae1e64456a122caac12fd890c5ae5544a80c9a729d4fa09fc2de685ec`  
		Last Modified: Wed, 13 Sep 2017 19:07:28 GMT  
		Size: 21.1 MB (21068840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86476a982742107289cafb5506dd4e362e87bafec8bf4bd1feb1950825e62971`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e1d1545cee3107dd86deeee0a594601edafa0cf17c888b252fa1e77e76096`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 676.9 KB (676920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064ac88f643ed7d351ae861242971149fb10e5989832bcd95dcf87643c9118ae`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jdk-alpine`

```console
$ docker pull jruby@sha256:8b94f3404686aa1ef1c2bab12fa2eb984239fd0b6167d5d8bef7755d0c7872ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:4f76032149947c5d9b7a43585aaa0987b3b90130869e5a4045d3721ad2299c20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95387374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317b8fa103dc2a91af420f79c5f927e5b01570070ca9525eaddc0fe4efe09f0d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:04:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:04:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:05:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:05:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:05:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:05:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829a80e94386bf8571f042b7fcf0a616d8d3c384fae99d9be7af0e121b274712`  
		Last Modified: Wed, 13 Sep 2017 19:07:46 GMT  
		Size: 1.5 MB (1513895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c881e6e61a7aee97c87130edd92657c68ffa9219afd76936ee86fe02004b8ab5`  
		Last Modified: Wed, 13 Sep 2017 19:07:47 GMT  
		Size: 21.2 MB (21154222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3beaf39b0020581642ff09055304268771111f0f6c590bdf6c714d422d6ae57`  
		Last Modified: Wed, 13 Sep 2017 19:07:44 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bebaa36e5b0ca117066d0d722a8dff30a51438f2d5ea68d90c28813af1dcdd`  
		Last Modified: Wed, 13 Sep 2017 19:07:45 GMT  
		Size: 676.9 KB (676911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fe43920d4aa6b384cbe33e0474c74bb72d3baeafad86f8fc4af03006e109ea`  
		Last Modified: Wed, 13 Sep 2017 19:07:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jre`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jre` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-jre-alpine`

```console
$ docker pull jruby@sha256:61272404e80e0043f6416868d55bb52bffcc2c42cb708fea31cfbb90888c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:d84530b932023789218c8e7768aea3803afda9a4d8e3d278fcc036e88f97faaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79615127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa23a5ab27c568f6895e27b51f3248baab50d1cbb2b7ba70f3e088888bb9645`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:03:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:03:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:03 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:04:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f34e5495a40531f3a7fe4905c0b85f32273e699ee764ba0091884c014b70def`  
		Last Modified: Wed, 13 Sep 2017 19:06:52 GMT  
		Size: 1.5 MB (1512471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1497da9b4ca25e0ef2bcf1ac7ec857159c152a8fcc88ad3ec29291d55ff06cf`  
		Last Modified: Wed, 13 Sep 2017 19:06:53 GMT  
		Size: 21.2 MB (21151940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b97539ab740852b4beabc6961ef4544c21b6a27ceda6e42c5d7717a70c06b75`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340522bd7053eb7fbcf23807a9200dc766458efb3161c6b7005d30e5ee30113`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 676.9 KB (676938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4b559a5c78700c368ba087485a9ace62168988f616dafa2a8cb1330b34117`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.13-onbuild`

```console
$ docker pull jruby@sha256:9eeb1fa1ba1a178adcba957059961843e1e2e18c407447720b7185754d3a3f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.13-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:6022bb62ba945842e8464515187fe852a8af8b9888256904d742c643e1cb749e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323913968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8d043eb3f12b4ed057d8af5184cba5d31147a2712e17385e6df5011d8898a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:04:26 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:04:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:49 GMT
CMD ["irb"]
# Wed, 13 Sep 2017 19:05:19 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4036ae1e64456a122caac12fd890c5ae5544a80c9a729d4fa09fc2de685ec`  
		Last Modified: Wed, 13 Sep 2017 19:07:28 GMT  
		Size: 21.1 MB (21068840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86476a982742107289cafb5506dd4e362e87bafec8bf4bd1feb1950825e62971`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e1d1545cee3107dd86deeee0a594601edafa0cf17c888b252fa1e77e76096`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 676.9 KB (676920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064ac88f643ed7d351ae861242971149fb10e5989832bcd95dcf87643c9118ae`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566c34c1c0200e6883460ed12aa568fbcde690be7a4580048e845d52b1388c6`  
		Last Modified: Wed, 13 Sep 2017 19:08:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:61272404e80e0043f6416868d55bb52bffcc2c42cb708fea31cfbb90888c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:d84530b932023789218c8e7768aea3803afda9a4d8e3d278fcc036e88f97faaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79615127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa23a5ab27c568f6895e27b51f3248baab50d1cbb2b7ba70f3e088888bb9645`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:03:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:03:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:03 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:04:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f34e5495a40531f3a7fe4905c0b85f32273e699ee764ba0091884c014b70def`  
		Last Modified: Wed, 13 Sep 2017 19:06:52 GMT  
		Size: 1.5 MB (1512471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1497da9b4ca25e0ef2bcf1ac7ec857159c152a8fcc88ad3ec29291d55ff06cf`  
		Last Modified: Wed, 13 Sep 2017 19:06:53 GMT  
		Size: 21.2 MB (21151940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b97539ab740852b4beabc6961ef4544c21b6a27ceda6e42c5d7717a70c06b75`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340522bd7053eb7fbcf23807a9200dc766458efb3161c6b7005d30e5ee30113`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 676.9 KB (676938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4b559a5c78700c368ba087485a9ace62168988f616dafa2a8cb1330b34117`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:941530772578ab1dd3cf727a51df1bf46dd6f4c612b28e3637be23de092879c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:7f594673f9502b84bbddf7d608ec9c98e21a32debc41a52949e0007f62a1e457
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323913837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16c8e330f89bcb9aeb4c8448ec76b2835c4732ffe12bc65a7c54836ed556323`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:04:26 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:04:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4036ae1e64456a122caac12fd890c5ae5544a80c9a729d4fa09fc2de685ec`  
		Last Modified: Wed, 13 Sep 2017 19:07:28 GMT  
		Size: 21.1 MB (21068840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86476a982742107289cafb5506dd4e362e87bafec8bf4bd1feb1950825e62971`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e1d1545cee3107dd86deeee0a594601edafa0cf17c888b252fa1e77e76096`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 676.9 KB (676920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064ac88f643ed7d351ae861242971149fb10e5989832bcd95dcf87643c9118ae`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:8b94f3404686aa1ef1c2bab12fa2eb984239fd0b6167d5d8bef7755d0c7872ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:4f76032149947c5d9b7a43585aaa0987b3b90130869e5a4045d3721ad2299c20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95387374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317b8fa103dc2a91af420f79c5f927e5b01570070ca9525eaddc0fe4efe09f0d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:04:54 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:04:54 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:54 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:05:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:05:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:05:03 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:05:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:05:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:05:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:05:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:05:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829a80e94386bf8571f042b7fcf0a616d8d3c384fae99d9be7af0e121b274712`  
		Last Modified: Wed, 13 Sep 2017 19:07:46 GMT  
		Size: 1.5 MB (1513895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c881e6e61a7aee97c87130edd92657c68ffa9219afd76936ee86fe02004b8ab5`  
		Last Modified: Wed, 13 Sep 2017 19:07:47 GMT  
		Size: 21.2 MB (21154222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3beaf39b0020581642ff09055304268771111f0f6c590bdf6c714d422d6ae57`  
		Last Modified: Wed, 13 Sep 2017 19:07:44 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bebaa36e5b0ca117066d0d722a8dff30a51438f2d5ea68d90c28813af1dcdd`  
		Last Modified: Wed, 13 Sep 2017 19:07:45 GMT  
		Size: 676.9 KB (676911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fe43920d4aa6b384cbe33e0474c74bb72d3baeafad86f8fc4af03006e109ea`  
		Last Modified: Wed, 13 Sep 2017 19:07:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:61272404e80e0043f6416868d55bb52bffcc2c42cb708fea31cfbb90888c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:d84530b932023789218c8e7768aea3803afda9a4d8e3d278fcc036e88f97faaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79615127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa23a5ab27c568f6895e27b51f3248baab50d1cbb2b7ba70f3e088888bb9645`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:03:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:03:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:03 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:04:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f34e5495a40531f3a7fe4905c0b85f32273e699ee764ba0091884c014b70def`  
		Last Modified: Wed, 13 Sep 2017 19:06:52 GMT  
		Size: 1.5 MB (1512471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1497da9b4ca25e0ef2bcf1ac7ec857159c152a8fcc88ad3ec29291d55ff06cf`  
		Last Modified: Wed, 13 Sep 2017 19:06:53 GMT  
		Size: 21.2 MB (21151940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b97539ab740852b4beabc6961ef4544c21b6a27ceda6e42c5d7717a70c06b75`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340522bd7053eb7fbcf23807a9200dc766458efb3161c6b7005d30e5ee30113`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 676.9 KB (676938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4b559a5c78700c368ba087485a9ace62168988f616dafa2a8cb1330b34117`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:9eeb1fa1ba1a178adcba957059961843e1e2e18c407447720b7185754d3a3f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:6022bb62ba945842e8464515187fe852a8af8b9888256904d742c643e1cb749e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323913968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8d043eb3f12b4ed057d8af5184cba5d31147a2712e17385e6df5011d8898a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:04:26 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:04:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:49 GMT
CMD ["irb"]
# Wed, 13 Sep 2017 19:05:19 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4036ae1e64456a122caac12fd890c5ae5544a80c9a729d4fa09fc2de685ec`  
		Last Modified: Wed, 13 Sep 2017 19:07:28 GMT  
		Size: 21.1 MB (21068840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86476a982742107289cafb5506dd4e362e87bafec8bf4bd1feb1950825e62971`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e1d1545cee3107dd86deeee0a594601edafa0cf17c888b252fa1e77e76096`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 676.9 KB (676920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064ac88f643ed7d351ae861242971149fb10e5989832bcd95dcf87643c9118ae`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566c34c1c0200e6883460ed12aa568fbcde690be7a4580048e845d52b1388c6`  
		Last Modified: Wed, 13 Sep 2017 19:08:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:61272404e80e0043f6416868d55bb52bffcc2c42cb708fea31cfbb90888c709a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:d84530b932023789218c8e7768aea3803afda9a4d8e3d278fcc036e88f97faaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79615127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa23a5ab27c568f6895e27b51f3248baab50d1cbb2b7ba70f3e088888bb9645`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 19:03:55 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 13 Sep 2017 19:03:55 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:56 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:03 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 13 Sep 2017 19:04:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:16 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 19:04:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f34e5495a40531f3a7fe4905c0b85f32273e699ee764ba0091884c014b70def`  
		Last Modified: Wed, 13 Sep 2017 19:06:52 GMT  
		Size: 1.5 MB (1512471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1497da9b4ca25e0ef2bcf1ac7ec857159c152a8fcc88ad3ec29291d55ff06cf`  
		Last Modified: Wed, 13 Sep 2017 19:06:53 GMT  
		Size: 21.2 MB (21151940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b97539ab740852b4beabc6961ef4544c21b6a27ceda6e42c5d7717a70c06b75`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340522bd7053eb7fbcf23807a9200dc766458efb3161c6b7005d30e5ee30113`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 676.9 KB (676938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a4b559a5c78700c368ba087485a9ace62168988f616dafa2a8cb1330b34117`  
		Last Modified: Wed, 13 Sep 2017 19:06:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:9eeb1fa1ba1a178adcba957059961843e1e2e18c407447720b7185754d3a3f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:6022bb62ba945842e8464515187fe852a8af8b9888256904d742c643e1cb749e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323913968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8d043eb3f12b4ed057d8af5184cba5d31147a2712e17385e6df5011d8898a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:04:26 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:04:26 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:04:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:04:33 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:04:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:04:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:04:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:04:49 GMT
CMD ["irb"]
# Wed, 13 Sep 2017 19:05:19 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 19:05:19 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Sep 2017 19:05:20 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54aa95ae28825f415dfb79d5ced8c70794605f217a0e5b9fd2b166cff19aaea`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 6.7 MB (6655720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c4036ae1e64456a122caac12fd890c5ae5544a80c9a729d4fa09fc2de685ec`  
		Last Modified: Wed, 13 Sep 2017 19:07:28 GMT  
		Size: 21.1 MB (21068840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86476a982742107289cafb5506dd4e362e87bafec8bf4bd1feb1950825e62971`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e1d1545cee3107dd86deeee0a594601edafa0cf17c888b252fa1e77e76096`  
		Last Modified: Wed, 13 Sep 2017 19:07:26 GMT  
		Size: 676.9 KB (676920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064ac88f643ed7d351ae861242971149fb10e5989832bcd95dcf87643c9118ae`  
		Last Modified: Wed, 13 Sep 2017 19:07:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566c34c1c0200e6883460ed12aa568fbcde690be7a4580048e845d52b1388c6`  
		Last Modified: Wed, 13 Sep 2017 19:08:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:latest`

```console
$ docker pull jruby@sha256:dfedeb83fc1fce086bffd6c32009d86bd8507c255aeeba6a2f7f21c636b7e3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:latest` - linux; amd64

```console
$ docker pull jruby@sha256:ee004903cc1ed326c46a1762cf8eada119bed1b49308c040533be642051f68b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256301431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d02bc04530a4af09323ce7164df79901c775ac9f47e43772a3b5185fe30b0a8`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 19:03:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_VERSION=9.1.13.0
# Wed, 13 Sep 2017 19:03:27 GMT
ENV JRUBY_SHA256=9d156646623ac2f27174721035b52572a4b05690db7c1293295aa2c04aad3908
# Wed, 13 Sep 2017 19:03:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Sep 2017 19:03:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Sep 2017 19:03:47 GMT
RUN gem install bundler
# Wed, 13 Sep 2017 19:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Sep 2017 19:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 19:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Sep 2017 19:03:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4497ac6a928ecfe52688d61ff5bd7159827d30cb5a78c402716cea85875cd319`  
		Last Modified: Wed, 13 Sep 2017 19:06:11 GMT  
		Size: 6.6 MB (6621190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f917bc74be7cc65c5e31e1d54b5d08f1a4de7f742d634a36b3a1f92f3fc10e`  
		Last Modified: Wed, 13 Sep 2017 19:06:12 GMT  
		Size: 21.1 MB (21067228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222784fd450c138fa3feabfa1798f7765d2d57216da0472053ecc4c3733f4a1f`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ccec93c1c6351ca533ae0b271ed324e142069037c4c74ae18c0c9cf6aba5d`  
		Last Modified: Wed, 13 Sep 2017 19:06:10 GMT  
		Size: 676.9 KB (676915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89ac4f7bd009711aefbd6ac20015c974e7700797097d28100bff2052d8e96fb`  
		Last Modified: Wed, 13 Sep 2017 19:06:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
