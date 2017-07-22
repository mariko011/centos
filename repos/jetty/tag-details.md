<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9.4.6`](#jetty946)
-	[`jetty:9.4`](#jetty94)
-	[`jetty:9`](#jetty9)
-	[`jetty:9.4.6-jre8`](#jetty946-jre8)
-	[`jetty:9.4-jre8`](#jetty94-jre8)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:latest`](#jettylatest)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:9.4.6-alpine`](#jetty946-alpine)
-	[`jetty:9.4-alpine`](#jetty94-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9.4.6-jre8-alpine`](#jetty946-jre8-alpine)
-	[`jetty:9.4-jre8-alpine`](#jetty94-jre8-alpine)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:9.3.20`](#jetty9320)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9.3.20-jre8`](#jetty9320-jre8)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9.3.20-alpine`](#jetty9320-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9.3.20-jre8-alpine`](#jetty9320-jre8-alpine)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9.2.22`](#jetty9222)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.22-jre8`](#jetty9222-jre8)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.2.22-jre7`](#jetty9222-jre7)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:jre7`](#jettyjre7)

## `jetty:9.4.6`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.6-jre8`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.6-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:c59e357edda12bcf377ba37909cb6f801334e7c78ebc4130b3907742cbbb3a16
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124052931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee881fd60b78fb41bc9a76eb36480fb28c1bb7616bc2d0978b2fa7bad14fa9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Sat, 22 Jul 2017 01:32:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:38 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:38 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:40 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:40 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:41 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:41 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a79acf2f31b8c7d55ea80e9127eae4f49fb4c8fc0afecc483af6ef82ec05db`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 8.1 MB (8065327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5e94c949a3610117f7abac52051c70e147c8fc3de837d88542da2d2a69bb9f`  
		Last Modified: Sat, 22 Jul 2017 02:18:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f068dbfeb5cd98f60d6e8648abd3be3910dfe92cc253b06889929005f638d9a8`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65c3b1db1a20366f61ab841de675e96942c5f04339fe25ec41ada9bd3fb341`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4361e4082a5e26056b0fb693c2f84db9bf9a1f6abbf36f4aa7e9d576cd0b25`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.6-alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.6-jre8-alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.6-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:5c9a75f764de1c2c8ab6024b6331816b57d2387cc51bd40b2bb73ce5d4aac3da
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64375356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd8276b909e1534b3921b7b0e7616cdc22a4239bac48bbace06747211b592d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:38:41 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Thu, 29 Jun 2017 02:38:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:38:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:38:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:38:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:38:57 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:00 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:39:04 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:39:05 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:39:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:39:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da88044fd00e1cca8f91c49906d8697259cf12b73eac2b46167c33e1b559c9f9`  
		Last Modified: Fri, 30 Jun 2017 17:35:29 GMT  
		Size: 8.1 MB (8099113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13e65a56e7cac34c496ca8374f581d48f89b81d910e633fc4e3bab894eb432`  
		Last Modified: Fri, 30 Jun 2017 17:35:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13db9b98a8041c686366ec6cf07057a6c770e5dc33608536176fce7729f3816`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5935a3192bd2e068d3521abc87250bb87a345644376db566151d3f5a1306f30b`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a6385d66fa0534855947305b91e6becda5be24b8c65d614d2a5b05a46ced`  
		Last Modified: Fri, 30 Jun 2017 17:35:28 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.20`

```console
$ docker pull jetty@sha256:1cfe49fc47bec02b599caaba0b288a36cabe08b771d4841aefa3e8a7e116577c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.20` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (124001589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fbffc6accc10580598bd67c9393000dc6276460daa0649ae70702224e35573`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:53 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:54 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:56 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed53b3376dd15bc78609002107f4939002c771dc2206bff0cd89aff19214662`  
		Last Modified: Sat, 22 Jul 2017 02:19:51 GMT  
		Size: 8.0 MB (8014407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bb8a12f45defa88893b35ee46228e33514f642c05b7a08c2817755c02f5786`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71016e3f08f4b897e1d8a11d3cf4b32ebb32d81bc9914d6d670411fc543a81a5`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13273569f324d7a62a019113dbdeb2a98096da968764d16358403d44d13d138`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd2eaf3e2e707839dac4947451d32ec741f9621e31c389ddb499a9afee48b2e`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:1cfe49fc47bec02b599caaba0b288a36cabe08b771d4841aefa3e8a7e116577c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (124001589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fbffc6accc10580598bd67c9393000dc6276460daa0649ae70702224e35573`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:53 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:54 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:56 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed53b3376dd15bc78609002107f4939002c771dc2206bff0cd89aff19214662`  
		Last Modified: Sat, 22 Jul 2017 02:19:51 GMT  
		Size: 8.0 MB (8014407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bb8a12f45defa88893b35ee46228e33514f642c05b7a08c2817755c02f5786`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71016e3f08f4b897e1d8a11d3cf4b32ebb32d81bc9914d6d670411fc543a81a5`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13273569f324d7a62a019113dbdeb2a98096da968764d16358403d44d13d138`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd2eaf3e2e707839dac4947451d32ec741f9621e31c389ddb499a9afee48b2e`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.20-jre8`

```console
$ docker pull jetty@sha256:1cfe49fc47bec02b599caaba0b288a36cabe08b771d4841aefa3e8a7e116577c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.20-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (124001589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fbffc6accc10580598bd67c9393000dc6276460daa0649ae70702224e35573`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:53 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:54 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:56 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed53b3376dd15bc78609002107f4939002c771dc2206bff0cd89aff19214662`  
		Last Modified: Sat, 22 Jul 2017 02:19:51 GMT  
		Size: 8.0 MB (8014407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bb8a12f45defa88893b35ee46228e33514f642c05b7a08c2817755c02f5786`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71016e3f08f4b897e1d8a11d3cf4b32ebb32d81bc9914d6d670411fc543a81a5`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13273569f324d7a62a019113dbdeb2a98096da968764d16358403d44d13d138`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd2eaf3e2e707839dac4947451d32ec741f9621e31c389ddb499a9afee48b2e`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:1cfe49fc47bec02b599caaba0b288a36cabe08b771d4841aefa3e8a7e116577c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (124001589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fbffc6accc10580598bd67c9393000dc6276460daa0649ae70702224e35573`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Sat, 22 Jul 2017 01:32:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:32:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:32:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:32:53 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:32:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:32:54 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:32:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:32:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:32:56 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:32:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed53b3376dd15bc78609002107f4939002c771dc2206bff0cd89aff19214662`  
		Last Modified: Sat, 22 Jul 2017 02:19:51 GMT  
		Size: 8.0 MB (8014407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bb8a12f45defa88893b35ee46228e33514f642c05b7a08c2817755c02f5786`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71016e3f08f4b897e1d8a11d3cf4b32ebb32d81bc9914d6d670411fc543a81a5`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13273569f324d7a62a019113dbdeb2a98096da968764d16358403d44d13d138`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd2eaf3e2e707839dac4947451d32ec741f9621e31c389ddb499a9afee48b2e`  
		Last Modified: Sat, 22 Jul 2017 02:19:50 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.20-alpine`

```console
$ docker pull jetty@sha256:54e1dfd4e813e85183f2146036d520c8484ce3a4c2d24c7990b377740751d79c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.20-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64358873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269945a011fb5f083d66718e3e3454355e40a5e0bc666bc49d8007f72ee65d24`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:39:34 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Thu, 29 Jun 2017 02:39:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Thu, 29 Jun 2017 02:39:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:39:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:39:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:39:51 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:57 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:40:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:40:01 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:40:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:40:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f882226f3a9ae427efa61a2eff22f0052e738d01ff707ddb05543919dccb8ee0`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 8.0 MB (8047914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d813e4a3262191f9b848142d19683a0bf807a4f918bff4f31d10aaa95adfcff2`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3af95b793a736bfabc7b2213f6e39dec68c634a5791a716db0b193f2878b7`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 37.0 KB (36964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2465e19f6f654f926e693078895b2075d779aa155721e5ab39b3017a7d1c69f`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7dcbeb12cf40efbbf6454ae148e3f02d3ec474a55ddabc4945b30a56bad155`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:54e1dfd4e813e85183f2146036d520c8484ce3a4c2d24c7990b377740751d79c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64358873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269945a011fb5f083d66718e3e3454355e40a5e0bc666bc49d8007f72ee65d24`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:39:34 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Thu, 29 Jun 2017 02:39:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Thu, 29 Jun 2017 02:39:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:39:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:39:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:39:51 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:57 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:40:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:40:01 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:40:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:40:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f882226f3a9ae427efa61a2eff22f0052e738d01ff707ddb05543919dccb8ee0`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 8.0 MB (8047914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d813e4a3262191f9b848142d19683a0bf807a4f918bff4f31d10aaa95adfcff2`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3af95b793a736bfabc7b2213f6e39dec68c634a5791a716db0b193f2878b7`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 37.0 KB (36964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2465e19f6f654f926e693078895b2075d779aa155721e5ab39b3017a7d1c69f`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7dcbeb12cf40efbbf6454ae148e3f02d3ec474a55ddabc4945b30a56bad155`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.20-jre8-alpine`

```console
$ docker pull jetty@sha256:54e1dfd4e813e85183f2146036d520c8484ce3a4c2d24c7990b377740751d79c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.20-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64358873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269945a011fb5f083d66718e3e3454355e40a5e0bc666bc49d8007f72ee65d24`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:39:34 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Thu, 29 Jun 2017 02:39:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Thu, 29 Jun 2017 02:39:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:39:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:39:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:39:51 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:57 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:40:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:40:01 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:40:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:40:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f882226f3a9ae427efa61a2eff22f0052e738d01ff707ddb05543919dccb8ee0`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 8.0 MB (8047914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d813e4a3262191f9b848142d19683a0bf807a4f918bff4f31d10aaa95adfcff2`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3af95b793a736bfabc7b2213f6e39dec68c634a5791a716db0b193f2878b7`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 37.0 KB (36964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2465e19f6f654f926e693078895b2075d779aa155721e5ab39b3017a7d1c69f`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7dcbeb12cf40efbbf6454ae148e3f02d3ec474a55ddabc4945b30a56bad155`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:54e1dfd4e813e85183f2146036d520c8484ce3a4c2d24c7990b377740751d79c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64358873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269945a011fb5f083d66718e3e3454355e40a5e0bc666bc49d8007f72ee65d24`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 29 Jun 2017 02:38:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 29 Jun 2017 02:38:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 29 Jun 2017 02:38:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:38:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 29 Jun 2017 02:38:40 GMT
WORKDIR /usr/local/jetty
# Thu, 29 Jun 2017 02:39:34 GMT
ENV JETTY_VERSION=9.3.20.v20170531
# Thu, 29 Jun 2017 02:39:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.20.v20170531/jetty-distribution-9.3.20.v20170531.tar.gz
# Thu, 29 Jun 2017 02:39:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 29 Jun 2017 02:39:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 29 Jun 2017 02:39:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 29 Jun 2017 02:39:51 GMT
WORKDIR /var/lib/jetty
# Thu, 29 Jun 2017 02:39:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 29 Jun 2017 02:39:57 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 29 Jun 2017 02:39:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 29 Jun 2017 02:40:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 29 Jun 2017 02:40:01 GMT
EXPOSE 8080/tcp
# Thu, 29 Jun 2017 02:40:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:40:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0a12ec738779e9fcf20810feb76569e5eb0873792313c2343a80d9bbee65a7f3`  
		Last Modified: Fri, 30 Jun 2017 17:32:10 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d193411eb6d953c103dfcfefe985d494fb7974791007e98b35054d2eb58c9a7d`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f882226f3a9ae427efa61a2eff22f0052e738d01ff707ddb05543919dccb8ee0`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 8.0 MB (8047914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d813e4a3262191f9b848142d19683a0bf807a4f918bff4f31d10aaa95adfcff2`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3af95b793a736bfabc7b2213f6e39dec68c634a5791a716db0b193f2878b7`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 37.0 KB (36964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2465e19f6f654f926e693078895b2075d779aa155721e5ab39b3017a7d1c69f`  
		Last Modified: Fri, 30 Jun 2017 17:32:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7dcbeb12cf40efbbf6454ae148e3f02d3ec474a55ddabc4945b30a56bad155`  
		Last Modified: Fri, 30 Jun 2017 17:32:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22`

```console
$ docker pull jetty@sha256:cbfbe95ec1ce602f9b8a4db20150239fa63101df330e2bd3f676f0c00027a254
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.22` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (126013389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dca51042091c02225f245d0b64a248ee9fdadf093b21c725fbef6b9d5dd8492`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:32:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:06 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:06 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:07 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:07 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:08 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:09 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:10 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03576c1cdf1ace6367564bacfe913821fc66f2e65290c3007f4191f37d865ce6`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 10.0 MB (10026497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0219c771de20f7b7d99204d8108ad417d84edd6c337c2aac42b98b889d43ea`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2a7ceb8f17f19a1a25dd9383709b05cfd2bfad2082f5fec779a7978e134892`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56a0433043dc909fd4ed424a34b28b7179c25cb342b63b6e53f8706d078e773`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c86530252df84866b57e8c19db971da805904e96ff456f364defd86168c301b`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:cbfbe95ec1ce602f9b8a4db20150239fa63101df330e2bd3f676f0c00027a254
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (126013389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dca51042091c02225f245d0b64a248ee9fdadf093b21c725fbef6b9d5dd8492`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:32:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:06 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:06 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:07 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:07 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:08 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:09 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:10 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03576c1cdf1ace6367564bacfe913821fc66f2e65290c3007f4191f37d865ce6`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 10.0 MB (10026497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0219c771de20f7b7d99204d8108ad417d84edd6c337c2aac42b98b889d43ea`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2a7ceb8f17f19a1a25dd9383709b05cfd2bfad2082f5fec779a7978e134892`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56a0433043dc909fd4ed424a34b28b7179c25cb342b63b6e53f8706d078e773`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c86530252df84866b57e8c19db971da805904e96ff456f364defd86168c301b`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22-jre8`

```console
$ docker pull jetty@sha256:cbfbe95ec1ce602f9b8a4db20150239fa63101df330e2bd3f676f0c00027a254
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.22-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (126013389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dca51042091c02225f245d0b64a248ee9fdadf093b21c725fbef6b9d5dd8492`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:32:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:06 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:06 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:07 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:07 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:08 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:09 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:10 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03576c1cdf1ace6367564bacfe913821fc66f2e65290c3007f4191f37d865ce6`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 10.0 MB (10026497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0219c771de20f7b7d99204d8108ad417d84edd6c337c2aac42b98b889d43ea`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2a7ceb8f17f19a1a25dd9383709b05cfd2bfad2082f5fec779a7978e134892`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56a0433043dc909fd4ed424a34b28b7179c25cb342b63b6e53f8706d078e773`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c86530252df84866b57e8c19db971da805904e96ff456f364defd86168c301b`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:cbfbe95ec1ce602f9b8a4db20150239fa63101df330e2bd3f676f0c00027a254
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (126013389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dca51042091c02225f245d0b64a248ee9fdadf093b21c725fbef6b9d5dd8492`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:28 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:32:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:32:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:32:30 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:32:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:32:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:06 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:06 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:07 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:07 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:08 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:09 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:10 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c935b5cd10e8940a32e9b695102eb71cc425c2890e551cde8e750a1c2ce77dc`  
		Last Modified: Sat, 22 Jul 2017 02:18:21 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453596d7ddf664662bfbf7e484d5cfe50371fce6724ee54c81f0ddd3d0da544b`  
		Last Modified: Sat, 22 Jul 2017 02:18:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03576c1cdf1ace6367564bacfe913821fc66f2e65290c3007f4191f37d865ce6`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 10.0 MB (10026497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0219c771de20f7b7d99204d8108ad417d84edd6c337c2aac42b98b889d43ea`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2a7ceb8f17f19a1a25dd9383709b05cfd2bfad2082f5fec779a7978e134892`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56a0433043dc909fd4ed424a34b28b7179c25cb342b63b6e53f8706d078e773`  
		Last Modified: Sat, 22 Jul 2017 02:20:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c86530252df84866b57e8c19db971da805904e96ff456f364defd86168c301b`  
		Last Modified: Sat, 22 Jul 2017 02:20:31 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22-jre7`

```console
$ docker pull jetty@sha256:54452f4b42de0d0a235c599fb6f9975caf423a3d7c5aa54aeb1cf77d4339ee88
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.22-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161180239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2275c1900225b33d6611ba5d105905b3b9dba2a3244368fba88254c9eb3b07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:33:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:33:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:33:14 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:19 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:19 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:20 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:20 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:22 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:23 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:23 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59018989b5eefe4b33b9d3766ac75434208691f8a88e01c39741bd9e4357d81e`  
		Last Modified: Sat, 22 Jul 2017 02:20:59 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffae802d7da6cb738f7c5c14a324c10105374aa719c1a35dba6685e0abbc4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1536650dbb017c04cc918445bf3092dad4bd6ccb654838396455c60a56901ae7`  
		Last Modified: Sat, 22 Jul 2017 02:20:57 GMT  
		Size: 10.0 MB (10026484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c682f9a3158a851fd05bec243d83d297a626469725947dca202c3c071609e5`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0503621545b4c10b0e7c5d5e54227ed0a6b95e27e9e970ee2747067dc7320`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546db6f1ba6a0a972a7b623fef36a661523fe7e054b11fa6616fc8ae9da8774d`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa54c9b627c715f28ad95040724383e3002f4373a4cb28b8cee3564b929e4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:54452f4b42de0d0a235c599fb6f9975caf423a3d7c5aa54aeb1cf77d4339ee88
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161180239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2275c1900225b33d6611ba5d105905b3b9dba2a3244368fba88254c9eb3b07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:33:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:33:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:33:14 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:19 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:19 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:20 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:20 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:22 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:23 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:23 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59018989b5eefe4b33b9d3766ac75434208691f8a88e01c39741bd9e4357d81e`  
		Last Modified: Sat, 22 Jul 2017 02:20:59 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffae802d7da6cb738f7c5c14a324c10105374aa719c1a35dba6685e0abbc4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1536650dbb017c04cc918445bf3092dad4bd6ccb654838396455c60a56901ae7`  
		Last Modified: Sat, 22 Jul 2017 02:20:57 GMT  
		Size: 10.0 MB (10026484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c682f9a3158a851fd05bec243d83d297a626469725947dca202c3c071609e5`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0503621545b4c10b0e7c5d5e54227ed0a6b95e27e9e970ee2747067dc7320`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546db6f1ba6a0a972a7b623fef36a661523fe7e054b11fa6616fc8ae9da8774d`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa54c9b627c715f28ad95040724383e3002f4373a4cb28b8cee3564b929e4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:54452f4b42de0d0a235c599fb6f9975caf423a3d7c5aa54aeb1cf77d4339ee88
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161180239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2275c1900225b33d6611ba5d105905b3b9dba2a3244368fba88254c9eb3b07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:33:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:33:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:33:14 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:19 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:19 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:20 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:20 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:22 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:23 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:23 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59018989b5eefe4b33b9d3766ac75434208691f8a88e01c39741bd9e4357d81e`  
		Last Modified: Sat, 22 Jul 2017 02:20:59 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffae802d7da6cb738f7c5c14a324c10105374aa719c1a35dba6685e0abbc4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1536650dbb017c04cc918445bf3092dad4bd6ccb654838396455c60a56901ae7`  
		Last Modified: Sat, 22 Jul 2017 02:20:57 GMT  
		Size: 10.0 MB (10026484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c682f9a3158a851fd05bec243d83d297a626469725947dca202c3c071609e5`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0503621545b4c10b0e7c5d5e54227ed0a6b95e27e9e970ee2747067dc7320`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546db6f1ba6a0a972a7b623fef36a661523fe7e054b11fa6616fc8ae9da8774d`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa54c9b627c715f28ad95040724383e3002f4373a4cb28b8cee3564b929e4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:54452f4b42de0d0a235c599fb6f9975caf423a3d7c5aa54aeb1cf77d4339ee88
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161180239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2275c1900225b33d6611ba5d105905b3b9dba2a3244368fba88254c9eb3b07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:33:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Jul 2017 01:33:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 01:33:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Jul 2017 01:33:14 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 22 Jul 2017 01:33:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 22 Jul 2017 01:33:19 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:19 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Jul 2017 01:33:20 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Jul 2017 01:33:20 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 22 Jul 2017 01:33:22 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Jul 2017 01:33:22 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 22 Jul 2017 01:33:23 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Jul 2017 01:33:23 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:33:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Jul 2017 01:33:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59018989b5eefe4b33b9d3766ac75434208691f8a88e01c39741bd9e4357d81e`  
		Last Modified: Sat, 22 Jul 2017 02:20:59 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffae802d7da6cb738f7c5c14a324c10105374aa719c1a35dba6685e0abbc4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1536650dbb017c04cc918445bf3092dad4bd6ccb654838396455c60a56901ae7`  
		Last Modified: Sat, 22 Jul 2017 02:20:57 GMT  
		Size: 10.0 MB (10026484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c682f9a3158a851fd05bec243d83d297a626469725947dca202c3c071609e5`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d0503621545b4c10b0e7c5d5e54227ed0a6b95e27e9e970ee2747067dc7320`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546db6f1ba6a0a972a7b623fef36a661523fe7e054b11fa6616fc8ae9da8774d`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa54c9b627c715f28ad95040724383e3002f4373a4cb28b8cee3564b929e4`  
		Last Modified: Sat, 22 Jul 2017 02:20:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
