## `clojure:boot-2.7.1`

```console
$ docker pull clojure@sha256:c123bb962c424f7ce00b19be443f750a384d2b433f9ca1776d8197560cb7ac4a
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.1 MB (328050119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325a19e6c880112c04828ef7b3cfa7f5b058fa5b3262cfc96af838f61407f0c0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:09:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:10:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:10:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 19:46:48 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 24 Jul 2017 19:46:49 GMT
ENV BOOT_VERSION=2.7.1
# Mon, 24 Jul 2017 19:46:49 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 24 Jul 2017 19:46:49 GMT
WORKDIR /tmp
# Mon, 24 Jul 2017 19:46:50 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 24 Jul 2017 19:46:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 24 Jul 2017 19:46:51 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 24 Jul 2017 19:49:41 GMT
RUN boot
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f81f3143db2f0e6bdd549cbb9a6128c217f2ef192c12b6044daed277cde2ae9`  
		Last Modified: Mon, 24 Jul 2017 18:22:46 GMT  
		Size: 183.1 MB (183109092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2034c15120cdd40d7f2d92f1233386821c361a328aea3b35a7345972a1d475c9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7117db93cbe9d8627f822f51036d5fcb4369964b78e597f30488f9143b44a206`  
		Last Modified: Mon, 24 Jul 2017 19:50:19 GMT  
		Size: 6.6 KB (6594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a872c7ba6c79dc54822d4852f27c594f16e584906a6794cdf5d6f6f67085792`  
		Last Modified: Mon, 24 Jul 2017 19:50:23 GMT  
		Size: 33.3 MB (33336367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
