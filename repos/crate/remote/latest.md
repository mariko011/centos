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
