<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:0.56`](#crate056)
-	[`crate:0.56.3`](#crate0563)
-	[`crate:0.55`](#crate055)
-	[`crate:0.55.7`](#crate0557)

## `crate:latest`

```console
$ docker pull crate@sha256:a67ee78492bb50e2abdabae3b79713c6a732795dae0ccbf8ffa02aa5f91a70a4
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152863842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc7596efad33be28660871061f05e837db53273e3bbea77a1d0a38f6b687faf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:01:34 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 18 Oct 2016 23:01:34 GMT
ENV GOSU_VERSION=1.9
# Tue, 18 Oct 2016 23:01:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 18 Oct 2016 23:01:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 18 Oct 2016 23:03:06 GMT
ENV CRATE_VERSION=0.56.2
# Tue, 18 Oct 2016 23:03:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Tue, 18 Oct 2016 23:03:34 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:03:34 GMT
VOLUME [/data]
# Tue, 18 Oct 2016 23:03:34 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 18 Oct 2016 23:03:35 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 18 Oct 2016 23:03:36 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 18 Oct 2016 23:03:36 GMT
WORKDIR /data
# Tue, 18 Oct 2016 23:03:36 GMT
EXPOSE 4200/tcp 4300/tcp
# Tue, 18 Oct 2016 23:03:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:03:37 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de5b3a42a9987f0e893e1d01a7e0931a7f23749187533accdfdb0e839e1031`  
		Last Modified: Tue, 18 Oct 2016 23:02:26 GMT  
		Size: 581.8 KB (581777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffe4492aac36a5ebcbe77c7f4255ac4b980d647a98601a8fc989af218ae56`  
		Last Modified: Tue, 18 Oct 2016 23:02:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308f2585a672e7f4061905b6ccd3fc52e66ebd45bc06ce32e5786073470129b8`  
		Last Modified: Tue, 18 Oct 2016 23:04:08 GMT  
		Size: 150.0 MB (149966926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a5f0e1dc1b0f3ae80acd10d0e0cc89fd80246faa3a617e031d447c872369fa`  
		Last Modified: Tue, 18 Oct 2016 23:03:46 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526d6dae343675baa11a806b1828845ca096eabeee65fc1d07ec8931bdbc7077`  
		Last Modified: Tue, 18 Oct 2016 23:03:46 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6f2de90a6e38a6c8b909107bc3876f42ce65d770df8fa75f56a8b777efa9e5`  
		Last Modified: Tue, 18 Oct 2016 23:03:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d13e9dd66453014536fbac3dabb8e1d7965095c6a095b1c1ade556445f0ff3b`  
		Last Modified: Tue, 18 Oct 2016 23:03:46 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.56`

```console
$ docker pull crate@sha256:a67ee78492bb50e2abdabae3b79713c6a732795dae0ccbf8ffa02aa5f91a70a4
```

-	Platforms:
	-	linux; amd64

### `crate:0.56` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152863842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc7596efad33be28660871061f05e837db53273e3bbea77a1d0a38f6b687faf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:01:34 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 18 Oct 2016 23:01:34 GMT
ENV GOSU_VERSION=1.9
# Tue, 18 Oct 2016 23:01:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 18 Oct 2016 23:01:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 18 Oct 2016 23:03:06 GMT
ENV CRATE_VERSION=0.56.2
# Tue, 18 Oct 2016 23:03:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Tue, 18 Oct 2016 23:03:34 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:03:34 GMT
VOLUME [/data]
# Tue, 18 Oct 2016 23:03:34 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 18 Oct 2016 23:03:35 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 18 Oct 2016 23:03:36 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 18 Oct 2016 23:03:36 GMT
WORKDIR /data
# Tue, 18 Oct 2016 23:03:36 GMT
EXPOSE 4200/tcp 4300/tcp
# Tue, 18 Oct 2016 23:03:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:03:37 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de5b3a42a9987f0e893e1d01a7e0931a7f23749187533accdfdb0e839e1031`  
		Last Modified: Tue, 18 Oct 2016 23:02:26 GMT  
		Size: 581.8 KB (581777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffe4492aac36a5ebcbe77c7f4255ac4b980d647a98601a8fc989af218ae56`  
		Last Modified: Tue, 18 Oct 2016 23:02:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308f2585a672e7f4061905b6ccd3fc52e66ebd45bc06ce32e5786073470129b8`  
		Last Modified: Tue, 18 Oct 2016 23:04:08 GMT  
		Size: 150.0 MB (149966926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a5f0e1dc1b0f3ae80acd10d0e0cc89fd80246faa3a617e031d447c872369fa`  
		Last Modified: Tue, 18 Oct 2016 23:03:46 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526d6dae343675baa11a806b1828845ca096eabeee65fc1d07ec8931bdbc7077`  
		Last Modified: Tue, 18 Oct 2016 23:03:46 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6f2de90a6e38a6c8b909107bc3876f42ce65d770df8fa75f56a8b777efa9e5`  
		Last Modified: Tue, 18 Oct 2016 23:03:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d13e9dd66453014536fbac3dabb8e1d7965095c6a095b1c1ade556445f0ff3b`  
		Last Modified: Tue, 18 Oct 2016 23:03:46 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.56.3`

**does not exist** (yet?)

## `crate:0.55`

```console
$ docker pull crate@sha256:7aa2445694dfc303316735786159e9aab2f908cef5bb4af401702820ef9cc55e
```

-	Platforms:
	-	linux; amd64

### `crate:0.55` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151982823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbf4b4e65c14886ff85b4c2e567794f0270ecf9b2a78c1ee56ed4c8e3801aa8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:01:34 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 18 Oct 2016 23:01:34 GMT
ENV GOSU_VERSION=1.9
# Tue, 18 Oct 2016 23:01:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 18 Oct 2016 23:01:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 18 Oct 2016 23:01:44 GMT
ENV CRATE_VERSION=0.55.7
# Tue, 18 Oct 2016 23:02:04 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Tue, 18 Oct 2016 23:02:08 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:02:08 GMT
VOLUME [/data]
# Tue, 18 Oct 2016 23:02:09 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 18 Oct 2016 23:02:09 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 18 Oct 2016 23:02:10 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 18 Oct 2016 23:02:10 GMT
WORKDIR /data
# Tue, 18 Oct 2016 23:02:11 GMT
EXPOSE 4200/tcp 4300/tcp
# Tue, 18 Oct 2016 23:02:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:02:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de5b3a42a9987f0e893e1d01a7e0931a7f23749187533accdfdb0e839e1031`  
		Last Modified: Tue, 18 Oct 2016 23:02:26 GMT  
		Size: 581.8 KB (581777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffe4492aac36a5ebcbe77c7f4255ac4b980d647a98601a8fc989af218ae56`  
		Last Modified: Tue, 18 Oct 2016 23:02:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391ac38defdd2bae9767eba5d05f9d489ae8c3ee74a12828ed349b403a69539e`  
		Last Modified: Tue, 18 Oct 2016 23:02:44 GMT  
		Size: 149.1 MB (149085905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a847ab30d99b02bceea8532d4ba7d1ed5ae1b42fd780d0e37bf80a87472567f`  
		Last Modified: Tue, 18 Oct 2016 23:02:22 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015943d19bd5948d523df683cdd47043798a54803ea15378166c5c56b1fde2e`  
		Last Modified: Tue, 18 Oct 2016 23:02:22 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b27c2b276c1c66879677db10527cbf18c6c29825a5c05cc79f564617e7a111`  
		Last Modified: Tue, 18 Oct 2016 23:02:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdffc3a37b3e191ece3455e5f5c13d12d7bc2987ead6c9d8b6bd5ab8021ddbad`  
		Last Modified: Tue, 18 Oct 2016 23:02:22 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.55.7`

```console
$ docker pull crate@sha256:7aa2445694dfc303316735786159e9aab2f908cef5bb4af401702820ef9cc55e
```

-	Platforms:
	-	linux; amd64

### `crate:0.55.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151982823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbf4b4e65c14886ff85b4c2e567794f0270ecf9b2a78c1ee56ed4c8e3801aa8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:01:34 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 18 Oct 2016 23:01:34 GMT
ENV GOSU_VERSION=1.9
# Tue, 18 Oct 2016 23:01:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 18 Oct 2016 23:01:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 18 Oct 2016 23:01:44 GMT
ENV CRATE_VERSION=0.55.7
# Tue, 18 Oct 2016 23:02:04 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Tue, 18 Oct 2016 23:02:08 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:02:08 GMT
VOLUME [/data]
# Tue, 18 Oct 2016 23:02:09 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 18 Oct 2016 23:02:09 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 18 Oct 2016 23:02:10 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 18 Oct 2016 23:02:10 GMT
WORKDIR /data
# Tue, 18 Oct 2016 23:02:11 GMT
EXPOSE 4200/tcp 4300/tcp
# Tue, 18 Oct 2016 23:02:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:02:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de5b3a42a9987f0e893e1d01a7e0931a7f23749187533accdfdb0e839e1031`  
		Last Modified: Tue, 18 Oct 2016 23:02:26 GMT  
		Size: 581.8 KB (581777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ffe4492aac36a5ebcbe77c7f4255ac4b980d647a98601a8fc989af218ae56`  
		Last Modified: Tue, 18 Oct 2016 23:02:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391ac38defdd2bae9767eba5d05f9d489ae8c3ee74a12828ed349b403a69539e`  
		Last Modified: Tue, 18 Oct 2016 23:02:44 GMT  
		Size: 149.1 MB (149085905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a847ab30d99b02bceea8532d4ba7d1ed5ae1b42fd780d0e37bf80a87472567f`  
		Last Modified: Tue, 18 Oct 2016 23:02:22 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015943d19bd5948d523df683cdd47043798a54803ea15378166c5c56b1fde2e`  
		Last Modified: Tue, 18 Oct 2016 23:02:22 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b27c2b276c1c66879677db10527cbf18c6c29825a5c05cc79f564617e7a111`  
		Last Modified: Tue, 18 Oct 2016 23:02:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdffc3a37b3e191ece3455e5f5c13d12d7bc2987ead6c9d8b6bd5ab8021ddbad`  
		Last Modified: Tue, 18 Oct 2016 23:02:22 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
