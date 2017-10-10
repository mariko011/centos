## `solr:7-slim`

```console
$ docker pull solr@sha256:9a59b0557920a3a452786e0251d73ccc452623c19c3066b4ab6480fb213216ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `solr:7-slim` - linux; amd64

```console
$ docker pull solr@sha256:d4f3246ccc1e2d14f84cee40965efeb79653c70431c49a757035d2d15f9e967e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.8 MB (233753324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5ae00aee3fcf8aed8202bc4ab2adc3e786e440126899a73cdbbad24740ef76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:49:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:49:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:51:23 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:51:23 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:51:23 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:51:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:17:11 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 10 Oct 2017 08:17:11 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 10 Oct 2017 08:17:22 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:22 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:23 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 10 Oct 2017 08:17:27 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 10 Oct 2017 08:17:42 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 10 Oct 2017 08:17:42 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Tue, 10 Oct 2017 08:17:43 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 10 Oct 2017 08:17:43 GMT
EXPOSE 8983/tcp
# Tue, 10 Oct 2017 08:17:43 GMT
WORKDIR /opt/solr
# Tue, 10 Oct 2017 08:17:43 GMT
USER [solr]
# Tue, 10 Oct 2017 08:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:17:44 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244331a890e4aec0df6e10bce14d07eaa1bde905780d45fc41f12fd615d732c`  
		Last Modified: Tue, 10 Oct 2017 01:22:35 GMT  
		Size: 454.8 KB (454783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f111692a5874ce9859050b16b85e181a6ccadf449e850fa65a2a49a72b0d77c`  
		Last Modified: Tue, 10 Oct 2017 01:22:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838df694d9c3f97ab5439d7a43ad258fd52186bb900ccb303cabb1e04246953b`  
		Last Modified: Tue, 10 Oct 2017 01:22:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848e328f19d4db278b1bb346e4edb88617851b95474222f869d3dd6396ebcc36`  
		Last Modified: Tue, 10 Oct 2017 01:25:25 GMT  
		Size: 56.8 MB (56784054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31956d4eece0f795a6e338ba918cf8855495334e92ce37cbdd3e3708f836657d`  
		Last Modified: Tue, 10 Oct 2017 01:25:13 GMT  
		Size: 272.0 KB (272035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f26d404a16a55c278dd43bfe1c93f35798dada24eb3bc5013c5f58dc1548f44`  
		Last Modified: Tue, 10 Oct 2017 08:28:45 GMT  
		Size: 4.0 MB (3963440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3473dcd9303e30cc0ab08791af3c81ef8e6a8717c2a2a351f0ea3830b832da`  
		Last Modified: Tue, 10 Oct 2017 08:28:42 GMT  
		Size: 4.3 KB (4328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c2fa14fdb5690b42fa205c35e51d6f947eb443486b3240b4c8284c4a14ca9e`  
		Last Modified: Tue, 10 Oct 2017 08:28:42 GMT  
		Size: 10.8 KB (10752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b756c6b09b8b86d104786fbb10e501bdb1feab5fbdfd053000fce781d215b1`  
		Last Modified: Tue, 10 Oct 2017 08:29:07 GMT  
		Size: 149.8 MB (149762969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9de38217a422b20d3dd3ea4ecf0beb39041d8e1828ad0cbc3d3d2234ce8596e`  
		Last Modified: Tue, 10 Oct 2017 08:28:42 GMT  
		Size: 4.1 KB (4114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e31573e72d6f1d3bc6f368f47fc06bc38d16170fd10dee270146a79ea7482a2`  
		Last Modified: Tue, 10 Oct 2017 08:28:42 GMT  
		Size: 4.1 KB (4122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:82f3cbfb30d3fc74702d1564e22f8f319af6c3615f5ef3920370b17ca1abb170
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.6 MB (222636492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a711190457d592f1f9c3d9928b95dd1ed63fab67f44158c4bf931df842b438d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:40 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:28:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:28:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:29:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:29:41 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:29:41 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:29:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:30:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:30:18 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:19:07 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 10 Oct 2017 01:19:08 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 10 Oct 2017 01:19:21 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:19:21 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:19:22 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 10 Oct 2017 01:19:26 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 10 Oct 2017 01:19:42 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 10 Oct 2017 01:19:43 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Tue, 10 Oct 2017 01:19:45 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 10 Oct 2017 01:19:46 GMT
EXPOSE 8983/tcp
# Tue, 10 Oct 2017 01:19:46 GMT
WORKDIR /opt/solr
# Tue, 10 Oct 2017 01:19:46 GMT
USER [solr]
# Tue, 10 Oct 2017 01:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:19:47 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5157015f0bd49750479bdb4a232fc207026b23874b5511f0c27a1036727e350`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 447.6 KB (447638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbbd094d7ff14181d978a21b9b418571f16a4ed689f7f43cc92bad967710265`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b426de7c4048293b8f750a1a91fb8046e1a1f7374ebcd47a78ec8177ed43b1ef`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72c3b3369e50df6d37a36acfa1998aae4295ccef6487ea874b9ae99cbe3a01`  
		Last Modified: Mon, 09 Oct 2017 22:35:18 GMT  
		Size: 47.2 MB (47195211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e88f272975da5aed9c72141a28bcc8cf9a8113cd4803f7cedf2f053a4751b6e`  
		Last Modified: Mon, 09 Oct 2017 22:35:04 GMT  
		Size: 272.2 KB (272179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b098f642be9b2d5da8e562f7ca44ae30087ea80351e903b8dcb3bc9db2f12036`  
		Last Modified: Tue, 10 Oct 2017 01:24:16 GMT  
		Size: 3.8 MB (3768530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60d2a6fcea634d971327d65b1442b48d939ebcf84bb8044423f63c09307b682`  
		Last Modified: Tue, 10 Oct 2017 01:24:14 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b2c3c346d61d4a107ae3c3d3257d3b51dc2e04d9239484c842632af5bc2299`  
		Last Modified: Tue, 10 Oct 2017 01:24:15 GMT  
		Size: 10.8 KB (10790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8593774d76a8ad9da624fb438d0ac5d9cc4c686531f7e8513d957f3b50eab4`  
		Last Modified: Tue, 10 Oct 2017 01:24:31 GMT  
		Size: 149.8 MB (149763000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98b3ba69feb61ed63d8a40d054ecd571838574c4dafc079dc8c82328577fa3`  
		Last Modified: Tue, 10 Oct 2017 01:24:14 GMT  
		Size: 4.1 KB (4141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d175479d062879d0ccf3ca65c10a12fdd189d1d99c92848ced5a5275be63422`  
		Last Modified: Tue, 10 Oct 2017 01:24:14 GMT  
		Size: 4.1 KB (4119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:320ba44825e8597da97f09aa33fedc69726fd8f8587a906d3dcb8f5bf66859d0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219400496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b17f6845795010199608ba8fd968d609e63039d1be5a54283bfd851c53572b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:05:30 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:05:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:07:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 23:07:43 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:07:43 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:07:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:08:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:08:18 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:28:50 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 10 Oct 2017 01:28:50 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 10 Oct 2017 01:28:58 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:28:59 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:29:00 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 10 Oct 2017 01:29:04 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 10 Oct 2017 01:29:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 10 Oct 2017 01:29:22 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Tue, 10 Oct 2017 01:29:23 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 10 Oct 2017 01:29:23 GMT
EXPOSE 8983/tcp
# Tue, 10 Oct 2017 01:29:24 GMT
WORKDIR /opt/solr
# Tue, 10 Oct 2017 01:29:24 GMT
USER [solr]
# Tue, 10 Oct 2017 01:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:29:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6226915187b9d61d290e04413a4ccdf021b5e0fc267ba8129cc0126cab1f1a93`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 430.6 KB (430580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98b9b3c90ff2ee65efc9f88b2383f6f1760df78bcd965fa0b22e001977eaf96`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377cafaae0c7321b0549f3949d78826675109fe908cb8521f39fe433ccfced7c`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a90e76db87bd029fe0cc5b41e212f46198e84bcdd6fd9d8100d543019ca3ec0`  
		Last Modified: Mon, 09 Oct 2017 23:25:48 GMT  
		Size: 46.2 MB (46152339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d672e3cc87b30249aae8cf95548eb623752b0a5c2e9e70c1a578c7895b2c909d`  
		Last Modified: Mon, 09 Oct 2017 23:25:36 GMT  
		Size: 272.2 KB (272181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3348db73a5179352f7c9415360de082aefe0b3a8015a2c4fd26d9ee95a665061`  
		Last Modified: Tue, 10 Oct 2017 01:37:52 GMT  
		Size: 3.5 MB (3481666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1edaff8284a5baabfd09b467e2c83f02154de165f86ab17167285ef509550e0`  
		Last Modified: Tue, 10 Oct 2017 01:37:50 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b3ff144303fbac7195c963da9114536727ca99f34e2eb76b78fe71821b697`  
		Last Modified: Tue, 10 Oct 2017 01:37:50 GMT  
		Size: 10.8 KB (10790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a2b92a00845cac4a4eea5bb0fc4cda1fd761dcc33c2e0e99693e69eaf1866c`  
		Last Modified: Tue, 10 Oct 2017 01:38:07 GMT  
		Size: 149.8 MB (149762914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7321b8c59809bdaae27652fbe3614a432551f719ee443f4a8d356534a297c956`  
		Last Modified: Tue, 10 Oct 2017 01:37:50 GMT  
		Size: 4.1 KB (4138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435a4a05ffef68e2c6c13c3fca8520958accf9a6eaf19d31b930277bceac2ec0`  
		Last Modified: Tue, 10 Oct 2017 01:37:50 GMT  
		Size: 4.1 KB (4120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:ea29ccb998467a2a7da4a78606633d89fffee8867f9816770dcfe4a553deaeb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223394123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e72d8cecd1f39822ee7e852c0851673fe6e071017ad6d13b3cdf3428b0d7d83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:28:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:28:29 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:28:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:39:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:39:34 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:39:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:39:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:41:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:41:29 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 07:24:46 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 10 Oct 2017 07:24:47 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 10 Oct 2017 07:25:37 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:25:37 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:25:41 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 10 Oct 2017 07:25:46 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 10 Oct 2017 07:26:08 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 10 Oct 2017 07:26:09 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Tue, 10 Oct 2017 07:26:12 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 10 Oct 2017 07:26:13 GMT
EXPOSE 8983/tcp
# Tue, 10 Oct 2017 07:26:14 GMT
WORKDIR /opt/solr
# Tue, 10 Oct 2017 07:26:15 GMT
USER [solr]
# Tue, 10 Oct 2017 07:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:26:16 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a727a90fab15cbfc5f05ababc5c02416ee800f138c5c7a5439eb1b2e323a3e`  
		Last Modified: Tue, 10 Oct 2017 02:15:52 GMT  
		Size: 440.8 KB (440793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5692da35bab82003fb0cc285002d5c2cf8a001ac800c9e3e14fd5026f41bc7ed`  
		Last Modified: Tue, 10 Oct 2017 02:15:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc3ffc0cbcf7695d1498de6039806f2bf5a6cb7d2862b331372f29c402c382f`  
		Last Modified: Tue, 10 Oct 2017 02:15:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff245b1259cfe92f0d783d3bc02be75e9715c528b6ec825c8194fd5d7b442bfa`  
		Last Modified: Tue, 10 Oct 2017 02:19:31 GMT  
		Size: 48.9 MB (48918766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f45fdbd1943ec83868f188a65e969de0b987769817ffd17a79e3578333dd7`  
		Last Modified: Tue, 10 Oct 2017 02:19:15 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176694de6145363d0f812fc18df141ca826c3f12a825cbf7523ce9863bc3bbc4`  
		Last Modified: Tue, 10 Oct 2017 07:39:05 GMT  
		Size: 3.6 MB (3638555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f154ad45330b0c2b73175c68b34b62967174205fac78e45e3ba60680ca5be9f`  
		Last Modified: Tue, 10 Oct 2017 07:39:01 GMT  
		Size: 4.4 KB (4367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f5ccddeca1e735a505f2b92e864a462941fa83c087e38858211db99076e952`  
		Last Modified: Tue, 10 Oct 2017 07:39:01 GMT  
		Size: 10.8 KB (10765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c3a0d38198f875123dd77feb14af084891f8ad18b7377b6825af235a9da08`  
		Last Modified: Tue, 10 Oct 2017 07:39:33 GMT  
		Size: 149.8 MB (149763031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f9559540698bcd2ef945f90bd1091971d5368403978a7349f842aec9dbbdf5`  
		Last Modified: Tue, 10 Oct 2017 07:39:01 GMT  
		Size: 4.1 KB (4118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a230717329fe825e2682e25bd83c5489f745a2c4517abbf0a9fca6210f7627`  
		Last Modified: Tue, 10 Oct 2017 07:39:01 GMT  
		Size: 4.1 KB (4121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; 386

```console
$ docker pull solr@sha256:bc86c8f5637af627eb46e014ea222f0519e8c08593f014c8aaa4fbd6e92c4480
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234223750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab3553df66872eddc3539ec89902bb35ec681c4ac39cdec3da14d612b6087ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:12:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:12:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:12:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:12:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:21:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:21:08 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:21:08 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:21:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:21:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:21:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:21:12 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 10 Oct 2017 04:21:12 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 10 Oct 2017 04:21:22 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:21:24 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:21:25 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 10 Oct 2017 04:21:29 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 10 Oct 2017 04:21:46 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 10 Oct 2017 04:21:46 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Tue, 10 Oct 2017 04:21:47 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 10 Oct 2017 04:21:50 GMT
EXPOSE 8983/tcp
# Tue, 10 Oct 2017 04:21:51 GMT
WORKDIR /opt/solr
# Tue, 10 Oct 2017 04:21:51 GMT
USER [solr]
# Tue, 10 Oct 2017 04:21:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 04:21:51 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7853b0a86faa843cda410f263a64ed5ba757a019c60eecb5902c191e41d5e1eb`  
		Last Modified: Tue, 10 Oct 2017 01:53:30 GMT  
		Size: 463.5 KB (463454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca21864f4b88fad8ba103bfc79ee0908fd694c165ef5a0b46919f203e822188a`  
		Last Modified: Tue, 10 Oct 2017 01:53:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18652bc80c9f29e1dcf29225e3e5e82bdbcde149fe8b95219bd5c0f808b5211c`  
		Last Modified: Tue, 10 Oct 2017 01:53:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f863fdacc42c30aa1758e4291ec2c6070e3d2ff5977525a0f29f85ba899752b6`  
		Last Modified: Tue, 10 Oct 2017 01:58:36 GMT  
		Size: 56.4 MB (56365439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb6b82845572907da84c5428536a02e320b486bd754b4fade329bc32797de06`  
		Last Modified: Tue, 10 Oct 2017 01:58:25 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178ba6bb8a56880a359dbbb5f7b9532c67122183abf680d36706a53fd5a39daf`  
		Last Modified: Tue, 10 Oct 2017 04:29:05 GMT  
		Size: 4.2 MB (4207311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8d94dcc4e35eb8e588dd8a1d3c42d363ffaae107534ca5dd943be2f2c50250`  
		Last Modified: Tue, 10 Oct 2017 04:29:04 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d839dbb5fef9b7095eeb5d2180adb8c27248319f2cbf98e87d1036d4f159c5`  
		Last Modified: Tue, 10 Oct 2017 04:29:04 GMT  
		Size: 10.8 KB (10771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f98d004431d700ce48f3077f96d5db4a3b96ee2db25c8a6267b1707d8dca64`  
		Last Modified: Tue, 10 Oct 2017 04:29:21 GMT  
		Size: 149.8 MB (149763084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367ed310da24413aeed9c2ebbe878014044463321b923db6afe0c30b9a31ca6`  
		Last Modified: Tue, 10 Oct 2017 04:29:05 GMT  
		Size: 4.1 KB (4114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb112c6db8c3345f9987ff900c446768baa9570024d5b201539baa6ae997e2b8`  
		Last Modified: Tue, 10 Oct 2017 04:29:04 GMT  
		Size: 4.1 KB (4121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:59a3b1bc9d671358a0c5210733db3033ef2b667e19d694bd82f615bd026f5ee6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226445673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2dceeb19d90ea1c5ca52f85ee0a75a79722a1243060cd2823e8d48b5f0ea270`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:38:37 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:38:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:38:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 04:07:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 04:07:14 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 04:07:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 04:07:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 04:14:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:14:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:56:05 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 10 Oct 2017 09:56:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 10 Oct 2017 09:58:17 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 09:58:20 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:58:28 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 10 Oct 2017 09:58:39 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 10 Oct 2017 09:59:58 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 10 Oct 2017 10:00:00 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Tue, 10 Oct 2017 10:00:12 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 10 Oct 2017 10:00:22 GMT
EXPOSE 8983/tcp
# Tue, 10 Oct 2017 10:00:25 GMT
WORKDIR /opt/solr
# Tue, 10 Oct 2017 10:00:27 GMT
USER [solr]
# Tue, 10 Oct 2017 10:00:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 10:00:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73df072fb69cadf906dd2f3522f93ee911666af83ba9ab5f97bfe839d32822c5`  
		Last Modified: Tue, 10 Oct 2017 05:12:41 GMT  
		Size: 449.8 KB (449799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d776a3d19316e343e85e29960b7bb8553c71cac10990b3fa919e5c4fa4338f5`  
		Last Modified: Tue, 10 Oct 2017 05:12:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a45b43bf439e946d85916a7ecd48ef55110070ba9ce3c85651345d07aaa08f2`  
		Last Modified: Tue, 10 Oct 2017 05:12:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cdd75c5a1fc3b6bf4e551c06892b89940aa8a79f43c136a2af6ae11e3b11a9`  
		Last Modified: Tue, 10 Oct 2017 05:16:20 GMT  
		Size: 49.3 MB (49251032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c06071b41496a4d7afd5c41f05fe6059077b12f66b337861be79688af37b8c`  
		Last Modified: Tue, 10 Oct 2017 05:15:49 GMT  
		Size: 272.0 KB (272045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6e946a4292ad56da8ef4ca183c080fa04fe7cbe484037b611b154d4cfe0989`  
		Last Modified: Tue, 10 Oct 2017 10:28:52 GMT  
		Size: 3.9 MB (3939871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dc7c91325e751c0a3c50572a052a159e7e4de3cea31a444d16ae4faa4ad312`  
		Last Modified: Tue, 10 Oct 2017 10:28:50 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652a347c507d879bed5db24d92f92eb84434c654b8adbeae8a842245fabc81f4`  
		Last Modified: Tue, 10 Oct 2017 10:28:49 GMT  
		Size: 10.8 KB (10788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cbe8e6e9899a9d5c7093daac6bca1e3d3d1aa7d55cde83c42fa950248bbb6d`  
		Last Modified: Tue, 10 Oct 2017 10:29:04 GMT  
		Size: 149.8 MB (149762929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552c94e10330783632abfa558c0f13209fed2ab21558f0f26359d868ba22474b`  
		Last Modified: Tue, 10 Oct 2017 10:28:48 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc6fa7f332ffdcba4738648e8a97bcd24a40f5c305d8834b1fa2fe4e71d00fa`  
		Last Modified: Tue, 10 Oct 2017 10:28:48 GMT  
		Size: 4.1 KB (4123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; s390x

```console
$ docker pull solr@sha256:a1bceb4a746b2fe235da4bb2a0f881dc4acef3e7af2c893158f7afaad7c2c4d7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.2 MB (225156568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152f3210cea5caeaede2bbfbb40ab9c9964c49a1ccf772c4db86d73ce01c7818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:52:36 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:52:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:52:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:54:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:54:22 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:54:22 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:54:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:54:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:54:49 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:24:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 10 Oct 2017 01:24:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 10 Oct 2017 01:24:59 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:25:00 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:25:00 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 10 Oct 2017 01:25:04 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 10 Oct 2017 01:25:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 10 Oct 2017 01:25:17 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Tue, 10 Oct 2017 01:25:17 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 10 Oct 2017 01:25:18 GMT
EXPOSE 8983/tcp
# Tue, 10 Oct 2017 01:25:18 GMT
WORKDIR /opt/solr
# Tue, 10 Oct 2017 01:25:18 GMT
USER [solr]
# Tue, 10 Oct 2017 01:25:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:25:18 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b68a7778da3a2e44964f508fbd3bc92882c4ad1dbd961716e950115a17786c`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 465.7 KB (465695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cbedee24083ce9a877823999b311c5211df0a60c7d39f0f1a7ffc40e5d3d98`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b4c73c20e2fb65e204d4f0e9530411503632baa0c81a5cd04aa4258ad9c478`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96c6867767bafa4a9f71dafdb3570bd25143e3990a15f7bf3b3ddace62f65bb`  
		Last Modified: Mon, 09 Oct 2017 23:03:16 GMT  
		Size: 48.3 MB (48266182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64921d86ac65289b9577ed4486b48c8b7e69512df5e3002bf314c44c5102f66`  
		Last Modified: Mon, 09 Oct 2017 23:03:08 GMT  
		Size: 272.2 KB (272158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa00fb407203256f29d14c47c8227edb19cfe302202dcd335444f2ae3ac9c85`  
		Last Modified: Tue, 10 Oct 2017 01:30:22 GMT  
		Size: 4.0 MB (4025800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6bf9e0b837f12cab1aa002f18246ffb08de9967a75f2f0c27273813fe53e3b`  
		Last Modified: Tue, 10 Oct 2017 01:30:21 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8657e8b4ce623d059e400678049232c5feb21677782bb3936c975b8c7d5f90bb`  
		Last Modified: Tue, 10 Oct 2017 01:30:20 GMT  
		Size: 10.8 KB (10754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085d8c6de8a1939fe2968d8bd449d05985144f720bb20d3edf59a4b7dd2c6955`  
		Last Modified: Tue, 10 Oct 2017 01:30:38 GMT  
		Size: 149.8 MB (149763051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d439860f325bc4f1ca8937759f354569e15b2dacea6f57838ae8a28b61a0a86`  
		Last Modified: Tue, 10 Oct 2017 01:30:20 GMT  
		Size: 4.1 KB (4116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc295c0b7befa8d52bd217ae263471dcb789398e1eaa3cfaf136b7bfbf887e8d`  
		Last Modified: Tue, 10 Oct 2017 01:30:20 GMT  
		Size: 4.1 KB (4121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
