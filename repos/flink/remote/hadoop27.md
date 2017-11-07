## `flink:hadoop27`

```console
$ docker pull flink@sha256:8786b097a21c3bee346caa15350caa9471350e568714ca359fb215ab76421139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:fd3e5ccfcb08ff7107d7b2c45ef52999e4f433911dc4981acd6fee3943f3bf8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.2 MB (376245346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9c3aa63b4039bb01409893784b5874ffc4ee90d4435ec5b046e1fe4a3280db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 17:47:51 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 17:47:51 GMT
ENV GOSU_VERSION=1.7
# Tue, 07 Nov 2017 17:48:09 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 07 Nov 2017 18:11:45 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 07 Nov 2017 18:11:45 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 07 Nov 2017 18:11:45 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:11:47 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 07 Nov 2017 18:11:47 GMT
WORKDIR /opt/flink
# Tue, 07 Nov 2017 18:11:47 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Tue, 07 Nov 2017 18:11:48 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 07 Nov 2017 18:11:48 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 07 Nov 2017 18:12:10 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 07 Nov 2017 18:12:10 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 07 Nov 2017 18:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:12:11 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 07 Nov 2017 18:12:11 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ec658c2340a0106eaa7610469120c2affc43be5a61c85131df0e8d9d378ff8`  
		Last Modified: Tue, 07 Nov 2017 18:12:55 GMT  
		Size: 482.7 KB (482678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94efce9d3ead88441a89efcae32f69dc3b5b6f45c151a3ac7aa3aabff98c5f32`  
		Last Modified: Tue, 07 Nov 2017 18:12:56 GMT  
		Size: 819.2 KB (819176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd40b2f9d7763182dca221e1b23c5dc8f435bd2c8e69c2c841cbb9711e20b51`  
		Last Modified: Tue, 07 Nov 2017 18:25:23 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0269e32a274538a9cc105ff8daa82ab14ab8daf6668708af2e39dcfd8d668b`  
		Last Modified: Tue, 07 Nov 2017 18:25:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624fc70b7e774b05790a3aecb7012e439ddbd61fa94eae4e6995b6dbce64adae`  
		Last Modified: Tue, 07 Nov 2017 18:25:22 GMT  
		Size: 54.7 KB (54700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9fb9740f1b5158b3733194bfe1a93efcc245afa7e4ad485198810637d1a180`  
		Last Modified: Tue, 07 Nov 2017 18:25:39 GMT  
		Size: 147.8 MB (147793903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edf10547495dda94d4332db59cdfa268675ba26ae18830a8f5f5b94dd8fac20`  
		Last Modified: Tue, 07 Nov 2017 18:25:23 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
