<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2.2.34`](#httpd2234)
-	[`httpd:2.2`](#httpd22)
-	[`httpd:2.2.34-alpine`](#httpd2234-alpine)
-	[`httpd:2.2-alpine`](#httpd22-alpine)
-	[`httpd:2.4.27`](#httpd2427)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2`](#httpd2)
-	[`httpd:latest`](#httpdlatest)
-	[`httpd:2.4.27-alpine`](#httpd2427-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)

## `httpd:2.2.34`

```console
$ docker pull httpd@sha256:692cc8f59e6078908ea5c2dc6cc5c9d3a75a72f45f4722711b8a7b06993e3999
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

### `httpd:2.2.34` - linux; amd64

```console
$ docker pull httpd@sha256:4596b45c86a1070df7c7ba1f2441ab8fc82c0555db10bfc858a2a6a699abbffe
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66567710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e316d715a6fe4571f1d03f32859a6149e462c4a406d9bf3d33d3916d6dcaa33`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:24:16 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 07:24:16 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:24:17 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 07:24:17 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 07:24:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:24:44 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 07:24:45 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 07:24:45 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 07:24:45 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 07:24:46 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 07:24:46 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 07:25:53 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:25:56 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:25:56 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 07:25:57 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36908086343856699780be507d09695f5992acc8b749836a9ab31e3097ddcf5`  
		Last Modified: Fri, 08 Sep 2017 19:20:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129e0061857244995cb523c2dd5eec9726190bb67e2af646bea1eaac550cf4f6`  
		Last Modified: Fri, 08 Sep 2017 19:20:29 GMT  
		Size: 11.9 MB (11947001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932faf4524a3b00ee0a2b972d4cd6d122ce4d1d9fd060b11306a319efe91652e`  
		Last Modified: Fri, 08 Sep 2017 19:20:24 GMT  
		Size: 2.0 MB (2024721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4171923b8727b394fe6b2b1204c7211558a7f2cddb49a537a7bba0cacda7197`  
		Last Modified: Fri, 08 Sep 2017 19:20:23 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; arm variant v5

```console
$ docker pull httpd@sha256:cc06028d1af8c8e3f17f95a69490a611ed4441a6d0b09b712230c35a2de8d2db
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63823268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0f8c9260ca342fc3c1e7136d32abf19385f7a75916da2c8ab2de348b6fbed6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:00:00 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 22:00:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 22:00:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 22:00:04 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 22:03:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:03:19 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 22:03:20 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 22:03:21 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 22:03:22 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 22:03:24 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 22:03:24 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 22:15:15 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 22:15:16 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 22:15:17 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:15:18 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca52cd355948a47276dac3d6aa49150eb91d4c53b9b4ff115b9bd880e5d5b7f`  
		Last Modified: Fri, 08 Sep 2017 22:38:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9679439116f814233a1e5becc0208d3e3186316d68180113adb5175d5f6300`  
		Last Modified: Fri, 08 Sep 2017 22:38:41 GMT  
		Size: 10.9 MB (10921836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f03b9f1e4a16e8b2ec6b0b19fe2f5c583a39243d2385816e8c7da71a6e0601`  
		Last Modified: Fri, 08 Sep 2017 22:38:34 GMT  
		Size: 2.0 MB (2023494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cf4f58dae3f5caf934a0a985e52e82aed36c1869d9926e923bbc8cc08ef2db`  
		Last Modified: Fri, 08 Sep 2017 22:38:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; arm variant v7

```console
$ docker pull httpd@sha256:1a98d6b378d3844bee3676323a6e4095a9e9b88a0c7afe2ce8fe8f7c7c9eba97
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61133619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75083172aa3aa4b5bd88af2cf0b4e88115f246b5e70a942be4dbe6b35f98a27`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 00:23:08 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 12 Sep 2017 00:23:10 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 00:23:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 12 Sep 2017 00:23:12 GMT
WORKDIR /usr/local/apache2
# Tue, 12 Sep 2017 00:26:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:26:24 GMT
ENV HTTPD_VERSION=2.2.34
# Tue, 12 Sep 2017 00:26:25 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Tue, 12 Sep 2017 00:26:26 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Tue, 12 Sep 2017 00:26:26 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 12 Sep 2017 00:26:27 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Tue, 12 Sep 2017 00:26:28 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 12 Sep 2017 00:40:12 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 00:40:13 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 12 Sep 2017 00:40:13 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 00:40:15 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602c916313fe9ce25119f357c5ecbfcd93bfcd894f02b9ff6f364120a0019c51`  
		Last Modified: Tue, 12 Sep 2017 01:27:31 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fc91667bc8add610039b74f8460abf9d470b514e276852c23704bbf58c700f`  
		Last Modified: Tue, 12 Sep 2017 01:27:43 GMT  
		Size: 10.5 MB (10496939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6877dedf0c710ece5eacc79e0c33734313e29ee8e292b74e9564ec94a56cc1a9`  
		Last Modified: Tue, 12 Sep 2017 01:27:35 GMT  
		Size: 2.0 MB (1954151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac50b2d0370c647c6137c0c0aedf7610448245c8357bf1fa910c624ff4f2cb8`  
		Last Modified: Tue, 12 Sep 2017 01:27:31 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:d4dda6209bd2771d7bad87b0e094136963fa74d8f9a92db0078c2277c152c9d5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62892050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84031fae28ef5dbbf3765b22a7cad08569b1e87dfa8efb42406b4eec6e3b768`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:02:29 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 21:02:30 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 21:02:33 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 21:02:34 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 21:03:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:03:39 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 21:03:40 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 21:03:41 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 21:03:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 21:03:43 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 21:03:44 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 21:08:42 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:08:44 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 21:08:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 21:08:46 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826e476efccd5d8cc2fa1580747f96926af6b244b03b315fb0ced155391d326`  
		Last Modified: Fri, 08 Sep 2017 21:18:03 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d51a012ca3fdd81cc8c0aadd64e60a1bb2c51f19fb4680c1361762d6cb8a2`  
		Last Modified: Fri, 08 Sep 2017 21:18:13 GMT  
		Size: 11.0 MB (11004864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1b2310f883f2f13afd37abca968325eaea0d252c27f60b6c1e78e2181b2681`  
		Last Modified: Fri, 08 Sep 2017 21:18:05 GMT  
		Size: 2.0 MB (1957277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964fe3ede314b4319e1131efa81e169a2b959626e6317f2a22930ddb49bdf703`  
		Last Modified: Fri, 08 Sep 2017 21:18:03 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; 386

```console
$ docker pull httpd@sha256:13ca3a78d614adfbad19022a080cada49b17eb20071c1097834cbf39abb69094
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71309599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf061ff33f36b7bd8730f7dad2729df9d2de89393be1ff6c9b09b422485b3f0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:22:59 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 14:22:59 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:23:00 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 14:23:00 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 14:23:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:24:00 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 14:24:00 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 14:26:45 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:26:45 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 14:26:46 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 14:26:46 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0706818fef04b7661a03304902f3cef6335fab9c7812ad133309b4c69512d24`  
		Last Modified: Fri, 08 Sep 2017 14:36:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da18f5969f6340340a0dbe6bcdfa01020f38e36526c0cdf63290871d2dc77452`  
		Last Modified: Fri, 08 Sep 2017 14:36:55 GMT  
		Size: 16.6 MB (16562308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923b9114ad639ff51d7b2777fd04a45c9f843d20f487ff52a92e0d4872d8582d`  
		Last Modified: Fri, 08 Sep 2017 14:36:48 GMT  
		Size: 2.0 MB (1973711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8219de4c2053a6580ade603326e750498a046728e04ef1a511981524254fb5e6`  
		Last Modified: Fri, 08 Sep 2017 14:36:46 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; ppc64le

```console
$ docker pull httpd@sha256:b8d023315acf1edba6bec31f09f06065648585220a704c9cc841b008c8b0a9ce
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65705733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d7dfd1e09857137ace3ed863c1898cd63f3fe1f7fd1ed1afa4bd31676bbdd9`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:58:31 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 00:58:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 00:58:32 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 00:58:32 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 00:59:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 00:59:06 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 00:59:06 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 01:00:23 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:00:23 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:00:23 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 01:00:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4dd766f5dcadafb3f2a004e3c48f73414ac5773ebd527653ceafeb26574b88`  
		Last Modified: Fri, 08 Sep 2017 01:02:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76fd2d1d5f5e6d82b7f0b2192a91217a11b629c2f65c568c2b36417d78c1551`  
		Last Modified: Fri, 08 Sep 2017 01:03:01 GMT  
		Size: 11.9 MB (11857376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75a7f15da14d255d094a952b3309f9feb9f3b4a342dd80c94a5848438fc858e`  
		Last Modified: Fri, 08 Sep 2017 01:02:58 GMT  
		Size: 2.0 MB (2038304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d057e2cee0ebcb53a037c3cc8b8a2b89fe94a36dde923eb05e264948aad66bf4`  
		Last Modified: Fri, 08 Sep 2017 01:02:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; s390x

```console
$ docker pull httpd@sha256:16f0f6f050bba81d17b6d6d8ac46427077830f72de94339ef6dc74f95039649c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66669880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0153dbe9f4f547b54ce52908428f5ee2953ae60f226019e3b3cddc7784789d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 05:48:12 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 05:48:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 05:48:13 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 05:48:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:29 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 05:48:29 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 05:48:29 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 05:48:30 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 05:48:30 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 05:48:30 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 05:49:38 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:49:40 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 05:49:40 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 05:49:40 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b4aec0c81c9630ed0835b797274aa5798378b94268aaef041f5854e8158694`  
		Last Modified: Fri, 08 Sep 2017 05:51:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d54d8585deb2b58e6883d4042cc29995ff239a33ff473d73ff779ca31b4e41`  
		Last Modified: Fri, 08 Sep 2017 05:51:50 GMT  
		Size: 11.8 MB (11793589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3694140ebdf386359ca6959a25d05755b2eddddb25801b2fc2de427964ecc4`  
		Last Modified: Fri, 08 Sep 2017 05:51:48 GMT  
		Size: 2.1 MB (2087038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d334cb816e211faa5c9172d86b5b86fabcd4b75b60de87821da2580eb27afde`  
		Last Modified: Fri, 08 Sep 2017 05:51:48 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:692cc8f59e6078908ea5c2dc6cc5c9d3a75a72f45f4722711b8a7b06993e3999
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

### `httpd:2.2` - linux; amd64

```console
$ docker pull httpd@sha256:4596b45c86a1070df7c7ba1f2441ab8fc82c0555db10bfc858a2a6a699abbffe
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66567710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e316d715a6fe4571f1d03f32859a6149e462c4a406d9bf3d33d3916d6dcaa33`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:24:16 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 07:24:16 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:24:17 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 07:24:17 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 07:24:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:24:44 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 07:24:45 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 07:24:45 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 07:24:45 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 07:24:46 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 07:24:46 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 07:25:53 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:25:56 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:25:56 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 07:25:57 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36908086343856699780be507d09695f5992acc8b749836a9ab31e3097ddcf5`  
		Last Modified: Fri, 08 Sep 2017 19:20:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129e0061857244995cb523c2dd5eec9726190bb67e2af646bea1eaac550cf4f6`  
		Last Modified: Fri, 08 Sep 2017 19:20:29 GMT  
		Size: 11.9 MB (11947001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932faf4524a3b00ee0a2b972d4cd6d122ce4d1d9fd060b11306a319efe91652e`  
		Last Modified: Fri, 08 Sep 2017 19:20:24 GMT  
		Size: 2.0 MB (2024721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4171923b8727b394fe6b2b1204c7211558a7f2cddb49a537a7bba0cacda7197`  
		Last Modified: Fri, 08 Sep 2017 19:20:23 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; arm variant v5

```console
$ docker pull httpd@sha256:cc06028d1af8c8e3f17f95a69490a611ed4441a6d0b09b712230c35a2de8d2db
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63823268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0f8c9260ca342fc3c1e7136d32abf19385f7a75916da2c8ab2de348b6fbed6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:00:00 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 22:00:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 22:00:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 22:00:04 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 22:03:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:03:19 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 22:03:20 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 22:03:21 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 22:03:22 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 22:03:24 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 22:03:24 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 22:15:15 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 22:15:16 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 22:15:17 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:15:18 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca52cd355948a47276dac3d6aa49150eb91d4c53b9b4ff115b9bd880e5d5b7f`  
		Last Modified: Fri, 08 Sep 2017 22:38:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9679439116f814233a1e5becc0208d3e3186316d68180113adb5175d5f6300`  
		Last Modified: Fri, 08 Sep 2017 22:38:41 GMT  
		Size: 10.9 MB (10921836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f03b9f1e4a16e8b2ec6b0b19fe2f5c583a39243d2385816e8c7da71a6e0601`  
		Last Modified: Fri, 08 Sep 2017 22:38:34 GMT  
		Size: 2.0 MB (2023494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cf4f58dae3f5caf934a0a985e52e82aed36c1869d9926e923bbc8cc08ef2db`  
		Last Modified: Fri, 08 Sep 2017 22:38:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; arm variant v7

```console
$ docker pull httpd@sha256:1a98d6b378d3844bee3676323a6e4095a9e9b88a0c7afe2ce8fe8f7c7c9eba97
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61133619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75083172aa3aa4b5bd88af2cf0b4e88115f246b5e70a942be4dbe6b35f98a27`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 00:23:08 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 12 Sep 2017 00:23:10 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 00:23:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 12 Sep 2017 00:23:12 GMT
WORKDIR /usr/local/apache2
# Tue, 12 Sep 2017 00:26:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:26:24 GMT
ENV HTTPD_VERSION=2.2.34
# Tue, 12 Sep 2017 00:26:25 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Tue, 12 Sep 2017 00:26:26 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Tue, 12 Sep 2017 00:26:26 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 12 Sep 2017 00:26:27 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Tue, 12 Sep 2017 00:26:28 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 12 Sep 2017 00:40:12 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 00:40:13 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 12 Sep 2017 00:40:13 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 00:40:15 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602c916313fe9ce25119f357c5ecbfcd93bfcd894f02b9ff6f364120a0019c51`  
		Last Modified: Tue, 12 Sep 2017 01:27:31 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fc91667bc8add610039b74f8460abf9d470b514e276852c23704bbf58c700f`  
		Last Modified: Tue, 12 Sep 2017 01:27:43 GMT  
		Size: 10.5 MB (10496939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6877dedf0c710ece5eacc79e0c33734313e29ee8e292b74e9564ec94a56cc1a9`  
		Last Modified: Tue, 12 Sep 2017 01:27:35 GMT  
		Size: 2.0 MB (1954151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac50b2d0370c647c6137c0c0aedf7610448245c8357bf1fa910c624ff4f2cb8`  
		Last Modified: Tue, 12 Sep 2017 01:27:31 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:d4dda6209bd2771d7bad87b0e094136963fa74d8f9a92db0078c2277c152c9d5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62892050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84031fae28ef5dbbf3765b22a7cad08569b1e87dfa8efb42406b4eec6e3b768`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:02:29 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 21:02:30 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 21:02:33 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 21:02:34 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 21:03:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:03:39 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 21:03:40 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 21:03:41 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 21:03:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 21:03:43 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 21:03:44 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 21:08:42 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:08:44 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 21:08:45 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 21:08:46 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826e476efccd5d8cc2fa1580747f96926af6b244b03b315fb0ced155391d326`  
		Last Modified: Fri, 08 Sep 2017 21:18:03 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d51a012ca3fdd81cc8c0aadd64e60a1bb2c51f19fb4680c1361762d6cb8a2`  
		Last Modified: Fri, 08 Sep 2017 21:18:13 GMT  
		Size: 11.0 MB (11004864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1b2310f883f2f13afd37abca968325eaea0d252c27f60b6c1e78e2181b2681`  
		Last Modified: Fri, 08 Sep 2017 21:18:05 GMT  
		Size: 2.0 MB (1957277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964fe3ede314b4319e1131efa81e169a2b959626e6317f2a22930ddb49bdf703`  
		Last Modified: Fri, 08 Sep 2017 21:18:03 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; 386

```console
$ docker pull httpd@sha256:13ca3a78d614adfbad19022a080cada49b17eb20071c1097834cbf39abb69094
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71309599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf061ff33f36b7bd8730f7dad2729df9d2de89393be1ff6c9b09b422485b3f0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:22:59 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 14:22:59 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:23:00 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 14:23:00 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 14:23:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:24:00 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 14:24:00 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 14:24:01 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 14:26:45 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:26:45 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 14:26:46 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 14:26:46 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0706818fef04b7661a03304902f3cef6335fab9c7812ad133309b4c69512d24`  
		Last Modified: Fri, 08 Sep 2017 14:36:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da18f5969f6340340a0dbe6bcdfa01020f38e36526c0cdf63290871d2dc77452`  
		Last Modified: Fri, 08 Sep 2017 14:36:55 GMT  
		Size: 16.6 MB (16562308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923b9114ad639ff51d7b2777fd04a45c9f843d20f487ff52a92e0d4872d8582d`  
		Last Modified: Fri, 08 Sep 2017 14:36:48 GMT  
		Size: 2.0 MB (1973711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8219de4c2053a6580ade603326e750498a046728e04ef1a511981524254fb5e6`  
		Last Modified: Fri, 08 Sep 2017 14:36:46 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; ppc64le

```console
$ docker pull httpd@sha256:b8d023315acf1edba6bec31f09f06065648585220a704c9cc841b008c8b0a9ce
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65705733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d7dfd1e09857137ace3ed863c1898cd63f3fe1f7fd1ed1afa4bd31676bbdd9`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:58:31 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 00:58:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 00:58:32 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 00:58:32 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 00:59:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 00:59:05 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 00:59:06 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 00:59:06 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 01:00:23 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:00:23 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:00:23 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 01:00:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4dd766f5dcadafb3f2a004e3c48f73414ac5773ebd527653ceafeb26574b88`  
		Last Modified: Fri, 08 Sep 2017 01:02:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76fd2d1d5f5e6d82b7f0b2192a91217a11b629c2f65c568c2b36417d78c1551`  
		Last Modified: Fri, 08 Sep 2017 01:03:01 GMT  
		Size: 11.9 MB (11857376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75a7f15da14d255d094a952b3309f9feb9f3b4a342dd80c94a5848438fc858e`  
		Last Modified: Fri, 08 Sep 2017 01:02:58 GMT  
		Size: 2.0 MB (2038304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d057e2cee0ebcb53a037c3cc8b8a2b89fe94a36dde923eb05e264948aad66bf4`  
		Last Modified: Fri, 08 Sep 2017 01:02:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; s390x

```console
$ docker pull httpd@sha256:16f0f6f050bba81d17b6d6d8ac46427077830f72de94339ef6dc74f95039649c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66669880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0153dbe9f4f547b54ce52908428f5ee2953ae60f226019e3b3cddc7784789d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 05:48:12 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 05:48:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 05:48:13 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 05:48:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:29 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 08 Sep 2017 05:48:29 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Fri, 08 Sep 2017 05:48:29 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 05:48:30 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 05:48:30 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Fri, 08 Sep 2017 05:48:30 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 08 Sep 2017 05:49:38 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:49:40 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 08 Sep 2017 05:49:40 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 05:49:40 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b4aec0c81c9630ed0835b797274aa5798378b94268aaef041f5854e8158694`  
		Last Modified: Fri, 08 Sep 2017 05:51:47 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d54d8585deb2b58e6883d4042cc29995ff239a33ff473d73ff779ca31b4e41`  
		Last Modified: Fri, 08 Sep 2017 05:51:50 GMT  
		Size: 11.8 MB (11793589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3694140ebdf386359ca6959a25d05755b2eddddb25801b2fc2de427964ecc4`  
		Last Modified: Fri, 08 Sep 2017 05:51:48 GMT  
		Size: 2.1 MB (2087038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d334cb816e211faa5c9172d86b5b86fabcd4b75b60de87821da2580eb27afde`  
		Last Modified: Fri, 08 Sep 2017 05:51:48 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.34-alpine`

```console
$ docker pull httpd@sha256:6eda59e77687667702aa8164154255ccb26e0cb8acea17a5dbf5f396d4f18e43
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2.34-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24381476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9059980b9b9338923b7608f5f6496f73fd0a99f3f061b84efb3b3e8db7a19b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:56:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:56:18 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:56:18 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:56:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:56:21 GMT
WORKDIR /usr/local/apache2
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_VERSION=2.2.34
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Tue, 11 Jul 2017 19:18:35 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 11 Jul 2017 19:18:49 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 21 Jul 2017 21:20:44 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:20:44 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:20:45 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263d55d1a8328ff41b5439d96ff53f27cbf2cec2ea928b4ee104bec4abfd82bc`  
		Last Modified: Thu, 29 Jun 2017 21:05:46 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e06f932f9899063a21d13c4a3554689487495d82ae21022e1016bc22b43ea5a`  
		Last Modified: Thu, 29 Jun 2017 21:05:47 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa351afba0c8d98e16fa16351bfe023652c40f2ec0969c70e2c330b7185860ad`  
		Last Modified: Fri, 21 Jul 2017 21:22:28 GMT  
		Size: 22.0 MB (21994774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86943ad131a10f84a81b71b2c56ed1e916ec2bdb6d15ffba37e0afd66a8bc84c`  
		Last Modified: Fri, 21 Jul 2017 21:22:24 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:6eda59e77687667702aa8164154255ccb26e0cb8acea17a5dbf5f396d4f18e43
```

-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24381476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9059980b9b9338923b7608f5f6496f73fd0a99f3f061b84efb3b3e8db7a19b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:56:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:56:18 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:56:18 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:56:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:56:21 GMT
WORKDIR /usr/local/apache2
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_VERSION=2.2.34
# Tue, 11 Jul 2017 19:18:34 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Tue, 11 Jul 2017 19:18:35 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 11 Jul 2017 19:18:49 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Tue, 11 Jul 2017 19:18:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Fri, 21 Jul 2017 21:20:44 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 21 Jul 2017 21:20:44 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 21 Jul 2017 21:20:45 GMT
EXPOSE 80/tcp
# Fri, 21 Jul 2017 21:20:45 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263d55d1a8328ff41b5439d96ff53f27cbf2cec2ea928b4ee104bec4abfd82bc`  
		Last Modified: Thu, 29 Jun 2017 21:05:46 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e06f932f9899063a21d13c4a3554689487495d82ae21022e1016bc22b43ea5a`  
		Last Modified: Thu, 29 Jun 2017 21:05:47 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa351afba0c8d98e16fa16351bfe023652c40f2ec0969c70e2c330b7185860ad`  
		Last Modified: Fri, 21 Jul 2017 21:22:28 GMT  
		Size: 22.0 MB (21994774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86943ad131a10f84a81b71b2c56ed1e916ec2bdb6d15ffba37e0afd66a8bc84c`  
		Last Modified: Fri, 21 Jul 2017 21:22:24 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.27`

```console
$ docker pull httpd@sha256:7c38efd711784644562a0ed81b9787b527228196f028681532c03c938a3d191d
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

### `httpd:2.4.27` - linux; amd64

```console
$ docker pull httpd@sha256:9fb3f88deb7b743e10261d4c91614b085fe5d85c11a244fca5fad5bb0edea491
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68877382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b669148bb5a5beb8eab66a493da94f307c4d6a8b302fc2a86525e7a5793d26f6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:04:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 07:26:08 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 07:26:08 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:26:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 07:26:09 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 07:26:10 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 07:26:10 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 07:26:16 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 07:26:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:45 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:28:19 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:28:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:28:24 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 07:28:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57095d1c44f233ca8d98890a008c637d8f5263adf74f0a30579836c3983a9bc8`  
		Last Modified: Thu, 07 Sep 2017 23:11:39 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020b6bcf3cee950d7febb32ea00ba76a4654f86a3ae3c678af96bc8b019fd14`  
		Last Modified: Fri, 08 Sep 2017 19:20:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a092dd48999487c8738c06e2cd4087d79842f63731ae5541b4eb5bb7f19ca2`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c38ba7997f0e1e9394c614c2907665be6fb38e18951e3f0413aab3856b4bf`  
		Last Modified: Fri, 08 Sep 2017 19:20:56 GMT  
		Size: 13.4 MB (13365091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6150a1ea9095210023a70a3f851fc16f01aff2282689e9d8d11060aca1c5701`  
		Last Modified: Fri, 08 Sep 2017 19:20:51 GMT  
		Size: 2.9 MB (2915757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a7f628db89f53ff818f3cfe4ce858bdba5224bdfb4eb9462e93c11d7d07dfd`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.27` - linux; arm variant v5

```console
$ docker pull httpd@sha256:d8a8a3cb0580c871bfad5d8e1490609a6e3b6bf7c29601b6577656c1fd07c17d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65832797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c301c0889d00d45b0e6644fedc651bdbcca183b43cfe8ed3bd71f69427f39f3`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:56:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 22:15:31 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 22:15:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 22:15:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 22:15:36 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 22:15:37 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 22:15:38 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 22:15:41 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 22:26:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:26:52 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:26:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:57 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:38:10 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 22:38:11 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 22:38:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:38:13 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec6eb2dde9f9e22c7218a4ab3d97a8ab6aedb0bb8390dc9dd86822e39687507`  
		Last Modified: Fri, 08 Sep 2017 20:12:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eabfa08cefdfe5f344276c873399d5c6854a0279718758ac8940e7f5e93120a`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6241cd59b3f06c4b40a71b05b284bd9131c81ba0e57ed423e678a44f4b7a315`  
		Last Modified: Fri, 08 Sep 2017 22:39:03 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d5455a15e9f75aa61783b9762b7bb1b8e63f1c352e8daceacfe082706c62c1`  
		Last Modified: Fri, 08 Sep 2017 22:39:13 GMT  
		Size: 12.0 MB (12033095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea7710135af6d856e49ec82f245a9838f2eb512b30d8889ec92a4e48df9886b`  
		Last Modified: Fri, 08 Sep 2017 22:39:07 GMT  
		Size: 2.9 MB (2921200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad00cd1092b171f745fef9e4aa4c42549174683dddc5e90019e949f28771e999`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.27` - linux; arm variant v7

```console
$ docker pull httpd@sha256:3e1f996bf6cc57b7a3ab326fb924febeccc2a0b760dee26859b713426d538de9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63016836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9140482c4c9017823d2a32c5207c9d362fc0486e9a73723939b21c74d87b1b75`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:40:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 00:40:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 12 Sep 2017 00:40:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 00:40:25 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 12 Sep 2017 00:40:26 GMT
WORKDIR /usr/local/apache2
# Tue, 12 Sep 2017 00:40:27 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 12 Sep 2017 00:40:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 12 Sep 2017 00:40:30 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 12 Sep 2017 00:45:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_VERSION=2.4.27
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Tue, 12 Sep 2017 00:45:51 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:52 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 00:45:53 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:54 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 01:27:03 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 01:27:04 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 12 Sep 2017 01:27:06 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 01:27:07 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7465345c56e57d4f5936077ff1647ba4f2e9fe6d8aceab8453cc05bc2e16265`  
		Last Modified: Sat, 09 Sep 2017 01:51:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe3b5e23f8f48bf934afd7f7951782c75f786cf044ef0387632c0b7f116b1a`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11964832762350428d8b204079e05ced30eec0183b6a7cb86a5992018a80b2e0`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798a8dc691d466fb32fde4e26b3e247eda436d977173609be4009af5490550af`  
		Last Modified: Tue, 12 Sep 2017 01:28:09 GMT  
		Size: 11.5 MB (11543072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4c10fe2ddd64d355f6bd3a38fe42e9b6d95433b7c18679ff272579d74eed69`  
		Last Modified: Tue, 12 Sep 2017 01:28:03 GMT  
		Size: 2.8 MB (2790671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a48918afaafa00b8b09161b76a72af95c99e58d7fe32c73185bf3eb49aea59`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.27` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:321769e4590b62693203f8846a099b39cef78c645647e07cee098c065826a9a9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64769692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba0a51357c593165a822932a9c36242979c8bbed654c823e618f19463b2f70a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 21:08:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 21:08:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 21:09:00 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 21:09:02 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 21:09:03 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 21:09:04 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 21:09:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 21:10:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:10:34 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 21:10:35 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 21:10:36 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:10:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:17:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:17:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 21:17:37 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 21:17:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872dd904ef769f00d6816b9169047c14c297f1b58f2138c1d6459aa6ffce2e36`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dace0777345085b7f6f7dfde5c759999893138e36f15a1e40dd1337495533cb`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a3d202fdca12024e1f5f4f0e8e01933947a84d8bfa03a6340934d29ff723af`  
		Last Modified: Fri, 08 Sep 2017 21:18:50 GMT  
		Size: 12.1 MB (12081017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e550d3d900947105116e0529927785c5ff18a45e5730f7bb22f90c3e5eeb47`  
		Last Modified: Fri, 08 Sep 2017 21:18:42 GMT  
		Size: 2.8 MB (2758199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de596fb48369a3440d9b0524372546adefd52ddd5be8ac6a40fb5aa4584dbbf5`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.27` - linux; 386

```console
$ docker pull httpd@sha256:c66a64e0c4fe5d77806e0c8e1ee8049f1fa1b7097478319e52cdae12c46ed20c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73518742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6dbaa55b256d4ebcf473e77d340854250cd0204d40d567e3752eab5580def4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 14:29:58 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 14:29:58 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:29:59 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 14:30:01 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 14:30:01 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 14:30:02 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 14:31:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:31:01 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:35:31 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:35:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 14:35:32 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 14:35:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2bac7300fee0acb6b9d9dc7710c4812ca85aa7999ada77c5af90ad416bdaf`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1f34d19137438e14b6d2f1e29546db1e59137778c5144a2a6094ed424ab99d`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcafc45970dbf078abcfc2c660fbd4c4cf0a66a2b24af7236718418e8cf794a`  
		Last Modified: Fri, 08 Sep 2017 14:37:18 GMT  
		Size: 18.0 MB (17968926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc763006998830b30a7f66fd9e756a058514bd22e10df60c06d624869b36a12`  
		Last Modified: Fri, 08 Sep 2017 14:37:15 GMT  
		Size: 2.8 MB (2775677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cc40c358e5bd3a2734d8505694787c76356d4a26ca9a368050d3b67bec915e`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.27` - linux; ppc64le

```console
$ docker pull httpd@sha256:8d6fd6fdde9c2e726ee4a07a371d9c29a4c2277887f62297932398ed2de6c5a6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67744483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb4876c724c8d12c35305c76da466dd5eea3e083690d05637378c428290e504`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:00:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 01:00:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:00:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 01:00:28 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 01:00:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 01:00:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 01:00:29 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 01:00:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:55 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:02:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:02:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:02:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 01:02:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb9172121693b5a3b03c677ea0bc526ed87b1c6008a042826862ffa09efda82`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764a5c3b56cada244e6348c9fcd4ba9756e369a5073b3232a82e95359980e6e`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5326fe740bd1e987a2c43712c5c0518126d4bbc0e31c34e2eebff7e7b27013f`  
		Last Modified: Fri, 08 Sep 2017 01:03:19 GMT  
		Size: 13.0 MB (13034963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8728e33b270221f87e12824b21584363217f67837a59371cf3c15c47f7835`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 2.9 MB (2898911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0e59bf9826da0d01af6857d007666db13480a50e79be5198759ca7f09bfcc`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.27` - linux; s390x

```console
$ docker pull httpd@sha256:ce7eb51235cb95b12ea2b503afd170d77a87412e7aa172be4e96bf1f07766c26
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68836946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e46701b03d4953026ab98e0f3cf7b3e0de5d487d4414fd6d6c93581fab5e80a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:21:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 05:49:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 05:49:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 05:49:42 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 05:49:42 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 05:49:43 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 05:49:43 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 05:49:43 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 05:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:51:30 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:51:30 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 05:51:30 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 05:51:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c747fbf4faeb1dce4f7abd4d39a590917ebc8c73256a2277eb5e6774a9faade5`  
		Last Modified: Fri, 08 Sep 2017 05:24:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8a98ac909b3967a45c6023d10e26080cb3fe02d270248f87f8e0988b7d8220`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15e267b38ac7d1046284da645f41a5108acc2cbb85e6f332ebbeab5cec7f5c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c621f844bacaaddda0343fcb4f3bc1806c96a9141a4dee4dbf17c4e6d6698d`  
		Last Modified: Fri, 08 Sep 2017 05:51:59 GMT  
		Size: 13.0 MB (13004287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35442bd212e054700313c55d6568843cd053c8501235520d3ea2449bd8d7b4e6`  
		Last Modified: Fri, 08 Sep 2017 05:51:57 GMT  
		Size: 3.0 MB (3042849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132bc059ee36a1817001dbf235068437efef48ffa6fb83ba002d89f481fe262c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:7c38efd711784644562a0ed81b9787b527228196f028681532c03c938a3d191d
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

### `httpd:2.4` - linux; amd64

```console
$ docker pull httpd@sha256:9fb3f88deb7b743e10261d4c91614b085fe5d85c11a244fca5fad5bb0edea491
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68877382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b669148bb5a5beb8eab66a493da94f307c4d6a8b302fc2a86525e7a5793d26f6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:04:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 07:26:08 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 07:26:08 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:26:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 07:26:09 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 07:26:10 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 07:26:10 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 07:26:16 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 07:26:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:45 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:28:19 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:28:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:28:24 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 07:28:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57095d1c44f233ca8d98890a008c637d8f5263adf74f0a30579836c3983a9bc8`  
		Last Modified: Thu, 07 Sep 2017 23:11:39 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020b6bcf3cee950d7febb32ea00ba76a4654f86a3ae3c678af96bc8b019fd14`  
		Last Modified: Fri, 08 Sep 2017 19:20:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a092dd48999487c8738c06e2cd4087d79842f63731ae5541b4eb5bb7f19ca2`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c38ba7997f0e1e9394c614c2907665be6fb38e18951e3f0413aab3856b4bf`  
		Last Modified: Fri, 08 Sep 2017 19:20:56 GMT  
		Size: 13.4 MB (13365091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6150a1ea9095210023a70a3f851fc16f01aff2282689e9d8d11060aca1c5701`  
		Last Modified: Fri, 08 Sep 2017 19:20:51 GMT  
		Size: 2.9 MB (2915757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a7f628db89f53ff818f3cfe4ce858bdba5224bdfb4eb9462e93c11d7d07dfd`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v5

```console
$ docker pull httpd@sha256:d8a8a3cb0580c871bfad5d8e1490609a6e3b6bf7c29601b6577656c1fd07c17d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65832797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c301c0889d00d45b0e6644fedc651bdbcca183b43cfe8ed3bd71f69427f39f3`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:56:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 22:15:31 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 22:15:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 22:15:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 22:15:36 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 22:15:37 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 22:15:38 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 22:15:41 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 22:26:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:26:52 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:26:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:57 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:38:10 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 22:38:11 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 22:38:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:38:13 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec6eb2dde9f9e22c7218a4ab3d97a8ab6aedb0bb8390dc9dd86822e39687507`  
		Last Modified: Fri, 08 Sep 2017 20:12:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eabfa08cefdfe5f344276c873399d5c6854a0279718758ac8940e7f5e93120a`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6241cd59b3f06c4b40a71b05b284bd9131c81ba0e57ed423e678a44f4b7a315`  
		Last Modified: Fri, 08 Sep 2017 22:39:03 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d5455a15e9f75aa61783b9762b7bb1b8e63f1c352e8daceacfe082706c62c1`  
		Last Modified: Fri, 08 Sep 2017 22:39:13 GMT  
		Size: 12.0 MB (12033095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea7710135af6d856e49ec82f245a9838f2eb512b30d8889ec92a4e48df9886b`  
		Last Modified: Fri, 08 Sep 2017 22:39:07 GMT  
		Size: 2.9 MB (2921200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad00cd1092b171f745fef9e4aa4c42549174683dddc5e90019e949f28771e999`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v7

```console
$ docker pull httpd@sha256:3e1f996bf6cc57b7a3ab326fb924febeccc2a0b760dee26859b713426d538de9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63016836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9140482c4c9017823d2a32c5207c9d362fc0486e9a73723939b21c74d87b1b75`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:40:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 00:40:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 12 Sep 2017 00:40:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 00:40:25 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 12 Sep 2017 00:40:26 GMT
WORKDIR /usr/local/apache2
# Tue, 12 Sep 2017 00:40:27 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 12 Sep 2017 00:40:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 12 Sep 2017 00:40:30 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 12 Sep 2017 00:45:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_VERSION=2.4.27
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Tue, 12 Sep 2017 00:45:51 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:52 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 00:45:53 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:54 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 01:27:03 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 01:27:04 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 12 Sep 2017 01:27:06 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 01:27:07 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7465345c56e57d4f5936077ff1647ba4f2e9fe6d8aceab8453cc05bc2e16265`  
		Last Modified: Sat, 09 Sep 2017 01:51:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe3b5e23f8f48bf934afd7f7951782c75f786cf044ef0387632c0b7f116b1a`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11964832762350428d8b204079e05ced30eec0183b6a7cb86a5992018a80b2e0`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798a8dc691d466fb32fde4e26b3e247eda436d977173609be4009af5490550af`  
		Last Modified: Tue, 12 Sep 2017 01:28:09 GMT  
		Size: 11.5 MB (11543072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4c10fe2ddd64d355f6bd3a38fe42e9b6d95433b7c18679ff272579d74eed69`  
		Last Modified: Tue, 12 Sep 2017 01:28:03 GMT  
		Size: 2.8 MB (2790671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a48918afaafa00b8b09161b76a72af95c99e58d7fe32c73185bf3eb49aea59`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:321769e4590b62693203f8846a099b39cef78c645647e07cee098c065826a9a9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64769692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba0a51357c593165a822932a9c36242979c8bbed654c823e618f19463b2f70a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 21:08:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 21:08:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 21:09:00 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 21:09:02 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 21:09:03 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 21:09:04 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 21:09:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 21:10:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:10:34 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 21:10:35 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 21:10:36 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:10:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:17:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:17:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 21:17:37 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 21:17:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872dd904ef769f00d6816b9169047c14c297f1b58f2138c1d6459aa6ffce2e36`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dace0777345085b7f6f7dfde5c759999893138e36f15a1e40dd1337495533cb`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a3d202fdca12024e1f5f4f0e8e01933947a84d8bfa03a6340934d29ff723af`  
		Last Modified: Fri, 08 Sep 2017 21:18:50 GMT  
		Size: 12.1 MB (12081017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e550d3d900947105116e0529927785c5ff18a45e5730f7bb22f90c3e5eeb47`  
		Last Modified: Fri, 08 Sep 2017 21:18:42 GMT  
		Size: 2.8 MB (2758199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de596fb48369a3440d9b0524372546adefd52ddd5be8ac6a40fb5aa4584dbbf5`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; 386

```console
$ docker pull httpd@sha256:c66a64e0c4fe5d77806e0c8e1ee8049f1fa1b7097478319e52cdae12c46ed20c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73518742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6dbaa55b256d4ebcf473e77d340854250cd0204d40d567e3752eab5580def4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 14:29:58 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 14:29:58 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:29:59 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 14:30:01 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 14:30:01 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 14:30:02 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 14:31:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:31:01 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:35:31 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:35:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 14:35:32 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 14:35:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2bac7300fee0acb6b9d9dc7710c4812ca85aa7999ada77c5af90ad416bdaf`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1f34d19137438e14b6d2f1e29546db1e59137778c5144a2a6094ed424ab99d`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcafc45970dbf078abcfc2c660fbd4c4cf0a66a2b24af7236718418e8cf794a`  
		Last Modified: Fri, 08 Sep 2017 14:37:18 GMT  
		Size: 18.0 MB (17968926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc763006998830b30a7f66fd9e756a058514bd22e10df60c06d624869b36a12`  
		Last Modified: Fri, 08 Sep 2017 14:37:15 GMT  
		Size: 2.8 MB (2775677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cc40c358e5bd3a2734d8505694787c76356d4a26ca9a368050d3b67bec915e`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; ppc64le

```console
$ docker pull httpd@sha256:8d6fd6fdde9c2e726ee4a07a371d9c29a4c2277887f62297932398ed2de6c5a6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67744483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb4876c724c8d12c35305c76da466dd5eea3e083690d05637378c428290e504`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:00:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 01:00:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:00:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 01:00:28 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 01:00:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 01:00:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 01:00:29 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 01:00:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:55 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:02:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:02:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:02:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 01:02:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb9172121693b5a3b03c677ea0bc526ed87b1c6008a042826862ffa09efda82`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764a5c3b56cada244e6348c9fcd4ba9756e369a5073b3232a82e95359980e6e`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5326fe740bd1e987a2c43712c5c0518126d4bbc0e31c34e2eebff7e7b27013f`  
		Last Modified: Fri, 08 Sep 2017 01:03:19 GMT  
		Size: 13.0 MB (13034963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8728e33b270221f87e12824b21584363217f67837a59371cf3c15c47f7835`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 2.9 MB (2898911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0e59bf9826da0d01af6857d007666db13480a50e79be5198759ca7f09bfcc`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; s390x

```console
$ docker pull httpd@sha256:ce7eb51235cb95b12ea2b503afd170d77a87412e7aa172be4e96bf1f07766c26
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68836946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e46701b03d4953026ab98e0f3cf7b3e0de5d487d4414fd6d6c93581fab5e80a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:21:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 05:49:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 05:49:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 05:49:42 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 05:49:42 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 05:49:43 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 05:49:43 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 05:49:43 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 05:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:51:30 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:51:30 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 05:51:30 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 05:51:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c747fbf4faeb1dce4f7abd4d39a590917ebc8c73256a2277eb5e6774a9faade5`  
		Last Modified: Fri, 08 Sep 2017 05:24:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8a98ac909b3967a45c6023d10e26080cb3fe02d270248f87f8e0988b7d8220`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15e267b38ac7d1046284da645f41a5108acc2cbb85e6f332ebbeab5cec7f5c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c621f844bacaaddda0343fcb4f3bc1806c96a9141a4dee4dbf17c4e6d6698d`  
		Last Modified: Fri, 08 Sep 2017 05:51:59 GMT  
		Size: 13.0 MB (13004287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35442bd212e054700313c55d6568843cd053c8501235520d3ea2449bd8d7b4e6`  
		Last Modified: Fri, 08 Sep 2017 05:51:57 GMT  
		Size: 3.0 MB (3042849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132bc059ee36a1817001dbf235068437efef48ffa6fb83ba002d89f481fe262c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2`

```console
$ docker pull httpd@sha256:7c38efd711784644562a0ed81b9787b527228196f028681532c03c938a3d191d
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

### `httpd:2` - linux; amd64

```console
$ docker pull httpd@sha256:9fb3f88deb7b743e10261d4c91614b085fe5d85c11a244fca5fad5bb0edea491
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68877382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b669148bb5a5beb8eab66a493da94f307c4d6a8b302fc2a86525e7a5793d26f6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:04:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 07:26:08 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 07:26:08 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:26:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 07:26:09 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 07:26:10 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 07:26:10 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 07:26:16 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 07:26:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:45 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:28:19 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:28:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:28:24 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 07:28:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57095d1c44f233ca8d98890a008c637d8f5263adf74f0a30579836c3983a9bc8`  
		Last Modified: Thu, 07 Sep 2017 23:11:39 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020b6bcf3cee950d7febb32ea00ba76a4654f86a3ae3c678af96bc8b019fd14`  
		Last Modified: Fri, 08 Sep 2017 19:20:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a092dd48999487c8738c06e2cd4087d79842f63731ae5541b4eb5bb7f19ca2`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c38ba7997f0e1e9394c614c2907665be6fb38e18951e3f0413aab3856b4bf`  
		Last Modified: Fri, 08 Sep 2017 19:20:56 GMT  
		Size: 13.4 MB (13365091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6150a1ea9095210023a70a3f851fc16f01aff2282689e9d8d11060aca1c5701`  
		Last Modified: Fri, 08 Sep 2017 19:20:51 GMT  
		Size: 2.9 MB (2915757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a7f628db89f53ff818f3cfe4ce858bdba5224bdfb4eb9462e93c11d7d07dfd`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v5

```console
$ docker pull httpd@sha256:d8a8a3cb0580c871bfad5d8e1490609a6e3b6bf7c29601b6577656c1fd07c17d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65832797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c301c0889d00d45b0e6644fedc651bdbcca183b43cfe8ed3bd71f69427f39f3`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:56:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 22:15:31 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 22:15:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 22:15:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 22:15:36 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 22:15:37 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 22:15:38 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 22:15:41 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 22:26:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:26:52 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:26:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:57 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:38:10 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 22:38:11 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 22:38:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:38:13 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec6eb2dde9f9e22c7218a4ab3d97a8ab6aedb0bb8390dc9dd86822e39687507`  
		Last Modified: Fri, 08 Sep 2017 20:12:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eabfa08cefdfe5f344276c873399d5c6854a0279718758ac8940e7f5e93120a`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6241cd59b3f06c4b40a71b05b284bd9131c81ba0e57ed423e678a44f4b7a315`  
		Last Modified: Fri, 08 Sep 2017 22:39:03 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d5455a15e9f75aa61783b9762b7bb1b8e63f1c352e8daceacfe082706c62c1`  
		Last Modified: Fri, 08 Sep 2017 22:39:13 GMT  
		Size: 12.0 MB (12033095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea7710135af6d856e49ec82f245a9838f2eb512b30d8889ec92a4e48df9886b`  
		Last Modified: Fri, 08 Sep 2017 22:39:07 GMT  
		Size: 2.9 MB (2921200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad00cd1092b171f745fef9e4aa4c42549174683dddc5e90019e949f28771e999`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v7

```console
$ docker pull httpd@sha256:3e1f996bf6cc57b7a3ab326fb924febeccc2a0b760dee26859b713426d538de9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63016836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9140482c4c9017823d2a32c5207c9d362fc0486e9a73723939b21c74d87b1b75`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:40:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 00:40:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 12 Sep 2017 00:40:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 00:40:25 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 12 Sep 2017 00:40:26 GMT
WORKDIR /usr/local/apache2
# Tue, 12 Sep 2017 00:40:27 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 12 Sep 2017 00:40:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 12 Sep 2017 00:40:30 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 12 Sep 2017 00:45:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_VERSION=2.4.27
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Tue, 12 Sep 2017 00:45:51 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:52 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 00:45:53 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:54 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 01:27:03 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 01:27:04 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 12 Sep 2017 01:27:06 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 01:27:07 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7465345c56e57d4f5936077ff1647ba4f2e9fe6d8aceab8453cc05bc2e16265`  
		Last Modified: Sat, 09 Sep 2017 01:51:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe3b5e23f8f48bf934afd7f7951782c75f786cf044ef0387632c0b7f116b1a`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11964832762350428d8b204079e05ced30eec0183b6a7cb86a5992018a80b2e0`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798a8dc691d466fb32fde4e26b3e247eda436d977173609be4009af5490550af`  
		Last Modified: Tue, 12 Sep 2017 01:28:09 GMT  
		Size: 11.5 MB (11543072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4c10fe2ddd64d355f6bd3a38fe42e9b6d95433b7c18679ff272579d74eed69`  
		Last Modified: Tue, 12 Sep 2017 01:28:03 GMT  
		Size: 2.8 MB (2790671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a48918afaafa00b8b09161b76a72af95c99e58d7fe32c73185bf3eb49aea59`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:321769e4590b62693203f8846a099b39cef78c645647e07cee098c065826a9a9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64769692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba0a51357c593165a822932a9c36242979c8bbed654c823e618f19463b2f70a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 21:08:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 21:08:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 21:09:00 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 21:09:02 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 21:09:03 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 21:09:04 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 21:09:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 21:10:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:10:34 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 21:10:35 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 21:10:36 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:10:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:17:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:17:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 21:17:37 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 21:17:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872dd904ef769f00d6816b9169047c14c297f1b58f2138c1d6459aa6ffce2e36`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dace0777345085b7f6f7dfde5c759999893138e36f15a1e40dd1337495533cb`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a3d202fdca12024e1f5f4f0e8e01933947a84d8bfa03a6340934d29ff723af`  
		Last Modified: Fri, 08 Sep 2017 21:18:50 GMT  
		Size: 12.1 MB (12081017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e550d3d900947105116e0529927785c5ff18a45e5730f7bb22f90c3e5eeb47`  
		Last Modified: Fri, 08 Sep 2017 21:18:42 GMT  
		Size: 2.8 MB (2758199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de596fb48369a3440d9b0524372546adefd52ddd5be8ac6a40fb5aa4584dbbf5`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; 386

```console
$ docker pull httpd@sha256:c66a64e0c4fe5d77806e0c8e1ee8049f1fa1b7097478319e52cdae12c46ed20c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73518742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6dbaa55b256d4ebcf473e77d340854250cd0204d40d567e3752eab5580def4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 14:29:58 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 14:29:58 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:29:59 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 14:30:01 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 14:30:01 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 14:30:02 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 14:31:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:31:01 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:35:31 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:35:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 14:35:32 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 14:35:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2bac7300fee0acb6b9d9dc7710c4812ca85aa7999ada77c5af90ad416bdaf`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1f34d19137438e14b6d2f1e29546db1e59137778c5144a2a6094ed424ab99d`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcafc45970dbf078abcfc2c660fbd4c4cf0a66a2b24af7236718418e8cf794a`  
		Last Modified: Fri, 08 Sep 2017 14:37:18 GMT  
		Size: 18.0 MB (17968926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc763006998830b30a7f66fd9e756a058514bd22e10df60c06d624869b36a12`  
		Last Modified: Fri, 08 Sep 2017 14:37:15 GMT  
		Size: 2.8 MB (2775677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cc40c358e5bd3a2734d8505694787c76356d4a26ca9a368050d3b67bec915e`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; ppc64le

```console
$ docker pull httpd@sha256:8d6fd6fdde9c2e726ee4a07a371d9c29a4c2277887f62297932398ed2de6c5a6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67744483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb4876c724c8d12c35305c76da466dd5eea3e083690d05637378c428290e504`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:00:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 01:00:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:00:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 01:00:28 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 01:00:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 01:00:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 01:00:29 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 01:00:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:55 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:02:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:02:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:02:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 01:02:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb9172121693b5a3b03c677ea0bc526ed87b1c6008a042826862ffa09efda82`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764a5c3b56cada244e6348c9fcd4ba9756e369a5073b3232a82e95359980e6e`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5326fe740bd1e987a2c43712c5c0518126d4bbc0e31c34e2eebff7e7b27013f`  
		Last Modified: Fri, 08 Sep 2017 01:03:19 GMT  
		Size: 13.0 MB (13034963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8728e33b270221f87e12824b21584363217f67837a59371cf3c15c47f7835`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 2.9 MB (2898911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0e59bf9826da0d01af6857d007666db13480a50e79be5198759ca7f09bfcc`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; s390x

```console
$ docker pull httpd@sha256:ce7eb51235cb95b12ea2b503afd170d77a87412e7aa172be4e96bf1f07766c26
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68836946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e46701b03d4953026ab98e0f3cf7b3e0de5d487d4414fd6d6c93581fab5e80a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:21:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 05:49:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 05:49:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 05:49:42 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 05:49:42 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 05:49:43 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 05:49:43 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 05:49:43 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 05:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:51:30 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:51:30 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 05:51:30 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 05:51:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c747fbf4faeb1dce4f7abd4d39a590917ebc8c73256a2277eb5e6774a9faade5`  
		Last Modified: Fri, 08 Sep 2017 05:24:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8a98ac909b3967a45c6023d10e26080cb3fe02d270248f87f8e0988b7d8220`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15e267b38ac7d1046284da645f41a5108acc2cbb85e6f332ebbeab5cec7f5c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c621f844bacaaddda0343fcb4f3bc1806c96a9141a4dee4dbf17c4e6d6698d`  
		Last Modified: Fri, 08 Sep 2017 05:51:59 GMT  
		Size: 13.0 MB (13004287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35442bd212e054700313c55d6568843cd053c8501235520d3ea2449bd8d7b4e6`  
		Last Modified: Fri, 08 Sep 2017 05:51:57 GMT  
		Size: 3.0 MB (3042849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132bc059ee36a1817001dbf235068437efef48ffa6fb83ba002d89f481fe262c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:7c38efd711784644562a0ed81b9787b527228196f028681532c03c938a3d191d
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

### `httpd:latest` - linux; amd64

```console
$ docker pull httpd@sha256:9fb3f88deb7b743e10261d4c91614b085fe5d85c11a244fca5fad5bb0edea491
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68877382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b669148bb5a5beb8eab66a493da94f307c4d6a8b302fc2a86525e7a5793d26f6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:04:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 07:26:08 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 07:26:08 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:26:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 07:26:09 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 07:26:10 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 07:26:10 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 07:26:16 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 07:26:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 07:26:43 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:26:44 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 07:26:45 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 07:28:19 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:28:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:28:24 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 07:28:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57095d1c44f233ca8d98890a008c637d8f5263adf74f0a30579836c3983a9bc8`  
		Last Modified: Thu, 07 Sep 2017 23:11:39 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020b6bcf3cee950d7febb32ea00ba76a4654f86a3ae3c678af96bc8b019fd14`  
		Last Modified: Fri, 08 Sep 2017 19:20:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a092dd48999487c8738c06e2cd4087d79842f63731ae5541b4eb5bb7f19ca2`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c38ba7997f0e1e9394c614c2907665be6fb38e18951e3f0413aab3856b4bf`  
		Last Modified: Fri, 08 Sep 2017 19:20:56 GMT  
		Size: 13.4 MB (13365091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6150a1ea9095210023a70a3f851fc16f01aff2282689e9d8d11060aca1c5701`  
		Last Modified: Fri, 08 Sep 2017 19:20:51 GMT  
		Size: 2.9 MB (2915757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a7f628db89f53ff818f3cfe4ce858bdba5224bdfb4eb9462e93c11d7d07dfd`  
		Last Modified: Fri, 08 Sep 2017 19:20:49 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v5

```console
$ docker pull httpd@sha256:d8a8a3cb0580c871bfad5d8e1490609a6e3b6bf7c29601b6577656c1fd07c17d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65832797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c301c0889d00d45b0e6644fedc651bdbcca183b43cfe8ed3bd71f69427f39f3`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:56:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 22:15:31 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 22:15:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 22:15:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 22:15:36 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 22:15:37 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 22:15:38 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 22:15:41 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 22:26:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:26:52 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 22:26:53 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:26:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 22:26:57 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 22:38:10 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 22:38:11 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 22:38:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:38:13 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec6eb2dde9f9e22c7218a4ab3d97a8ab6aedb0bb8390dc9dd86822e39687507`  
		Last Modified: Fri, 08 Sep 2017 20:12:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eabfa08cefdfe5f344276c873399d5c6854a0279718758ac8940e7f5e93120a`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6241cd59b3f06c4b40a71b05b284bd9131c81ba0e57ed423e678a44f4b7a315`  
		Last Modified: Fri, 08 Sep 2017 22:39:03 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d5455a15e9f75aa61783b9762b7bb1b8e63f1c352e8daceacfe082706c62c1`  
		Last Modified: Fri, 08 Sep 2017 22:39:13 GMT  
		Size: 12.0 MB (12033095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea7710135af6d856e49ec82f245a9838f2eb512b30d8889ec92a4e48df9886b`  
		Last Modified: Fri, 08 Sep 2017 22:39:07 GMT  
		Size: 2.9 MB (2921200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad00cd1092b171f745fef9e4aa4c42549174683dddc5e90019e949f28771e999`  
		Last Modified: Fri, 08 Sep 2017 22:39:02 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v7

```console
$ docker pull httpd@sha256:3e1f996bf6cc57b7a3ab326fb924febeccc2a0b760dee26859b713426d538de9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63016836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9140482c4c9017823d2a32c5207c9d362fc0486e9a73723939b21c74d87b1b75`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:40:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 00:40:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 12 Sep 2017 00:40:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 00:40:25 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 12 Sep 2017 00:40:26 GMT
WORKDIR /usr/local/apache2
# Tue, 12 Sep 2017 00:40:27 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 12 Sep 2017 00:40:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 12 Sep 2017 00:40:30 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 12 Sep 2017 00:45:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_VERSION=2.4.27
# Tue, 12 Sep 2017 00:45:50 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Tue, 12 Sep 2017 00:45:51 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:52 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 00:45:53 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Tue, 12 Sep 2017 00:45:54 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Tue, 12 Sep 2017 01:27:03 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 01:27:04 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 12 Sep 2017 01:27:06 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 01:27:07 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7465345c56e57d4f5936077ff1647ba4f2e9fe6d8aceab8453cc05bc2e16265`  
		Last Modified: Sat, 09 Sep 2017 01:51:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe3b5e23f8f48bf934afd7f7951782c75f786cf044ef0387632c0b7f116b1a`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11964832762350428d8b204079e05ced30eec0183b6a7cb86a5992018a80b2e0`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798a8dc691d466fb32fde4e26b3e247eda436d977173609be4009af5490550af`  
		Last Modified: Tue, 12 Sep 2017 01:28:09 GMT  
		Size: 11.5 MB (11543072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4c10fe2ddd64d355f6bd3a38fe42e9b6d95433b7c18679ff272579d74eed69`  
		Last Modified: Tue, 12 Sep 2017 01:28:03 GMT  
		Size: 2.8 MB (2790671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a48918afaafa00b8b09161b76a72af95c99e58d7fe32c73185bf3eb49aea59`  
		Last Modified: Tue, 12 Sep 2017 01:27:57 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:321769e4590b62693203f8846a099b39cef78c645647e07cee098c065826a9a9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64769692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba0a51357c593165a822932a9c36242979c8bbed654c823e618f19463b2f70a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 21:08:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 21:08:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 21:09:00 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 21:09:02 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 21:09:03 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 21:09:04 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 21:09:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 21:10:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:10:34 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 21:10:35 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 21:10:36 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:10:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 21:10:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 21:17:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:17:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 21:17:37 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 21:17:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872dd904ef769f00d6816b9169047c14c297f1b58f2138c1d6459aa6ffce2e36`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dace0777345085b7f6f7dfde5c759999893138e36f15a1e40dd1337495533cb`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a3d202fdca12024e1f5f4f0e8e01933947a84d8bfa03a6340934d29ff723af`  
		Last Modified: Fri, 08 Sep 2017 21:18:50 GMT  
		Size: 12.1 MB (12081017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e550d3d900947105116e0529927785c5ff18a45e5730f7bb22f90c3e5eeb47`  
		Last Modified: Fri, 08 Sep 2017 21:18:42 GMT  
		Size: 2.8 MB (2758199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de596fb48369a3440d9b0524372546adefd52ddd5be8ac6a40fb5aa4584dbbf5`  
		Last Modified: Fri, 08 Sep 2017 21:18:39 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; 386

```console
$ docker pull httpd@sha256:c66a64e0c4fe5d77806e0c8e1ee8049f1fa1b7097478319e52cdae12c46ed20c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73518742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6dbaa55b256d4ebcf473e77d340854250cd0204d40d567e3752eab5580def4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 14:29:58 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 14:29:58 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:29:59 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 14:30:01 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 14:30:01 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 14:30:02 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 14:31:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:31:01 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:02 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 14:31:03 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 14:35:31 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:35:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 14:35:32 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 14:35:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2bac7300fee0acb6b9d9dc7710c4812ca85aa7999ada77c5af90ad416bdaf`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1f34d19137438e14b6d2f1e29546db1e59137778c5144a2a6094ed424ab99d`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcafc45970dbf078abcfc2c660fbd4c4cf0a66a2b24af7236718418e8cf794a`  
		Last Modified: Fri, 08 Sep 2017 14:37:18 GMT  
		Size: 18.0 MB (17968926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc763006998830b30a7f66fd9e756a058514bd22e10df60c06d624869b36a12`  
		Last Modified: Fri, 08 Sep 2017 14:37:15 GMT  
		Size: 2.8 MB (2775677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cc40c358e5bd3a2734d8505694787c76356d4a26ca9a368050d3b67bec915e`  
		Last Modified: Fri, 08 Sep 2017 14:37:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; ppc64le

```console
$ docker pull httpd@sha256:8d6fd6fdde9c2e726ee4a07a371d9c29a4c2277887f62297932398ed2de6c5a6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67744483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb4876c724c8d12c35305c76da466dd5eea3e083690d05637378c428290e504`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:00:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 01:00:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 01:00:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 01:00:28 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 01:00:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 01:00:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 01:00:29 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 01:00:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:55 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 01:00:56 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 01:02:35 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:02:36 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:02:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 01:02:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb9172121693b5a3b03c677ea0bc526ed87b1c6008a042826862ffa09efda82`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764a5c3b56cada244e6348c9fcd4ba9756e369a5073b3232a82e95359980e6e`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5326fe740bd1e987a2c43712c5c0518126d4bbc0e31c34e2eebff7e7b27013f`  
		Last Modified: Fri, 08 Sep 2017 01:03:19 GMT  
		Size: 13.0 MB (13034963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d8728e33b270221f87e12824b21584363217f67837a59371cf3c15c47f7835`  
		Last Modified: Fri, 08 Sep 2017 01:03:16 GMT  
		Size: 2.9 MB (2898911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0e59bf9826da0d01af6857d007666db13480a50e79be5198759ca7f09bfcc`  
		Last Modified: Fri, 08 Sep 2017 01:03:15 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; s390x

```console
$ docker pull httpd@sha256:ce7eb51235cb95b12ea2b503afd170d77a87412e7aa172be4e96bf1f07766c26
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68836946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e46701b03d4953026ab98e0f3cf7b3e0de5d487d4414fd6d6c93581fab5e80a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:21:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 05:49:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Sep 2017 05:49:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 05:49:42 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Sep 2017 05:49:42 GMT
WORKDIR /usr/local/apache2
# Fri, 08 Sep 2017 05:49:43 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 08 Sep 2017 05:49:43 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 08 Sep 2017 05:49:43 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 08 Sep 2017 05:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_VERSION=2.4.27
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Fri, 08 Sep 2017 05:50:09 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Fri, 08 Sep 2017 05:50:10 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Fri, 08 Sep 2017 05:51:30 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:51:30 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 08 Sep 2017 05:51:30 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 05:51:30 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c747fbf4faeb1dce4f7abd4d39a590917ebc8c73256a2277eb5e6774a9faade5`  
		Last Modified: Fri, 08 Sep 2017 05:24:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8a98ac909b3967a45c6023d10e26080cb3fe02d270248f87f8e0988b7d8220`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15e267b38ac7d1046284da645f41a5108acc2cbb85e6f332ebbeab5cec7f5c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c621f844bacaaddda0343fcb4f3bc1806c96a9141a4dee4dbf17c4e6d6698d`  
		Last Modified: Fri, 08 Sep 2017 05:51:59 GMT  
		Size: 13.0 MB (13004287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35442bd212e054700313c55d6568843cd053c8501235520d3ea2449bd8d7b4e6`  
		Last Modified: Fri, 08 Sep 2017 05:51:57 GMT  
		Size: 3.0 MB (3042849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132bc059ee36a1817001dbf235068437efef48ffa6fb83ba002d89f481fe262c`  
		Last Modified: Fri, 08 Sep 2017 05:51:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.27-alpine`

```console
$ docker pull httpd@sha256:47a1680b556a41242d194000348ee315136a72f6a78512738a1bbc838417ed26
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4.27-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28284667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f964f21e8c583fd74495c4361676a99cec54026bac07f4cbd981fdeb24378`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 06:51:25 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:52:25 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& wget -O libressl.patch 'https://git.alpinelinux.org/cgit/aports/plain/main/apache2/libressl.patch?id=d7292029f25a131a0f15ebc3bc2300e75f4c131a' 	&& patch -p1 < libressl.patch 	&& rm libressl.patch 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Wed, 26 Jul 2017 06:52:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:52:25 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 06:52:26 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffce8fc4823173b375c2b2982cfa788b203af5219a43eefa079e4293a23f4405`  
		Last Modified: Wed, 26 Jul 2017 06:53:14 GMT  
		Size: 26.3 MB (26292596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b049cfa8463cabd47e29f0161b659b768dea14197816ca585bfbb4c49aff2b`  
		Last Modified: Wed, 26 Jul 2017 06:53:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:47a1680b556a41242d194000348ee315136a72f6a78512738a1bbc838417ed26
```

-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28284667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f964f21e8c583fd74495c4361676a99cec54026bac07f4cbd981fdeb24378`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 06:51:25 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:52:25 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& wget -O libressl.patch 'https://git.alpinelinux.org/cgit/aports/plain/main/apache2/libressl.patch?id=d7292029f25a131a0f15ebc3bc2300e75f4c131a' 	&& patch -p1 < libressl.patch 	&& rm libressl.patch 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Wed, 26 Jul 2017 06:52:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:52:25 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 06:52:26 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffce8fc4823173b375c2b2982cfa788b203af5219a43eefa079e4293a23f4405`  
		Last Modified: Wed, 26 Jul 2017 06:53:14 GMT  
		Size: 26.3 MB (26292596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b049cfa8463cabd47e29f0161b659b768dea14197816ca585bfbb4c49aff2b`  
		Last Modified: Wed, 26 Jul 2017 06:53:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:47a1680b556a41242d194000348ee315136a72f6a78512738a1bbc838417ed26
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28284667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f964f21e8c583fd74495c4361676a99cec54026bac07f4cbd981fdeb24378`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 06:51:25 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:52:25 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& wget -O libressl.patch 'https://git.alpinelinux.org/cgit/aports/plain/main/apache2/libressl.patch?id=d7292029f25a131a0f15ebc3bc2300e75f4c131a' 	&& patch -p1 < libressl.patch 	&& rm libressl.patch 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Wed, 26 Jul 2017 06:52:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:52:25 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 06:52:26 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffce8fc4823173b375c2b2982cfa788b203af5219a43eefa079e4293a23f4405`  
		Last Modified: Wed, 26 Jul 2017 06:53:14 GMT  
		Size: 26.3 MB (26292596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b049cfa8463cabd47e29f0161b659b768dea14197816ca585bfbb4c49aff2b`  
		Last Modified: Wed, 26 Jul 2017 06:53:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:47a1680b556a41242d194000348ee315136a72f6a78512738a1bbc838417ed26
```

-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28284667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19f964f21e8c583fd74495c4361676a99cec54026bac07f4cbd981fdeb24378`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 06:51:25 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 06:51:26 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 06:52:25 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& wget -O libressl.patch 'https://git.alpinelinux.org/cgit/aports/plain/main/apache2/libressl.patch?id=d7292029f25a131a0f15ebc3bc2300e75f4c131a' 	&& patch -p1 < libressl.patch 	&& rm libressl.patch 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Wed, 26 Jul 2017 06:52:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:52:25 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 06:52:26 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffce8fc4823173b375c2b2982cfa788b203af5219a43eefa079e4293a23f4405`  
		Last Modified: Wed, 26 Jul 2017 06:53:14 GMT  
		Size: 26.3 MB (26292596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b049cfa8463cabd47e29f0161b659b768dea14197816ca585bfbb4c49aff2b`  
		Last Modified: Wed, 26 Jul 2017 06:53:08 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
