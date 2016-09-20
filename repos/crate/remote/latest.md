## `crate:latest`

```console
$ docker pull crate@sha256:d14871e13c8f9d2787d0650218c5fceb72ff88dfa221403fb8467bdb0843bd1f
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151116048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00a941958eca2ae5476b4c2ea4c6de95fa827b5f760a6fdf42e8de8aea75a90`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 16:43:31 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 20 Sep 2016 16:43:32 GMT
ENV GOSU_VERSION=1.9
# Tue, 20 Sep 2016 16:43:40 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 20 Sep 2016 16:43:41 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 20 Sep 2016 16:43:41 GMT
ENV CRATE_VERSION=0.55.4
# Tue, 20 Sep 2016 16:44:54 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Tue, 20 Sep 2016 16:44:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 16:44:54 GMT
VOLUME [/data]
# Tue, 20 Sep 2016 16:44:55 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml 
# Tue, 20 Sep 2016 16:44:55 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml 
# Tue, 20 Sep 2016 16:44:56 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 20 Sep 2016 16:44:56 GMT
WORKDIR /data
# Tue, 20 Sep 2016 16:44:56 GMT
EXPOSE 4200/tcp 4300/tcp
# Tue, 20 Sep 2016 16:44:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:44:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68bfb793f4d406c021442714970d84d7c149839b9b90adc8be64b1b37d885aa`  
		Last Modified: Tue, 20 Sep 2016 16:45:07 GMT  
		Size: 581.8 KB (581771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483f665e32da1721f79e016f28b9c60e234e2a4184ccd39cde4de64d2e607b5`  
		Last Modified: Tue, 20 Sep 2016 16:45:07 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3df6d1cf8729e9e92d7c4bf7e77f900ffc7b9bebcd313ad4b8dd930948f0931`  
		Last Modified: Tue, 20 Sep 2016 16:45:26 GMT  
		Size: 148.2 MB (148221049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad963a89615c8e66f35f10d0b8016d218b8c01bba4d5c338c455bf4f8788d0f`  
		Last Modified: Tue, 20 Sep 2016 16:45:04 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97ee100459e0dc6b0850f5c27b07cdc01dc5efc2d072568b114f79771d67d5c`  
		Last Modified: Tue, 20 Sep 2016 16:45:04 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6253ee9ace0e23f3222a22f6f422783e5c399a7c85c34104072e98ab040a9a`  
		Last Modified: Tue, 20 Sep 2016 16:45:04 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aca63cd3575d5d3a5d5d7655262c9f8cb85a14ae5d4718cc2ace9e87f42eae`  
		Last Modified: Tue, 20 Sep 2016 16:45:03 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
