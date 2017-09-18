<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:1.0`](#crate10)
-	[`crate:1.0.6`](#crate106)
-	[`crate:1.1`](#crate11)
-	[`crate:1.1.6`](#crate116)
-	[`crate:2.0`](#crate20)
-	[`crate:2.0.7`](#crate207)
-	[`crate:2.1`](#crate21)
-	[`crate:2.1.7`](#crate217)
-	[`crate:latest`](#cratelatest)

## `crate:1.0`

```console
$ docker pull crate@sha256:3a3e12b0f34af3176f19326c7814b721f36626a622a57d87610efc19e58c122b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:1.0` - linux; amd64

```console
$ docker pull crate@sha256:8c99aed7b15a0439cb8c9bcbb86416eafdb52293efa6696449786b00f382cdea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120750718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2025cf49d3e21d50f529a586f52aed0fa8a06665018f7aa0f1981d20da3d0b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:48:45 GMT
ENV CRATE_VERSION=1.0.6
# Tue, 12 Sep 2017 21:49:11 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:49:12 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:49:12 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:49:12 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:49:12 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 12 Sep 2017 21:49:12 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:49:13 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:49:13 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:49:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:49:13 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a86694c0042a87096f19caceec075fdf7b6268919baebbb6f7e89a40bdc750`  
		Last Modified: Tue, 12 Sep 2017 21:51:29 GMT  
		Size: 118.2 MB (118185944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c77ea0ea10496ab62e8f1176d327c0408ad089e2f6c84b17299bf77bbd8320f`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9227f00ef6f4b914cafd8fec55933158d361010e52c0647ad5b800759e4f42dc`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02fced44ac192261a36e5142ec554353f8239cb49b345c3830ca19230d9abe8`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa47189f2a9f3fe14a3335e8d369bbc4b4746795773468f9d2ae805dd135a51`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.0.6`

```console
$ docker pull crate@sha256:3a3e12b0f34af3176f19326c7814b721f36626a622a57d87610efc19e58c122b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:1.0.6` - linux; amd64

```console
$ docker pull crate@sha256:8c99aed7b15a0439cb8c9bcbb86416eafdb52293efa6696449786b00f382cdea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120750718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2025cf49d3e21d50f529a586f52aed0fa8a06665018f7aa0f1981d20da3d0b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:48:45 GMT
ENV CRATE_VERSION=1.0.6
# Tue, 12 Sep 2017 21:49:11 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:49:12 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:49:12 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:49:12 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:49:12 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 12 Sep 2017 21:49:12 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:49:13 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:49:13 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:49:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:49:13 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a86694c0042a87096f19caceec075fdf7b6268919baebbb6f7e89a40bdc750`  
		Last Modified: Tue, 12 Sep 2017 21:51:29 GMT  
		Size: 118.2 MB (118185944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c77ea0ea10496ab62e8f1176d327c0408ad089e2f6c84b17299bf77bbd8320f`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9227f00ef6f4b914cafd8fec55933158d361010e52c0647ad5b800759e4f42dc`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02fced44ac192261a36e5142ec554353f8239cb49b345c3830ca19230d9abe8`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa47189f2a9f3fe14a3335e8d369bbc4b4746795773468f9d2ae805dd135a51`  
		Last Modified: Tue, 12 Sep 2017 21:51:17 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.1`

```console
$ docker pull crate@sha256:94495f34d651b35f9970ab5be058c0a83c571a7805668c62853e9ad05ac035f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:1.1` - linux; amd64

```console
$ docker pull crate@sha256:82f3ed631ebe657ed64dd7a0ac753560d61ec25b72f5e0339b64f518627b92df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120693718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e9e3be7cfb97d2b47107418144d5a0b1733e3ebc7fd97e765d589d614eb89`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:49:14 GMT
ENV CRATE_VERSION=1.1.6
# Tue, 12 Sep 2017 21:50:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:50:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:50:09 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:50:09 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:50:09 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 12 Sep 2017 21:50:09 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:50:10 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:50:10 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:50:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:50:10 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcd861df6687c923207b9fafe1ec83e0286dd7a44eaffea572a8a9324fe5e3d`  
		Last Modified: Tue, 12 Sep 2017 21:51:52 GMT  
		Size: 118.1 MB (118128947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569583b38351a23483c944ee3e08153f3f39f2d68191f277ba96f7c88a94a767`  
		Last Modified: Tue, 12 Sep 2017 21:51:40 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a813e699752767de4595efc260385bc58b667fe0d32462c1e7bd6cb0be8e2`  
		Last Modified: Tue, 12 Sep 2017 21:51:39 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149c435837e02a8e1076ca1c3be168b75ae24b913641541d380c2d702f03bcea`  
		Last Modified: Tue, 12 Sep 2017 21:51:40 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060350a7a5394fad1bcf96f3960e874587e2de3b69f483ff228bf1ab21a6cdec`  
		Last Modified: Tue, 12 Sep 2017 21:51:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.1.6`

```console
$ docker pull crate@sha256:94495f34d651b35f9970ab5be058c0a83c571a7805668c62853e9ad05ac035f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:1.1.6` - linux; amd64

```console
$ docker pull crate@sha256:82f3ed631ebe657ed64dd7a0ac753560d61ec25b72f5e0339b64f518627b92df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120693718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e9e3be7cfb97d2b47107418144d5a0b1733e3ebc7fd97e765d589d614eb89`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:49:14 GMT
ENV CRATE_VERSION=1.1.6
# Tue, 12 Sep 2017 21:50:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:50:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:50:09 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:50:09 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:50:09 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 12 Sep 2017 21:50:09 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:50:10 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:50:10 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:50:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:50:10 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcd861df6687c923207b9fafe1ec83e0286dd7a44eaffea572a8a9324fe5e3d`  
		Last Modified: Tue, 12 Sep 2017 21:51:52 GMT  
		Size: 118.1 MB (118128947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569583b38351a23483c944ee3e08153f3f39f2d68191f277ba96f7c88a94a767`  
		Last Modified: Tue, 12 Sep 2017 21:51:40 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8a813e699752767de4595efc260385bc58b667fe0d32462c1e7bd6cb0be8e2`  
		Last Modified: Tue, 12 Sep 2017 21:51:39 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149c435837e02a8e1076ca1c3be168b75ae24b913641541d380c2d702f03bcea`  
		Last Modified: Tue, 12 Sep 2017 21:51:40 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060350a7a5394fad1bcf96f3960e874587e2de3b69f483ff228bf1ab21a6cdec`  
		Last Modified: Tue, 12 Sep 2017 21:51:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0`

```console
$ docker pull crate@sha256:e1fd5d880cf15dedbd28de018b3676f55b946b081e01d65fb79c0de8a5421ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:0144253685165a5f931f5283d9beb0f6534364cd1f9c86cd300b3a150365f1d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.6 MB (127563996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1527c52d2c6a79af4758f270ac9bc814ff795f5e5803e0b99378c7f089300e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:50:11 GMT
ENV CRATE_VERSION=2.0.7
# Tue, 12 Sep 2017 21:50:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:50:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:50:39 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:50:39 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:50:40 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 12 Sep 2017 21:50:40 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:50:40 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:50:40 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:50:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:50:41 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449084c7671e5ad94b2f98ad9c2ec6b02b80b2d5742815088ecd78e723d2b240`  
		Last Modified: Tue, 12 Sep 2017 21:52:21 GMT  
		Size: 125.0 MB (124998682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38a3729d5872dac658072d96fee8340386ce47c4b1a4fa89db2975948bc029e`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607eaffde0e5ec9b8e33a2d30eb0c7d5b5ab1bf52ab0982e2c32269a85e05081`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78823f4dadfa882bfb7fbff44df22fcf89f778ed9c87c4bf9f4a9944e8a78507`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15002e35f80c8d28e52a820706b68f3fba26fb945ea2cef18434150af5ddc093`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:e1fd5d880cf15dedbd28de018b3676f55b946b081e01d65fb79c0de8a5421ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:0144253685165a5f931f5283d9beb0f6534364cd1f9c86cd300b3a150365f1d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.6 MB (127563996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1527c52d2c6a79af4758f270ac9bc814ff795f5e5803e0b99378c7f089300e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:50:11 GMT
ENV CRATE_VERSION=2.0.7
# Tue, 12 Sep 2017 21:50:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:50:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:50:39 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:50:39 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:50:40 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 12 Sep 2017 21:50:40 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:50:40 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:50:40 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:50:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:50:41 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449084c7671e5ad94b2f98ad9c2ec6b02b80b2d5742815088ecd78e723d2b240`  
		Last Modified: Tue, 12 Sep 2017 21:52:21 GMT  
		Size: 125.0 MB (124998682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38a3729d5872dac658072d96fee8340386ce47c4b1a4fa89db2975948bc029e`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607eaffde0e5ec9b8e33a2d30eb0c7d5b5ab1bf52ab0982e2c32269a85e05081`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78823f4dadfa882bfb7fbff44df22fcf89f778ed9c87c4bf9f4a9944e8a78507`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15002e35f80c8d28e52a820706b68f3fba26fb945ea2cef18434150af5ddc093`  
		Last Modified: Tue, 12 Sep 2017 21:52:02 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:6a36112817c0520cab6305f687ddeeaa889c84ca5a92c16ba3c5e4fbc091ba37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:755e551151eb684cb9b13c01e86b7c1a422affe32b1d666025e727265b9beb30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130166147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d6493539c58998f5ee5c299cfa47925098538023c15909c1082fee1798146e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:48:27 GMT
ENV CRATE_VERSION=2.1.6
# Tue, 12 Sep 2017 21:48:43 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:48:43 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:48:43 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:48:44 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:48:44 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 12 Sep 2017 21:48:44 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:48:44 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:48:44 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:48:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:48:45 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0c3f359a1d80bc6577c958d044718860fe835a509164a222b7b6f0bbb66e89`  
		Last Modified: Tue, 12 Sep 2017 21:51:03 GMT  
		Size: 127.6 MB (127600836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e501901acc52dcbb1d0fd14226bbd47b2825a1913613e41ae975947bf640b49`  
		Last Modified: Tue, 12 Sep 2017 21:50:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5423ac1c1e301a8fa92ef7e620f1aaf35d7269b2b243ac2d694c6c6cf2256d`  
		Last Modified: Tue, 12 Sep 2017 21:50:49 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2326907ee247d93b9fad6e2e506e1ec129da29f9e53ac34f4e61c2a3e6a8bad0`  
		Last Modified: Tue, 12 Sep 2017 21:50:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4c27da3612d764c9f8b57ca0f5611e560cb180756ef8d6de3e06052e42970`  
		Last Modified: Tue, 12 Sep 2017 21:50:50 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.7`

**does not exist** (yet?)

## `crate:latest`

```console
$ docker pull crate@sha256:6a36112817c0520cab6305f687ddeeaa889c84ca5a92c16ba3c5e4fbc091ba37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:755e551151eb684cb9b13c01e86b7c1a422affe32b1d666025e727265b9beb30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130166147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d6493539c58998f5ee5c299cfa47925098538023c15909c1082fee1798146e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 21:48:14 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 12 Sep 2017 21:48:14 GMT
ENV GOSU_VERSION=1.9
# Tue, 12 Sep 2017 21:48:26 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 12 Sep 2017 21:48:27 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 12 Sep 2017 21:48:27 GMT
ENV CRATE_VERSION=2.1.6
# Tue, 12 Sep 2017 21:48:43 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 12 Sep 2017 21:48:43 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 21:48:43 GMT
VOLUME [/data]
# Tue, 12 Sep 2017 21:48:44 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 12 Sep 2017 21:48:44 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 12 Sep 2017 21:48:44 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 12 Sep 2017 21:48:44 GMT
WORKDIR /data
# Tue, 12 Sep 2017 21:48:44 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 12 Sep 2017 21:48:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:48:45 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a91f74af995d2958193f308631c64ef0832667ea40a6ac9cc252ea8e8c1dfd`  
		Last Modified: Tue, 12 Sep 2017 21:50:52 GMT  
		Size: 592.4 KB (592353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefda9234d493bc351eb7d4c0c199c29c2ea2e4c614cd17eea21af9f33a00bd7`  
		Last Modified: Tue, 12 Sep 2017 21:50:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0c3f359a1d80bc6577c958d044718860fe835a509164a222b7b6f0bbb66e89`  
		Last Modified: Tue, 12 Sep 2017 21:51:03 GMT  
		Size: 127.6 MB (127600836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e501901acc52dcbb1d0fd14226bbd47b2825a1913613e41ae975947bf640b49`  
		Last Modified: Tue, 12 Sep 2017 21:50:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5423ac1c1e301a8fa92ef7e620f1aaf35d7269b2b243ac2d694c6c6cf2256d`  
		Last Modified: Tue, 12 Sep 2017 21:50:49 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2326907ee247d93b9fad6e2e506e1ec129da29f9e53ac34f4e61c2a3e6a8bad0`  
		Last Modified: Tue, 12 Sep 2017 21:50:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4c27da3612d764c9f8b57ca0f5611e560cb180756ef8d6de3e06052e42970`  
		Last Modified: Tue, 12 Sep 2017 21:50:50 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
