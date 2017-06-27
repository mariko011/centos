<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:2.0`](#crate20)
-	[`crate:2.0.2`](#crate202)
-	[`crate:1.0`](#crate10)
-	[`crate:1.0.6`](#crate106)
-	[`crate:1.1`](#crate11)
-	[`crate:1.1.6`](#crate116)

## `crate:latest`

```console
$ docker pull crate@sha256:d9d9d9f2205156c24ab0878cc1a45fc5ea14467dce5af4b3a15e41c98fba3c25
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127542620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565500ae5193188b18649c7fb7b0042815530f3ca00ac0949397bc82d68191c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:14:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 19 Jun 2017 18:14:42 GMT
ENV GOSU_VERSION=1.9
# Mon, 19 Jun 2017 18:14:53 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 19 Jun 2017 18:14:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 27 Jun 2017 18:34:55 GMT
ENV CRATE_VERSION=2.0.2
# Tue, 27 Jun 2017 18:35:13 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 27 Jun 2017 18:35:24 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 18:35:54 GMT
VOLUME [/data]
# Tue, 27 Jun 2017 18:36:20 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 27 Jun 2017 18:36:22 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 27 Jun 2017 18:36:47 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 27 Jun 2017 18:37:37 GMT
WORKDIR /data
# Tue, 27 Jun 2017 18:38:03 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 27 Jun 2017 18:38:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Jun 2017 18:38:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84baa2d5e988c916322770ccc02ccd4b7e950425870d9567495bb02afead40c7`  
		Last Modified: Mon, 19 Jun 2017 18:23:47 GMT  
		Size: 592.3 KB (592318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c41e98055936a357a920145b7e4353d0581a15cabe6b791b72defe0a994db99`  
		Last Modified: Mon, 19 Jun 2017 18:23:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34df2dc1ec19d80846756a25f8730f6af224d1540c1f0f7e3e2dc992a202a28`  
		Last Modified: Tue, 27 Jun 2017 18:50:18 GMT  
		Size: 125.0 MB (124977306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d346158893ac265ccc4faf9dbb5432548a31e82932be7160696c95511dbd31c`  
		Last Modified: Tue, 27 Jun 2017 18:50:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c7c674efe17f45d1eb9dd78e22b3140bf9dc2eac59d81144e4683a45b8df03`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc6377200ef6decda0380c1b150ebc429b46b6b2ced86d510523b1f416fb036`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5648a7131ab4951e3954667dc799b8979440873c6ed8761797613c30d152f7cc`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0`

```console
$ docker pull crate@sha256:d9d9d9f2205156c24ab0878cc1a45fc5ea14467dce5af4b3a15e41c98fba3c25
```

-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127542620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565500ae5193188b18649c7fb7b0042815530f3ca00ac0949397bc82d68191c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:14:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 19 Jun 2017 18:14:42 GMT
ENV GOSU_VERSION=1.9
# Mon, 19 Jun 2017 18:14:53 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 19 Jun 2017 18:14:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 27 Jun 2017 18:34:55 GMT
ENV CRATE_VERSION=2.0.2
# Tue, 27 Jun 2017 18:35:13 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 27 Jun 2017 18:35:24 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 18:35:54 GMT
VOLUME [/data]
# Tue, 27 Jun 2017 18:36:20 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 27 Jun 2017 18:36:22 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 27 Jun 2017 18:36:47 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 27 Jun 2017 18:37:37 GMT
WORKDIR /data
# Tue, 27 Jun 2017 18:38:03 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 27 Jun 2017 18:38:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Jun 2017 18:38:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84baa2d5e988c916322770ccc02ccd4b7e950425870d9567495bb02afead40c7`  
		Last Modified: Mon, 19 Jun 2017 18:23:47 GMT  
		Size: 592.3 KB (592318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c41e98055936a357a920145b7e4353d0581a15cabe6b791b72defe0a994db99`  
		Last Modified: Mon, 19 Jun 2017 18:23:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34df2dc1ec19d80846756a25f8730f6af224d1540c1f0f7e3e2dc992a202a28`  
		Last Modified: Tue, 27 Jun 2017 18:50:18 GMT  
		Size: 125.0 MB (124977306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d346158893ac265ccc4faf9dbb5432548a31e82932be7160696c95511dbd31c`  
		Last Modified: Tue, 27 Jun 2017 18:50:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c7c674efe17f45d1eb9dd78e22b3140bf9dc2eac59d81144e4683a45b8df03`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc6377200ef6decda0380c1b150ebc429b46b6b2ced86d510523b1f416fb036`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5648a7131ab4951e3954667dc799b8979440873c6ed8761797613c30d152f7cc`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.2`

```console
$ docker pull crate@sha256:d9d9d9f2205156c24ab0878cc1a45fc5ea14467dce5af4b3a15e41c98fba3c25
```

-	Platforms:
	-	linux; amd64

### `crate:2.0.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127542620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565500ae5193188b18649c7fb7b0042815530f3ca00ac0949397bc82d68191c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:14:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 19 Jun 2017 18:14:42 GMT
ENV GOSU_VERSION=1.9
# Mon, 19 Jun 2017 18:14:53 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 19 Jun 2017 18:14:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 27 Jun 2017 18:34:55 GMT
ENV CRATE_VERSION=2.0.2
# Tue, 27 Jun 2017 18:35:13 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 27 Jun 2017 18:35:24 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 18:35:54 GMT
VOLUME [/data]
# Tue, 27 Jun 2017 18:36:20 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 27 Jun 2017 18:36:22 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 27 Jun 2017 18:36:47 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 27 Jun 2017 18:37:37 GMT
WORKDIR /data
# Tue, 27 Jun 2017 18:38:03 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 27 Jun 2017 18:38:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Jun 2017 18:38:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84baa2d5e988c916322770ccc02ccd4b7e950425870d9567495bb02afead40c7`  
		Last Modified: Mon, 19 Jun 2017 18:23:47 GMT  
		Size: 592.3 KB (592318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c41e98055936a357a920145b7e4353d0581a15cabe6b791b72defe0a994db99`  
		Last Modified: Mon, 19 Jun 2017 18:23:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34df2dc1ec19d80846756a25f8730f6af224d1540c1f0f7e3e2dc992a202a28`  
		Last Modified: Tue, 27 Jun 2017 18:50:18 GMT  
		Size: 125.0 MB (124977306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d346158893ac265ccc4faf9dbb5432548a31e82932be7160696c95511dbd31c`  
		Last Modified: Tue, 27 Jun 2017 18:50:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c7c674efe17f45d1eb9dd78e22b3140bf9dc2eac59d81144e4683a45b8df03`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc6377200ef6decda0380c1b150ebc429b46b6b2ced86d510523b1f416fb036`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5648a7131ab4951e3954667dc799b8979440873c6ed8761797613c30d152f7cc`  
		Last Modified: Tue, 27 Jun 2017 18:50:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.0`

```console
$ docker pull crate@sha256:87b842785bf02cd4ba8df3b234fa36eef3af1203e4074c11a07bc2d872b83083
```

-	Platforms:
	-	linux; amd64

### `crate:1.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120749950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6b2654044afc20204748536876afb8423d0c04a28bd5ac8e8bd84e81361bff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:14:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 19 Jun 2017 18:14:42 GMT
ENV GOSU_VERSION=1.9
# Mon, 19 Jun 2017 18:14:53 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 19 Jun 2017 18:14:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 19 Jun 2017 18:18:12 GMT
ENV CRATE_VERSION=1.0.6
# Mon, 19 Jun 2017 18:18:42 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 19 Jun 2017 18:18:44 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 18:18:45 GMT
VOLUME [/data]
# Mon, 19 Jun 2017 18:18:47 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 19 Jun 2017 18:18:48 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 19 Jun 2017 18:18:50 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 19 Jun 2017 18:18:52 GMT
WORKDIR /data
# Mon, 19 Jun 2017 18:23:14 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Mon, 19 Jun 2017 18:23:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:23:15 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84baa2d5e988c916322770ccc02ccd4b7e950425870d9567495bb02afead40c7`  
		Last Modified: Mon, 19 Jun 2017 18:23:47 GMT  
		Size: 592.3 KB (592318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c41e98055936a357a920145b7e4353d0581a15cabe6b791b72defe0a994db99`  
		Last Modified: Mon, 19 Jun 2017 18:23:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2b005896da8824efc93d82e8d4abbe45983d1e85543c7b7e2a7d617913a08c`  
		Last Modified: Mon, 19 Jun 2017 18:27:22 GMT  
		Size: 118.2 MB (118185174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b5641f6d25fe1e8eafbb3929faf4dfe765e1193b678c0346d84e6cd4ec10a`  
		Last Modified: Mon, 19 Jun 2017 18:27:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cbe00eac59625deaba9969bfdc225fdbaa1c8a9e04089949da276225b5ce9c`  
		Last Modified: Mon, 19 Jun 2017 18:27:02 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0cf40bed386c9aa00f5366e53bd07651109800fad47cc70b695d7cee0250c7`  
		Last Modified: Mon, 19 Jun 2017 18:27:02 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c368cf80f99cfdba70744db6fa5f94e326d45dd515b43ee018927f25026c1097`  
		Last Modified: Mon, 19 Jun 2017 18:27:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.0.6`

```console
$ docker pull crate@sha256:87b842785bf02cd4ba8df3b234fa36eef3af1203e4074c11a07bc2d872b83083
```

-	Platforms:
	-	linux; amd64

### `crate:1.0.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120749950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6b2654044afc20204748536876afb8423d0c04a28bd5ac8e8bd84e81361bff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:14:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 19 Jun 2017 18:14:42 GMT
ENV GOSU_VERSION=1.9
# Mon, 19 Jun 2017 18:14:53 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 19 Jun 2017 18:14:56 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 19 Jun 2017 18:18:12 GMT
ENV CRATE_VERSION=1.0.6
# Mon, 19 Jun 2017 18:18:42 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 19 Jun 2017 18:18:44 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 18:18:45 GMT
VOLUME [/data]
# Mon, 19 Jun 2017 18:18:47 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Mon, 19 Jun 2017 18:18:48 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Mon, 19 Jun 2017 18:18:50 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 19 Jun 2017 18:18:52 GMT
WORKDIR /data
# Mon, 19 Jun 2017 18:23:14 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Mon, 19 Jun 2017 18:23:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:23:15 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84baa2d5e988c916322770ccc02ccd4b7e950425870d9567495bb02afead40c7`  
		Last Modified: Mon, 19 Jun 2017 18:23:47 GMT  
		Size: 592.3 KB (592318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c41e98055936a357a920145b7e4353d0581a15cabe6b791b72defe0a994db99`  
		Last Modified: Mon, 19 Jun 2017 18:23:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2b005896da8824efc93d82e8d4abbe45983d1e85543c7b7e2a7d617913a08c`  
		Last Modified: Mon, 19 Jun 2017 18:27:22 GMT  
		Size: 118.2 MB (118185174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b5641f6d25fe1e8eafbb3929faf4dfe765e1193b678c0346d84e6cd4ec10a`  
		Last Modified: Mon, 19 Jun 2017 18:27:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cbe00eac59625deaba9969bfdc225fdbaa1c8a9e04089949da276225b5ce9c`  
		Last Modified: Mon, 19 Jun 2017 18:27:02 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0cf40bed386c9aa00f5366e53bd07651109800fad47cc70b695d7cee0250c7`  
		Last Modified: Mon, 19 Jun 2017 18:27:02 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c368cf80f99cfdba70744db6fa5f94e326d45dd515b43ee018927f25026c1097`  
		Last Modified: Mon, 19 Jun 2017 18:27:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.1`

```console
$ docker pull crate@sha256:4d238aa3381adf5460a1cee934ab3235f58c860435f383d27fce7e9b67374886
```

-	Platforms:
	-	linux; amd64

### `crate:1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120682477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b6e17e5c6f37a0b769d523297eb7bf1461dd9997c4162b6d0e785e3a8d820`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 18:40:35 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 27 Jun 2017 18:41:00 GMT
ENV GOSU_VERSION=1.9
# Tue, 27 Jun 2017 18:42:00 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 27 Jun 2017 18:42:17 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 27 Jun 2017 18:42:43 GMT
ENV CRATE_VERSION=1.1.6
# Tue, 27 Jun 2017 18:44:04 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 27 Jun 2017 18:45:21 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 18:45:46 GMT
VOLUME [/data]
# Tue, 27 Jun 2017 18:46:12 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 27 Jun 2017 18:46:37 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 27 Jun 2017 18:47:02 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 27 Jun 2017 18:47:28 GMT
WORKDIR /data
# Tue, 27 Jun 2017 18:47:53 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 27 Jun 2017 18:48:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Jun 2017 18:48:43 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4626b3670f7752586e2d44d7c1195857f0a77faa3eb960df745cc59db932b521`  
		Last Modified: Tue, 27 Jun 2017 18:56:13 GMT  
		Size: 592.3 KB (592325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb19096dde966157de84af39e5e668106f0ab331d5ed2016089d4101d12f0eac`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801eee45785d6d5ee43892942ae4a38de75d5934b7b459451753a732863d6e52`  
		Last Modified: Tue, 27 Jun 2017 18:56:28 GMT  
		Size: 118.1 MB (118117735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff4564fb3a1967b012391c2a29aa9f8faf24e1414291a842509a3f1a79cffd0`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16683ebe043e2f5560657d955fc1f6f929c84ee8f083e2a222ba766ca1fe424`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d388d6f0a2d60a52e5ffe85f0f40a4ec6e334b1b57f058374c6a17c59facff`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983eb110c2c55d39df8aa96feabd4815cf266475257608ebf8042b24dce3751c`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.1.6`

```console
$ docker pull crate@sha256:4d238aa3381adf5460a1cee934ab3235f58c860435f383d27fce7e9b67374886
```

-	Platforms:
	-	linux; amd64

### `crate:1.1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120682477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1b6e17e5c6f37a0b769d523297eb7bf1461dd9997c4162b6d0e785e3a8d820`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 18:40:35 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 27 Jun 2017 18:41:00 GMT
ENV GOSU_VERSION=1.9
# Tue, 27 Jun 2017 18:42:00 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 27 Jun 2017 18:42:17 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 27 Jun 2017 18:42:43 GMT
ENV CRATE_VERSION=1.1.6
# Tue, 27 Jun 2017 18:44:04 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 27 Jun 2017 18:45:21 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 18:45:46 GMT
VOLUME [/data]
# Tue, 27 Jun 2017 18:46:12 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 27 Jun 2017 18:46:37 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 27 Jun 2017 18:47:02 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 27 Jun 2017 18:47:28 GMT
WORKDIR /data
# Tue, 27 Jun 2017 18:47:53 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 27 Jun 2017 18:48:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Jun 2017 18:48:43 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4626b3670f7752586e2d44d7c1195857f0a77faa3eb960df745cc59db932b521`  
		Last Modified: Tue, 27 Jun 2017 18:56:13 GMT  
		Size: 592.3 KB (592325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb19096dde966157de84af39e5e668106f0ab331d5ed2016089d4101d12f0eac`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801eee45785d6d5ee43892942ae4a38de75d5934b7b459451753a732863d6e52`  
		Last Modified: Tue, 27 Jun 2017 18:56:28 GMT  
		Size: 118.1 MB (118117735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff4564fb3a1967b012391c2a29aa9f8faf24e1414291a842509a3f1a79cffd0`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16683ebe043e2f5560657d955fc1f6f929c84ee8f083e2a222ba766ca1fe424`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d388d6f0a2d60a52e5ffe85f0f40a4ec6e334b1b57f058374c6a17c59facff`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983eb110c2c55d39df8aa96feabd4815cf266475257608ebf8042b24dce3751c`  
		Last Modified: Tue, 27 Jun 2017 18:56:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
