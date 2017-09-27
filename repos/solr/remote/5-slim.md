## `solr:5-slim`

```console
$ docker pull solr@sha256:60a1ce7f81a58d2b528bb321c2ab203ec71e078b1d070673aa23231d74bd71e9
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
$ docker pull solr@sha256:91b9fc6add3a3da99fe6ee4f2a6b95ffa83c525f2dd5bf52da8ec80dce2a40a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215908508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490ff58f7237cc03e69b8ec6a5633f20378dff338ba53b4117b8a6d96960453b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 04:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:20:44 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:20:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:20:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:24:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:24:47 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:24:47 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:24:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:25:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:25:30 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 20:00:10 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 15 Sep 2017 20:00:11 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 15 Sep 2017 20:00:21 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:06:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:06:27 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 15 Sep 2017 20:06:34 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 15 Sep 2017 20:06:49 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 22 Sep 2017 17:59:48 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Fri, 22 Sep 2017 17:59:48 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 22 Sep 2017 17:59:49 GMT
EXPOSE 8983/tcp
# Fri, 22 Sep 2017 17:59:49 GMT
WORKDIR /opt/solr
# Fri, 22 Sep 2017 17:59:49 GMT
USER [solr]
# Fri, 22 Sep 2017 17:59:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 17:59:49 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8ba8b5e37551f39a4820a9f38f315b21d8daf6796ad210864bda08500ef7e`  
		Last Modified: Thu, 14 Sep 2017 04:55:01 GMT  
		Size: 454.8 KB (454780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458aee9f5d86787e63b5f5deb9377bca749031cd1f98338e6bba5f1ff9388aad`  
		Last Modified: Thu, 14 Sep 2017 04:55:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104608ca0bbb098f1aea34c5cf432ef22a0569fcf91678a5da4fafc4664d8a9e`  
		Last Modified: Thu, 14 Sep 2017 04:55:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e78804fd35377bf2375b53b4c960aa4c02307683163819a6deb80ab5857302`  
		Last Modified: Thu, 14 Sep 2017 05:01:16 GMT  
		Size: 56.8 MB (56783387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4743ecfc0c26ced6517030f1125c886178de159914ebbaf61588c3c71323030`  
		Last Modified: Thu, 14 Sep 2017 05:00:59 GMT  
		Size: 272.1 KB (272095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5c4d50d2abc31537dfb3b4736647c078700ff1d4304c1353804c9dcb60f2d5`  
		Last Modified: Fri, 15 Sep 2017 20:10:57 GMT  
		Size: 4.0 MB (3962846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f81abecec1c1fd44cd167e50b00431103546dd90064d5779a7a6ff314c1a8d`  
		Last Modified: Fri, 15 Sep 2017 20:18:31 GMT  
		Size: 4.3 KB (4338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95f162e958339aeba2fa26afe6259de2369820b0bb694b12e53acbe2a2d0394`  
		Last Modified: Fri, 15 Sep 2017 20:18:30 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774bb54a1e2ff74c7b2cdc8faca9b0fde399406d6b7aee92cd9826274c99925f`  
		Last Modified: Fri, 15 Sep 2017 20:19:06 GMT  
		Size: 131.9 MB (131927217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990b955cdc1df2a0c65a9ffdfdbcbe739e5e84f5fafe6c13ac38d7481d028464`  
		Last Modified: Fri, 22 Sep 2017 18:06:28 GMT  
		Size: 4.1 KB (4122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2bebe03213268a7906e6c702892f7ba81c5ddf55c34f19954bdcbe72ff2232`  
		Last Modified: Fri, 22 Sep 2017 18:06:28 GMT  
		Size: 4.1 KB (4126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:7033e6385249148a88f80dec557044eb7c9376cd444df83bdf25671827303dd9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204794518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a502703ec3065c68ec03e22c81dad4a62533a622c0e783a921e0051a49245bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Sep 2017 14:26:23 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Wed, 27 Sep 2017 14:26:24 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:19:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:19:56 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:19:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:19:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:22:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Sep 2017 15:22:01 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 15:22:01 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 15:22:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 15:22:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 15:22:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 15:53:49 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 27 Sep 2017 15:53:49 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 27 Sep 2017 15:54:01 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:58:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:58:57 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 27 Sep 2017 15:59:00 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 27 Sep 2017 15:59:15 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 27 Sep 2017 15:59:16 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Wed, 27 Sep 2017 15:59:16 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 27 Sep 2017 15:59:17 GMT
EXPOSE 8983/tcp
# Wed, 27 Sep 2017 15:59:17 GMT
WORKDIR /opt/solr
# Wed, 27 Sep 2017 15:59:17 GMT
USER [solr]
# Wed, 27 Sep 2017 15:59:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 15:59:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:381007dd87dfe0605f5028d1cbdaf1a91af4382b434e22492e2a905394c12696`  
		Last Modified: Wed, 27 Sep 2017 14:31:37 GMT  
		Size: 21.2 MB (21163919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f6297ed64c3f9cc10a44e2b2ada40db31b4acb2dfc99d42e5a7864996d744`  
		Last Modified: Wed, 27 Sep 2017 15:32:52 GMT  
		Size: 447.6 KB (447612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ca5e7cd4a91ddd612d658cc3291a036b86144cc7f33928768c537b3191559`  
		Last Modified: Wed, 27 Sep 2017 15:32:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfc0c87c5d8182e31eb4bd5adfa4e9d507e9320f0846cd559e4bef94f1ef8c3`  
		Last Modified: Wed, 27 Sep 2017 15:32:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7797a03e48d8f5b454d0517f688d2e0f5524b6c9b83608eb1bdb2370c84bf7`  
		Last Modified: Wed, 27 Sep 2017 15:34:13 GMT  
		Size: 47.2 MB (47194609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a1b20e8517d38186e5b6480b7cb0b19c529ca99b5b403c9fd3da173eef521e`  
		Last Modified: Wed, 27 Sep 2017 15:34:02 GMT  
		Size: 272.2 KB (272194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06498766bc687eaf10bf96d16f12663d64a937b893ec80a81bee110ea17624a`  
		Last Modified: Wed, 27 Sep 2017 15:59:58 GMT  
		Size: 3.8 MB (3768773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585cbee379eafe1669d4fc65c46c7fd7f72c17b6926509564afbaa454b79c4f`  
		Last Modified: Wed, 27 Sep 2017 16:04:20 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ea0435f7f5d398a4548f3756f63b7f155560bb84a125d51e249e9fe72254ea`  
		Last Modified: Wed, 27 Sep 2017 16:04:20 GMT  
		Size: 7.2 KB (7187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9daf5e9c48d7d4913c63cc557940ce140ee242cb6a47929bd0e0ae3c6a5705`  
		Last Modified: Wed, 27 Sep 2017 16:04:36 GMT  
		Size: 131.9 MB (131927329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52449cad71622e7947d655a4b5540e5f3fff34b8fd2569da3d3e5d522dbb9e4`  
		Last Modified: Wed, 27 Sep 2017 16:04:19 GMT  
		Size: 4.1 KB (4143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f42a713f1d4221cf3e5ae2934f4952219bd42fc1648c386ae197c9e3f826c7a`  
		Last Modified: Wed, 27 Sep 2017 16:04:19 GMT  
		Size: 4.1 KB (4120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:4db2061237a43fefd389f2fe17467a3a0719787d5f4ba085d167f445c8d1175a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201559809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075bdaa96afa8d4bcf6a5463662f54d32d0c726110057507e6416c8bce4a7f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:53 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Wed, 27 Sep 2017 04:14:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:23:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:23:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:23:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:23:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:26:11 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Sep 2017 05:26:11 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:26:11 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:26:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:26:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:26:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:28:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 27 Sep 2017 07:28:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 27 Sep 2017 07:29:07 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:34:29 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 07:34:30 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 27 Sep 2017 07:34:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 27 Sep 2017 07:34:51 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 27 Sep 2017 07:34:53 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Wed, 27 Sep 2017 07:34:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 27 Sep 2017 07:34:55 GMT
EXPOSE 8983/tcp
# Wed, 27 Sep 2017 07:34:56 GMT
WORKDIR /opt/solr
# Wed, 27 Sep 2017 07:34:56 GMT
USER [solr]
# Wed, 27 Sep 2017 07:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 07:34:56 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f6b0b1de175bfd1f4139472dafaeed39d43c5c14f6f48f113c9053f9b7837ddf`  
		Last Modified: Wed, 27 Sep 2017 04:20:52 GMT  
		Size: 19.3 MB (19276815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffbe37b22ee5b13080b926a7df7397ba901dab1d5310f4f6689afff274075cd`  
		Last Modified: Wed, 27 Sep 2017 05:38:10 GMT  
		Size: 430.5 KB (430532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbdc6568601efc84a052fddd28f8fce07f809f5a94b8732af5becd56932f56a`  
		Last Modified: Wed, 27 Sep 2017 05:38:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca569eaa928608a5c0371d3fbbafab066fda800202e4160d3a084e8b887bfb`  
		Last Modified: Wed, 27 Sep 2017 05:38:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fa3647532e6fa24b1a18e772fe19305639f55402e74e323aaf55f8787d69a0`  
		Last Modified: Wed, 27 Sep 2017 05:39:44 GMT  
		Size: 46.2 MB (46150365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7df055cd89b1dc632426db3f6017d7eca7a6508e270675412a5d22092363e0`  
		Last Modified: Wed, 27 Sep 2017 05:39:32 GMT  
		Size: 272.2 KB (272197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8569913bb36eaa4ff24ed12b9a3ab1977825304359cde7966adc64edb027d9f`  
		Last Modified: Wed, 27 Sep 2017 07:35:51 GMT  
		Size: 3.5 MB (3482576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9493ace6ebaeaeaae716ac6c2596f333ed687ead09efac044d110f4f84a0c7b`  
		Last Modified: Wed, 27 Sep 2017 07:41:19 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167fd0371bb481a24b44a08589960be29e44a95b31f23313b463000997d943fc`  
		Last Modified: Wed, 27 Sep 2017 07:41:19 GMT  
		Size: 7.2 KB (7191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7df98a79d28b7a520f220e7c43d3c576c422be60b6ee372ea339bf3d60f101`  
		Last Modified: Wed, 27 Sep 2017 07:41:36 GMT  
		Size: 131.9 MB (131927228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ad3a2bb7cbe3a8e6b4d307985f778850303c66c5228339362cda94c25cfd8a`  
		Last Modified: Wed, 27 Sep 2017 07:41:19 GMT  
		Size: 4.1 KB (4144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0db40667563ea7f2dbd2fb368b5e805e99e80121fb247569ebd524b7e3573f0`  
		Last Modified: Wed, 27 Sep 2017 07:41:19 GMT  
		Size: 4.1 KB (4123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:b0f7b301c1aae771e8ea24bd3bedc5f6ed944596449159721f221033797cebb0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205555429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312ac35d74b24b728c6b6161f9536f0feadd36f3c830061df83492391120464b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:43:39 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:43:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:43:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:45:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 22:45:52 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 22:45:52 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 22:45:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 22:47:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 22:47:31 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 20:00:09 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 15 Sep 2017 20:00:10 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 15 Sep 2017 20:00:48 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:08:25 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:08:28 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 15 Sep 2017 20:08:31 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 15 Sep 2017 20:08:51 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 22 Sep 2017 23:53:59 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Fri, 22 Sep 2017 23:54:01 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 22 Sep 2017 23:54:02 GMT
EXPOSE 8983/tcp
# Fri, 22 Sep 2017 23:54:02 GMT
WORKDIR /opt/solr
# Fri, 22 Sep 2017 23:54:03 GMT
USER [solr]
# Fri, 22 Sep 2017 23:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 23:54:04 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a76af68c1d60c07e33c4aa1e837762c3569646df60f4f0174d1ba83024863`  
		Last Modified: Fri, 08 Sep 2017 22:55:34 GMT  
		Size: 440.8 KB (440823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd72c893e09a1c2f500ced1a71839b1fdad41fd04c2281c322b582cd5526ffd`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d70f76b5d186f9a22db9d33bfee65f9f6d00904a00959b2ec215d2392980133`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d9cf2c7dc05df5bf9a68bdb1f833a04f16ea8d3f502cf7586fd5a1cf89957d`  
		Last Modified: Fri, 08 Sep 2017 22:56:58 GMT  
		Size: 48.9 MB (48918751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcba9ecb2e206c38d6a3d920e8ee92d66a9f326c9d0b950cfa2e57c93047bcb`  
		Last Modified: Fri, 08 Sep 2017 22:56:43 GMT  
		Size: 272.1 KB (272095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0c32ee869b27a207d02a5eb830188955a6e352601ecd27bec7fc65356c6294`  
		Last Modified: Fri, 15 Sep 2017 20:10:38 GMT  
		Size: 3.6 MB (3639058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2857714b63df48f49a2f65a97c0cbe2e0f236f973251f6ffd236bdab1103eaa5`  
		Last Modified: Fri, 15 Sep 2017 20:18:04 GMT  
		Size: 4.4 KB (4373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe49487b91b4f1fbc6fa7710101d83fb8e05459c9a6c1fb9a1a26e1324676aab`  
		Last Modified: Fri, 15 Sep 2017 20:18:03 GMT  
		Size: 7.2 KB (7160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b320ff4346b1e495226b65c589aeebfc1be32d6cb80592ac6b0088204d64a3f`  
		Last Modified: Fri, 15 Sep 2017 20:18:24 GMT  
		Size: 131.9 MB (131927284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f3c717dbbdc55897a49550415040b42346c9ef4a69334dd291bd89e98c440f`  
		Last Modified: Sat, 23 Sep 2017 00:00:31 GMT  
		Size: 4.1 KB (4115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff89849e7831e1bf457ae7126a5ca48f0eadf5db37a501c795eed5c2f045a15`  
		Last Modified: Sat, 23 Sep 2017 00:00:32 GMT  
		Size: 4.1 KB (4120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; 386

```console
$ docker pull solr@sha256:a8205fd30dcc5afd250b22397db385f05b9338c0c7c82dae48d15909fbee92fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216380059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174c5d6cd22f6733a0e64bf2562171daa78a04a93bb899a03e625295336c4da8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:15:43 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:15:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:16:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 15:16:45 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 15:16:45 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 15:16:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 15:17:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 15:17:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 20:04:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 15 Sep 2017 20:04:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 15 Sep 2017 20:04:38 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:15:46 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:15:47 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 15 Sep 2017 20:15:51 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 15 Sep 2017 20:16:06 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 23 Sep 2017 06:45:28 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Sat, 23 Sep 2017 06:45:29 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 23 Sep 2017 06:45:29 GMT
EXPOSE 8983/tcp
# Sat, 23 Sep 2017 06:45:29 GMT
WORKDIR /opt/solr
# Sat, 23 Sep 2017 06:45:30 GMT
USER [solr]
# Sat, 23 Sep 2017 06:45:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Sep 2017 06:45:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954117579cf63aa6d4f437298814195581d13005972e2fed6070cd434379007`  
		Last Modified: Fri, 08 Sep 2017 15:32:27 GMT  
		Size: 463.4 KB (463422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f125eaf7c3f7dfbe1993cc361c45586d0ed10c0cf968f5e3681e7568932c8`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef71936cc7c95e2d4cf2866feac6aa8d4be9a94cc45c35797d093391e00ca696`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2fc35577fa3aa76a8485ee15270620fb055f1c4edf2f6bb591dd24f49b08b9`  
		Last Modified: Fri, 08 Sep 2017 15:36:56 GMT  
		Size: 56.4 MB (56365071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c93cf5f606b5cdd3629b1bfe13acd385aecde7ab0fbd33c019f59e125e79bf2`  
		Last Modified: Fri, 08 Sep 2017 15:36:44 GMT  
		Size: 272.1 KB (272132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6873b636a627ff774a7cb51c2761237f9e1c3214db4d3c1fe7bf71aaf3a99961`  
		Last Modified: Fri, 15 Sep 2017 20:21:25 GMT  
		Size: 4.2 MB (4206453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af973522e1105e8931535dc21ea1aa9a4925378250988367eca050f974fdd69`  
		Last Modified: Fri, 15 Sep 2017 20:38:11 GMT  
		Size: 4.3 KB (4260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01adab6df5c51ee52f4eba2debec715b3126d9031a25fda94428f703acb48866`  
		Last Modified: Fri, 15 Sep 2017 20:38:11 GMT  
		Size: 7.2 KB (7157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a032d3d448c96113f7a2a650faa2c270fd21740ab8ca14009544f5fe5478d1f`  
		Last Modified: Fri, 15 Sep 2017 20:38:26 GMT  
		Size: 131.9 MB (131927162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b08b898e237734821977b35bcf91e1bfe6d813089e1c68a3659fa9c7669e440`  
		Last Modified: Sat, 23 Sep 2017 06:49:27 GMT  
		Size: 4.1 KB (4116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b57f1a781e187017632052df571c6621c9a8bbc9e789c5f9337f06031af0f`  
		Last Modified: Sat, 23 Sep 2017 06:49:27 GMT  
		Size: 4.1 KB (4123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:cc255666adb54dd0f90202a4bc127eb2875b78d76dd07ddffdfe03092bc198b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208604228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8082ff9b54cc057caa31f8bd1c4959d272576c926160bed68ad24591da3615c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:26:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:26:30 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:26:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:27:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 01:27:07 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 01:27:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 01:27:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 01:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 01:27:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 20:08:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 15 Sep 2017 20:08:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 15 Sep 2017 20:10:56 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:36:04 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:36:22 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 15 Sep 2017 20:36:32 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 15 Sep 2017 20:37:46 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 23 Sep 2017 14:05:47 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Sat, 23 Sep 2017 14:05:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 23 Sep 2017 14:05:56 GMT
EXPOSE 8983/tcp
# Sat, 23 Sep 2017 14:05:58 GMT
WORKDIR /opt/solr
# Sat, 23 Sep 2017 14:06:01 GMT
USER [solr]
# Sat, 23 Sep 2017 14:06:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Sep 2017 14:06:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee90978362d08c4e770b183283933846b88fbddcbd1d24fd3c54f27666128c68`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 449.7 KB (449687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ddf0608c4e5036b59bfb654bb8aca9329c0686cb0087c08b8c478689a2bd75`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f1724ac87b8200685750f493d25f1c1b6f8ee427c651522ede69275fa6aa0`  
		Last Modified: Fri, 08 Sep 2017 01:30:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d03da41b673a5cf5ce30b2adccc8f7ca66117d8d1443df7a7362569289bb7f9`  
		Last Modified: Fri, 08 Sep 2017 01:31:25 GMT  
		Size: 49.2 MB (49249405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001076d37c06876242b21ed86d2738e4229e0c158cec8fd6192efaa48966761`  
		Last Modified: Fri, 08 Sep 2017 01:31:14 GMT  
		Size: 272.1 KB (272054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2255824a4a3cd4d3c630270838841c8b079cde69c44570962cb7ed18d9b54825`  
		Last Modified: Fri, 15 Sep 2017 20:39:41 GMT  
		Size: 3.9 MB (3939548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73efb164d632e62ed83683b370c6db8dc4c2ba69d8f07b628bdc57b730137d7`  
		Last Modified: Fri, 15 Sep 2017 20:44:48 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25eab4d0d69f19fa06ba3ecd70ea5959b3abcc328ce9169a0c048c91821a63f`  
		Last Modified: Fri, 15 Sep 2017 20:44:48 GMT  
		Size: 7.2 KB (7191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601e7d11b060ce353b4018abe04b622b7b0d373b98a3d10cf2bd71ee0fcdee1c`  
		Last Modified: Fri, 15 Sep 2017 20:45:03 GMT  
		Size: 131.9 MB (131927287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1280649ce6638653ff65006ca8d7c20752be06de13c1e9b365b383059c9547c5`  
		Last Modified: Sat, 23 Sep 2017 14:09:51 GMT  
		Size: 4.1 KB (4146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f4f1fab934d60a93f3961619d5752dc7726a8796e3e0098c4bd9f030c5381e`  
		Last Modified: Sat, 23 Sep 2017 14:09:51 GMT  
		Size: 4.1 KB (4125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; s390x

```console
$ docker pull solr@sha256:e75f829cfdc0b9697a29f05ddb2b9963b6d25efe42ca4641c8bf12a531abe762
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207314683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12de304114a6b9b00f4745b12064786ef82a01b86a8644269cc22f6949c06993`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:54:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 05:54:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 05:55:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 05:55:09 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 05:55:09 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 05:55:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 05:55:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 05:55:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 20:03:47 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 15 Sep 2017 20:03:47 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 15 Sep 2017 20:04:02 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 20:15:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:15:35 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 15 Sep 2017 20:15:38 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 15 Sep 2017 20:16:46 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 23 Sep 2017 06:13:36 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Sat, 23 Sep 2017 06:13:37 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 23 Sep 2017 06:13:37 GMT
EXPOSE 8983/tcp
# Sat, 23 Sep 2017 06:13:37 GMT
WORKDIR /opt/solr
# Sat, 23 Sep 2017 06:13:37 GMT
USER [solr]
# Sat, 23 Sep 2017 06:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 23 Sep 2017 06:13:38 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984604f91630f68bf964efc6b7ee81bdfc5e658eccab951a9d82766fcfd2654d`  
		Last Modified: Fri, 08 Sep 2017 05:57:48 GMT  
		Size: 465.7 KB (465658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ebfa99eb5f14cb91aed3e670278b9d95b5536fc45ff6d74e57b5bf7cd7d0f4`  
		Last Modified: Fri, 08 Sep 2017 05:57:47 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87774056e9b494cacbace94fface85556e22250f46e7912778fbaf2034ad52f`  
		Last Modified: Fri, 08 Sep 2017 05:57:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0390f3f211cda1d2597482aed425a27f306a78eb490322d60e6d26f88eb69f2`  
		Last Modified: Fri, 08 Sep 2017 05:58:41 GMT  
		Size: 48.3 MB (48265839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867b359a170d7393db18587024b7a248bbf13a5270361bfa2e3e3111cdb1df3f`  
		Last Modified: Fri, 08 Sep 2017 05:58:32 GMT  
		Size: 272.2 KB (272151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dbd2e68734a4660d8a83912fb9c86c45b5cdb6fd3ef0babb6735ab5c7385c3`  
		Last Modified: Fri, 15 Sep 2017 20:17:30 GMT  
		Size: 4.0 MB (4025400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a4bd53b4c58ff51c6091901dc13e589319f20140e123591bb5d0ec4cf929c6`  
		Last Modified: Fri, 15 Sep 2017 20:21:17 GMT  
		Size: 4.4 KB (4365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3163aa1a64ec73b5e1996791637978465f42319a0ec793241ec6d074d0d7bad0`  
		Last Modified: Fri, 15 Sep 2017 20:21:17 GMT  
		Size: 7.2 KB (7164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f274465da7066d5b57526d10d1c534cef1f450e3fcc9202156b965dc21455c9`  
		Last Modified: Fri, 15 Sep 2017 20:21:29 GMT  
		Size: 131.9 MB (131927344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9dbf33a7300d8d2fc99fcf7314f6e6061b26791f9c34fd2c89eeeb02c65e40`  
		Last Modified: Sat, 23 Sep 2017 06:16:04 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703f2c651fd27ff6d43a6ad45727ed36af55d03c4f2b97005dcad7cc7a24b622`  
		Last Modified: Sat, 23 Sep 2017 06:16:04 GMT  
		Size: 4.1 KB (4120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
