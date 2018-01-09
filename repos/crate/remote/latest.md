## `crate:latest`

```console
$ docker pull crate@sha256:411b2c3f4af8b031f1440a612f3e0b113e4bd1091fd33bfa00c49fd54d9d42ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:fe920b05301bb97dac9fbf4ae0804547f2f09393af4b78ff99c414a0367c8153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128810907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a26cb2f21cbec41f860e2085d83f5fc3e2d5a30419f4042ae56f091492a76b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:53:00 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:53:01 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Jan 2018 21:53:40 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 09 Jan 2018 21:53:41 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 09 Jan 2018 21:53:41 GMT
ENV CRATE_VERSION=2.2.5
# Tue, 09 Jan 2018 21:54:25 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 09 Jan 2018 21:54:25 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Jan 2018 21:54:25 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 09 Jan 2018 21:54:25 GMT
VOLUME [/data]
# Tue, 09 Jan 2018 21:54:26 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Tue, 09 Jan 2018 21:54:26 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 09 Jan 2018 21:54:27 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 09 Jan 2018 21:54:27 GMT
WORKDIR /data
# Tue, 09 Jan 2018 21:54:27 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 09 Jan 2018 21:54:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 21:54:28 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8b79b83f80d98af54e2362535a327791df92a7bd49f1d30543f4ae43c984cd`  
		Last Modified: Tue, 09 Jan 2018 21:58:11 GMT  
		Size: 593.1 KB (593125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e46e2d22f238dfae62d2b15f537f7515f3e2f886025f6088c91e292814cd7cb`  
		Last Modified: Tue, 09 Jan 2018 21:58:10 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d9eb3958b06320486298eafd15792adc9b737b262306a5ebf6039a8dec6ac4`  
		Last Modified: Tue, 09 Jan 2018 21:58:32 GMT  
		Size: 126.1 MB (126149533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327c02a62458d5ff922db1b47733f64883f4ba817024733b49db861988633948`  
		Last Modified: Tue, 09 Jan 2018 21:58:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c4e90ce9d6d52230e05ae85d2ba4f36b0e3359c6092d36d24334bb382d0be8`  
		Last Modified: Tue, 09 Jan 2018 21:58:08 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1847f74aa0eddc54c5c1f31a379939f579c9e5e4a93d4cb142d7297ee71970b3`  
		Last Modified: Tue, 09 Jan 2018 21:58:08 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d61ee766bb5d67b291d020040c2ff699df4c47fb77aebe1a89b5c12d604e809`  
		Last Modified: Tue, 09 Jan 2018 21:58:08 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
