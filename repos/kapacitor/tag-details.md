<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.1`](#kapacitor11)
-	[`kapacitor:1.1.1`](#kapacitor111)
-	[`kapacitor:1.1-alpine`](#kapacitor11-alpine)
-	[`kapacitor:1.1.1-alpine`](#kapacitor111-alpine)
-	[`kapacitor:1.2`](#kapacitor12)
-	[`kapacitor:1.2.1`](#kapacitor121)
-	[`kapacitor:latest`](#kapacitorlatest)
-	[`kapacitor:1.2-alpine`](#kapacitor12-alpine)
-	[`kapacitor:1.2.1-alpine`](#kapacitor121-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)

## `kapacitor:1.1`

```console
$ docker pull kapacitor@sha256:0a306f6f05f83ac755cdcb29d346d7f785130364462af038904bb86a480936ba
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81573800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d89ae50ecb81b047f84faa38aa34554b3c8f23019236452a4c456d62694d05c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:22:29 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 16 May 2017 20:22:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:22:34 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 May 2017 20:22:35 GMT
EXPOSE 9092/tcp
# Tue, 16 May 2017 20:22:56 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 May 2017 20:22:58 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 May 2017 20:22:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:22:59 GMT
CMD ["kapacitord"]
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09947e3eff8f3ebbb8d956add6860decfb63b831c1bf77f5072c055d0cbc5f2a`  
		Last Modified: Tue, 16 May 2017 20:29:32 GMT  
		Size: 9.7 MB (9715108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fd743bb64d694aff47bdd7e9fd7277b7c709ee8144928006276cea5867e591`  
		Last Modified: Tue, 16 May 2017 20:29:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952b2fcbcd40ff67778ffbc34a60261a75a434185c38b26883743b1ddc804c`  
		Last Modified: Tue, 16 May 2017 20:29:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1`

