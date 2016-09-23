## `crate:latest`

```console
$ docker pull crate@sha256:1f2b5fc36a3829b34905809a19199cc54fda4bc839ce306b0e21247c8c74a904
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151112303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba2413943277cb154a91dc2387b52d60d98be153f85302ee3aaeacc4d720b51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:35:26 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 23 Sep 2016 16:35:27 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 16:35:39 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 23 Sep 2016 16:35:40 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 23 Sep 2016 16:35:41 GMT
ENV CRATE_VERSION=0.55.5
# Fri, 23 Sep 2016 16:35:53 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Fri, 23 Sep 2016 16:35:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:35:54 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Fri, 23 Sep 2016 16:35:55 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Fri, 23 Sep 2016 16:35:56 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 23 Sep 2016 16:35:56 GMT
WORKDIR /data
# Fri, 23 Sep 2016 16:35:56 GMT
EXPOSE 4200/tcp 4300/tcp
# Fri, 23 Sep 2016 16:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:35:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa15639b8a6962f96d127c07fcf2555b14e43abb003cf524797c898dbfc9ed4`  
		Last Modified: Fri, 23 Sep 2016 16:36:07 GMT  
		Size: 581.8 KB (581776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5e88313fc00b33683542d589e59ba6efbd87f4040b76a7de9549d1e832cb66`  
		Last Modified: Fri, 23 Sep 2016 16:36:06 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8f73496dedc8b6d49717bf724e13a877dd9cbf6f3c5ee3cde51ccd96922238`  
		Last Modified: Fri, 23 Sep 2016 16:36:24 GMT  
		Size: 148.2 MB (148215419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9be0c50f3f1cb048b4102bab06bddb5496e5b0ce85376f95285fc30e57a10fb`  
		Last Modified: Fri, 23 Sep 2016 16:36:03 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb004c87cf1d5e246edfcab6ab811ca2d8c4f6de94bd7b5e0c308e2a31ac66d`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967e35bf28cb1322c9b63aa618178411cd8cc51e0ebae73b06eb54e3d4d94ead`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453ffa1fb9d3c0b74630efef7ec38e07c1b479d0965216b605001e920332f347`  
		Last Modified: Fri, 23 Sep 2016 16:36:04 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
