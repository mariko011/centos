## `solr:7-slim`

```console
$ docker pull solr@sha256:1efcf8d3f8a5577546cf221780ea87771183d5a5667859f5fe7d1b6f0123454d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; s390x

### `solr:7-slim` - linux; amd64

```console
$ docker pull solr@sha256:be5c0bc9c2736cf025b8ec63b2979c33604a19f23d1eeac4325f935b14b34abb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.8 MB (233751890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5ff72dc8770216e610d9230e33beb10e11311272508cf32b06ad045441721`
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
# Mon, 09 Oct 2017 16:59:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.0.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.0.1/solr-7.0.1.tgz SOLR_SHA256=128239cadfd8cb95ce510ce68881cfbb5f16dc559051477f780e1bc490bb7000 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 16:59:20 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Mon, 09 Oct 2017 16:59:27 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 09 Oct 2017 16:59:41 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Mon, 09 Oct 2017 16:59:41 GMT
COPY dir:501f6e3649da78a99f07681dc96470201e38d2e76bc39a5ff6f38189f5f27c94 in /opt/docker-solr/scripts 
# Mon, 09 Oct 2017 16:59:42 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Mon, 09 Oct 2017 16:59:42 GMT
EXPOSE 8983/tcp
# Mon, 09 Oct 2017 16:59:42 GMT
WORKDIR /opt/solr
# Mon, 09 Oct 2017 16:59:42 GMT
USER [solr]
# Mon, 09 Oct 2017 16:59:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 16:59:43 GMT
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
	-	`sha256:84dee8c5e61dd97201d9b8e2b6071e9f16fd85fc7fe4e2eafdac1ce9fe710fba`  
		Last Modified: Mon, 09 Oct 2017 17:01:52 GMT  
		Size: 4.3 KB (4336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b3a5145650074e00d8c65f8f4ed835de3e90069353dfd446bc720e3cf529b5`  
		Last Modified: Mon, 09 Oct 2017 17:01:53 GMT  
		Size: 14.8 KB (14788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d1464c8531d2e0383fb2c2b4394d358c46cf3877bad1d94c4a6d95cd04a80`  
		Last Modified: Mon, 09 Oct 2017 17:02:04 GMT  
		Size: 149.8 MB (149762991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55720ed2de4a0bd1b0d88c5411da86c358b58bfe1ca3c0002e80d6c322380140`  
		Last Modified: Mon, 09 Oct 2017 17:01:54 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0b2e23495abddc36bda7927d841bbdef7ac4b09fb2d6b77774adb75ded1e47`  
		Last Modified: Mon, 09 Oct 2017 17:01:52 GMT  
		Size: 4.1 KB (4119 bytes)  
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
