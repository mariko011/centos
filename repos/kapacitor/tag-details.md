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

## `kapacitor:1.2-alpine`

```console
$ docker pull kapacitor@sha256:05f3aad8a4c525f38c4cef84559bac1850fca6d4a56355490abdf73444cb7695
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9391812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb14a76ba168c7dd1c9514ba326fde993df18b76a2b9da4c65ee73a485960735`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 30 May 2017 16:29:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 30 May 2017 20:38:02 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 30 May 2017 20:38:14 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 May 2017 20:38:16 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 30 May 2017 20:38:16 GMT
EXPOSE 9092/tcp
# Tue, 30 May 2017 20:38:17 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 30 May 2017 20:38:18 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 30 May 2017 20:38:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 May 2017 20:38:20 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb7a10a08f9c25306f2f520f46b33d97a83c5a4138ad35810dad882d0982231`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71130970dc6fade1f08d25529fb3dba0fa5fc7e54805e661b37dc92af03f3c73`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 350.6 KB (350645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea06d0b74ed97bd4a52d8cbfafd305266ee65edbed028a54fe65d6c2a0861cb2`  
		Last Modified: Tue, 30 May 2017 20:39:26 GMT  
		Size: 7.1 MB (7072635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f24cba9e3d179145b88e483d861407bd2cef1d1e6c10384785c03a286052232`  
		Last Modified: Tue, 30 May 2017 20:39:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666604549dc1c2a3340e208afe3644d30222c2bfd3b1ffa9c19af900976e3e05`  
		Last Modified: Tue, 30 May 2017 20:39:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.2.1-alpine`

```console
$ docker pull kapacitor@sha256:05f3aad8a4c525f38c4cef84559bac1850fca6d4a56355490abdf73444cb7695
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.2.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9391812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb14a76ba168c7dd1c9514ba326fde993df18b76a2b9da4c65ee73a485960735`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 30 May 2017 16:29:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 30 May 2017 20:38:02 GMT
ENV KAPACITOR_VERSION=1.2.1
# Tue, 30 May 2017 20:38:14 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 30 May 2017 20:38:16 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 30 May 2017 20:38:16 GMT
EXPOSE 9092/tcp
# Tue, 30 May 2017 20:38:17 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 30 May 2017 20:38:18 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Tue, 30 May 2017 20:38:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 May 2017 20:38:20 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb7a10a08f9c25306f2f520f46b33d97a83c5a4138ad35810dad882d0982231`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71130970dc6fade1f08d25529fb3dba0fa5fc7e54805e661b37dc92af03f3c73`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 350.6 KB (350645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea06d0b74ed97bd4a52d8cbfafd305266ee65edbed028a54fe65d6c2a0861cb2`  
		Last Modified: Tue, 30 May 2017 20:39:26 GMT  
		Size: 7.1 MB (7072635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f24cba9e3d179145b88e483d861407bd2cef1d1e6c10384785c03a286052232`  
		Last Modified: Tue, 30 May 2017 20:39:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666604549dc1c2a3340e208afe3644d30222c2bfd3b1ffa9c19af900976e3e05`  
		Last Modified: Tue, 30 May 2017 20:39:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:66cb2acc417874467c3d6574660754b8c802e36c28d0a877963fed49d8cb36d6
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92602464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d095c3d1a7c83efbfa243e48b2c91691d6e652bce97e8a0b0ee92c16417164`
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
# Fri, 02 Jun 2017 21:33:13 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 02 Jun 2017 21:33:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 02 Jun 2017 21:33:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Jun 2017 21:33:38 GMT
EXPOSE 9092/tcp
# Fri, 02 Jun 2017 21:33:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Jun 2017 21:33:40 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 02 Jun 2017 21:33:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 21:33:42 GMT
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
	-	`sha256:ea11791c2defbcc0d8ce72992afdf47d03a48dbd157f2ed03ff67fa3b70e9179`  
		Last Modified: Fri, 02 Jun 2017 21:51:39 GMT  
		Size: 20.7 MB (20743772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e61bb1871ea9b8f50145d0107a52e4734c91f776d303a94f2ae837b0ac99755`  
		Last Modified: Fri, 02 Jun 2017 21:51:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc5973ef8bbb68f9bbf1deb967d9866ff556c716e9234902b43be030be3760`  
		Last Modified: Fri, 02 Jun 2017 21:51:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.1`

```console
$ docker pull kapacitor@sha256:66cb2acc417874467c3d6574660754b8c802e36c28d0a877963fed49d8cb36d6
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92602464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d095c3d1a7c83efbfa243e48b2c91691d6e652bce97e8a0b0ee92c16417164`
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
# Fri, 02 Jun 2017 21:33:13 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 02 Jun 2017 21:33:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 02 Jun 2017 21:33:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Jun 2017 21:33:38 GMT
EXPOSE 9092/tcp
# Fri, 02 Jun 2017 21:33:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Jun 2017 21:33:40 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 02 Jun 2017 21:33:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 21:33:42 GMT
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
	-	`sha256:ea11791c2defbcc0d8ce72992afdf47d03a48dbd157f2ed03ff67fa3b70e9179`  
		Last Modified: Fri, 02 Jun 2017 21:51:39 GMT  
		Size: 20.7 MB (20743772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e61bb1871ea9b8f50145d0107a52e4734c91f776d303a94f2ae837b0ac99755`  
		Last Modified: Fri, 02 Jun 2017 21:51:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc5973ef8bbb68f9bbf1deb967d9866ff556c716e9234902b43be030be3760`  
		Last Modified: Fri, 02 Jun 2017 21:51:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:66cb2acc417874467c3d6574660754b8c802e36c28d0a877963fed49d8cb36d6
```

-	Platforms:
	-	linux; amd64

### `kapacitor:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92602464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d095c3d1a7c83efbfa243e48b2c91691d6e652bce97e8a0b0ee92c16417164`
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
# Fri, 02 Jun 2017 21:33:13 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 02 Jun 2017 21:33:19 GMT
RUN wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_amd64.deb.asc kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_amd64.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_amd64.deb*
# Fri, 02 Jun 2017 21:33:38 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Jun 2017 21:33:38 GMT
EXPOSE 9092/tcp
# Fri, 02 Jun 2017 21:33:39 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Jun 2017 21:33:40 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 02 Jun 2017 21:33:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 21:33:42 GMT
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
	-	`sha256:ea11791c2defbcc0d8ce72992afdf47d03a48dbd157f2ed03ff67fa3b70e9179`  
		Last Modified: Fri, 02 Jun 2017 21:51:39 GMT  
		Size: 20.7 MB (20743772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e61bb1871ea9b8f50145d0107a52e4734c91f776d303a94f2ae837b0ac99755`  
		Last Modified: Fri, 02 Jun 2017 21:51:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfc5973ef8bbb68f9bbf1deb967d9866ff556c716e9234902b43be030be3760`  
		Last Modified: Fri, 02 Jun 2017 21:51:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:acf8d039044732b6abf8989b283eb95802c987ca0bc090e0beb5c2457cdbdfe1
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16873704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3a952dddad9c99fc6f0d607c62dbac42c94d8355af45bf70f96445d6fcac76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 30 May 2017 16:29:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 02 Jun 2017 21:34:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 02 Jun 2017 21:34:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 02 Jun 2017 21:34:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Jun 2017 21:34:21 GMT
EXPOSE 9092/tcp
# Fri, 02 Jun 2017 21:34:22 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Jun 2017 21:34:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 02 Jun 2017 21:34:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 21:34:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb7a10a08f9c25306f2f520f46b33d97a83c5a4138ad35810dad882d0982231`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71130970dc6fade1f08d25529fb3dba0fa5fc7e54805e661b37dc92af03f3c73`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 350.6 KB (350645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caf1da34b7ed590f83ce855e701878eefd534beafec45fa0cbbf2ef6ea761e1`  
		Last Modified: Fri, 02 Jun 2017 21:58:23 GMT  
		Size: 14.6 MB (14554527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78577dd126f6e3f4954d38f1e00d5a04003930f35503e9a36042e9cc2ab5f9ea`  
		Last Modified: Fri, 02 Jun 2017 21:58:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81a0ca49e05cbcf1389449cf0153cd8bf5e0d2ddfb9253fe9e2e6b62dea79cb`  
		Last Modified: Fri, 02 Jun 2017 21:58:19 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.1-alpine`

```console
$ docker pull kapacitor@sha256:acf8d039044732b6abf8989b283eb95802c987ca0bc090e0beb5c2457cdbdfe1
```

-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16873704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3a952dddad9c99fc6f0d607c62dbac42c94d8355af45bf70f96445d6fcac76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 30 May 2017 16:29:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 02 Jun 2017 21:34:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 02 Jun 2017 21:34:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 02 Jun 2017 21:34:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Jun 2017 21:34:21 GMT
EXPOSE 9092/tcp
# Fri, 02 Jun 2017 21:34:22 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Jun 2017 21:34:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 02 Jun 2017 21:34:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 21:34:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb7a10a08f9c25306f2f520f46b33d97a83c5a4138ad35810dad882d0982231`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71130970dc6fade1f08d25529fb3dba0fa5fc7e54805e661b37dc92af03f3c73`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 350.6 KB (350645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caf1da34b7ed590f83ce855e701878eefd534beafec45fa0cbbf2ef6ea761e1`  
		Last Modified: Fri, 02 Jun 2017 21:58:23 GMT  
		Size: 14.6 MB (14554527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78577dd126f6e3f4954d38f1e00d5a04003930f35503e9a36042e9cc2ab5f9ea`  
		Last Modified: Fri, 02 Jun 2017 21:58:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81a0ca49e05cbcf1389449cf0153cd8bf5e0d2ddfb9253fe9e2e6b62dea79cb`  
		Last Modified: Fri, 02 Jun 2017 21:58:19 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:acf8d039044732b6abf8989b283eb95802c987ca0bc090e0beb5c2457cdbdfe1
```

-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16873704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3a952dddad9c99fc6f0d607c62dbac42c94d8355af45bf70f96445d6fcac76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:29:15 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 30 May 2017 16:29:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 02 Jun 2017 21:34:08 GMT
ENV KAPACITOR_VERSION=1.3.1
# Fri, 02 Jun 2017 21:34:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 02 Jun 2017 21:34:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 02 Jun 2017 21:34:21 GMT
EXPOSE 9092/tcp
# Fri, 02 Jun 2017 21:34:22 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Jun 2017 21:34:24 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 02 Jun 2017 21:34:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 21:34:27 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb7a10a08f9c25306f2f520f46b33d97a83c5a4138ad35810dad882d0982231`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71130970dc6fade1f08d25529fb3dba0fa5fc7e54805e661b37dc92af03f3c73`  
		Last Modified: Tue, 30 May 2017 16:30:02 GMT  
		Size: 350.6 KB (350645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caf1da34b7ed590f83ce855e701878eefd534beafec45fa0cbbf2ef6ea761e1`  
		Last Modified: Fri, 02 Jun 2017 21:58:23 GMT  
		Size: 14.6 MB (14554527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78577dd126f6e3f4954d38f1e00d5a04003930f35503e9a36042e9cc2ab5f9ea`  
		Last Modified: Fri, 02 Jun 2017 21:58:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81a0ca49e05cbcf1389449cf0153cd8bf5e0d2ddfb9253fe9e2e6b62dea79cb`  
		Last Modified: Fri, 02 Jun 2017 21:58:19 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
