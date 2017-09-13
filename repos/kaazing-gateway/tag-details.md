<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kaazing-gateway`

-	[`kaazing-gateway:latest`](#kaazing-gatewaylatest)
-	[`kaazing-gateway:5.6.0`](#kaazing-gateway560)

## `kaazing-gateway:latest`

```console
$ docker pull kaazing-gateway@sha256:96cad765db25a31822000bef4a3ebebc94ccfed7f126068c61f66b81815bee5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kaazing-gateway:latest` - linux; amd64

```console
$ docker pull kaazing-gateway@sha256:523b9d5c30b1e0892ba11e44197d49b7547ccd28a83b284cec3a311553f33b55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245068420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b4fdba32a9f9fac401b02451e9138ec3dff36b6c668aed82040e731fdea963`
-	Default Command: `["gateway.start"]`

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
# Wed, 13 Sep 2017 16:21:17 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Wed, 13 Sep 2017 16:21:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Wed, 13 Sep 2017 16:21:22 GMT
ENV KAAZING_GATEWAY_VERSION=5.6.0
# Wed, 13 Sep 2017 16:21:22 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.6.0/gateway.distribution-5.6.0.tar.gz
# Wed, 13 Sep 2017 16:21:22 GMT
WORKDIR /kaazing-gateway
# Wed, 13 Sep 2017 16:21:35 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Wed, 13 Sep 2017 16:21:35 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Wed, 13 Sep 2017 16:21:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Wed, 13 Sep 2017 16:21:36 GMT
EXPOSE 8000/tcp
# Wed, 13 Sep 2017 16:21:36 GMT
CMD ["gateway.start"]
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
	-	`sha256:8089dfd1b26750e395a89b8c56f2a86fdccd5c430a6676ffa20be637a8aa0763`  
		Last Modified: Wed, 13 Sep 2017 16:21:45 GMT  
		Size: 5.7 KB (5744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864251dda1958e0a9cdc86cf18ead53786e7c27fb972d6690d2d24556086900d`  
		Last Modified: Wed, 13 Sep 2017 16:21:45 GMT  
		Size: 104.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e42a1f087a79aa0ca6690d12acdc84a0f0d864eed8b8f000af1dca3129bd47`  
		Last Modified: Wed, 13 Sep 2017 16:21:47 GMT  
		Size: 17.1 MB (17126836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kaazing-gateway:5.6.0`

```console
$ docker pull kaazing-gateway@sha256:96cad765db25a31822000bef4a3ebebc94ccfed7f126068c61f66b81815bee5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kaazing-gateway:5.6.0` - linux; amd64

```console
$ docker pull kaazing-gateway@sha256:523b9d5c30b1e0892ba11e44197d49b7547ccd28a83b284cec3a311553f33b55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245068420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b4fdba32a9f9fac401b02451e9138ec3dff36b6c668aed82040e731fdea963`
-	Default Command: `["gateway.start"]`

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
# Wed, 13 Sep 2017 16:21:17 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Wed, 13 Sep 2017 16:21:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Wed, 13 Sep 2017 16:21:22 GMT
ENV KAAZING_GATEWAY_VERSION=5.6.0
# Wed, 13 Sep 2017 16:21:22 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.6.0/gateway.distribution-5.6.0.tar.gz
# Wed, 13 Sep 2017 16:21:22 GMT
WORKDIR /kaazing-gateway
# Wed, 13 Sep 2017 16:21:35 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Wed, 13 Sep 2017 16:21:35 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Wed, 13 Sep 2017 16:21:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Wed, 13 Sep 2017 16:21:36 GMT
EXPOSE 8000/tcp
# Wed, 13 Sep 2017 16:21:36 GMT
CMD ["gateway.start"]
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
	-	`sha256:8089dfd1b26750e395a89b8c56f2a86fdccd5c430a6676ffa20be637a8aa0763`  
		Last Modified: Wed, 13 Sep 2017 16:21:45 GMT  
		Size: 5.7 KB (5744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864251dda1958e0a9cdc86cf18ead53786e7c27fb972d6690d2d24556086900d`  
		Last Modified: Wed, 13 Sep 2017 16:21:45 GMT  
		Size: 104.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e42a1f087a79aa0ca6690d12acdc84a0f0d864eed8b8f000af1dca3129bd47`  
		Last Modified: Wed, 13 Sep 2017 16:21:47 GMT  
		Size: 17.1 MB (17126836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
