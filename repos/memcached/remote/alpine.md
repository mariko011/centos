## `memcached:alpine`

```console
$ docker pull memcached@sha256:8eeacccc62827257c950ee3d7b9398375a1ef5d84635308d8035e569b65b7f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:2b57ff3ca5d71c40733b47b67fda8ace178b867f798f38fe39423ff117879a64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3337588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e747be973d18d96c454c14cf13f54767b4395af1b757e75d2ce14dead89fda2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:03:24 GMT
RUN adduser -D memcache
# Thu, 21 Dec 2017 21:35:59 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:35:59 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:39:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 21 Dec 2017 21:39:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:39:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:39:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:39:19 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:39:19 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:39:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9682dcbcd9ddfe8bc8141b2cbc5b9758f8229a2a33d12b3fced429c21ffc661`  
		Last Modified: Fri, 01 Dec 2017 21:11:46 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf716a9e14d1247aa9d1e5ee4469b389cafb4a2f581640e193306d2be563d103`  
		Last Modified: Thu, 21 Dec 2017 21:40:37 GMT  
		Size: 1.3 MB (1344438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35326484935a9bbd912985d53b3863807aac766067c3c98ed159c42a87ccab9e`  
		Last Modified: Thu, 21 Dec 2017 21:40:35 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1932138255949e308fe4364092c14c5585d17450f994de27816b078233f0e3ab`  
		Last Modified: Thu, 21 Dec 2017 21:40:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:42463d346a80c751a0e057f52a370e6dc09da9a1a1264b7dd8f58038aab85aaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3663960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f15d35f0c995f2537b2eff987fa8fa434e834e63e1f8a0775089f693306dd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 15:08:19 GMT
RUN adduser -D memcache
# Thu, 21 Dec 2017 22:28:22 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 22:28:23 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 22:58:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 21 Dec 2017 22:58:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 22:58:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 22:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 22:58:15 GMT
USER [memcache]
# Thu, 21 Dec 2017 22:58:16 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 22:58:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8860a70a44ad5b357b11f78d66b38d63a83ce590caaf438ad1654de9fa029`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fdfc646763108147c6403f9f00710c9a43c2da830f5e8edee701cc4ada8581`  
		Last Modified: Thu, 21 Dec 2017 22:58:55 GMT  
		Size: 1.7 MB (1696141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58febbd4fb7b9920584ee7f973008fbc606d4c0df772f14e1812a9a3f7c496bc`  
		Last Modified: Thu, 21 Dec 2017 22:58:52 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0a5ab6acffaf83e384ccb05dff5acda7526ab59f69b16595c32205be560545`  
		Last Modified: Thu, 21 Dec 2017 22:58:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:13b845e09180a70edac89b48823738b75ba62439bb9078e975e6ae7e50417b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e8a6c37aed1960ee585527bee76c87d1148fdb3ab7ec5e78ada1b15a69a0d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:46:21 GMT
RUN adduser -D memcache
# Fri, 22 Dec 2017 03:52:42 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:52:42 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:56:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 22 Dec 2017 03:56:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:56:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:56:53 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:56:53 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:56:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9eabe1c971a77807061f84403818bd51c9287e46384434a82daf4c0a6e0633`  
		Last Modified: Thu, 26 Oct 2017 17:51:13 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75a9e0a985908cbf64cb24428381dfb47a23b9be4b4f5326e6933391dcc3488`  
		Last Modified: Fri, 22 Dec 2017 03:57:49 GMT  
		Size: 1.7 MB (1682455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08db10942f507a64b3cfd3686993f2e8b1a3a3a6aa92b21d04f39cc0c066d79`  
		Last Modified: Fri, 22 Dec 2017 03:57:48 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c568ca1ec727aa6a3602ab3bf95b0796d895610ac4eb91fa084f5a8e85f1e4c1`  
		Last Modified: Fri, 22 Dec 2017 03:57:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:b41acba51e7e32ccaaddcc4e94e3d062fe57f52d366221b10b2dd046ecbb18fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3878613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed787719eb755f3a16e98145098036cb96d67fe31f17ea9fb16f7570bc68cd13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 18:46:08 GMT
RUN adduser -D memcache
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:15:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 22 Dec 2017 20:15:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:15:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:15:27 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:15:27 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:15:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2472e13d2c807982e5f03c66ea9f18432ef58da3b873ea3746506ea28963a6a1`  
		Last Modified: Thu, 26 Oct 2017 18:49:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e9ec7b85d09cd5d07e27f8a5db759e57bd6f1acaab0b9c9b5e3b1114dbe2ba`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 1.8 MB (1831189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e576da4ab96760c09da2d9a7ebe05969ffe685090f04ce58221dda70fdb2730`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e7df927cc1acf85b80d78b0e074ae1ce6d71f5db58180da5d4f12b84fce9b0`  
		Last Modified: Fri, 22 Dec 2017 20:28:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:3b462bbfdd944dabe63ec2a56a683db739668df6e86951b4824ed1c3eec9e59d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3752667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30700607fd6c20c3f94a585e86f3725d57f24f6519ef5ef4137cf0b9d3a13b6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 00:33:39 GMT
RUN adduser -D memcache
# Fri, 22 Dec 2017 01:54:35 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:54:36 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:58:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 22 Dec 2017 01:58:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:58:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:58:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:58:21 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:58:23 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:58:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08904dbe8112a8a520dc262093f95abeea579a04fe5c08ffea6669c3d37cb5ad`  
		Last Modified: Fri, 27 Oct 2017 00:37:49 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc0e5fa3339d8c2b5c359e89b6dce4b1ddac370d7b0288ffd5130c06ba3eb6`  
		Last Modified: Fri, 22 Dec 2017 01:58:57 GMT  
		Size: 1.7 MB (1742232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e622af7a94c7667d2776bf7598c391285f5a19def2a53a1e91f427da9c8d5cb`  
		Last Modified: Fri, 22 Dec 2017 01:58:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baac69ab74cab35eb8898a022b9879f8931609d25719e2e713457f9944123c74`  
		Last Modified: Fri, 22 Dec 2017 01:58:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c12f0184133c9fa3e72f6a33171add972da133110dc5682e516dd41c63ec5809
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3894019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ae33ee2b0d01335907e842c2b78400fe2084d0bbb24373ea260ebbe3007fc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:33:38 GMT
RUN adduser -D memcache
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:14:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sun, 07 Jan 2018 08:14:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:14:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:14:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:14:45 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:14:46 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:14:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b2cd4d6636c544f88e65b18afb3ffb6ba20453da91f9ee2294e40d808f11b0`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d872569cd633b0502b24edae8d03b8c75657c91a3922fa8390924156308ec33a`  
		Last Modified: Sun, 07 Jan 2018 08:15:35 GMT  
		Size: 1.8 MB (1826732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431736bb9e4afd26faff0eec90bd104d04b686256fe7c0636858ceed3e418f8`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef631208dc64aca7830c2f292086f85ae9f787fc8be1961a3ffbd33957c459`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
