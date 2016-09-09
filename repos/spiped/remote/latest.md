## `spiped:latest`

```console
$ docker pull spiped@sha256:fd8fd2953cef62f18b04e0ca826354af6ef7d43c04234f37cd88548f371ee533
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55618365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f7c98c118f09a53ced0aecca88b3102f80f9c575f1483b82cc955cffd89e23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:00:19 GMT
MAINTAINER Tim Düsterhus
# Wed, 31 Aug 2016 01:00:20 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 31 Aug 2016 01:00:33 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 01:00:33 GMT
ENV SPIPED_VERSION=1.5.0
# Wed, 31 Aug 2016 01:00:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Wed, 31 Aug 2016 01:00:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Wed, 31 Aug 2016 01:00:34 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Wed, 31 Aug 2016 01:01:40 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 01:01:40 GMT
VOLUME [/spiped]
# Wed, 31 Aug 2016 01:01:40 GMT
WORKDIR /spiped
# Wed, 31 Aug 2016 01:01:41 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 31 Aug 2016 01:01:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 01:01:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b208e1be9ff68d682667655f73fdc83613fa4d0ab09a69d6c9b463220bb263c`  
		Last Modified: Thu, 08 Sep 2016 18:14:12 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7210b613662f37498745344e3f2849c8c0e4e46fe248e937c55ba0bc1a806`  
		Last Modified: Thu, 08 Sep 2016 18:14:10 GMT  
		Size: 1.7 MB (1689983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9ed67847691d76a74582227a255eadbdfbaa892178e93523c0ba8d4c400fac`  
		Last Modified: Thu, 08 Sep 2016 18:14:09 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b14576465c36a8071aeb76d770b40c20d7203f7fb463e994fc36f3cef69ef0`  
		Last Modified: Thu, 08 Sep 2016 18:14:10 GMT  
		Size: 2.6 MB (2557405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1681768b5aad7e3ff933bdfb7451ce0eb02e87c8067e1fb47a49caf3d737500`  
		Last Modified: Thu, 08 Sep 2016 18:14:09 GMT  
		Size: 94.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad25f312d7587c4ff5f3b2e525512f57b44931d9e6c0b460360431fa29d53a4`  
		Last Modified: Thu, 08 Sep 2016 18:14:09 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
