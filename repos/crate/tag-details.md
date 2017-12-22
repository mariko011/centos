<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:2.0`](#crate20)
-	[`crate:2.0.7`](#crate207)
-	[`crate:2.1`](#crate21)
-	[`crate:2.1.10`](#crate2110)
-	[`crate:2.2`](#crate22)
-	[`crate:2.2.5`](#crate225)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:196f6355de0f1d7b73a9d59a23964295f751ee74a78648a12e5957f49cc697c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:6a22884c2aa1ba124b7194843fef027e0c86c66b0c659ad50c4d24afbbe2b202
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126532697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af63f6ced8e0bedb1435d701009cec570965c5bc85cd68d78bffcc4604f95c9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:16:04 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 01 Dec 2017 19:16:05 GMT
ENV GOSU_VERSION=1.9
# Fri, 01 Dec 2017 19:16:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 01 Dec 2017 19:16:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 01 Dec 2017 19:22:34 GMT
ENV CRATE_VERSION=2.0.7
# Fri, 01 Dec 2017 19:23:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 01 Dec 2017 19:23:10 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Dec 2017 19:23:10 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:23:10 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Fri, 01 Dec 2017 19:23:10 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 01 Dec 2017 19:23:11 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 01 Dec 2017 19:23:11 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:23:11 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Fri, 01 Dec 2017 19:23:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:23:12 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e711b52a557f0d28614697ca50a42e549e71984fb325a4c9efc4d8a065`  
		Last Modified: Fri, 01 Dec 2017 19:23:32 GMT  
		Size: 592.4 KB (592369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09752f23776bfcb6517f469d64e9d99e24dfa5a0683c4712eb74343d75626a9`  
		Last Modified: Fri, 01 Dec 2017 19:23:31 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81b19e0dc89a00c77677c2f05a2d3a66539a96103e45b42c3586f32561d5948`  
		Last Modified: Fri, 01 Dec 2017 19:30:59 GMT  
		Size: 124.0 MB (123967524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b51a99a1d3799eb8a233ef2fe0f3aa85222b207ada9a467672e8f74e0d793f`  
		Last Modified: Fri, 01 Dec 2017 19:30:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009dbb0dcba149c05610a14df4ed9dd8f687468537f00d1a8189cbd55c10db02`  
		Last Modified: Fri, 01 Dec 2017 19:30:37 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561d8bad6f1a3a72dc66f7e52fe392753c2bec16f487f2d5f576047dc18a1303`  
		Last Modified: Fri, 01 Dec 2017 19:30:36 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6668a0e1c9fc930eebbde36b3f28247220005e26b0119ec41b0c7479b78d505b`  
		Last Modified: Fri, 01 Dec 2017 19:30:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:196f6355de0f1d7b73a9d59a23964295f751ee74a78648a12e5957f49cc697c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:6a22884c2aa1ba124b7194843fef027e0c86c66b0c659ad50c4d24afbbe2b202
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126532697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af63f6ced8e0bedb1435d701009cec570965c5bc85cd68d78bffcc4604f95c9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:16:04 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 01 Dec 2017 19:16:05 GMT
ENV GOSU_VERSION=1.9
# Fri, 01 Dec 2017 19:16:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 01 Dec 2017 19:16:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 01 Dec 2017 19:22:34 GMT
ENV CRATE_VERSION=2.0.7
# Fri, 01 Dec 2017 19:23:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 01 Dec 2017 19:23:10 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Dec 2017 19:23:10 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:23:10 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Fri, 01 Dec 2017 19:23:10 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 01 Dec 2017 19:23:11 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 01 Dec 2017 19:23:11 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:23:11 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Fri, 01 Dec 2017 19:23:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:23:12 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e711b52a557f0d28614697ca50a42e549e71984fb325a4c9efc4d8a065`  
		Last Modified: Fri, 01 Dec 2017 19:23:32 GMT  
		Size: 592.4 KB (592369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09752f23776bfcb6517f469d64e9d99e24dfa5a0683c4712eb74343d75626a9`  
		Last Modified: Fri, 01 Dec 2017 19:23:31 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81b19e0dc89a00c77677c2f05a2d3a66539a96103e45b42c3586f32561d5948`  
		Last Modified: Fri, 01 Dec 2017 19:30:59 GMT  
		Size: 124.0 MB (123967524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b51a99a1d3799eb8a233ef2fe0f3aa85222b207ada9a467672e8f74e0d793f`  
		Last Modified: Fri, 01 Dec 2017 19:30:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009dbb0dcba149c05610a14df4ed9dd8f687468537f00d1a8189cbd55c10db02`  
		Last Modified: Fri, 01 Dec 2017 19:30:37 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561d8bad6f1a3a72dc66f7e52fe392753c2bec16f487f2d5f576047dc18a1303`  
		Last Modified: Fri, 01 Dec 2017 19:30:36 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6668a0e1c9fc930eebbde36b3f28247220005e26b0119ec41b0c7479b78d505b`  
		Last Modified: Fri, 01 Dec 2017 19:30:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:06f9498f93c490d5bd9fa9eebd19bbc7bd4b035828269c777467521b898db980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:d4217cb3f7a2fed740054b63e7e46f7edb9aae32c72a29004d857766728f9b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129127245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c36348642f0e7aa03cb5efc36851ab0c0fb6daf3cdc6097f27a43ed633e698d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:16:04 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 01 Dec 2017 19:16:05 GMT
ENV GOSU_VERSION=1.9
# Fri, 01 Dec 2017 19:16:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 01 Dec 2017 19:16:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 01 Dec 2017 19:20:46 GMT
ENV CRATE_VERSION=2.1.10
# Fri, 01 Dec 2017 19:21:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Dec 2017 19:22:20 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 01 Dec 2017 19:22:20 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:22:21 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Fri, 01 Dec 2017 19:22:21 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 01 Dec 2017 19:22:21 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 01 Dec 2017 19:22:22 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:22:22 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 01 Dec 2017 19:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:22:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e711b52a557f0d28614697ca50a42e549e71984fb325a4c9efc4d8a065`  
		Last Modified: Fri, 01 Dec 2017 19:23:32 GMT  
		Size: 592.4 KB (592369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09752f23776bfcb6517f469d64e9d99e24dfa5a0683c4712eb74343d75626a9`  
		Last Modified: Fri, 01 Dec 2017 19:23:31 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8572b0a6de2c22b383e76b23c457d318e8a8b50ad6720f950e6968d95f42b55`  
		Last Modified: Fri, 01 Dec 2017 19:29:51 GMT  
		Size: 126.6 MB (126562062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded92d9c52061f5c81071ad59aacd478c27aca4c22d3641a84f49acf7775be8e`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e84979d920ad2adf9d3cf619d8d2b420d4b38a99810b066501c8e1ecc3fc5e`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b4ee4467066386ec04a0e7dbfafbc01c5adb981dbbd039ee3cff94561600e4`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179af19366d9f9c7831df103216d14319cc089f949c98436f79867bb31fe4ee5`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:06f9498f93c490d5bd9fa9eebd19bbc7bd4b035828269c777467521b898db980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:d4217cb3f7a2fed740054b63e7e46f7edb9aae32c72a29004d857766728f9b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129127245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c36348642f0e7aa03cb5efc36851ab0c0fb6daf3cdc6097f27a43ed633e698d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:16:04 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 01 Dec 2017 19:16:05 GMT
ENV GOSU_VERSION=1.9
# Fri, 01 Dec 2017 19:16:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 01 Dec 2017 19:16:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 01 Dec 2017 19:20:46 GMT
ENV CRATE_VERSION=2.1.10
# Fri, 01 Dec 2017 19:21:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 01 Dec 2017 19:22:20 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Dec 2017 19:22:20 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 01 Dec 2017 19:22:20 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:22:21 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Fri, 01 Dec 2017 19:22:21 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 01 Dec 2017 19:22:21 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 01 Dec 2017 19:22:22 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:22:22 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 01 Dec 2017 19:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:22:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e711b52a557f0d28614697ca50a42e549e71984fb325a4c9efc4d8a065`  
		Last Modified: Fri, 01 Dec 2017 19:23:32 GMT  
		Size: 592.4 KB (592369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09752f23776bfcb6517f469d64e9d99e24dfa5a0683c4712eb74343d75626a9`  
		Last Modified: Fri, 01 Dec 2017 19:23:31 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8572b0a6de2c22b383e76b23c457d318e8a8b50ad6720f950e6968d95f42b55`  
		Last Modified: Fri, 01 Dec 2017 19:29:51 GMT  
		Size: 126.6 MB (126562062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded92d9c52061f5c81071ad59aacd478c27aca4c22d3641a84f49acf7775be8e`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e84979d920ad2adf9d3cf619d8d2b420d4b38a99810b066501c8e1ecc3fc5e`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b4ee4467066386ec04a0e7dbfafbc01c5adb981dbbd039ee3cff94561600e4`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179af19366d9f9c7831df103216d14319cc089f949c98436f79867bb31fe4ee5`  
		Last Modified: Fri, 01 Dec 2017 19:29:34 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:5a2f09c6820fc00c12e14bfb37d488ecc65ddff908af80eaf6f74eea32de6e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:bbce12264b6e451e8810ca08f855744e02ec9b19226d8567e605131f0d076788
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129495605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c17690d10a4fd5a7fef23ffc1d9eaacb7bc055ceb18a458c96107030184fa33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:16:04 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 01 Dec 2017 19:16:05 GMT
ENV GOSU_VERSION=1.9
# Fri, 01 Dec 2017 19:16:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 01 Dec 2017 19:16:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 01 Dec 2017 19:16:56 GMT
ENV CRATE_VERSION=2.2.4
# Fri, 01 Dec 2017 19:17:21 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 01 Dec 2017 19:17:22 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Dec 2017 19:17:22 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 01 Dec 2017 19:17:22 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:17:23 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Fri, 01 Dec 2017 19:17:23 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 01 Dec 2017 19:17:24 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 01 Dec 2017 19:17:24 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:17:24 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 01 Dec 2017 19:17:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:17:25 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e711b52a557f0d28614697ca50a42e549e71984fb325a4c9efc4d8a065`  
		Last Modified: Fri, 01 Dec 2017 19:23:32 GMT  
		Size: 592.4 KB (592369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09752f23776bfcb6517f469d64e9d99e24dfa5a0683c4712eb74343d75626a9`  
		Last Modified: Fri, 01 Dec 2017 19:23:31 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ee64dad1dc410234c0fd8278fa6aab077f2c19e054623ff9219f75926021b3`  
		Last Modified: Fri, 01 Dec 2017 19:23:56 GMT  
		Size: 126.9 MB (126930416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab3cf5fcdfb715337eab616a31f5e48174f7b4c384ac26a061894c3453ec574`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed773de358b216d43a2b7cb8e33331061f185c9cf9b9c648f1e4520d71059c`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03928f1857b70dbe23080eb6445704af18b4c7c1224c43b0baabd03fc4a63515`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7a014c4a65bd89c2c558029a8b868f7b8081bee2c4097da6ba922b17581bf4`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.5`

**does not exist** (yet?)

## `crate:latest`

```console
$ docker pull crate@sha256:5a2f09c6820fc00c12e14bfb37d488ecc65ddff908af80eaf6f74eea32de6e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:bbce12264b6e451e8810ca08f855744e02ec9b19226d8567e605131f0d076788
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129495605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c17690d10a4fd5a7fef23ffc1d9eaacb7bc055ceb18a458c96107030184fa33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 01 Dec 2017 18:49:59 GMT
ADD file:5595f8b7042388f1c3d5642b8581698548f99ea2f0b9324f797d2396e03e00cb in / 
# Fri, 01 Dec 2017 18:49:59 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:16:04 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 01 Dec 2017 19:16:05 GMT
ENV GOSU_VERSION=1.9
# Fri, 01 Dec 2017 19:16:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 01 Dec 2017 19:16:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 01 Dec 2017 19:16:56 GMT
ENV CRATE_VERSION=2.2.4
# Fri, 01 Dec 2017 19:17:21 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 01 Dec 2017 19:17:22 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Dec 2017 19:17:22 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 01 Dec 2017 19:17:22 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:17:23 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Fri, 01 Dec 2017 19:17:23 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 01 Dec 2017 19:17:24 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 01 Dec 2017 19:17:24 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:17:24 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 01 Dec 2017 19:17:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:17:25 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:128191993b8a5e9d949346160926359ad02df93bde62f5af8a7bc3573f53553e`  
		Last Modified: Fri, 01 Dec 2017 18:58:25 GMT  
		Size: 2.0 MB (1970107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e711b52a557f0d28614697ca50a42e549e71984fb325a4c9efc4d8a065`  
		Last Modified: Fri, 01 Dec 2017 19:23:32 GMT  
		Size: 592.4 KB (592369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09752f23776bfcb6517f469d64e9d99e24dfa5a0683c4712eb74343d75626a9`  
		Last Modified: Fri, 01 Dec 2017 19:23:31 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ee64dad1dc410234c0fd8278fa6aab077f2c19e054623ff9219f75926021b3`  
		Last Modified: Fri, 01 Dec 2017 19:23:56 GMT  
		Size: 126.9 MB (126930416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab3cf5fcdfb715337eab616a31f5e48174f7b4c384ac26a061894c3453ec574`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed773de358b216d43a2b7cb8e33331061f185c9cf9b9c648f1e4520d71059c`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03928f1857b70dbe23080eb6445704af18b4c7c1224c43b0baabd03fc4a63515`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7a014c4a65bd89c2c558029a8b868f7b8081bee2c4097da6ba922b17581bf4`  
		Last Modified: Fri, 01 Dec 2017 19:23:29 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
