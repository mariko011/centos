## `solr:6-slim`

```console
$ docker pull solr@sha256:5342688b821926aef26a6fdc54a92c49b62b825130edfa12f1a3702d6d4fc48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6-slim` - linux; amd64

```console
$ docker pull solr@sha256:a6edd2dfe6a5a0fa55667b8fe36b862b21b46edf9b6b284f4f5a84558866ae51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231429445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ad6c4857b72e6afb8145b1a8f6734a00df86e97d63036c26bdc2fc4ff3c998`
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
# Wed, 18 Oct 2017 18:54:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.2 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.2/solr-6.6.2.tgz SOLR_SHA256=a41594888a30394df8819c36ceee727dd2ed0a7cd18b41230648f1ef1a8b0cd2 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Oct 2017 18:54:57 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 18 Oct 2017 18:55:01 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 18 Oct 2017 18:55:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 18 Oct 2017 18:55:17 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Wed, 18 Oct 2017 18:55:18 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 18 Oct 2017 18:55:18 GMT
EXPOSE 8983/tcp
# Wed, 18 Oct 2017 18:55:18 GMT
WORKDIR /opt/solr
# Wed, 18 Oct 2017 18:55:18 GMT
USER [solr]
# Wed, 18 Oct 2017 18:55:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Oct 2017 18:55:19 GMT
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
	-	`sha256:d6befb56cbccb85d657f7b9849c7bb1e5e2b864bf863c8dfd4856494dcace0e0`  
		Last Modified: Wed, 18 Oct 2017 18:57:43 GMT  
		Size: 4.3 KB (4331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655946539e61d560ebb2cc24ccc1191de41fecc7c6d353fa9947f59de7d7e798`  
		Last Modified: Wed, 18 Oct 2017 18:57:43 GMT  
		Size: 3.4 KB (3422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e65f5dcc4e4838903e4a0a10b72a021a03b760cb3fab92c61141f5b049cfec6`  
		Last Modified: Wed, 18 Oct 2017 18:58:04 GMT  
		Size: 147.4 MB (147446416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d6a616df2bb0b88c05b08383e29856e6c5b1a81ce39bcfbb193726afa253ce`  
		Last Modified: Wed, 18 Oct 2017 18:57:43 GMT  
		Size: 4.1 KB (4115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6b46d79b68547fd35a4e64da653c089df5436e8f200e441b4d5efa339d933f`  
		Last Modified: Wed, 18 Oct 2017 18:57:43 GMT  
		Size: 4.1 KB (4122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
