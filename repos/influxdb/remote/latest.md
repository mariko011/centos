## `influxdb:latest`

```console
$ docker pull influxdb@sha256:a84277949ec7023feaa8097ef58d30cbe6fd443b5d44259a0520dae48bc70621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:b9a0bb9a3c36b212a69a1ff8c49c6228f1fe954a8a6f1e2dc9f49922321ff428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79965298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f466aff6230414fae2f350f7995868a0613f21c3924ff7fcc6c8a170df859869`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 29 Sep 2017 17:29:38 GMT
ENV INFLUXDB_VERSION=1.3.6
# Fri, 29 Sep 2017 17:29:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 29 Sep 2017 17:29:51 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 29 Sep 2017 17:29:51 GMT
EXPOSE 8086/tcp
# Fri, 29 Sep 2017 17:29:52 GMT
VOLUME [/var/lib/influxdb]
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Fri, 29 Sep 2017 17:29:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Sep 2017 17:29:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952dd976b2726b7c9e3a50bdd09fbb09c528ae2a1428793913166cbc7f7b02d`  
		Last Modified: Thu, 21 Sep 2017 16:40:42 GMT  
		Size: 6.6 KB (6555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1915492c6ba157e0a5a5c5b68ebe532cfc01a914f5e0408794b2d640affb60`  
		Last Modified: Fri, 29 Sep 2017 17:30:41 GMT  
		Size: 19.1 MB (19093952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6b916da5b66ec60c6049cea32ce516e6a438b2576537833a990ba5203a97a`  
		Last Modified: Fri, 29 Sep 2017 17:30:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dd99226f1d6c8a8fb5f90e07c24da0b61eb229daea96d1d22cf804ad362f87`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df038b4125047af18068006ed78424fcfbbca6d2c92999d69aab1e20307e544`  
		Last Modified: Fri, 29 Sep 2017 17:30:37 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:29a02dca4ee1cddea40c98805562aab792a588c89d320b505b26bde7fd9e3a5f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74030263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af2f194083f93b51a0971ad29fbb8f73a629824bd133817d65ce94e9e28bca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 06:59:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 30 Sep 2017 09:12:29 GMT
ENV INFLUXDB_VERSION=1.3.6
# Sat, 30 Sep 2017 09:12:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 30 Sep 2017 09:12:33 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 30 Sep 2017 09:12:33 GMT
EXPOSE 8086/tcp
# Sat, 30 Sep 2017 09:12:33 GMT
VOLUME [/var/lib/influxdb]
# Sat, 30 Sep 2017 09:12:34 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 30 Sep 2017 09:12:34 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Sat, 30 Sep 2017 09:12:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 30 Sep 2017 09:12:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5c3d61e3c171cce134fcbb590320cb164b413cf90506393e6d97a8fd47068`  
		Last Modified: Wed, 27 Sep 2017 06:59:37 GMT  
		Size: 6.6 KB (6581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6855abc3084115dc74487b582a01078e1daa1a5f2b4bf81a1629b041b78fce`  
		Last Modified: Sat, 30 Sep 2017 09:12:51 GMT  
		Size: 18.1 MB (18143175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784af02e3851832fd0e8362653cc04a3e80dde2f95e16b9d2ad7539a33b5befb`  
		Last Modified: Sat, 30 Sep 2017 09:12:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8f437f05d5ae7ae00952e2306f2eef81a62804f0db70a0b208ba7598f660f4`  
		Last Modified: Sat, 30 Sep 2017 09:12:45 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8510d1a3c47e2ee68e0d166cbece9c2a2186c5cb3d43f8fc6f0798188084e`  
		Last Modified: Sat, 30 Sep 2017 09:12:45 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:1e81b5bb98406b40bb6f1a2e857ca666056c54ab078e5394055b84acf4b3ecfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75392649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77df5845a902d342ac041c7262af8e6a2ffddb50267280173bff42566dd17103`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 21 Sep 2017 16:40:17 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 21 Sep 2017 16:40:42 GMT
ENV INFLUXDB_VERSION=1.3.5
# Thu, 21 Sep 2017 16:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 21 Sep 2017 16:40:52 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 21 Sep 2017 16:40:53 GMT
EXPOSE 8086/tcp
# Thu, 21 Sep 2017 16:40:53 GMT
VOLUME [/var/lib/influxdb]
# Thu, 21 Sep 2017 16:40:54 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
COPY file:cca8e5bdb025c728ca8521b015ace9545c2552d075f4c92d7345294a6f1371c2 in /init-influxdb.sh 
# Thu, 21 Sep 2017 16:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Sep 2017 16:40:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188e04b5dcbad33a400c251d9f1e1ed7a6dc2fdb5662f89bb5eca31950bc581`  
		Last Modified: Thu, 21 Sep 2017 16:41:12 GMT  
		Size: 6.6 KB (6561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce274ebaaebc73d0e750f91a638cda5327050e1354f9b51d358265824f7bc8be`  
		Last Modified: Thu, 21 Sep 2017 16:41:51 GMT  
		Size: 18.0 MB (18030614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c72f9fd3642ca6fc0e54ba9850ca4969f0f96989d576ec678a1e261707f2c90`  
		Last Modified: Thu, 21 Sep 2017 16:41:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb466fbbbc517290592a9a959315b5e41cc865f4c3a7259f6f29625a06bdd590`  
		Last Modified: Thu, 21 Sep 2017 16:41:45 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a94bd667a1c0ef5276ee87f79e4f34d0d97b71ee64ec01c25cbb33f03138d4`  
		Last Modified: Thu, 21 Sep 2017 16:41:44 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
