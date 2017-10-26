<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.2`](#memcached152)
-	[`memcached:1.5.2-alpine`](#memcached152-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:3f0e2ff4154cd7620c07e6490b8ff45c2ef00f2f1246a49685efc20b6cf414b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:e91ac736b5309dffb65519bf0e87dbcc67d0691d1936aeaf754ed74fd525e64b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338fa807ba35d53c0760925b14976d01219dfed7991d6c50ce2341fc45eb3ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:37 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 23:58:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 23:58:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:58:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 23:58:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:58:23 GMT
USER [memcache]
# Mon, 09 Oct 2017 23:58:23 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 23:58:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2da82b6029e84cc43da2171c921ab6933319835b6d2dc3aec3c04c893e17f9`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc199c39f5bb5745cf39f6e26f607c967333b52dfd87555168fb0189e95f61f0`  
		Last Modified: Mon, 09 Oct 2017 23:58:44 GMT  
		Size: 974.7 KB (974726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b631bdd0c6519403f19304e76d611254132b75099714b448524ff5ce99f669`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d31cbdc76c4a5ff5b06d7c40b1247729bb08811b959c43f490752ea62a2294`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ee733f84806789a9a19a0223ae4cac0179bc3f9975bc64495f5111f708002353
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb31827688bf89a3012786906fbc96d751547e2f64247970086ca7c313c75cb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:20:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:20:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:20:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:20:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:20:32 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:20:32 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:20:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53502c9d988d9f2e06dec205386e0a9f3073dfc10195feb54d767271018caa42`  
		Last Modified: Mon, 09 Oct 2017 22:20:59 GMT  
		Size: 961.5 KB (961519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143611a5f684aea0d3a570ca7c977d089586392e4b97ddd37825dcacec3ef8ee`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e804f257dd69bd1c3b895309288e64aebdb473ea6bcb29695525d113e3bc55f9`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5c785a8029098bdabe117a4eef37617c9826ce7d4778686c5113365a0cad0176
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7fff4ea94463b05cb54610bc5c6b4d669b8c5a6b65ec15fdeb4b78d038fcd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:23:07 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:23:08 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:32:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:32:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:32:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:33:00 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:33:02 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:33:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ea8ec00000f8ff80f8919cf0043c1cb7dc06b932bfe98329bef148266e70c`  
		Last Modified: Mon, 09 Oct 2017 22:33:27 GMT  
		Size: 929.5 KB (929549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73553d04e062a928b8c596ff9ef08a5be8068346e9b82eb3c5afb2917044b559`  
		Last Modified: Mon, 09 Oct 2017 22:33:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13c94531487fa83be792c67f5db183f443db051eb675818c93e4c58e2429510`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:1502d83478b0b0ea0139a699ac757474b30d14b2c2261d188ed17c36d9e7442f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be16e9284c3eca31909980a37d7f9ef7568780b41a56a3854735c4e7c3174e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:15:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:37 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:15:38 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:15:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f61aba9b4d1a37e4d5af286ef8fa59b6de68ac8eb53e3a7a79179a136685d`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 942.4 KB (942392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c885d1d53b2ea6e6144bbef8c38a81888b945f2c4fcdb41aa103cf85dc21e`  
		Last Modified: Tue, 10 Oct 2017 00:16:24 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4a30053c12e6be5187eae7cd441f487f345fa594c8d49f9ee8070d135e698f`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:ecc60ab74e7956ef368e45a400afdf2e11056470e2c26b0308d2011b983f7f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24117305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab1d2884e343521e7be7e97e8ee14a50c49913ac60b41e7b787420525f8d972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:03:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:03:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:54 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:03:55 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:03:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e406410fee28076fe5aae33d56477afcb22c3b85d0030be2ccb7c07b2b682`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 986.5 KB (986478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26cae6c82b0aa6bc4178521794513bf6ac4bcb1e71ac9833796bd8165b1b760`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ba4420e437e222b113d0015fee90a6c37192fe9c38dcd3cecbe76db9879c4e`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:789a3f76148aec496694ebfce87392ec48c84e1f04dc71ab2e43d73bb7f1e017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dd32338936bb4383bae6849145a4facc256dd61a348c3ca57486bb0429c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:30:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 01:30:31 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 01:30:35 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 01:45:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 01:45:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:45:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 01:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:45:22 GMT
USER [memcache]
# Tue, 10 Oct 2017 01:45:26 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 01:45:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acb9fabebc4a5a2e9c90fcbc9c509005f384bea24b501455bdaacc4a9d7b819`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ca3ead269a8efef297a6c13cd669a7db76d9671c78bf43f5dfdcba1974f0e8`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 973.4 KB (973439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d24e1a64f27e4d4e3cf8cc6b8532165450215a31b0c2d546a710fd014da572`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6fcf123025e1440ed2adc3fb80f77fbe6de9f64ecd825d3ca18a8da184d366`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:5ba2b45b4e99d4cee62e9370e968bad3f2ff5ed9ba420298231f67a6612221fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770017e7fac8136a5bfde4ad6380db481907a8da9849263a7897d854135ba71d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:37:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:37:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:37:27 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:37:28 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:37:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19408bdbb27e79f51641da322b1cc1d3ded521fb71e83256d41ff519f47f78cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29969423dc6a75ba9a528ea2f8c6686ee37876b50178419c098831710ef89434`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 990.5 KB (990537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f78688d324c6730e7236b7c0b61e73a6dfc3c311feb4441f665510782f73ca`  
		Last Modified: Mon, 09 Oct 2017 22:37:41 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56850ed52078223dce0ddf24fcb8be4134aa1dc2ed6da6edb0c1015b52ac8cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:3f0e2ff4154cd7620c07e6490b8ff45c2ef00f2f1246a49685efc20b6cf414b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:e91ac736b5309dffb65519bf0e87dbcc67d0691d1936aeaf754ed74fd525e64b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338fa807ba35d53c0760925b14976d01219dfed7991d6c50ce2341fc45eb3ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:37 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 23:58:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 23:58:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:58:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 23:58:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:58:23 GMT
USER [memcache]
# Mon, 09 Oct 2017 23:58:23 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 23:58:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2da82b6029e84cc43da2171c921ab6933319835b6d2dc3aec3c04c893e17f9`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc199c39f5bb5745cf39f6e26f607c967333b52dfd87555168fb0189e95f61f0`  
		Last Modified: Mon, 09 Oct 2017 23:58:44 GMT  
		Size: 974.7 KB (974726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b631bdd0c6519403f19304e76d611254132b75099714b448524ff5ce99f669`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d31cbdc76c4a5ff5b06d7c40b1247729bb08811b959c43f490752ea62a2294`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ee733f84806789a9a19a0223ae4cac0179bc3f9975bc64495f5111f708002353
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb31827688bf89a3012786906fbc96d751547e2f64247970086ca7c313c75cb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:20:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:20:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:20:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:20:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:20:32 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:20:32 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:20:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53502c9d988d9f2e06dec205386e0a9f3073dfc10195feb54d767271018caa42`  
		Last Modified: Mon, 09 Oct 2017 22:20:59 GMT  
		Size: 961.5 KB (961519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143611a5f684aea0d3a570ca7c977d089586392e4b97ddd37825dcacec3ef8ee`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e804f257dd69bd1c3b895309288e64aebdb473ea6bcb29695525d113e3bc55f9`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5c785a8029098bdabe117a4eef37617c9826ce7d4778686c5113365a0cad0176
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7fff4ea94463b05cb54610bc5c6b4d669b8c5a6b65ec15fdeb4b78d038fcd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:23:07 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:23:08 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:32:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:32:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:32:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:33:00 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:33:02 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:33:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ea8ec00000f8ff80f8919cf0043c1cb7dc06b932bfe98329bef148266e70c`  
		Last Modified: Mon, 09 Oct 2017 22:33:27 GMT  
		Size: 929.5 KB (929549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73553d04e062a928b8c596ff9ef08a5be8068346e9b82eb3c5afb2917044b559`  
		Last Modified: Mon, 09 Oct 2017 22:33:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13c94531487fa83be792c67f5db183f443db051eb675818c93e4c58e2429510`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:1502d83478b0b0ea0139a699ac757474b30d14b2c2261d188ed17c36d9e7442f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be16e9284c3eca31909980a37d7f9ef7568780b41a56a3854735c4e7c3174e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:15:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:37 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:15:38 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:15:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f61aba9b4d1a37e4d5af286ef8fa59b6de68ac8eb53e3a7a79179a136685d`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 942.4 KB (942392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c885d1d53b2ea6e6144bbef8c38a81888b945f2c4fcdb41aa103cf85dc21e`  
		Last Modified: Tue, 10 Oct 2017 00:16:24 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4a30053c12e6be5187eae7cd441f487f345fa594c8d49f9ee8070d135e698f`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:ecc60ab74e7956ef368e45a400afdf2e11056470e2c26b0308d2011b983f7f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24117305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab1d2884e343521e7be7e97e8ee14a50c49913ac60b41e7b787420525f8d972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:03:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:03:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:54 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:03:55 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:03:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e406410fee28076fe5aae33d56477afcb22c3b85d0030be2ccb7c07b2b682`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 986.5 KB (986478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26cae6c82b0aa6bc4178521794513bf6ac4bcb1e71ac9833796bd8165b1b760`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ba4420e437e222b113d0015fee90a6c37192fe9c38dcd3cecbe76db9879c4e`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:789a3f76148aec496694ebfce87392ec48c84e1f04dc71ab2e43d73bb7f1e017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dd32338936bb4383bae6849145a4facc256dd61a348c3ca57486bb0429c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:30:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 01:30:31 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 01:30:35 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 01:45:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 01:45:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:45:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 01:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:45:22 GMT
USER [memcache]
# Tue, 10 Oct 2017 01:45:26 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 01:45:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acb9fabebc4a5a2e9c90fcbc9c509005f384bea24b501455bdaacc4a9d7b819`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ca3ead269a8efef297a6c13cd669a7db76d9671c78bf43f5dfdcba1974f0e8`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 973.4 KB (973439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d24e1a64f27e4d4e3cf8cc6b8532165450215a31b0c2d546a710fd014da572`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6fcf123025e1440ed2adc3fb80f77fbe6de9f64ecd825d3ca18a8da184d366`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:5ba2b45b4e99d4cee62e9370e968bad3f2ff5ed9ba420298231f67a6612221fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770017e7fac8136a5bfde4ad6380db481907a8da9849263a7897d854135ba71d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:37:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:37:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:37:27 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:37:28 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:37:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19408bdbb27e79f51641da322b1cc1d3ded521fb71e83256d41ff519f47f78cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29969423dc6a75ba9a528ea2f8c6686ee37876b50178419c098831710ef89434`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 990.5 KB (990537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f78688d324c6730e7236b7c0b61e73a6dfc3c311feb4441f665510782f73ca`  
		Last Modified: Mon, 09 Oct 2017 22:37:41 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56850ed52078223dce0ddf24fcb8be4134aa1dc2ed6da6edb0c1015b52ac8cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.2`

```console
$ docker pull memcached@sha256:3f0e2ff4154cd7620c07e6490b8ff45c2ef00f2f1246a49685efc20b6cf414b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.2` - linux; amd64

```console
$ docker pull memcached@sha256:e91ac736b5309dffb65519bf0e87dbcc67d0691d1936aeaf754ed74fd525e64b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338fa807ba35d53c0760925b14976d01219dfed7991d6c50ce2341fc45eb3ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:37 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 23:58:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 23:58:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:58:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 23:58:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:58:23 GMT
USER [memcache]
# Mon, 09 Oct 2017 23:58:23 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 23:58:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2da82b6029e84cc43da2171c921ab6933319835b6d2dc3aec3c04c893e17f9`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc199c39f5bb5745cf39f6e26f607c967333b52dfd87555168fb0189e95f61f0`  
		Last Modified: Mon, 09 Oct 2017 23:58:44 GMT  
		Size: 974.7 KB (974726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b631bdd0c6519403f19304e76d611254132b75099714b448524ff5ce99f669`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d31cbdc76c4a5ff5b06d7c40b1247729bb08811b959c43f490752ea62a2294`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ee733f84806789a9a19a0223ae4cac0179bc3f9975bc64495f5111f708002353
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb31827688bf89a3012786906fbc96d751547e2f64247970086ca7c313c75cb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:20:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:20:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:20:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:20:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:20:32 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:20:32 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:20:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53502c9d988d9f2e06dec205386e0a9f3073dfc10195feb54d767271018caa42`  
		Last Modified: Mon, 09 Oct 2017 22:20:59 GMT  
		Size: 961.5 KB (961519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143611a5f684aea0d3a570ca7c977d089586392e4b97ddd37825dcacec3ef8ee`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e804f257dd69bd1c3b895309288e64aebdb473ea6bcb29695525d113e3bc55f9`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5c785a8029098bdabe117a4eef37617c9826ce7d4778686c5113365a0cad0176
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7fff4ea94463b05cb54610bc5c6b4d669b8c5a6b65ec15fdeb4b78d038fcd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:23:07 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:23:08 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:32:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:32:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:32:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:33:00 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:33:02 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:33:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ea8ec00000f8ff80f8919cf0043c1cb7dc06b932bfe98329bef148266e70c`  
		Last Modified: Mon, 09 Oct 2017 22:33:27 GMT  
		Size: 929.5 KB (929549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73553d04e062a928b8c596ff9ef08a5be8068346e9b82eb3c5afb2917044b559`  
		Last Modified: Mon, 09 Oct 2017 22:33:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13c94531487fa83be792c67f5db183f443db051eb675818c93e4c58e2429510`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:1502d83478b0b0ea0139a699ac757474b30d14b2c2261d188ed17c36d9e7442f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be16e9284c3eca31909980a37d7f9ef7568780b41a56a3854735c4e7c3174e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:15:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:37 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:15:38 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:15:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f61aba9b4d1a37e4d5af286ef8fa59b6de68ac8eb53e3a7a79179a136685d`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 942.4 KB (942392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c885d1d53b2ea6e6144bbef8c38a81888b945f2c4fcdb41aa103cf85dc21e`  
		Last Modified: Tue, 10 Oct 2017 00:16:24 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4a30053c12e6be5187eae7cd441f487f345fa594c8d49f9ee8070d135e698f`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2` - linux; 386

```console
$ docker pull memcached@sha256:ecc60ab74e7956ef368e45a400afdf2e11056470e2c26b0308d2011b983f7f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24117305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab1d2884e343521e7be7e97e8ee14a50c49913ac60b41e7b787420525f8d972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:03:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:03:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:54 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:03:55 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:03:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e406410fee28076fe5aae33d56477afcb22c3b85d0030be2ccb7c07b2b682`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 986.5 KB (986478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26cae6c82b0aa6bc4178521794513bf6ac4bcb1e71ac9833796bd8165b1b760`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ba4420e437e222b113d0015fee90a6c37192fe9c38dcd3cecbe76db9879c4e`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2` - linux; ppc64le

```console
$ docker pull memcached@sha256:789a3f76148aec496694ebfce87392ec48c84e1f04dc71ab2e43d73bb7f1e017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dd32338936bb4383bae6849145a4facc256dd61a348c3ca57486bb0429c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:30:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 01:30:31 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 01:30:35 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 01:45:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 01:45:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:45:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 01:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:45:22 GMT
USER [memcache]
# Tue, 10 Oct 2017 01:45:26 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 01:45:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acb9fabebc4a5a2e9c90fcbc9c509005f384bea24b501455bdaacc4a9d7b819`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ca3ead269a8efef297a6c13cd669a7db76d9671c78bf43f5dfdcba1974f0e8`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 973.4 KB (973439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d24e1a64f27e4d4e3cf8cc6b8532165450215a31b0c2d546a710fd014da572`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6fcf123025e1440ed2adc3fb80f77fbe6de9f64ecd825d3ca18a8da184d366`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2` - linux; s390x

```console
$ docker pull memcached@sha256:5ba2b45b4e99d4cee62e9370e968bad3f2ff5ed9ba420298231f67a6612221fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770017e7fac8136a5bfde4ad6380db481907a8da9849263a7897d854135ba71d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:37:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:37:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:37:27 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:37:28 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:37:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19408bdbb27e79f51641da322b1cc1d3ded521fb71e83256d41ff519f47f78cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29969423dc6a75ba9a528ea2f8c6686ee37876b50178419c098831710ef89434`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 990.5 KB (990537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f78688d324c6730e7236b7c0b61e73a6dfc3c311feb4441f665510782f73ca`  
		Last Modified: Mon, 09 Oct 2017 22:37:41 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56850ed52078223dce0ddf24fcb8be4134aa1dc2ed6da6edb0c1015b52ac8cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.2-alpine`

```console
$ docker pull memcached@sha256:431a05bc5de593fbbb9f44d71af3d13a469c021674e169b5709ac660b7ccd6f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; s390x

### `memcached:1.5.2-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b1dfd0e214f96addaa91f9d12b678d30a63ab3e665acc8c2886fb589ac6506cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3335764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e929e7e4df70ac416f522bc0eaf744b1c0a505e3a9790f43d45871c578f8b76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:37:55 GMT
RUN adduser -D memcache
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 03:41:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 03:41:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 03:41:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:41:16 GMT
USER [memcache]
# Thu, 26 Oct 2017 03:41:16 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 03:41:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86021a5d11f3379f551fb398a70ef0db4da84599045985f3b33a401e567fcb9`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823765eaf74f6cfbc3b566d33190eb7d98b91f6135ab966b2bf3727cf401e3c1`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.3 MB (1342679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf15b479342076ece504db96e8e2fd9c9f25105f7d158b2e92db2de986c8dc0`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43ec34cd5fcefdf50da9df30cfad9fbd26c5fab676e02a883c0f6634fa5f99d`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:dbe7930376279c6b6e5206ff2d4958479899695caddf90c335c089493a82b2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3658865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb393c38cd31637fae4dbb1ea4b14610195ef259f687bcdc27f0456632725b5`
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
# Thu, 26 Oct 2017 15:08:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 15:08:22 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 15:17:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 15:17:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 15:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 15:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 15:17:28 GMT
USER [memcache]
# Thu, 26 Oct 2017 15:17:29 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 15:17:30 GMT
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
	-	`sha256:bd4c76efa90a24883407d6b919c5ced02b9c547ba5ce03eda97e246656331382`  
		Last Modified: Thu, 26 Oct 2017 15:17:54 GMT  
		Size: 1.7 MB (1691046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bc7ca5fd0d977ae09a2907119d605985d3a2e62277e12451aa1bbd5c0fc5b7`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd6f5ecc2841e16b7da47ef03f16b2196193e0ae27ce1d4ca0d2a96da36a45`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:df11472568c89c41df865c18cba3a5d33b9952c422b13b7872d2a394ec18f75f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3888910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2810934e65371a21430190114a52609421e7f031237fbc2349899a15055820d`
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
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 17:36:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 17:36:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 17:36:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 17:36:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:36:53 GMT
USER [memcache]
# Thu, 26 Oct 2017 17:36:53 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 17:36:53 GMT
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
	-	`sha256:369ae218547c6c42177cd80f2535d089a967f05046f074647a407abb66a56979`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.8 MB (1821625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f0d34783b46baf337d4b17145f25ba8027fea8d46a49752442caed534ff25e`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbe2899d72e26b9da52a8871d05585bfb6f1d010d504eca00f229f39e39508`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:431a05bc5de593fbbb9f44d71af3d13a469c021674e169b5709ac660b7ccd6f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b1dfd0e214f96addaa91f9d12b678d30a63ab3e665acc8c2886fb589ac6506cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3335764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e929e7e4df70ac416f522bc0eaf744b1c0a505e3a9790f43d45871c578f8b76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:37:55 GMT
RUN adduser -D memcache
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 03:41:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 03:41:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 03:41:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:41:16 GMT
USER [memcache]
# Thu, 26 Oct 2017 03:41:16 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 03:41:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86021a5d11f3379f551fb398a70ef0db4da84599045985f3b33a401e567fcb9`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823765eaf74f6cfbc3b566d33190eb7d98b91f6135ab966b2bf3727cf401e3c1`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.3 MB (1342679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf15b479342076ece504db96e8e2fd9c9f25105f7d158b2e92db2de986c8dc0`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43ec34cd5fcefdf50da9df30cfad9fbd26c5fab676e02a883c0f6634fa5f99d`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:dbe7930376279c6b6e5206ff2d4958479899695caddf90c335c089493a82b2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3658865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb393c38cd31637fae4dbb1ea4b14610195ef259f687bcdc27f0456632725b5`
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
# Thu, 26 Oct 2017 15:08:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 15:08:22 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 15:17:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 15:17:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 15:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 15:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 15:17:28 GMT
USER [memcache]
# Thu, 26 Oct 2017 15:17:29 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 15:17:30 GMT
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
	-	`sha256:bd4c76efa90a24883407d6b919c5ced02b9c547ba5ce03eda97e246656331382`  
		Last Modified: Thu, 26 Oct 2017 15:17:54 GMT  
		Size: 1.7 MB (1691046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bc7ca5fd0d977ae09a2907119d605985d3a2e62277e12451aa1bbd5c0fc5b7`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd6f5ecc2841e16b7da47ef03f16b2196193e0ae27ce1d4ca0d2a96da36a45`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:df11472568c89c41df865c18cba3a5d33b9952c422b13b7872d2a394ec18f75f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3888910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2810934e65371a21430190114a52609421e7f031237fbc2349899a15055820d`
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
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 17:36:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 17:36:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 17:36:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 17:36:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:36:53 GMT
USER [memcache]
# Thu, 26 Oct 2017 17:36:53 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 17:36:53 GMT
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
	-	`sha256:369ae218547c6c42177cd80f2535d089a967f05046f074647a407abb66a56979`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.8 MB (1821625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f0d34783b46baf337d4b17145f25ba8027fea8d46a49752442caed534ff25e`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbe2899d72e26b9da52a8871d05585bfb6f1d010d504eca00f229f39e39508`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:431a05bc5de593fbbb9f44d71af3d13a469c021674e169b5709ac660b7ccd6f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b1dfd0e214f96addaa91f9d12b678d30a63ab3e665acc8c2886fb589ac6506cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3335764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e929e7e4df70ac416f522bc0eaf744b1c0a505e3a9790f43d45871c578f8b76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:37:55 GMT
RUN adduser -D memcache
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 03:41:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 03:41:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 03:41:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:41:16 GMT
USER [memcache]
# Thu, 26 Oct 2017 03:41:16 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 03:41:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86021a5d11f3379f551fb398a70ef0db4da84599045985f3b33a401e567fcb9`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823765eaf74f6cfbc3b566d33190eb7d98b91f6135ab966b2bf3727cf401e3c1`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.3 MB (1342679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf15b479342076ece504db96e8e2fd9c9f25105f7d158b2e92db2de986c8dc0`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43ec34cd5fcefdf50da9df30cfad9fbd26c5fab676e02a883c0f6634fa5f99d`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:dbe7930376279c6b6e5206ff2d4958479899695caddf90c335c089493a82b2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3658865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb393c38cd31637fae4dbb1ea4b14610195ef259f687bcdc27f0456632725b5`
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
# Thu, 26 Oct 2017 15:08:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 15:08:22 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 15:17:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 15:17:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 15:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 15:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 15:17:28 GMT
USER [memcache]
# Thu, 26 Oct 2017 15:17:29 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 15:17:30 GMT
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
	-	`sha256:bd4c76efa90a24883407d6b919c5ced02b9c547ba5ce03eda97e246656331382`  
		Last Modified: Thu, 26 Oct 2017 15:17:54 GMT  
		Size: 1.7 MB (1691046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bc7ca5fd0d977ae09a2907119d605985d3a2e62277e12451aa1bbd5c0fc5b7`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd6f5ecc2841e16b7da47ef03f16b2196193e0ae27ce1d4ca0d2a96da36a45`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:df11472568c89c41df865c18cba3a5d33b9952c422b13b7872d2a394ec18f75f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3888910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2810934e65371a21430190114a52609421e7f031237fbc2349899a15055820d`
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
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 17:36:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 17:36:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 17:36:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 17:36:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:36:53 GMT
USER [memcache]
# Thu, 26 Oct 2017 17:36:53 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 17:36:53 GMT
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
	-	`sha256:369ae218547c6c42177cd80f2535d089a967f05046f074647a407abb66a56979`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.8 MB (1821625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f0d34783b46baf337d4b17145f25ba8027fea8d46a49752442caed534ff25e`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbe2899d72e26b9da52a8871d05585bfb6f1d010d504eca00f229f39e39508`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:431a05bc5de593fbbb9f44d71af3d13a469c021674e169b5709ac660b7ccd6f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b1dfd0e214f96addaa91f9d12b678d30a63ab3e665acc8c2886fb589ac6506cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3335764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e929e7e4df70ac416f522bc0eaf744b1c0a505e3a9790f43d45871c578f8b76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:37:55 GMT
RUN adduser -D memcache
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 03:37:55 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 03:41:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 03:41:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 03:41:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:41:16 GMT
USER [memcache]
# Thu, 26 Oct 2017 03:41:16 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 03:41:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86021a5d11f3379f551fb398a70ef0db4da84599045985f3b33a401e567fcb9`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823765eaf74f6cfbc3b566d33190eb7d98b91f6135ab966b2bf3727cf401e3c1`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 1.3 MB (1342679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf15b479342076ece504db96e8e2fd9c9f25105f7d158b2e92db2de986c8dc0`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43ec34cd5fcefdf50da9df30cfad9fbd26c5fab676e02a883c0f6634fa5f99d`  
		Last Modified: Thu, 26 Oct 2017 03:41:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:dbe7930376279c6b6e5206ff2d4958479899695caddf90c335c089493a82b2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3658865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb393c38cd31637fae4dbb1ea4b14610195ef259f687bcdc27f0456632725b5`
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
# Thu, 26 Oct 2017 15:08:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 15:08:22 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 15:17:24 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 15:17:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 15:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 15:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 15:17:28 GMT
USER [memcache]
# Thu, 26 Oct 2017 15:17:29 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 15:17:30 GMT
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
	-	`sha256:bd4c76efa90a24883407d6b919c5ced02b9c547ba5ce03eda97e246656331382`  
		Last Modified: Thu, 26 Oct 2017 15:17:54 GMT  
		Size: 1.7 MB (1691046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bc7ca5fd0d977ae09a2907119d605985d3a2e62277e12451aa1bbd5c0fc5b7`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd6f5ecc2841e16b7da47ef03f16b2196193e0ae27ce1d4ca0d2a96da36a45`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:df11472568c89c41df865c18cba3a5d33b9952c422b13b7872d2a394ec18f75f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3888910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2810934e65371a21430190114a52609421e7f031237fbc2349899a15055820d`
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
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_VERSION=1.5.2
# Thu, 26 Oct 2017 17:33:38 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Thu, 26 Oct 2017 17:36:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 26 Oct 2017 17:36:52 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 26 Oct 2017 17:36:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 17:36:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 17:36:53 GMT
USER [memcache]
# Thu, 26 Oct 2017 17:36:53 GMT
EXPOSE 11211/tcp
# Thu, 26 Oct 2017 17:36:53 GMT
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
	-	`sha256:369ae218547c6c42177cd80f2535d089a967f05046f074647a407abb66a56979`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.8 MB (1821625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f0d34783b46baf337d4b17145f25ba8027fea8d46a49752442caed534ff25e`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbe2899d72e26b9da52a8871d05585bfb6f1d010d504eca00f229f39e39508`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:3f0e2ff4154cd7620c07e6490b8ff45c2ef00f2f1246a49685efc20b6cf414b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:e91ac736b5309dffb65519bf0e87dbcc67d0691d1936aeaf754ed74fd525e64b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338fa807ba35d53c0760925b14976d01219dfed7991d6c50ce2341fc45eb3ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:37 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 23:54:37 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 23:58:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 23:58:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:58:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 23:58:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:58:23 GMT
USER [memcache]
# Mon, 09 Oct 2017 23:58:23 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 23:58:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2da82b6029e84cc43da2171c921ab6933319835b6d2dc3aec3c04c893e17f9`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc199c39f5bb5745cf39f6e26f607c967333b52dfd87555168fb0189e95f61f0`  
		Last Modified: Mon, 09 Oct 2017 23:58:44 GMT  
		Size: 974.7 KB (974726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b631bdd0c6519403f19304e76d611254132b75099714b448524ff5ce99f669`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d31cbdc76c4a5ff5b06d7c40b1247729bb08811b959c43f490752ea62a2294`  
		Last Modified: Mon, 09 Oct 2017 23:58:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ee733f84806789a9a19a0223ae4cac0179bc3f9975bc64495f5111f708002353
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb31827688bf89a3012786906fbc96d751547e2f64247970086ca7c313c75cb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:20:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:20:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:20:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:20:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:20:32 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:20:32 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:20:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53502c9d988d9f2e06dec205386e0a9f3073dfc10195feb54d767271018caa42`  
		Last Modified: Mon, 09 Oct 2017 22:20:59 GMT  
		Size: 961.5 KB (961519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143611a5f684aea0d3a570ca7c977d089586392e4b97ddd37825dcacec3ef8ee`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e804f257dd69bd1c3b895309288e64aebdb473ea6bcb29695525d113e3bc55f9`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5c785a8029098bdabe117a4eef37617c9826ce7d4778686c5113365a0cad0176
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7fff4ea94463b05cb54610bc5c6b4d669b8c5a6b65ec15fdeb4b78d038fcd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:23:07 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:23:08 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:32:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:32:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:32:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:33:00 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:33:02 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:33:03 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ea8ec00000f8ff80f8919cf0043c1cb7dc06b932bfe98329bef148266e70c`  
		Last Modified: Mon, 09 Oct 2017 22:33:27 GMT  
		Size: 929.5 KB (929549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73553d04e062a928b8c596ff9ef08a5be8068346e9b82eb3c5afb2917044b559`  
		Last Modified: Mon, 09 Oct 2017 22:33:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13c94531487fa83be792c67f5db183f443db051eb675818c93e4c58e2429510`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:1502d83478b0b0ea0139a699ac757474b30d14b2c2261d188ed17c36d9e7442f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be16e9284c3eca31909980a37d7f9ef7568780b41a56a3854735c4e7c3174e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:10:20 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:15:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:15:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:15:37 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:15:38 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:15:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f61aba9b4d1a37e4d5af286ef8fa59b6de68ac8eb53e3a7a79179a136685d`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 942.4 KB (942392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87c885d1d53b2ea6e6144bbef8c38a81888b945f2c4fcdb41aa103cf85dc21e`  
		Last Modified: Tue, 10 Oct 2017 00:16:24 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4a30053c12e6be5187eae7cd441f487f345fa594c8d49f9ee8070d135e698f`  
		Last Modified: Tue, 10 Oct 2017 00:16:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:ecc60ab74e7956ef368e45a400afdf2e11056470e2c26b0308d2011b983f7f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24117305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab1d2884e343521e7be7e97e8ee14a50c49913ac60b41e7b787420525f8d972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 00:00:21 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 00:03:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 00:03:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:54 GMT
USER [memcache]
# Tue, 10 Oct 2017 00:03:55 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 00:03:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92e406410fee28076fe5aae33d56477afcb22c3b85d0030be2ccb7c07b2b682`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 986.5 KB (986478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26cae6c82b0aa6bc4178521794513bf6ac4bcb1e71ac9833796bd8165b1b760`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ba4420e437e222b113d0015fee90a6c37192fe9c38dcd3cecbe76db9879c4e`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:789a3f76148aec496694ebfce87392ec48c84e1f04dc71ab2e43d73bb7f1e017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dd32338936bb4383bae6849145a4facc256dd61a348c3ca57486bb0429c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:30:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Oct 2017 01:30:31 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 10 Oct 2017 01:30:35 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 10 Oct 2017 01:45:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Oct 2017 01:45:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Oct 2017 01:45:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 01:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:45:22 GMT
USER [memcache]
# Tue, 10 Oct 2017 01:45:26 GMT
EXPOSE 11211/tcp
# Tue, 10 Oct 2017 01:45:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acb9fabebc4a5a2e9c90fcbc9c509005f384bea24b501455bdaacc4a9d7b819`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ca3ead269a8efef297a6c13cd669a7db76d9671c78bf43f5dfdcba1974f0e8`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 973.4 KB (973439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d24e1a64f27e4d4e3cf8cc6b8532165450215a31b0c2d546a710fd014da572`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6fcf123025e1440ed2adc3fb80f77fbe6de9f64ecd825d3ca18a8da184d366`  
		Last Modified: Tue, 10 Oct 2017 01:45:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:5ba2b45b4e99d4cee62e9370e968bad3f2ff5ed9ba420298231f67a6612221fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770017e7fac8136a5bfde4ad6380db481907a8da9849263a7897d854135ba71d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:37:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:37:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:37:27 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:37:28 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:37:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19408bdbb27e79f51641da322b1cc1d3ded521fb71e83256d41ff519f47f78cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29969423dc6a75ba9a528ea2f8c6686ee37876b50178419c098831710ef89434`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 990.5 KB (990537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f78688d324c6730e7236b7c0b61e73a6dfc3c311feb4441f665510782f73ca`  
		Last Modified: Mon, 09 Oct 2017 22:37:41 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56850ed52078223dce0ddf24fcb8be4134aa1dc2ed6da6edb0c1015b52ac8cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
