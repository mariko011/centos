<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.2`](#kapacitor12)
-	[`kapacitor:1.2.1`](#kapacitor121)
-	[`kapacitor:1.2-alpine`](#kapacitor12-alpine)
-	[`kapacitor:1.2.1-alpine`](#kapacitor121-alpine)
-	[`kapacitor:1.3`](#kapacitor13)
-	[`kapacitor:1.3.1`](#kapacitor131)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.3-alpine`](#kapacitor13-alpine)
-	[`kapacitor:1.3.1-alpine`](#kapacitor131-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)

## `kapacitor:1.2`

```console
$ docker pull kapacitor@sha256:bb77e6927ea70d0a250517dea432abd092ca3ab4ea6a8af72126b5f6b184b57d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82058320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189dbe09ca607b954bed3c24f7a758af1f347855acdb0a12d621f41fecf66c85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 26 Jul 2017 06:05:07 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 26 Jul 2017 06:05:10 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 26 Jul 2017 06:05:10 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 26 Jul 2017 06:05:11 GMT
EXPOSE 9092/tcp
# Wed, 26 Jul 2017 06:05:11 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 26 Jul 2017 06:05:11 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 26 Jul 2017 06:05:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 06:05:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971031a9468f31ff6c7f5c4d04fc62cf0ca3f5d89d0e213352b37533383bc4e`  
		Last Modified: Wed, 26 Jul 2017 06:05:44 GMT  
		Size: 10.2 MB (10182127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831cd355850a68baf9d8294d88c1f4591d1010a79ce71026a88249fd4587bec8`  
		Last Modified: Wed, 26 Jul 2017 06:05:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa363ee50808a9a940bdf8e25b50ada38511e117664df89e152d93cf1466ee4`  
		Last Modified: Wed, 26 Jul 2017 06:05:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1`

```console
$ docker pull kapacitor@sha256:bb77e6927ea70d0a250517dea432abd092ca3ab4ea6a8af72126b5f6b184b57d
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82058320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189dbe09ca607b954bed3c24f7a758af1f347855acdb0a12d621f41fecf66c85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 05:54:22 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 26 Jul 2017 06:05:07 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 26 Jul 2017 06:05:10 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 26 Jul 2017 06:05:10 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 26 Jul 2017 06:05:11 GMT
EXPOSE 9092/tcp
# Wed, 26 Jul 2017 06:05:11 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 26 Jul 2017 06:05:11 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 26 Jul 2017 06:05:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 06:05:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe19bdb595f29aa9966692d393f875211387e912a0b1ec7dd96e6ef0b23c0932`  
		Last Modified: Wed, 26 Jul 2017 05:54:40 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971031a9468f31ff6c7f5c4d04fc62cf0ca3f5d89d0e213352b37533383bc4e`  
		Last Modified: Wed, 26 Jul 2017 06:05:44 GMT  
		Size: 10.2 MB (10182127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831cd355850a68baf9d8294d88c1f4591d1010a79ce71026a88249fd4587bec8`  
		Last Modified: Wed, 26 Jul 2017 06:05:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa363ee50808a9a940bdf8e25b50ada38511e117664df89e152d93cf1466ee4`  
		Last Modified: Wed, 26 Jul 2017 06:05:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:fadc5d06d6261a30011f26d2a83ffb62ea126c478285b00bf382d6f452032d5c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e33fec706f52e9d0b557b87e4a740af52f9d82e03216938f94ba1f6e8d2288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:24:28 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 28 Jun 2017 18:24:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:24:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:24:42 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:24:43 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:24:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:24:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:24:45 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9efdab7b8b9d7166ea17cd717ed62ca0665d8fec1b337ff2c7fdf4f9634bb`  
		Last Modified: Thu, 29 Jun 2017 21:33:40 GMT  
		Size: 7.1 MB (7072647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4428893d488a8db9d5b443ce52926265a2bdaa23d5e94911fd48c86307d89865`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7559504025b65137c954bdc73e95ed66756661d07b2596794c9bed5b29824b25`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:fadc5d06d6261a30011f26d2a83ffb62ea126c478285b00bf382d6f452032d5c
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e33fec706f52e9d0b557b87e4a740af52f9d82e03216938f94ba1f6e8d2288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:24:28 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 28 Jun 2017 18:24:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:24:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:24:42 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:24:43 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:24:44 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:24:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:24:45 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f9efdab7b8b9d7166ea17cd717ed62ca0665d8fec1b337ff2c7fdf4f9634bb`  
		Last Modified: Thu, 29 Jun 2017 21:33:40 GMT  
		Size: 7.1 MB (7072647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4428893d488a8db9d5b443ce52926265a2bdaa23d5e94911fd48c86307d89865`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7559504025b65137c954bdc73e95ed66756661d07b2596794c9bed5b29824b25`  
		Last Modified: Thu, 29 Jun 2017 21:33:39 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:f2e73f9dcc783ea9bc3df988b944c0ab2d6ada41c0543becd51346072f92d754
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.6 MB (102621829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5100a00838cc32b2d2774d6068adb870ff753318b2b96cedb3ecbe27e97c1742`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 06:05:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 26 Jul 2017 06:05:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 26 Jul 2017 06:05:30 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 26 Jul 2017 06:05:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 26 Jul 2017 06:05:34 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 26 Jul 2017 06:05:34 GMT
EXPOSE 9092/tcp
# Wed, 26 Jul 2017 06:05:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 26 Jul 2017 06:05:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 26 Jul 2017 06:05:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 06:05:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939dd98b3d3267ca532fd3ae4c71d7da91ec81ebf9f9a579935f0fd51bcaa6a8`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 10.0 MB (10006592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6f5c3e464148fb5fdae781cef60ac67c30c522d927d3cb61becab3bc7a2a7c`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417e187a7ad9f097aabd3e873d1aca5245cddf240ff4cc5f90a1ba25fcdca682`  
		Last Modified: Wed, 26 Jul 2017 06:06:09 GMT  
		Size: 20.7 MB (20739039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c9aa3e46e6c54ad2287fce8603c0997e80dd60117f7fadca315d6f4afd6471`  
		Last Modified: Wed, 26 Jul 2017 06:06:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abba66e72d6f4a785a0349d2ecd653b656e8417c887086c55dd789b617588fb`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.1`

```console
$ docker pull kapacitor@sha256:f2e73f9dcc783ea9bc3df988b944c0ab2d6ada41c0543becd51346072f92d754
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.6 MB (102621829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5100a00838cc32b2d2774d6068adb870ff753318b2b96cedb3ecbe27e97c1742`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 06:05:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 26 Jul 2017 06:05:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 26 Jul 2017 06:05:30 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 26 Jul 2017 06:05:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 26 Jul 2017 06:05:34 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 26 Jul 2017 06:05:34 GMT
EXPOSE 9092/tcp
# Wed, 26 Jul 2017 06:05:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 26 Jul 2017 06:05:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 26 Jul 2017 06:05:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 06:05:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939dd98b3d3267ca532fd3ae4c71d7da91ec81ebf9f9a579935f0fd51bcaa6a8`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 10.0 MB (10006592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6f5c3e464148fb5fdae781cef60ac67c30c522d927d3cb61becab3bc7a2a7c`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417e187a7ad9f097aabd3e873d1aca5245cddf240ff4cc5f90a1ba25fcdca682`  
		Last Modified: Wed, 26 Jul 2017 06:06:09 GMT  
		Size: 20.7 MB (20739039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c9aa3e46e6c54ad2287fce8603c0997e80dd60117f7fadca315d6f4afd6471`  
		Last Modified: Wed, 26 Jul 2017 06:06:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abba66e72d6f4a785a0349d2ecd653b656e8417c887086c55dd789b617588fb`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:f2e73f9dcc783ea9bc3df988b944c0ab2d6ada41c0543becd51346072f92d754
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.6 MB (102621829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5100a00838cc32b2d2774d6068adb870ff753318b2b96cedb3ecbe27e97c1742`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 06:05:29 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 26 Jul 2017 06:05:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 26 Jul 2017 06:05:30 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 26 Jul 2017 06:05:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Wed, 26 Jul 2017 06:05:34 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 26 Jul 2017 06:05:34 GMT
EXPOSE 9092/tcp
# Wed, 26 Jul 2017 06:05:34 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 26 Jul 2017 06:05:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 26 Jul 2017 06:05:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Jul 2017 06:05:35 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939dd98b3d3267ca532fd3ae4c71d7da91ec81ebf9f9a579935f0fd51bcaa6a8`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 10.0 MB (10006592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6f5c3e464148fb5fdae781cef60ac67c30c522d927d3cb61becab3bc7a2a7c`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417e187a7ad9f097aabd3e873d1aca5245cddf240ff4cc5f90a1ba25fcdca682`  
		Last Modified: Wed, 26 Jul 2017 06:06:09 GMT  
		Size: 20.7 MB (20739039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c9aa3e46e6c54ad2287fce8603c0997e80dd60117f7fadca315d6f4afd6471`  
		Last Modified: Wed, 26 Jul 2017 06:06:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abba66e72d6f4a785a0349d2ecd653b656e8417c887086c55dd789b617588fb`  
		Last Modified: Wed, 26 Jul 2017 06:06:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:2673eab6a61c4e2c44913dd889585d0d5d1f818f14de5b4f7f6d550550c3a1b7
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13082e57956c19f3fcbba808b14f90aed7fad6fc0d04092172a7bf7693bd0700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:25:11 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 28 Jun 2017 18:25:23 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:25:25 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:25:26 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:25:26 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:25:28 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:25:30 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36942c147871d2ac6be76a78c2aa95dced3cf8c7cf545fd64e83ad1e21b4752`  
		Last Modified: Thu, 29 Jun 2017 21:34:59 GMT  
		Size: 14.6 MB (14554545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e4f1be187bdd25bbde26ddd260b18a241faaa8d1590dd1fe5b2dffe13d7a3b`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c7ed64ea18da28cc9ecb924710707986791b411f180f4783b69a5c3140df3`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.1-alpine`

```console
$ docker pull kapacitor@sha256:2673eab6a61c4e2c44913dd889585d0d5d1f818f14de5b4f7f6d550550c3a1b7
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13082e57956c19f3fcbba808b14f90aed7fad6fc0d04092172a7bf7693bd0700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:25:11 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 28 Jun 2017 18:25:23 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:25:25 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:25:26 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:25:26 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:25:28 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:25:30 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36942c147871d2ac6be76a78c2aa95dced3cf8c7cf545fd64e83ad1e21b4752`  
		Last Modified: Thu, 29 Jun 2017 21:34:59 GMT  
		Size: 14.6 MB (14554545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e4f1be187bdd25bbde26ddd260b18a241faaa8d1590dd1fe5b2dffe13d7a3b`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c7ed64ea18da28cc9ecb924710707986791b411f180f4783b69a5c3140df3`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:2673eab6a61c4e2c44913dd889585d0d5d1f818f14de5b4f7f6d550550c3a1b7
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16876059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13082e57956c19f3fcbba808b14f90aed7fad6fc0d04092172a7bf7693bd0700`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 28 Jun 2017 18:25:11 GMT
ENV KAPACITOR_VERSION=1.3.1
# Wed, 28 Jun 2017 18:25:23 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 28 Jun 2017 18:25:25 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 28 Jun 2017 18:25:26 GMT
EXPOSE 9092/tcp
# Wed, 28 Jun 2017 18:25:26 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 28 Jun 2017 18:25:28 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 28 Jun 2017 18:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Jun 2017 18:25:30 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36942c147871d2ac6be76a78c2aa95dced3cf8c7cf545fd64e83ad1e21b4752`  
		Last Modified: Thu, 29 Jun 2017 21:34:59 GMT  
		Size: 14.6 MB (14554545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e4f1be187bdd25bbde26ddd260b18a241faaa8d1590dd1fe5b2dffe13d7a3b`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c7ed64ea18da28cc9ecb924710707986791b411f180f4783b69a5c3140df3`  
		Last Modified: Thu, 29 Jun 2017 21:34:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
