## `solr:5-slim`

```console
$ docker pull solr@sha256:3759351bd2bd6e8ac6e006b9c36b608f64a9a296ec5cbefeb863e7a4f95739f5
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

### `solr:5-slim` - linux; amd64

```console
$ docker pull solr@sha256:6caf52e0da01f3e4e1e9ed412572dd43a78ebdc4c8b0e5a0887a6efee2a72984
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215122701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8593a66771817ecb38a4426124c1d7f3854619b8c898c07f9f1b75154404f77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:34:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:34:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:38:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 05:38:19 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 05:38:20 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 05:38:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 05:38:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 05:38:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 08:10:05 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 12 Dec 2017 08:10:06 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 12 Dec 2017 08:10:13 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:14:40 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:14:41 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 12 Dec 2017 08:14:50 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 12 Dec 2017 08:15:09 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 12 Dec 2017 08:15:10 GMT
COPY dir:55273ab1364e7715e0a6d973702bf9080edd13b890a893f8aa03c2829babf866 in /opt/docker-solr/scripts 
# Tue, 12 Dec 2017 08:15:11 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 12 Dec 2017 08:15:11 GMT
EXPOSE 8983/tcp
# Tue, 12 Dec 2017 08:15:12 GMT
WORKDIR /opt/solr
# Tue, 12 Dec 2017 08:15:12 GMT
USER [solr]
# Tue, 12 Dec 2017 08:15:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 08:15:18 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a7df1b51f6278abe3864a0d83f04c9b9d4885b4d64cf68cb40ac650f91a5`  
		Last Modified: Tue, 12 Dec 2017 05:49:02 GMT  
		Size: 454.8 KB (454819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c98005fcff8d144c0e901a6f8b6c20f7aab34f1c93f9d8679f342cd4640c5c`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dcc90226db797991bfa856bcbec2e3a60afa66c263912ec507073813bbe945`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e7ee438449dbeb5311161c6b7551a36b6a16e1cc801f11a82752335a83423`  
		Last Modified: Tue, 12 Dec 2017 05:50:30 GMT  
		Size: 56.0 MB (55998926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb083d9c54cfb8d861eda9fbf2466b0be061872c74751624d604dda6c9b75d29`  
		Last Modified: Tue, 12 Dec 2017 05:50:16 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730691b6b3933b86537e0d9ff846c34e684d0d6f55dfba52b481d89a99b1e4e6`  
		Last Modified: Tue, 12 Dec 2017 08:15:45 GMT  
		Size: 4.0 MB (3966984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1856c6ef21cc361710591dc6596465194842a0521a9e74964ddccffc53617`  
		Last Modified: Tue, 12 Dec 2017 08:21:46 GMT  
		Size: 4.3 KB (4327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81723f8b0bde7b679d19f6aa92627e42537a0a5d89c4268d7004f64bd61357b`  
		Last Modified: Tue, 12 Dec 2017 08:21:48 GMT  
		Size: 10.8 KB (10760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a74dcbb3b3b1b06a878a48d5635a9e4f990731d08691a63e18216e3973d7f8`  
		Last Modified: Tue, 12 Dec 2017 08:21:58 GMT  
		Size: 131.9 MB (131920296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9e1fd5c256b546041656edb51e07a73c79379ff2207037a825c3d6a684480`  
		Last Modified: Tue, 12 Dec 2017 08:21:46 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe4da93ba899c1191304f1173ba08b962cc57899955d7d34c4b62231ae18d3f`  
		Last Modified: Tue, 12 Dec 2017 08:21:46 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:ad39798517a61f1daca9a2a8fb9d4431f581a6d00143d3781fa6aad7979ba883
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204324800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f65d31fc3070f63ad136b91b31e7baeec4ef765336bf284bdd3ed6634f8631f`
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
# Sat, 04 Nov 2017 09:59:42 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 09:59:42 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 09:59:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 10:00:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 10:00:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 10:40:07 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 04 Nov 2017 10:40:07 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 04 Nov 2017 10:40:20 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:48:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:48:50 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 04 Nov 2017 10:48:53 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 04 Nov 2017 10:49:08 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 07 Dec 2017 04:49:27 GMT
COPY dir:55273ab1364e7715e0a6d973702bf9080edd13b890a893f8aa03c2829babf866 in /opt/docker-solr/scripts 
# Thu, 07 Dec 2017 04:49:28 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 07 Dec 2017 04:49:28 GMT
EXPOSE 8983/tcp
# Thu, 07 Dec 2017 04:49:28 GMT
WORKDIR /opt/solr
# Thu, 07 Dec 2017 04:49:29 GMT
USER [solr]
# Thu, 07 Dec 2017 04:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Dec 2017 04:49:29 GMT
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
	-	`sha256:6eb010ab5f6a41393244b79b69cf571d4b1e628edfdfabea6f0649a517e42100`  
		Last Modified: Sat, 04 Nov 2017 10:10:43 GMT  
		Size: 46.7 MB (46726115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de880afb01e7c8b65cf8ef4ca2e1c134bbd75d923413f0a97a255bb3224cf34f`  
		Last Modified: Sat, 04 Nov 2017 10:10:31 GMT  
		Size: 272.2 KB (272179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d32e2a4449efc8f53d506569ab8982e5a97a9da17c62d2da9a50a40ab51650`  
		Last Modified: Sat, 04 Nov 2017 10:50:14 GMT  
		Size: 3.8 MB (3768583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1812a155accf0f45a6e40703986ef59bebbfd85184c725ec444908b99b25b660`  
		Last Modified: Sat, 04 Nov 2017 10:59:05 GMT  
		Size: 4.3 KB (4260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80248d266323828653952fbb25c327bccbfd3671912ac148dca3f68442afa6e`  
		Last Modified: Sat, 04 Nov 2017 10:59:05 GMT  
		Size: 10.8 KB (10788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22980c70b07a896b722f72c88bfa1e25f7d1be91a87ea8a0e32eb009e52be4b`  
		Last Modified: Sat, 04 Nov 2017 10:59:24 GMT  
		Size: 131.9 MB (131920217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf493ba99f76e02306775170c8c2ee06fb84459010d5bd47df1772896de189a7`  
		Last Modified: Thu, 07 Dec 2017 04:54:39 GMT  
		Size: 4.2 KB (4207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd0a96a5d897834b7b153113e4825f71622ea01c13f26883f3f74312a0e4de`  
		Last Modified: Thu, 07 Dec 2017 04:54:39 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:2ffd904d7d556ef8e8f950299f0c1f20fcf18dc745f590cb9a2039478516c684
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201558036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abebaeaed24ee6d794cbf46ab44da63f56c8970663a5306e277c2f199d0858a0`
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
# Wed, 25 Oct 2017 13:25:02 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 13:25:03 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 25 Oct 2017 13:25:07 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 25 Oct 2017 13:25:22 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 07 Dec 2017 14:26:12 GMT
COPY dir:55273ab1364e7715e0a6d973702bf9080edd13b890a893f8aa03c2829babf866 in /opt/docker-solr/scripts 
# Thu, 07 Dec 2017 14:26:13 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 07 Dec 2017 14:26:14 GMT
EXPOSE 8983/tcp
# Thu, 07 Dec 2017 14:26:14 GMT
WORKDIR /opt/solr
# Thu, 07 Dec 2017 14:26:14 GMT
USER [solr]
# Thu, 07 Dec 2017 14:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Dec 2017 14:26:15 GMT
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
	-	`sha256:ae6732cb05bdd67781fd03bf5b444cb2da61a106f16a01ddf8cb02a3332253a8`  
		Last Modified: Wed, 25 Oct 2017 13:30:00 GMT  
		Size: 4.3 KB (4261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa47a731aab409906c9104f73ef4e8c4c991bc1ac7f3beff3e2a413fd0d857f`  
		Last Modified: Wed, 25 Oct 2017 13:29:59 GMT  
		Size: 10.8 KB (10789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21eb205ba8b7178592b67f32b7eda3528bc07e9a04620893d1a355778cfdf39`  
		Last Modified: Wed, 25 Oct 2017 13:30:15 GMT  
		Size: 131.9 MB (131920309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1508fbd991745521f6034c2ee0624fab4afd035839777ad25e278d2c0ccf8d1`  
		Last Modified: Thu, 07 Dec 2017 14:33:10 GMT  
		Size: 4.2 KB (4210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3096b98ac2471d5cf59988ee30d3a1e13caeae695975bf85efee13e5eb1a244a`  
		Last Modified: Thu, 07 Dec 2017 14:33:10 GMT  
		Size: 4.2 KB (4188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:76541011ab074a7bf2f585a8d3025b974dcb625e65f1988249272024e341b988
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204784661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a794e9fbe2992ea333276fed8226d985f2f9f70c7144d408e459dbe31cbbe2b`
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
# Sat, 04 Nov 2017 12:38:53 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 12:38:55 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 12:38:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 12:41:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 12:41:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 18:57:39 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 04 Nov 2017 18:57:39 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 04 Nov 2017 18:58:29 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:17:40 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:17:43 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 04 Nov 2017 19:17:47 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 04 Nov 2017 19:18:11 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 07 Dec 2017 01:02:59 GMT
COPY dir:55273ab1364e7715e0a6d973702bf9080edd13b890a893f8aa03c2829babf866 in /opt/docker-solr/scripts 
# Thu, 07 Dec 2017 01:03:02 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 07 Dec 2017 01:03:02 GMT
EXPOSE 8983/tcp
# Thu, 07 Dec 2017 01:03:03 GMT
WORKDIR /opt/solr
# Thu, 07 Dec 2017 01:03:04 GMT
USER [solr]
# Thu, 07 Dec 2017 01:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Dec 2017 01:03:05 GMT
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
	-	`sha256:9420b32290b1a2df8cb76d082b7611b691f1bb80e8aa3976353f6c330dd769b7`  
		Last Modified: Sat, 04 Nov 2017 13:12:38 GMT  
		Size: 48.2 MB (48152267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9646098ada5bce0ce7bb3cfc22a1945d521f90022499e645be05a5529f5652f`  
		Last Modified: Sat, 04 Nov 2017 13:12:16 GMT  
		Size: 272.2 KB (272184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b630da8cd0a6d5ed04068c1e34ac31bedfdb4bb976bd37a1d8ab8dacecda52`  
		Last Modified: Sat, 04 Nov 2017 19:20:01 GMT  
		Size: 3.6 MB (3638341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63721c5476bf047cf3b63cddecb7cce3132f7983c68ec6d49ae22c241c6c75d3`  
		Last Modified: Sat, 04 Nov 2017 19:38:08 GMT  
		Size: 4.4 KB (4371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a922fb8b03ea329a880ed62faa00809e7e330c6397ec8ff67259ad1fe60de8`  
		Last Modified: Sat, 04 Nov 2017 19:38:08 GMT  
		Size: 10.8 KB (10755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613e1b0761fc059e8d1df443da9351ab1301af6746a6e6d9f9f119f904427ac4`  
		Last Modified: Sat, 04 Nov 2017 19:38:27 GMT  
		Size: 131.9 MB (131920056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fd311ad5fb84cd1a5673f5b46bbc7b1c372e8f3c0e118433b25eddf10b560d`  
		Last Modified: Thu, 07 Dec 2017 01:22:16 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f3eef20835ba0dba3cd6a456fbc68efd9b71de0509825baf05cab7529bce56`  
		Last Modified: Thu, 07 Dec 2017 01:22:16 GMT  
		Size: 4.2 KB (4190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; 386

```console
$ docker pull solr@sha256:559908a4546c7d5cf9a2038860ccfc3918a3672a72cd2b97f274d4d6b01aea82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215560729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571e2bf1631849efbe6392dcdd11814af20fe69505a81f825a00d9bbf3afb14b`
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
# Sat, 04 Nov 2017 10:11:11 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 10:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 10:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 10:12:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:35:46 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 04 Nov 2017 11:35:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 04 Nov 2017 11:36:03 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 12:07:08 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 12:07:09 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 04 Nov 2017 12:07:13 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 04 Nov 2017 12:07:32 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 07 Dec 2017 07:49:28 GMT
COPY dir:55273ab1364e7715e0a6d973702bf9080edd13b890a893f8aa03c2829babf866 in /opt/docker-solr/scripts 
# Thu, 07 Dec 2017 07:49:29 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 07 Dec 2017 07:49:29 GMT
EXPOSE 8983/tcp
# Thu, 07 Dec 2017 07:49:29 GMT
WORKDIR /opt/solr
# Thu, 07 Dec 2017 07:49:29 GMT
USER [solr]
# Thu, 07 Dec 2017 07:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Dec 2017 07:49:30 GMT
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
	-	`sha256:d4f6bf014d8a8f289c87165995322a854fbd99510810d02641ebf18e047fef4f`  
		Last Modified: Sat, 04 Nov 2017 10:44:24 GMT  
		Size: 55.5 MB (55545314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad05cc4644c7b0ae5f27f1d75575ffa46e92b55a6550bed932d9c1ea63f06e22`  
		Last Modified: Sat, 04 Nov 2017 10:44:16 GMT  
		Size: 272.1 KB (272117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1013686c108304572c1e29a252f78d1e15a7b478b870cf148b9518e49b6f11`  
		Last Modified: Sat, 04 Nov 2017 12:08:55 GMT  
		Size: 4.2 MB (4207368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d556b3f9d09cf42da3ae4b0b33392c7ff3e8b642d1ae3e2a21ab0c4b337f12e`  
		Last Modified: Sat, 04 Nov 2017 12:37:44 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27a97e53ea32b8e901a9a152a5ca6043a0c1e8fe9d76912968d80082dcc9aab`  
		Last Modified: Sat, 04 Nov 2017 12:37:44 GMT  
		Size: 10.8 KB (10762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e7cbc942b6a6ba457bc6ed06e46f6ab59b67addc1b02a842ffabfa3a0d23af`  
		Last Modified: Sat, 04 Nov 2017 12:37:56 GMT  
		Size: 131.9 MB (131920033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2b2cab7df0afa6553ed3557e2b326e1d2cf8fbdf4fb02ee7bb4fdaf9e7dece`  
		Last Modified: Thu, 07 Dec 2017 08:04:04 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fdd1b8e7f6df2b868f6636ac8786a569a55b69510a4f3f2569f740a214f184`  
		Last Modified: Thu, 07 Dec 2017 08:04:04 GMT  
		Size: 4.2 KB (4187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:8fb167f8d5209a4fe1fe544927465119808b31303c4ddf688e29b1bd5440dd86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207983739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c26aca19ab63b6d0f27bff2e891a4611d63e37a0cd25fa1b311817af08dcaa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:57:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:57:01 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:57:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 03:57:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 04:08:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 04:08:40 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 04:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 04:08:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 04:11:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 04:11:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 12:03:45 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 12 Dec 2017 12:03:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 12 Dec 2017 12:04:47 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 12:32:30 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 12:32:45 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 12 Dec 2017 12:32:54 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 12 Dec 2017 12:34:13 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 12 Dec 2017 12:34:15 GMT
COPY dir:55273ab1364e7715e0a6d973702bf9080edd13b890a893f8aa03c2829babf866 in /opt/docker-solr/scripts 
# Tue, 12 Dec 2017 12:34:22 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 12 Dec 2017 12:34:24 GMT
EXPOSE 8983/tcp
# Tue, 12 Dec 2017 12:34:25 GMT
WORKDIR /opt/solr
# Tue, 12 Dec 2017 12:34:27 GMT
USER [solr]
# Tue, 12 Dec 2017 12:34:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 12:34:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526c4e4a82552c0009f666d9199512d3cf5cd397b914ccaaed0a1d80ee6a37d0`  
		Last Modified: Tue, 12 Dec 2017 04:20:58 GMT  
		Size: 449.8 KB (449767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e5614e1ec52998918779b56f1c68b70afba320748cc697497dd8f66004102d`  
		Last Modified: Tue, 12 Dec 2017 04:20:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51004c1b2e651697ab322f6718900e01da20de1d2b7301f9039344231d4e3ad6`  
		Last Modified: Tue, 12 Dec 2017 04:20:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ba4c991d51de56b538b40c302b50ff268d863b6081fa12de878b52fe1c64e8`  
		Last Modified: Tue, 12 Dec 2017 04:23:07 GMT  
		Size: 48.6 MB (48635573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65aa697b950f112d6d504a0d7c144ea94fa4c8b407ec052f38515e89fdb9466`  
		Last Modified: Tue, 12 Dec 2017 04:22:56 GMT  
		Size: 272.0 KB (272043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718b7c105bb54ed01e657cb993187fbf2604f97a40adf25c14da61800454fe70`  
		Last Modified: Tue, 12 Dec 2017 12:36:14 GMT  
		Size: 3.9 MB (3942322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112591fd5ce7cb30554e5a0d5fa60c46aecd64f27487b83d830bc22b9624a198`  
		Last Modified: Tue, 12 Dec 2017 12:43:36 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef4b0f21bfdfe512d558077a9d56d70ae7c00bd27affb5ef65c534a5a7fb1b5`  
		Last Modified: Tue, 12 Dec 2017 12:43:36 GMT  
		Size: 10.8 KB (10791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b57942c816b752d0ab2a0d89a7911669b245427351466f08c9824e6ed09be`  
		Last Modified: Tue, 12 Dec 2017 12:43:49 GMT  
		Size: 131.9 MB (131920420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e6e68c023bc6db7144b860965b1afa63a78ac5aa7fcf570eee6929a6952bea`  
		Last Modified: Tue, 12 Dec 2017 12:43:36 GMT  
		Size: 4.2 KB (4207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5aa5a5206fcb1c8091e2b1c2df09d9f3b2a4193959050f639fe7477ab3174ef`  
		Last Modified: Tue, 12 Dec 2017 12:43:35 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; s390x

```console
$ docker pull solr@sha256:d87df2473f6f1e36d952a155bf1e360f5a15e47eb31766273e0885c71c46f326
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206891536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8915b8ee6bb11a7a951217f99cef22b9e92170afbfd77ffcf95acfde3e37d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:39:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:39:00 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 07:39:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 07:39:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 07:40:48 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 07:40:48 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 07:40:48 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 07:40:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 07:41:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 07:41:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 11:51:40 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 12 Dec 2017 11:51:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 12 Dec 2017 11:51:54 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:58:01 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 11:58:06 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 12 Dec 2017 11:58:09 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 12 Dec 2017 11:58:20 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 12 Dec 2017 11:58:20 GMT
COPY dir:55273ab1364e7715e0a6d973702bf9080edd13b890a893f8aa03c2829babf866 in /opt/docker-solr/scripts 
# Tue, 12 Dec 2017 11:58:21 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 12 Dec 2017 11:58:21 GMT
EXPOSE 8983/tcp
# Tue, 12 Dec 2017 11:58:21 GMT
WORKDIR /opt/solr
# Tue, 12 Dec 2017 11:58:22 GMT
USER [solr]
# Tue, 12 Dec 2017 11:58:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:58:22 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530a993dc54ccfec513ceaf61463bccb2bd4dadaf0947423da948ae904d6a7c3`  
		Last Modified: Tue, 12 Dec 2017 07:48:03 GMT  
		Size: 465.7 KB (465710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0da9f88284bdc2730fe7f74c1150a506d1ff936a4edc9c4b9b641b1c124183d`  
		Last Modified: Tue, 12 Dec 2017 07:48:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69c8d612be2772e9480cc833b516c81bd80618c08a5f59e8406050fd52d978e`  
		Last Modified: Tue, 12 Dec 2017 07:48:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7038c267b7c7a8ac741f45ce6238f1eac1e09b07cece0a759f1db32b16789a9`  
		Last Modified: Tue, 12 Dec 2017 07:49:30 GMT  
		Size: 47.8 MB (47847247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d83d2b2c7a504accf2e70581c068900dda49c36aa967e44ebd9c7dffe904009`  
		Last Modified: Tue, 12 Dec 2017 07:49:22 GMT  
		Size: 272.2 KB (272151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e9b36a26b685e58d1670c35d1828039e3208830d4537ffd2225e70cbca7196`  
		Last Modified: Tue, 12 Dec 2017 11:59:21 GMT  
		Size: 4.0 MB (4028423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df241c8f47aa42ec0340e229d9ebc424e423318703536280db70bacc91ed8f2a`  
		Last Modified: Tue, 12 Dec 2017 12:06:22 GMT  
		Size: 4.4 KB (4370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117a30df808c9802c8f6140110468bb6300be3f25571f1035d7f57e4a327a38d`  
		Last Modified: Tue, 12 Dec 2017 12:06:21 GMT  
		Size: 10.8 KB (10760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece498115157147a3b83a2a310bbfd5a61aae2916d0b95ac236ddcb0b88b9bf4`  
		Last Modified: Tue, 12 Dec 2017 12:06:36 GMT  
		Size: 131.9 MB (131920274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744d17d2a15e59d8b7fc4dd977d0d450e9daa855e7168fe281fbdac0c93eccfb`  
		Last Modified: Tue, 12 Dec 2017 12:06:21 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacd05213d98e165408fb3edd340dca9bac1cffb58f4306e04bd6ddf95f1eb87`  
		Last Modified: Tue, 12 Dec 2017 12:06:21 GMT  
		Size: 4.2 KB (4186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
