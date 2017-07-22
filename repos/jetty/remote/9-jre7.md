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
