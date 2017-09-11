## `tomee:6-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:2b51115c12734aa87c6d05f4925966023872aa0a3c306da92ba8903430d820aa
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-jaxrs` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174214231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a7234735afbf557d03e19953f6ed053a2294267d5611e9f05b3ac0b3c41359`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:32:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:32:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:49:51 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:49:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:49:52 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_VERSION=6b38
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 09 Sep 2017 00:55:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 16:14:53 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:14:54 GMT
RUN mkdir -p /usr/local/tomee
# Mon, 11 Sep 2017 16:14:55 GMT
WORKDIR /usr/local/tomee
# Mon, 11 Sep 2017 16:14:55 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Mon, 11 Sep 2017 16:14:59 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:15:06 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Mon, 11 Sep 2017 16:15:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:15:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9984d33964d5be0a6994369af9b8e3099ef8b1da68a1a5ef6509716353f79`  
		Last Modified: Thu, 07 Sep 2017 23:57:20 GMT  
		Size: 6.9 MB (6949665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad5bf63077b3c015b58db1be1f8316755e5f4768292a3053d15f02aeb1c49c3`  
		Last Modified: Sat, 09 Sep 2017 00:30:05 GMT  
		Size: 360.7 KB (360678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936e82a13841098791688f7f1bccafe687eb1d04e4468a8111c68db123dcf571`  
		Last Modified: Sat, 09 Sep 2017 00:30:04 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf64abef0fb21f9bd928a1a541868ee04d2b0648bf434e724918c0205457bc`  
		Last Modified: Sat, 09 Sep 2017 00:30:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fc5b0943fba35bb64d77ebfa2c5cbff70d4b97a94e99bf4d37e43bf5df2059`  
		Last Modified: Sat, 09 Sep 2017 01:02:22 GMT  
		Size: 94.2 MB (94167695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e447955e335863cb9babdc1e4ee38d7c19aa592955a5190129f2b6c8b38008`  
		Last Modified: Mon, 11 Sep 2017 16:20:44 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faf2ed18bf46f524060405b7443d58c41b3f0d787c93434877740a5b9f3edd4`  
		Last Modified: Mon, 11 Sep 2017 16:20:44 GMT  
		Size: 30.4 KB (30355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0443a2cfce6165df65215c6683ca65d59206f078d8b5f5ff72ecb92522ebe8`  
		Last Modified: Mon, 11 Sep 2017 16:20:51 GMT  
		Size: 34.6 MB (34602196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
