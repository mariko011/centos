<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:0.13`](#chronograf013)
-	[`chronograf:0.13.0`](#chronograf0130)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.0.0-rc1`](#chronograf100-rc1)

## `chronograf:0.13`

```console
$ docker pull chronograf@sha256:b8140656b5c94226594cd78780c8bf8cb5a7947614e78107629be28253255b1a
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.13` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73907642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95c4093c9b734a7cb965312b9f536daf1445041391f3c9113a8ecca9ce77fc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 27 Feb 2017 22:48:46 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Mon, 27 Feb 2017 22:48:51 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Mon, 27 Feb 2017 22:48:51 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Mon, 27 Feb 2017 22:48:52 GMT
EXPOSE 10000/tcp
# Mon, 27 Feb 2017 22:48:52 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Feb 2017 22:48:52 GMT
VOLUME [/var/lib/chronograf]
# Mon, 27 Feb 2017 22:48:53 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 27 Feb 2017 22:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:48:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a1decdd8486f7e26317cd6fac8493e8b821249f38a4fd11c4d0322030365ed`  
		Last Modified: Wed, 01 Mar 2017 22:54:31 GMT  
		Size: 4.0 MB (4001130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd0c5aa1daf39402e8a1f36843f09c7fdf7e562f34d21b17480b3eceeb07a44`  
		Last Modified: Wed, 01 Mar 2017 22:54:28 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2ff7da747b00c1f2196887e506d9f874668034b844aa379b7ba0181de7d09c`  
		Last Modified: Wed, 01 Mar 2017 22:54:29 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:0.13.0`

```console
$ docker pull chronograf@sha256:b8140656b5c94226594cd78780c8bf8cb5a7947614e78107629be28253255b1a
```

-	Platforms:
	-	linux; amd64

### `chronograf:0.13.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73907642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95c4093c9b734a7cb965312b9f536daf1445041391f3c9113a8ecca9ce77fc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 27 Feb 2017 22:48:46 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Mon, 27 Feb 2017 22:48:51 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Mon, 27 Feb 2017 22:48:51 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Mon, 27 Feb 2017 22:48:52 GMT
EXPOSE 10000/tcp
# Mon, 27 Feb 2017 22:48:52 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Feb 2017 22:48:52 GMT
VOLUME [/var/lib/chronograf]
# Mon, 27 Feb 2017 22:48:53 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 27 Feb 2017 22:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:48:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a1decdd8486f7e26317cd6fac8493e8b821249f38a4fd11c4d0322030365ed`  
		Last Modified: Wed, 01 Mar 2017 22:54:31 GMT  
		Size: 4.0 MB (4001130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd0c5aa1daf39402e8a1f36843f09c7fdf7e562f34d21b17480b3eceeb07a44`  
		Last Modified: Wed, 01 Mar 2017 22:54:28 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2ff7da747b00c1f2196887e506d9f874668034b844aa379b7ba0181de7d09c`  
		Last Modified: Wed, 01 Mar 2017 22:54:29 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:b8140656b5c94226594cd78780c8bf8cb5a7947614e78107629be28253255b1a
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73907642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95c4093c9b734a7cb965312b9f536daf1445041391f3c9113a8ecca9ce77fc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 27 Feb 2017 22:48:46 GMT
ENV CHRONOGRAF_VERSION=0.13.0
# Mon, 27 Feb 2017 22:48:51 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Mon, 27 Feb 2017 22:48:51 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Mon, 27 Feb 2017 22:48:52 GMT
EXPOSE 10000/tcp
# Mon, 27 Feb 2017 22:48:52 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Feb 2017 22:48:52 GMT
VOLUME [/var/lib/chronograf]
# Mon, 27 Feb 2017 22:48:53 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 27 Feb 2017 22:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:48:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a1decdd8486f7e26317cd6fac8493e8b821249f38a4fd11c4d0322030365ed`  
		Last Modified: Wed, 01 Mar 2017 22:54:31 GMT  
		Size: 4.0 MB (4001130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd0c5aa1daf39402e8a1f36843f09c7fdf7e562f34d21b17480b3eceeb07a44`  
		Last Modified: Wed, 01 Mar 2017 22:54:28 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2ff7da747b00c1f2196887e506d9f874668034b844aa379b7ba0181de7d09c`  
		Last Modified: Wed, 01 Mar 2017 22:54:29 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.0.0-rc1`

```console
$ docker pull chronograf@sha256:9cd0490c618dab23e42be1b03213b987875aa49d98dcc57404c6b529f0d9b0b1
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.0.0-rc1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73922757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590c138fcc739d553f0725b33ecb17501c4dbbecf3ee515054431f9904d89b33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:48:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Mon, 27 Feb 2017 22:48:54 GMT
ENV CHRONOGRAF_VERSION=1.0.0-rc1
# Mon, 27 Feb 2017 22:48:58 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Mon, 27 Feb 2017 22:48:58 GMT
COPY file:6bd8f62167b75e75bb429d6dda670ec917256913ff3370f929e2c8d9e14b475e in /etc/chronograf/chronograf.conf 
# Mon, 27 Feb 2017 22:48:58 GMT
EXPOSE 10000/tcp
# Mon, 27 Feb 2017 22:48:59 GMT
ENV PATH=/opt/chronograf:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Feb 2017 22:48:59 GMT
VOLUME [/var/lib/chronograf]
# Mon, 27 Feb 2017 22:49:00 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 27 Feb 2017 22:49:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:49:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983deff56d7362d1c2ed0ce80c90ccfc6aad3c6d65c2aeabe201cd471d5636e9`  
		Last Modified: Tue, 28 Feb 2017 00:40:31 GMT  
		Size: 6.8 KB (6752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c4f80ff5b997828aebef20318010f265e44172d5e410c5a0449b856488ca2f`  
		Last Modified: Wed, 01 Mar 2017 22:55:30 GMT  
		Size: 4.0 MB (4016241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f873c2ab1ff63f60704155fbc15dbe82ea7abb2d2032816b44d973c116d85776`  
		Last Modified: Wed, 01 Mar 2017 22:55:28 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eeb74d1b286436638d7d75b75f6e4cc17c371f7165194a479554673ae4adc1`  
		Last Modified: Wed, 01 Mar 2017 22:55:28 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
