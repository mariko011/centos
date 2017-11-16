## `crate:latest`

```console
$ docker pull crate@sha256:ddcc5a901a214a74149f3fa66d876fe45e246fd3639ddbedf71439f240aaf4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:44866a972e51917d0e3910dad812e2756ed2177e00e17034b3b1e1ae86c81547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129493282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27995754d17a23f1c5768ac9084fed73b8e0aa7ee38998f221aaa6567c93833`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 06:52:42 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Sat, 04 Nov 2017 06:52:42 GMT
ENV GOSU_VERSION=1.9
# Sat, 04 Nov 2017 06:53:07 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Sat, 04 Nov 2017 06:53:08 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 16 Nov 2017 17:48:27 GMT
ENV CRATE_VERSION=2.2.3
# Thu, 16 Nov 2017 17:49:00 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 16 Nov 2017 17:49:00 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Nov 2017 17:49:00 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 16 Nov 2017 17:49:00 GMT
VOLUME [/data]
# Thu, 16 Nov 2017 17:49:01 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Thu, 16 Nov 2017 17:49:01 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 16 Nov 2017 17:49:01 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 16 Nov 2017 17:49:02 GMT
WORKDIR /data
# Thu, 16 Nov 2017 17:49:02 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 16 Nov 2017 17:49:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Nov 2017 17:49:02 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc29f953de9dbd81ba60f38d391e14c549fca71fac26979c8a1004eae6ef6e`  
		Last Modified: Sat, 04 Nov 2017 06:54:27 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d49dc6f2b7793edd41d187af9928d502dfc87ee17f50e80febb09501c2085`  
		Last Modified: Sat, 04 Nov 2017 06:54:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472ffe3c4a711975eb90e7217abcc4e8817c478f8a037105e013449af913bc72`  
		Last Modified: Thu, 16 Nov 2017 17:49:25 GMT  
		Size: 126.9 MB (126927981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024aaa9f2fe10f6bf1089197d7197ab4765c5da875000dec95782fc420a4e72`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2b603721b81f7b46fff3206ce93ee0048ce634dd982a3fd8f5fb17769351ec`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845e445e05ea45cdfeb4046786bbc1566e38bc297e83aa24d2631dabc9b1495b`  
		Last Modified: Thu, 16 Nov 2017 17:49:13 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591fbc5f3e33e4bc1f77b3d727d8dadba38ed9b066911487c00ba650e71a8924`  
		Last Modified: Thu, 16 Nov 2017 17:49:14 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
