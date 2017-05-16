## `flink:hadoop24`

```console
$ docker pull flink@sha256:d098a5fb2d277859cbea66f571cc6a88f378504690a450f0fdc81462bf773051
```

-	Platforms:
	-	linux; amd64

### `flink:hadoop24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248887968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68c5427ac5f8001aac871617e2d9a179136a4ce3d3d60a084eaca5ff1e456a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:44:27 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:44:28 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:44:28 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:44:30 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:44:50 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:44:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz
# Tue, 16 May 2017 20:44:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:44:53 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:45:24 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:45:42 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:45:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:45:43 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:46:04 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e8e757b080ce6ee536cc6a2476b9094b49624e1b310cf435e8fd98ef3dab92`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 5.0 KB (4971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6fd16327805595275ca4dbad1e4cc5cb2856f9d37a246b2648c268636764f2`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62b7a53a56607db1f8d30e8b12e93afe7ea42d9a19b6d96621cdd9d89d651ea`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5b952622285031ee6620645dd0a4a23c208ec5625e63e88f23612a06bdf1fe`  
		Last Modified: Tue, 16 May 2017 20:59:52 GMT  
		Size: 121.1 MB (121066295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ea3d29daec9fe55a02c265d2e00bbc3a713ffd3cb2a1a8dfdd2f2d9eb0b065`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
