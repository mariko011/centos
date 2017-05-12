<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:1.1.3`](#crate113)
-	[`crate:0.57`](#crate057)
-	[`crate:0.57.6`](#crate0576)
-	[`crate:1.0`](#crate10)
-	[`crate:1.0.6`](#crate106)

## `crate:latest`

```console
$ docker pull crate@sha256:fb8d3a7ad1da38f042eaa6c34abccf5af136ec695f86c5214e04f0a7c9f306e1
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120678466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd66f7685065d7073acb8348c1e53a5dcd3b408f8767d12a3e8cbac1d14e2e14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:14:53 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Wed, 10 May 2017 21:14:54 GMT
ENV GOSU_VERSION=1.9
# Wed, 10 May 2017 21:15:02 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Wed, 10 May 2017 21:15:03 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 12 May 2017 21:54:57 GMT
ENV CRATE_VERSION=1.1.3
# Fri, 12 May 2017 21:55:27 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 12 May 2017 21:55:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 May 2017 21:55:29 GMT
VOLUME [/data]
# Fri, 12 May 2017 21:55:30 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Fri, 12 May 2017 21:55:31 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Fri, 12 May 2017 21:55:32 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 12 May 2017 21:55:32 GMT
WORKDIR /data
# Fri, 12 May 2017 21:55:33 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Fri, 12 May 2017 21:55:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 May 2017 21:55:34 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7170ce51e481802ce7f1afacc3c72430a58fd3e10d6043437bf94d319be3dfd6`  
		Last Modified: Thu, 11 May 2017 15:03:12 GMT  
		Size: 592.3 KB (592322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7b8570ded8a0d22df046415d571f1d618af7ded5f880f817846f501af33be4`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c317f7dc36086bc8ae84185a96ba424b34898bd2c83115f326e82bd311b5f`  
		Last Modified: Fri, 12 May 2017 21:56:08 GMT  
		Size: 118.1 MB (118116091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f6978627b25b86dc6c6bfebcf8c2dedaafa6cfd8f0a6ef78fe722eda678fee`  
		Last Modified: Fri, 12 May 2017 21:55:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2aa0d637e50f1ca5f260aeb05ee6e6179a9a88673c54ad40dc80e1c36ba092`  
		Last Modified: Fri, 12 May 2017 21:55:58 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec3cdff89a078be3bdf6c947470cabfc67bd6ef5175d8632cd4019b4d9bec8f`  
		Last Modified: Fri, 12 May 2017 21:55:58 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762a76522bf0d3f7781bb463c315334b91354753e4d31777ed61328d14500b72`  
		Last Modified: Fri, 12 May 2017 21:55:58 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.1.3`

```console
$ docker pull crate@sha256:fb8d3a7ad1da38f042eaa6c34abccf5af136ec695f86c5214e04f0a7c9f306e1
```

-	Platforms:
	-	linux; amd64

### `crate:1.1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120678466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd66f7685065d7073acb8348c1e53a5dcd3b408f8767d12a3e8cbac1d14e2e14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:14:53 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Wed, 10 May 2017 21:14:54 GMT
ENV GOSU_VERSION=1.9
# Wed, 10 May 2017 21:15:02 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Wed, 10 May 2017 21:15:03 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 12 May 2017 21:54:57 GMT
ENV CRATE_VERSION=1.1.3
# Fri, 12 May 2017 21:55:27 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 12 May 2017 21:55:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 May 2017 21:55:29 GMT
VOLUME [/data]
# Fri, 12 May 2017 21:55:30 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Fri, 12 May 2017 21:55:31 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Fri, 12 May 2017 21:55:32 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 12 May 2017 21:55:32 GMT
WORKDIR /data
# Fri, 12 May 2017 21:55:33 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Fri, 12 May 2017 21:55:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 May 2017 21:55:34 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7170ce51e481802ce7f1afacc3c72430a58fd3e10d6043437bf94d319be3dfd6`  
		Last Modified: Thu, 11 May 2017 15:03:12 GMT  
		Size: 592.3 KB (592322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7b8570ded8a0d22df046415d571f1d618af7ded5f880f817846f501af33be4`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c317f7dc36086bc8ae84185a96ba424b34898bd2c83115f326e82bd311b5f`  
		Last Modified: Fri, 12 May 2017 21:56:08 GMT  
		Size: 118.1 MB (118116091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f6978627b25b86dc6c6bfebcf8c2dedaafa6cfd8f0a6ef78fe722eda678fee`  
		Last Modified: Fri, 12 May 2017 21:55:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2aa0d637e50f1ca5f260aeb05ee6e6179a9a88673c54ad40dc80e1c36ba092`  
		Last Modified: Fri, 12 May 2017 21:55:58 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec3cdff89a078be3bdf6c947470cabfc67bd6ef5175d8632cd4019b4d9bec8f`  
		Last Modified: Fri, 12 May 2017 21:55:58 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762a76522bf0d3f7781bb463c315334b91354753e4d31777ed61328d14500b72`  
		Last Modified: Fri, 12 May 2017 21:55:58 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.57`

```console
$ docker pull crate@sha256:75d985f8ba5d8e4811a4c8d15ce9f08fbad4eb29f6393308e1f551c1c1ea5983
```

-	Platforms:
	-	linux; amd64

### `crate:0.57` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107335066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671d09dae5c3f1b61d6d3416a78853f4cd1bc5a954d26f02934f7a999c289b93`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:13:50 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Wed, 10 May 2017 21:13:51 GMT
ENV GOSU_VERSION=1.9
# Wed, 10 May 2017 21:13:59 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Wed, 10 May 2017 21:14:00 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 10 May 2017 21:14:01 GMT
ENV CRATE_VERSION=0.57.6
# Wed, 10 May 2017 21:14:25 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Wed, 10 May 2017 21:14:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:14:27 GMT
VOLUME [/data]
# Wed, 10 May 2017 21:14:28 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 10 May 2017 21:14:29 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 10 May 2017 21:14:30 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 10 May 2017 21:14:31 GMT
WORKDIR /data
# Wed, 10 May 2017 21:14:32 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Wed, 10 May 2017 21:14:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 21:14:33 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4815d28bf709974c37187ec88c7d42c05c512e2862610ddd686a39c3fe19c5c0`  
		Last Modified: Thu, 11 May 2017 15:02:09 GMT  
		Size: 592.5 KB (592478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d076e2cd47136ea318ffbe52349f65c4e1d9c23cbe39d7ff12c436bf3d275`  
		Last Modified: Thu, 11 May 2017 15:02:06 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa71d1f1cf1e7d6a2a448a3020bb614f639d3cfd434beae806326505d82dcea`  
		Last Modified: Thu, 11 May 2017 15:02:21 GMT  
		Size: 104.4 MB (104357385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc43f0c135822f96490d2022a3442c79509314555bedbe591ccc2251dd1a082d`  
		Last Modified: Thu, 11 May 2017 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c33b723a2515033a96f80079be51364e11627cff54b2c12704f770f5d1b5bf6`  
		Last Modified: Thu, 11 May 2017 15:02:05 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a03c879acf6583740b461646f8a09d5adb59ddab2eb93e40e441b08a0307e`  
		Last Modified: Thu, 11 May 2017 15:02:06 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb671db7fe73d7df8d1225d216a314b7dc30817898047bf24d7d5351a7f11e1`  
		Last Modified: Thu, 11 May 2017 15:02:05 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:0.57.6`

```console
$ docker pull crate@sha256:75d985f8ba5d8e4811a4c8d15ce9f08fbad4eb29f6393308e1f551c1c1ea5983
```

-	Platforms:
	-	linux; amd64

### `crate:0.57.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107335066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671d09dae5c3f1b61d6d3416a78853f4cd1bc5a954d26f02934f7a999c289b93`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:13:50 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Wed, 10 May 2017 21:13:51 GMT
ENV GOSU_VERSION=1.9
# Wed, 10 May 2017 21:13:59 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Wed, 10 May 2017 21:14:00 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 10 May 2017 21:14:01 GMT
ENV CRATE_VERSION=0.57.6
# Wed, 10 May 2017 21:14:25 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Wed, 10 May 2017 21:14:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:14:27 GMT
VOLUME [/data]
# Wed, 10 May 2017 21:14:28 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 10 May 2017 21:14:29 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 10 May 2017 21:14:30 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 10 May 2017 21:14:31 GMT
WORKDIR /data
# Wed, 10 May 2017 21:14:32 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Wed, 10 May 2017 21:14:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 21:14:33 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4815d28bf709974c37187ec88c7d42c05c512e2862610ddd686a39c3fe19c5c0`  
		Last Modified: Thu, 11 May 2017 15:02:09 GMT  
		Size: 592.5 KB (592478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d076e2cd47136ea318ffbe52349f65c4e1d9c23cbe39d7ff12c436bf3d275`  
		Last Modified: Thu, 11 May 2017 15:02:06 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa71d1f1cf1e7d6a2a448a3020bb614f639d3cfd434beae806326505d82dcea`  
		Last Modified: Thu, 11 May 2017 15:02:21 GMT  
		Size: 104.4 MB (104357385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc43f0c135822f96490d2022a3442c79509314555bedbe591ccc2251dd1a082d`  
		Last Modified: Thu, 11 May 2017 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c33b723a2515033a96f80079be51364e11627cff54b2c12704f770f5d1b5bf6`  
		Last Modified: Thu, 11 May 2017 15:02:05 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a03c879acf6583740b461646f8a09d5adb59ddab2eb93e40e441b08a0307e`  
		Last Modified: Thu, 11 May 2017 15:02:06 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb671db7fe73d7df8d1225d216a314b7dc30817898047bf24d7d5351a7f11e1`  
		Last Modified: Thu, 11 May 2017 15:02:05 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.0`

```console
$ docker pull crate@sha256:a2a8b1c918112d9a0edfb6936b43ff12359005c0940d40f64a867c9428235817
```

-	Platforms:
	-	linux; amd64

### `crate:1.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120747392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681f29aab2d44aab70bca290fcef71ce0941160db1cad41d0fef764fb332eddf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:14:53 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Wed, 10 May 2017 21:14:54 GMT
ENV GOSU_VERSION=1.9
# Wed, 10 May 2017 21:15:02 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Wed, 10 May 2017 21:15:03 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 10 May 2017 21:15:04 GMT
ENV CRATE_VERSION=1.0.6
# Wed, 10 May 2017 21:15:23 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Wed, 10 May 2017 21:15:23 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:15:24 GMT
VOLUME [/data]
# Wed, 10 May 2017 21:15:25 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 10 May 2017 21:15:26 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 10 May 2017 21:15:27 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 10 May 2017 21:15:28 GMT
WORKDIR /data
# Wed, 10 May 2017 21:15:29 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Wed, 10 May 2017 21:15:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 21:15:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7170ce51e481802ce7f1afacc3c72430a58fd3e10d6043437bf94d319be3dfd6`  
		Last Modified: Thu, 11 May 2017 15:03:12 GMT  
		Size: 592.3 KB (592322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7b8570ded8a0d22df046415d571f1d618af7ded5f880f817846f501af33be4`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab31ed90aff8a248f486c7561782a6b19b4be6daadbfeafa8a335c117b2d69c`  
		Last Modified: Thu, 11 May 2017 15:03:25 GMT  
		Size: 118.2 MB (118185021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c992ba62e726ab641f3117e98b7152536e285a9ab5417c157536a9b6eaf644a`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978b4aeadc899c07913b964bc5abc2a869bd9c9661979e11b082ecd2ddb9df18`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bd6c207b5a75684d5fd037f9f0b3e46f6977d1f7e042c952fa0bc6a92c69cc`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d738158a4d305cca3a3448a4534f68832dfbf9b55fc10fae9af06a3a195adc`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:1.0.6`

```console
$ docker pull crate@sha256:a2a8b1c918112d9a0edfb6936b43ff12359005c0940d40f64a867c9428235817
```

-	Platforms:
	-	linux; amd64

### `crate:1.0.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120747392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681f29aab2d44aab70bca290fcef71ce0941160db1cad41d0fef764fb332eddf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:14:53 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Wed, 10 May 2017 21:14:54 GMT
ENV GOSU_VERSION=1.9
# Wed, 10 May 2017 21:15:02 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Wed, 10 May 2017 21:15:03 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 10 May 2017 21:15:04 GMT
ENV CRATE_VERSION=1.0.6
# Wed, 10 May 2017 21:15:23 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && apk del .build-deps
# Wed, 10 May 2017 21:15:23 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:15:24 GMT
VOLUME [/data]
# Wed, 10 May 2017 21:15:25 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Wed, 10 May 2017 21:15:26 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Wed, 10 May 2017 21:15:27 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Wed, 10 May 2017 21:15:28 GMT
WORKDIR /data
# Wed, 10 May 2017 21:15:29 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Wed, 10 May 2017 21:15:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 21:15:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7170ce51e481802ce7f1afacc3c72430a58fd3e10d6043437bf94d319be3dfd6`  
		Last Modified: Thu, 11 May 2017 15:03:12 GMT  
		Size: 592.3 KB (592322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7b8570ded8a0d22df046415d571f1d618af7ded5f880f817846f501af33be4`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab31ed90aff8a248f486c7561782a6b19b4be6daadbfeafa8a335c117b2d69c`  
		Last Modified: Thu, 11 May 2017 15:03:25 GMT  
		Size: 118.2 MB (118185021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c992ba62e726ab641f3117e98b7152536e285a9ab5417c157536a9b6eaf644a`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978b4aeadc899c07913b964bc5abc2a869bd9c9661979e11b082ecd2ddb9df18`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bd6c207b5a75684d5fd037f9f0b3e46f6977d1f7e042c952fa0bc6a92c69cc`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d738158a4d305cca3a3448a4534f68832dfbf9b55fc10fae9af06a3a195adc`  
		Last Modified: Thu, 11 May 2017 15:03:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
