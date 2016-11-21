<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:0.56.4`](#crate0564)
-	[`crate:0.55`](#crate055)
-	[`crate:0.55.7`](#crate0557)
-	[`crate:0.56`](#crate056)

## `crate:latest`

```console
$ docker pull crate@sha256:32b5d05a01634955d9da72772e2d12f678e7c9eb6e190e0f8bbdf015df894258
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105980940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750139f971e86db4bc1d150eaa70f9f8f0d93e4bdd9192886e9f0463470aacf0`
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
# Mon, 21 Nov 2016 17:36:28 GMT
ENV CRATE_VERSION=0.56.4
# Mon, 21 Nov 2016 17:36:47 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Mon, 21 Nov 2016 17:36:57 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Nov 2016 17:36:57 GMT
VOLUME [/data]
# Mon, 21 Nov 2016 17:36:58 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 21 Nov 2016 17:36:58 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 21 Nov 2016 17:36:59 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 21 Nov 2016 17:36:59 GMT
WORKDIR /data
# Mon, 21 Nov 2016 17:37:00 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Mon, 21 Nov 2016 17:37:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 17:37:01 GMT
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
	-	`sha256:c15f9240a2de5206ad54862eab33061a47825a0f03cfda7be42b115a63289cf4`  
		Last Modified: Mon, 21 Nov 2016 17:37:33 GMT  
		Size: 103.1 MB (103084027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a1621815c6657e452be00d3cfb70ba967566e7ef497be32586cb6a312a651`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6109e18cae72fa17fdeaa7dea75ef10a744d7eb102c5b7016be18fb593270f03`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50afbaeaf8b1d0e6a6842b6eae43a543ba7425757f9d7446658c6f6242c3bd79`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261f88f7c8205d9cb3b70808746fe8e082c310bd57d4b9b1a19159d415d8149c`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.56.4`

```console
$ docker pull crate@sha256:32b5d05a01634955d9da72772e2d12f678e7c9eb6e190e0f8bbdf015df894258
```

-	Platforms:
	-	linux; amd64

### `crate:0.56.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105980940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750139f971e86db4bc1d150eaa70f9f8f0d93e4bdd9192886e9f0463470aacf0`
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
# Mon, 21 Nov 2016 17:36:28 GMT
ENV CRATE_VERSION=0.56.4
# Mon, 21 Nov 2016 17:36:47 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Mon, 21 Nov 2016 17:36:57 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Nov 2016 17:36:57 GMT
VOLUME [/data]
# Mon, 21 Nov 2016 17:36:58 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 21 Nov 2016 17:36:58 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 21 Nov 2016 17:36:59 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 21 Nov 2016 17:36:59 GMT
WORKDIR /data
# Mon, 21 Nov 2016 17:37:00 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Mon, 21 Nov 2016 17:37:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 17:37:01 GMT
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
	-	`sha256:c15f9240a2de5206ad54862eab33061a47825a0f03cfda7be42b115a63289cf4`  
		Last Modified: Mon, 21 Nov 2016 17:37:33 GMT  
		Size: 103.1 MB (103084027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a1621815c6657e452be00d3cfb70ba967566e7ef497be32586cb6a312a651`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6109e18cae72fa17fdeaa7dea75ef10a744d7eb102c5b7016be18fb593270f03`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50afbaeaf8b1d0e6a6842b6eae43a543ba7425757f9d7446658c6f6242c3bd79`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261f88f7c8205d9cb3b70808746fe8e082c310bd57d4b9b1a19159d415d8149c`  
		Last Modified: Mon, 21 Nov 2016 17:37:14 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `crate:0.56`

```console
$ docker pull crate@sha256:b1f418d18758b6935f96ea6a1125a4013f932296cbb04d85c0ab08c4590640fc
```

-	Platforms:
	-	linux; amd64

### `crate:0.56` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152872259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bcaf8f71c065dde0e4fe5bfcecc362e00ec0bee8de57b7e884d0156ae46749b`
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
# Wed, 26 Oct 2016 20:23:42 GMT
ENV CRATE_VERSION=0.56.3
# Wed, 26 Oct 2016 20:23:59 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Wed, 26 Oct 2016 20:23:59 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Oct 2016 20:24:00 GMT
VOLUME [/data]
# Wed, 26 Oct 2016 20:24:00 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 26 Oct 2016 20:24:01 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 26 Oct 2016 20:24:01 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 26 Oct 2016 20:24:01 GMT
WORKDIR /data
# Wed, 26 Oct 2016 20:24:02 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 26 Oct 2016 20:24:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Oct 2016 20:24:02 GMT
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
	-	`sha256:80ebadab657bdea11593d314936b731965961e7682b951e674ef10c39b5917f7`  
		Last Modified: Wed, 26 Oct 2016 20:24:32 GMT  
		Size: 150.0 MB (149975348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3d561db0208cb05aebe969c17e22c2f86520429257d455fefee14fb265a93f`  
		Last Modified: Wed, 26 Oct 2016 20:24:13 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3282f7a8799a8bed3bbe38101045cfa9267f9a168f13ce375cd246142051c9`  
		Last Modified: Wed, 26 Oct 2016 20:24:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a04b1a2f9bb01259e312fa50a25563fc4c4b3c274b247c8b8f3a0694755aa9f`  
		Last Modified: Wed, 26 Oct 2016 20:24:13 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570034c52bd648b5980c68367407544f06a9af99b3abca4c0d343c374c51ce7e`  
		Last Modified: Wed, 26 Oct 2016 20:24:16 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
