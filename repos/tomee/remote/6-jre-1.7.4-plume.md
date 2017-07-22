## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:c6a6e513a4b34425445bb7e33282c0fe8cb0e58989ffdd462c95bda9b02d596f
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150129142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ce93c30706711fa2de9a883d90a141e984bef6a024647925c519df9292ddff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 02:16:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 03:54:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:54:36 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 03:54:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 03:54:40 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 03:54:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 03:54:42 GMT
ENV JAVA_VERSION=6b38
# Fri, 07 Jul 2017 03:54:43 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Jul 2017 21:59:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 03:58:02 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 03:58:04 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 22 Jul 2017 03:58:04 GMT
WORKDIR /usr/local/tomee
# Sat, 22 Jul 2017 03:58:04 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 22 Jul 2017 03:58:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Jul 2017 03:58:27 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 22 Jul 2017 03:58:27 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 03:58:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847af1098f35d70519db6b09652f608f05097baa9631fa719f156d19da80fad8`  
		Last Modified: Fri, 07 Jul 2017 05:59:14 GMT  
		Size: 360.7 KB (360683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29276d9b483409172e9bca6c6d2f1f44ff2ea77e0cc4aadf28717dcbb68b60f`  
		Last Modified: Fri, 07 Jul 2017 05:59:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33dc940f8cf7f17818c8a9abe0a512029c500231dea29258ff82a68edfb55778`  
		Last Modified: Fri, 07 Jul 2017 05:59:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244cf160613a53fea8036af764a9618122ce8dba6b4eb890e3b304d262687c20`  
		Last Modified: Fri, 21 Jul 2017 22:20:25 GMT  
		Size: 53.1 MB (53135734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d32b98aea3709fb5351743e21b68dd495645c64f228f74cc08b54a497abd896`  
		Last Modified: Sat, 22 Jul 2017 04:02:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db7995dfc66c923cbafae24d877f57b3cff9a5a6f80646b96624c5a761ac9c2`  
		Last Modified: Sat, 22 Jul 2017 04:02:20 GMT  
		Size: 30.3 KB (30348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a7397e63d871dadc2f58edeb7e5ef68df5861042bbf983b44344d01a15a955`  
		Last Modified: Sat, 22 Jul 2017 04:02:37 GMT  
		Size: 51.5 MB (51549453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