```console
$ docker pull kapacitor@sha256:0a306f6f05f83ac755cdcb29d346d7f785130364462af038904bb86a480936ba
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81573800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d89ae50ecb81b047f84faa38aa34554b3c8f23019236452a4c456d62694d05c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:22:29 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 16 May 2017 20:22:33 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:22:34 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 May 2017 20:22:35 GMT
EXPOSE 9092/tcp
# Tue, 16 May 2017 20:22:56 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 May 2017 20:22:58 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 May 2017 20:22:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:22:59 GMT
CMD ["kapacitord"]
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09947e3eff8f3ebbb8d956add6860decfb63b831c1bf77f5072c055d0cbc5f2a`  
		Last Modified: Tue, 16 May 2017 20:29:32 GMT  
		Size: 9.7 MB (9715108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fd743bb64d694aff47bdd7e9fd7277b7c709ee8144928006276cea5867e591`  
		Last Modified: Tue, 16 May 2017 20:29:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952b2fcbcd40ff67778ffbc34a60261a75a434185c38b26883743b1ddc804c`  
		Last Modified: Tue, 16 May 2017 20:29:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1-alpine`

```console
$ docker pull kapacitor@sha256:9b34ee202e54fea8af1bfed310aff8d3fb5431ae86494c02633a54c88cbac2f8
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9052427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a967aa514a4baa4c7ddf57f6fa3eaeb3d8214a4700274a7267219deae105036`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:47:39 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 16 May 2017 20:25:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:25:45 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 May 2017 20:25:46 GMT
EXPOSE 9092/tcp
# Tue, 16 May 2017 20:25:47 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 May 2017 20:25:48 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 16 May 2017 20:26:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:26:09 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc66810df7bcd35ef7a88b8f46f2fdf4f857560a718fa39d0d61685fc405ed0`  
		Last Modified: Tue, 16 May 2017 20:30:50 GMT  
		Size: 6.7 MB (6733278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5e4f9db2016f09c3293d7b39389b3e14ba4b9ca682c12d0e3319e4109600c`  
		Last Modified: Tue, 16 May 2017 20:30:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b383e6e41dbf3f17188b2037cef4da7fd55118044215e41ba48c777ae893e61f`  
		Last Modified: Tue, 16 May 2017 20:30:48 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.1.1-alpine`

```console
$ docker pull kapacitor@sha256:9b34ee202e54fea8af1bfed310aff8d3fb5431ae86494c02633a54c88cbac2f8
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.1.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9052427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a967aa514a4baa4c7ddf57f6fa3eaeb3d8214a4700274a7267219deae105036`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:47:39 GMT
ENV KAPACITOR_VERSION=1.1.1
# Tue, 16 May 2017 20:25:37 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:25:45 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 May 2017 20:25:46 GMT
EXPOSE 9092/tcp
# Tue, 16 May 2017 20:25:47 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 May 2017 20:25:48 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 16 May 2017 20:26:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:26:09 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc66810df7bcd35ef7a88b8f46f2fdf4f857560a718fa39d0d61685fc405ed0`  
		Last Modified: Tue, 16 May 2017 20:30:50 GMT  
		Size: 6.7 MB (6733278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5e4f9db2016f09c3293d7b39389b3e14ba4b9ca682c12d0e3319e4109600c`  
		Last Modified: Tue, 16 May 2017 20:30:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b383e6e41dbf3f17188b2037cef4da7fd55118044215e41ba48c777ae893e61f`  
		Last Modified: Tue, 16 May 2017 20:30:48 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2`

```console
$ docker pull kapacitor@sha256:5e0efb466e0fa90b14729a982558ca95a4f022ac0e882469b8678dfffc0fc87e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82046322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c86e4e5da946299585fc62e7b4133c0133da3a42f30b15a6b1ad777e533982d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:26:50 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 16 May 2017 20:26:53 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:27:13 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 May 2017 20:27:14 GMT
EXPOSE 9092/tcp
# Tue, 16 May 2017 20:27:15 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 May 2017 20:27:16 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 May 2017 20:27:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:27:37 GMT
CMD ["kapacitord"]
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ae4abd1b709d6c4a8eec8cafbd3855a52231ddb7e6e0d8cd0ab8652a42dc00`  
		Last Modified: Tue, 16 May 2017 20:32:10 GMT  
		Size: 10.2 MB (10187632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8082cdfa7feeb50e3748387bd15240cdff0d4da7942741348e3b67fb2b473f58`  
		Last Modified: Tue, 16 May 2017 20:32:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d68e56fa0648b22095262a70151e9bb33922c63f612c3f7f2e00b39de56a29`  
		Last Modified: Tue, 16 May 2017 20:32:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1`

```console
$ docker pull kapacitor@sha256:5e0efb466e0fa90b14729a982558ca95a4f022ac0e882469b8678dfffc0fc87e
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82046322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c86e4e5da946299585fc62e7b4133c0133da3a42f30b15a6b1ad777e533982d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:13:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:26:50 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 16 May 2017 20:26:53 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 16 May 2017 20:27:13 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 16 May 2017 20:27:14 GMT
EXPOSE 9092/tcp
# Tue, 16 May 2017 20:27:15 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 16 May 2017 20:27:16 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 16 May 2017 20:27:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:27:37 GMT
CMD ["kapacitord"]
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
	-	`sha256:f88d0bd5c1f2ec7b1035576b97ef429926110b68d40093549a92c0bb1e1aec7e`  
		Last Modified: Tue, 16 May 2017 20:17:15 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ae4abd1b709d6c4a8eec8cafbd3855a52231ddb7e6e0d8cd0ab8652a42dc00`  
		Last Modified: Tue, 16 May 2017 20:32:10 GMT  
		Size: 10.2 MB (10187632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8082cdfa7feeb50e3748387bd15240cdff0d4da7942741348e3b67fb2b473f58`  
		Last Modified: Tue, 16 May 2017 20:32:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d68e56fa0648b22095262a70151e9bb33922c63f612c3f7f2e00b39de56a29`  
		Last Modified: Tue, 16 May 2017 20:32:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:811ce3fdc9d0e24fe9e92c1ef0cdfe2a721ae48fb97ee5e0c43e028814ab9411
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82046328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97982a7fb1194f30c3b45b4a64c4f570393524e8f8947ad834a550b319445c6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:17:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 17:22:36 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 09 May 2017 17:22:41 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Tue, 09 May 2017 17:22:42 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 09 May 2017 17:22:43 GMT
EXPOSE 9092/tcp
# Tue, 09 May 2017 17:22:43 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 09 May 2017 17:22:44 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 09 May 2017 17:22:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 17:22:46 GMT
CMD ["kapacitord"]
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
	-	`sha256:006066d0079f93a23bbec594b6d3c4360352cb33827f3e577b4ae1b66c2250fa`  
		Last Modified: Tue, 09 May 2017 22:55:57 GMT  
		Size: 6.8 KB (6794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a0cecdf039ec78e69e23797b690b10244df4bf1da8100532ff18bc7fd5125e`  
		Last Modified: Sat, 13 May 2017 06:52:19 GMT  
		Size: 10.2 MB (10187630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d154783be0c0228f6e087776eb8f3ef84ff6802ede56a5fbadf12e43ad475dfe`  
		Last Modified: Sat, 13 May 2017 06:52:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7c6edc730a430c173d2ba90799002c692614ebad2a16db3c194540786bd0dd`  
		Last Modified: Sat, 13 May 2017 06:52:17 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:949beb409df1f4788c7991bf85f7d88b588b732d862168b5f53d47c47697d40b
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9391795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439999c1efe593dbd916ff03d06217738b6a89f7537051de25a6671a9414a375`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:48:14 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 10 May 2017 21:48:22 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:48:23 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 10 May 2017 21:48:24 GMT
EXPOSE 9092/tcp
# Wed, 10 May 2017 21:48:25 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 10 May 2017 21:48:26 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 10 May 2017 21:48:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:48:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d01009a4f1725598c004afb679cc1836f345782cd8aa0808ae76042db05b10`  
		Last Modified: Sat, 13 May 2017 06:53:31 GMT  
		Size: 7.1 MB (7072647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcd63b7e92629804fde6379f7f343ce0dd6aefded408c3dd311171b9675500`  
		Last Modified: Sat, 13 May 2017 06:53:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5873682ca6639e968edd699da777b6927049d5718877fe31dd9493042220de`  
		Last Modified: Sat, 13 May 2017 06:53:29 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:949beb409df1f4788c7991bf85f7d88b588b732d862168b5f53d47c47697d40b
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9391795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439999c1efe593dbd916ff03d06217738b6a89f7537051de25a6671a9414a375`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:48:14 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 10 May 2017 21:48:22 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:48:23 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 10 May 2017 21:48:24 GMT
EXPOSE 9092/tcp
# Wed, 10 May 2017 21:48:25 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 10 May 2017 21:48:26 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 10 May 2017 21:48:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:48:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d01009a4f1725598c004afb679cc1836f345782cd8aa0808ae76042db05b10`  
		Last Modified: Sat, 13 May 2017 06:53:31 GMT  
		Size: 7.1 MB (7072647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcd63b7e92629804fde6379f7f343ce0dd6aefded408c3dd311171b9675500`  
		Last Modified: Sat, 13 May 2017 06:53:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5873682ca6639e968edd699da777b6927049d5718877fe31dd9493042220de`  
		Last Modified: Sat, 13 May 2017 06:53:29 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:949beb409df1f4788c7991bf85f7d88b588b732d862168b5f53d47c47697d40b
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9391795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439999c1efe593dbd916ff03d06217738b6a89f7537051de25a6671a9414a375`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:48:14 GMT
ENV KAPACITOR_VERSION=1.2.1
# Wed, 10 May 2017 21:48:22 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:48:23 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 10 May 2017 21:48:24 GMT
EXPOSE 9092/tcp
# Wed, 10 May 2017 21:48:25 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 10 May 2017 21:48:26 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 10 May 2017 21:48:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:48:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d01009a4f1725598c004afb679cc1836f345782cd8aa0808ae76042db05b10`  
		Last Modified: Sat, 13 May 2017 06:53:31 GMT  
		Size: 7.1 MB (7072647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fcd63b7e92629804fde6379f7f343ce0dd6aefded408c3dd311171b9675500`  
		Last Modified: Sat, 13 May 2017 06:53:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5873682ca6639e968edd699da777b6927049d5718877fe31dd9493042220de`  
		Last Modified: Sat, 13 May 2017 06:53:29 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
