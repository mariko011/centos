<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2`](#httpd2)
-	[`httpd:2.2`](#httpd22)
-	[`httpd:2.2.34`](#httpd2234)
-	[`httpd:2.2.34-alpine`](#httpd2234-alpine)
-	[`httpd:2.2-alpine`](#httpd22-alpine)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2.4.28`](#httpd2428)
-	[`httpd:2.4.28-alpine`](#httpd2428-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)
-	[`httpd:latest`](#httpdlatest)

## `httpd:2`

```console
$ docker pull httpd@sha256:99e5ab0c67f7d76f7c50235d39ec69a3893d093bf8d34ac114a09fcdc702f6e1
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
$ docker pull httpd@sha256:dca0354b01df5d96433d7319fea5d0d19f33545a8c99918d560537072fe3cb69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68879773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24f66af34b4d76558f7743109e2476b6325fcf6cc167c6e1e07cd121a22b341`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:16:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:16:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:16:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:16:49 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:16:49 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:16:50 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:16:51 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:17:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:29 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 21:58:39 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:00:15 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:00:16 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:00:16 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:00:16 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dee1a596b5f37602a1add0f54536b2fc4556aec98fcc6d67526775c494a2433`  
		Last Modified: Mon, 09 Oct 2017 21:37:11 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86144720cb98e986315d7396d0e8216d37a374a6d196c6064635aea99fc623b7`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23273e61b31a62e632a235b46342f1ec3ff3f01e393152b8cfeacbaa3f204e3d`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011f98a84808c6b7253e51cceb2e99e8aa017d8095fe816cfc4c8adecfe59770`  
		Last Modified: Mon, 09 Oct 2017 23:21:01 GMT  
		Size: 13.4 MB (13366088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771652f83cbc06910616225f29b84ee040f5afcecdc40873ebde923f8b37bb18`  
		Last Modified: Thu, 12 Oct 2017 22:03:42 GMT  
		Size: 2.9 MB (2917546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0036b8043a1c2563fe1805b68bdc2f5acc32006c2dd9b17d43ab0faafcdd05ec`  
		Last Modified: Thu, 12 Oct 2017 22:03:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v5

```console
$ docker pull httpd@sha256:dcdfcf2b2bed1a55c3233818ee848d6948444ab0c8cfa5c3d73fa2f370ea98a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65844559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3791747c8c0f7ada0016a998dc63630c1d15bc9a02463cb6d85c30b8d9ad8630`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:01:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:01:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:01:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:01:58 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:01:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:01:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:01:59 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:02:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:02:44 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:02:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:05:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:05:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:03 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:05:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87781958359825a8d834cb84cc6bcdc30f6ca1d26a5dadc9d045fb98d687c9fc`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b3ba89b61900c6dd17b572114353498bc20164dd0431872852e9f7e57a9784`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98cbb3c645065602ab251fa7eea57ef4a42b45c14832d4ce58f48e041de8bcf`  
		Last Modified: Mon, 09 Oct 2017 22:05:36 GMT  
		Size: 12.0 MB (12034438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9081d567f3f551dd7887a4fc7d9acada2b11627876095b7adbcf2e051b88386`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 2.9 MB (2929184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4732e880ad98e066ccac1de65289d75b9fed56cbef67e8ce2e88a8e1e744955`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v7

```console
$ docker pull httpd@sha256:5a068ae3e04965691f32633e724ad3d2a3e62e6ed832db77064c7fd08c70d35e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63024881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645a5c7fe3ab1216dcdd6dd429d607befb1112ea12b0341a234bd2422a8a9a1b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:28:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:28:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:28:44 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:28:44 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:28:44 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:28:45 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:28:46 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:29:28 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:31:39 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:31:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:31:40 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:31:40 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5dc2631ae77726929345eddda76360e3f3ae72c14d96eaf4f9741505f1d43c`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0aa927b707bc804deb015db9bb93949e4ce2ead5a9371e8acb168d1222bb97`  
		Last Modified: Mon, 09 Oct 2017 22:32:08 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a429a090a54b231208a9b8c5240ea8112562558ef988d24aef26f3f790e24`  
		Last Modified: Mon, 09 Oct 2017 22:32:14 GMT  
		Size: 11.5 MB (11545699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c969512b52a5eac6d47778d1dfece7d20f49b0ba1c15a3539ad2b7459b5f933b`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 2.8 MB (2791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c69e0fb77111d7c1b3c3563ead47aa4ab6a7dea4c4f29d5b94e18fb67c936c8`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1074ae37824b08dda9af5ac79c05a6da8fc3bc68dfd4c055275cb596a7cb686b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64771407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502df2470046cc809cad7c2a657b468ac2acba4eda35b92e925d4e20cb056871`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:50 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 00:00:51 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:00:55 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 00:00:56 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 00:00:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 00:00:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 00:01:03 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 00:02:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_VERSION=2.4.28
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Tue, 10 Oct 2017 00:02:15 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:16 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:02:17 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:18 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:07:23 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:07:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:07:24 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 00:07:25 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8b95d71e4e4ed22aef9737f713281846d77a741efef8786d5f5c54afd2bc29`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406c915b37de2459025255b3ec1726bc01435881a5f803e01ebff97516922e2a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740b64fda9433efc43a77301d735cf9391850ba8c984a975cd952c5f5803e33e`  
		Last Modified: Tue, 10 Oct 2017 00:08:50 GMT  
		Size: 12.1 MB (12081347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ff9017c02c7b21053503b6e610939d16129a964f1b7eee44b41d3de983686`  
		Last Modified: Tue, 10 Oct 2017 00:08:43 GMT  
		Size: 2.8 MB (2759734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a287a081810d335bed7497b5419dd48b9c08ea0c93092735edae75bc1087fa0a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; 386

```console
$ docker pull httpd@sha256:f14020f377dcf48bd152256a5b7ec669190c72bba79db74dbcebdc1a23944463
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73521370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b39bd5c91cb6a372bdcb6a935006a3724033d12896faeec1d2b1a0a007422d1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:49:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:49:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:49:48 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:49:48 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:49:48 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:49:48 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:49:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:50:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:52:46 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:52:47 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e389cd9540df4f514fc89b34b792c561eb664b4628dc1e617655e341953c5d66`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1866283e079b05535b4f247b3c6d57a6ccb10908cbc5ff48e785fb173ab395`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baad362d1e5409671f8cb5b34f1b40813f0ba5ba8a04f427d9916d17c791a239`  
		Last Modified: Mon, 09 Oct 2017 23:53:30 GMT  
		Size: 18.0 MB (17969384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76b2db8abca19ff1b2194e744c5c4c7970a971900684bbefcefcfea873c48`  
		Last Modified: Mon, 09 Oct 2017 23:53:28 GMT  
		Size: 2.8 MB (2777119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c231271bfda655fc23d4beeb363b81bde7d90d1d0af428bcac7be20f15bd2c3`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; ppc64le

```console
$ docker pull httpd@sha256:a458de60e767ddf44f910bee79e36a13476fa3059e455dc44ac6a29fd1725c5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67749003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f24d672165ee84afede80c1fee0ed80448db55c2e91a214d9f168ff1a0f402c`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:13:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 01:13:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:13:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 01:13:24 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 01:13:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 01:13:32 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 01:13:40 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 01:17:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:17:39 GMT
ENV HTTPD_VERSION=2.4.28
# Fri, 13 Oct 2017 01:09:27 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Fri, 13 Oct 2017 01:09:29 GMT
ENV HTTPD_PATCHES=
# Fri, 13 Oct 2017 01:09:32 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 01:17:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 01:17:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 13 Oct 2017 01:17:28 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 01:17:31 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5284e00e8f502ebf3749e0f793867db2c6e00d0618a071c942f2d55efb0d83e1`  
		Last Modified: Tue, 10 Oct 2017 01:29:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb6a483d2888033dc0f0f7c492eab355648fc3285e692ca5620d4e5f19f664f`  
		Last Modified: Tue, 10 Oct 2017 01:29:34 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d242abaa5f11e7ce559161c51ebfc95d6631bac7d6bfe159994b5868ffcd5d2`  
		Last Modified: Tue, 10 Oct 2017 01:29:38 GMT  
		Size: 13.0 MB (13036427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98ae419140bd323c78ee84225692e47f118065fa19908bff08ce5c9f38c1a9a`  
		Last Modified: Fri, 13 Oct 2017 01:18:01 GMT  
		Size: 2.9 MB (2901785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c075a41694303fae8f5a046a0dce65d6e0c3d8d6d091932a53e57412cd0d24b1`  
		Last Modified: Fri, 13 Oct 2017 01:18:00 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; s390x

```console
$ docker pull httpd@sha256:3b6a38b1e1d7a886e7651f17b28dd7fadd8a2efef8ca66de0355dd24beaca68e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb6c2525e7de43a59b74c0be622e4fbe0c15781c2d478c80e6bf349e24c616e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:25:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:25:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:25:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:25:12 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:25:12 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:25:12 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:25:13 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:25:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:27:32 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:27:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:27:32 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:27:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb40f78ad84854b825a5bb4be4ff02c743ef29084a21c454098452027ececc`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf8204313ff55d04e061e6d7b41358db31c2b6ab1a2a20d3da35a9c564ddf82`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83931eca269058b77bd2172a5a6898347d4dd233eac42105ff6a00a7f93ff608`  
		Last Modified: Mon, 09 Oct 2017 22:28:08 GMT  
		Size: 13.0 MB (13004860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb721c8ec3755815d2fefeec0afe6046372273292c3ecb463ae85b0a636b1072`  
		Last Modified: Mon, 09 Oct 2017 22:28:06 GMT  
		Size: 3.0 MB (3045018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c143b08f039849d0464a5f23c9e5da7362942acdb677dd7c0388a548144e3b`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:6c2b65c1df2b500a2d26072475cbcbb7a2e0be2e849d63dcbea8e93709f95935
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
$ docker pull httpd@sha256:b2e10f37a9e8f825e9d7478842228b1c67095f6ce8dc119f11d4a189ec8fadbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66567966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c874ec3d374507b94a27571dbbef45d388cd34cd23dd1f34a5549319d3a37ea6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:14:44 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:14:45 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:14:46 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:14:46 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:15:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:15:11 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 12 Oct 2017 21:53:59 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 12 Oct 2017 21:53:59 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 12 Oct 2017 21:53:59 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 21:57:06 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 21:57:06 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:57:06 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 21:57:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855de64a0b9fe72cca14050d60dcc006182cc07b8085c169e10f78ccc73156b`  
		Last Modified: Mon, 09 Oct 2017 23:20:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06abd57a0bcf9ee7193c2fd77c56ed707817e207027e8251e908ff8ef29ea75`  
		Last Modified: Mon, 09 Oct 2017 23:20:33 GMT  
		Size: 11.9 MB (11947309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3347463b0e16441c40f694fee751c82630b89c62c5b07f6a77c5257e35f42d`  
		Last Modified: Thu, 12 Oct 2017 22:02:59 GMT  
		Size: 2.0 MB (2025074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682c936073383b2556a3e5b038f69fa55d80197bec36819c2aa771194f50477b`  
		Last Modified: Thu, 12 Oct 2017 22:02:59 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; arm variant v5

```console
$ docker pull httpd@sha256:8b5272206f3fb2df9809c4b1dcf5f2ea80f1a5c02a07490594847897ca61d5cf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63828391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df70ed9a7fb6b51e2c0357858be27dc4a014c285622d9ea293bf7d3a545681c`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:59:23 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 21:59:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 21:59:24 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 21:59:24 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:00:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:00:03 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 12 Oct 2017 21:59:27 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 12 Oct 2017 21:59:27 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 12 Oct 2017 21:59:28 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:02:28 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:02:28 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:29 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:02:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92146de5d36af6ae58854b6e10b777d543de617c4dafe3175b9efb60ee00562`  
		Last Modified: Mon, 09 Oct 2017 22:05:21 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b60fe91c907313aaaf472182da45d296af422e4dabca1a5b76b2dd09b172acc`  
		Last Modified: Mon, 09 Oct 2017 22:05:25 GMT  
		Size: 10.9 MB (10924676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db03542fb83da4ecedc6813b4d41119358ab6f8a7bc8e6e9fddc3b6273113b4`  
		Last Modified: Thu, 12 Oct 2017 22:05:13 GMT  
		Size: 2.0 MB (2023334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9540a201fc3c1b759c13655bdd0d051530358f2c51d6dc6417f854eab79da2e`  
		Last Modified: Thu, 12 Oct 2017 22:05:12 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; arm variant v7

```console
$ docker pull httpd@sha256:af3dede94513754ff056de4863ab4e400d13a8e306032571c35ab8247eaeb1a8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61140147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420fff707b05bfc3d1d7ef34551be4e1f4c3fa1a4ec842055fd6475542d4e588`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:26:06 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:26:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:26:08 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:26:08 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:26:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:51 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 22:26:51 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 22:26:51 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:26:52 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:26:52 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:26:52 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:28:34 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:28:35 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:28:35 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:28:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae05bd081a9f0ee433d4525b700165c67eff7e05f5e378c9cabaaf61171b6be9`  
		Last Modified: Mon, 09 Oct 2017 22:31:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad9df25103644f3e7b43cadd0a9278c65a72c484de6a093dbaded08280060d4`  
		Last Modified: Mon, 09 Oct 2017 22:31:57 GMT  
		Size: 10.5 MB (10499613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27c73cfc2f5ea6d5524d39c01e6ea9884fe29419adba82ab114c30b6a544d81`  
		Last Modified: Mon, 09 Oct 2017 22:31:54 GMT  
		Size: 2.0 MB (1953738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c042e89eb7201263c2760d92bd2f7933471f8008413949938e5ca29be105869`  
		Last Modified: Mon, 09 Oct 2017 22:31:53 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:cd9f13b8c62876602ff24e5c3a90ed679e5f7fdd7388e69eedb6977ef2520a16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62892506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d927209f455eb27bb7536f5f910fb1767a1536ccecfe2de671ac1b3175a9963`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:56:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:56:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:56:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:56:30 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:57:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:57:22 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 23:57:23 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 23:57:24 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:57:24 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 23:57:25 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:57:26 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 10 Oct 2017 00:00:23 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:00:25 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:00:26 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 00:00:27 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0231247d51ea8457973adb782b3af806375178bc0dc845902db144fe776ee`  
		Last Modified: Tue, 10 Oct 2017 00:07:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b80cb50c0e0c723b7be3036384dc37767648d2909c6e23fcb4e055d4e58a0d`  
		Last Modified: Tue, 10 Oct 2017 00:08:09 GMT  
		Size: 11.0 MB (11005563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a96de2ab545e806df9be3ffde1a7504c8fd81f4219e5b37a32b273e892e3ec`  
		Last Modified: Tue, 10 Oct 2017 00:08:01 GMT  
		Size: 2.0 MB (1957181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd03240c8192e885f3969be59e653e084c0bc065cbe5ed1cd52c6fca987f192`  
		Last Modified: Tue, 10 Oct 2017 00:07:59 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; 386

```console
$ docker pull httpd@sha256:bcff8eb1cddd47fd159d7e24f61f3f040da54ad1dd5918a1aefd5d915a665a95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71310413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7dfb52b51b02aa42465bf0cd5b3525c661a0e91f7ccacfc20356fe201b39010`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:21 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:45:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:45:22 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:46:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:48:00 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 23:49:36 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:49:37 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:49:37 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 23:49:37 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9aa7be071476d37cff056301c62793b40590e4b99225e2375546328e0ef09c`  
		Last Modified: Mon, 09 Oct 2017 23:53:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5148c9dcfe8564ce54f225bc977b8acb3b6913562374a3a369cc27a83f60793`  
		Last Modified: Mon, 09 Oct 2017 23:53:11 GMT  
		Size: 16.6 MB (16562548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342d9bc35977cee0edc2a1e3e52c257b7b66aa06df477da27d871f1ccd301fd9`  
		Last Modified: Mon, 09 Oct 2017 23:53:04 GMT  
		Size: 2.0 MB (1973563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01305ca5b4d04ba5773114b0a3df2fdff8c33dc6fb7caa3541bba6236559e127`  
		Last Modified: Mon, 09 Oct 2017 23:53:03 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; ppc64le

```console
$ docker pull httpd@sha256:f9ea87178ae1fc0073a6a4b104a8b5b11c42ffa513aed4e3c8271e15e6a1e6fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65708688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9818b16d2dff2cc47effe91f8dd70cad18d44e6fc2b00e07fc50c6b548e242a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:00:05 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 01:00:08 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:00:18 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 01:00:22 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 01:03:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:03:16 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 13 Oct 2017 01:02:26 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 01:02:28 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 01:02:31 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 01:08:48 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 01:08:51 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 01:09:02 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 01:09:05 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d745f81a07ca2345ac117f57d3fe9f0fe6ee16cde6dadac7e824cf7543c8089f`  
		Last Modified: Tue, 10 Oct 2017 01:29:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a70d0ea1cf3248da8e424a82db0b2a2fc2e88e62f69b5543549c2396f4555cd`  
		Last Modified: Tue, 10 Oct 2017 01:29:19 GMT  
		Size: 11.9 MB (11858909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717eded906b2cef3d20693ce7ad1d418b58b2b43a52bc43ee15e1a66b827e3b`  
		Last Modified: Fri, 13 Oct 2017 01:17:46 GMT  
		Size: 2.0 MB (2039551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc3d1aa4f5f535703f37122edca3bd800070581f4c95191eb200607860de533`  
		Last Modified: Fri, 13 Oct 2017 01:17:45 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; s390x

```console
$ docker pull httpd@sha256:cf4f476aaccb10f5d3b83f4f7762234a6d99546de4c4fe02171f16e3de4ad902
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66670493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5c522638a27e2acf72fcbce736c6a26b1190eafcc3fd2bfb0ac063d197c154`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:37 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:23:38 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:23:38 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:23:39 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:23:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:59 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 22:23:59 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 22:23:59 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:24:00 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:24:00 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:24:00 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:25:00 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:25:01 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:25:01 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:25:01 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69376e19590b2d5790d0bed6d6e3fb0067787852357440f646ec7915f830f9c4`  
		Last Modified: Mon, 09 Oct 2017 22:27:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183ca600949cbc43d4477e1050f62b4f4214302d41648b3b5e125cb2af8f3ee8`  
		Last Modified: Mon, 09 Oct 2017 22:27:54 GMT  
		Size: 11.8 MB (11794168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2196e927b49420c4aada53506ae29b5b503adb69ae894225cb0bb786d1297b1`  
		Last Modified: Mon, 09 Oct 2017 22:27:52 GMT  
		Size: 2.1 MB (2087002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e3294b200328b6cbb91c7104ad7badd0567fff06bcf194b888dafe5ffa4110`  
		Last Modified: Mon, 09 Oct 2017 22:27:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.34`

```console
$ docker pull httpd@sha256:6c2b65c1df2b500a2d26072475cbcbb7a2e0be2e849d63dcbea8e93709f95935
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
$ docker pull httpd@sha256:b2e10f37a9e8f825e9d7478842228b1c67095f6ce8dc119f11d4a189ec8fadbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66567966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c874ec3d374507b94a27571dbbef45d388cd34cd23dd1f34a5549319d3a37ea6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:14:44 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:14:45 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:14:46 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:14:46 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:15:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:15:11 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 12 Oct 2017 21:53:59 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 12 Oct 2017 21:53:59 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 12 Oct 2017 21:53:59 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 21:57:06 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 21:57:06 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:57:06 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 21:57:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d855de64a0b9fe72cca14050d60dcc006182cc07b8085c169e10f78ccc73156b`  
		Last Modified: Mon, 09 Oct 2017 23:20:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06abd57a0bcf9ee7193c2fd77c56ed707817e207027e8251e908ff8ef29ea75`  
		Last Modified: Mon, 09 Oct 2017 23:20:33 GMT  
		Size: 11.9 MB (11947309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3347463b0e16441c40f694fee751c82630b89c62c5b07f6a77c5257e35f42d`  
		Last Modified: Thu, 12 Oct 2017 22:02:59 GMT  
		Size: 2.0 MB (2025074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682c936073383b2556a3e5b038f69fa55d80197bec36819c2aa771194f50477b`  
		Last Modified: Thu, 12 Oct 2017 22:02:59 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; arm variant v5

```console
$ docker pull httpd@sha256:8b5272206f3fb2df9809c4b1dcf5f2ea80f1a5c02a07490594847897ca61d5cf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63828391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df70ed9a7fb6b51e2c0357858be27dc4a014c285622d9ea293bf7d3a545681c`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:59:23 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 21:59:23 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 21:59:24 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 21:59:24 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:00:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:00:03 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 12 Oct 2017 21:59:27 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 12 Oct 2017 21:59:27 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 12 Oct 2017 21:59:28 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:02:28 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:02:28 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:29 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:02:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92146de5d36af6ae58854b6e10b777d543de617c4dafe3175b9efb60ee00562`  
		Last Modified: Mon, 09 Oct 2017 22:05:21 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b60fe91c907313aaaf472182da45d296af422e4dabca1a5b76b2dd09b172acc`  
		Last Modified: Mon, 09 Oct 2017 22:05:25 GMT  
		Size: 10.9 MB (10924676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db03542fb83da4ecedc6813b4d41119358ab6f8a7bc8e6e9fddc3b6273113b4`  
		Last Modified: Thu, 12 Oct 2017 22:05:13 GMT  
		Size: 2.0 MB (2023334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9540a201fc3c1b759c13655bdd0d051530358f2c51d6dc6417f854eab79da2e`  
		Last Modified: Thu, 12 Oct 2017 22:05:12 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; arm variant v7

```console
$ docker pull httpd@sha256:af3dede94513754ff056de4863ab4e400d13a8e306032571c35ab8247eaeb1a8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61140147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420fff707b05bfc3d1d7ef34551be4e1f4c3fa1a4ec842055fd6475542d4e588`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:26:06 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:26:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:26:08 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:26:08 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:26:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:51 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 22:26:51 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 22:26:51 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:26:52 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:26:52 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:26:52 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:28:34 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:28:35 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:28:35 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:28:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae05bd081a9f0ee433d4525b700165c67eff7e05f5e378c9cabaaf61171b6be9`  
		Last Modified: Mon, 09 Oct 2017 22:31:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad9df25103644f3e7b43cadd0a9278c65a72c484de6a093dbaded08280060d4`  
		Last Modified: Mon, 09 Oct 2017 22:31:57 GMT  
		Size: 10.5 MB (10499613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27c73cfc2f5ea6d5524d39c01e6ea9884fe29419adba82ab114c30b6a544d81`  
		Last Modified: Mon, 09 Oct 2017 22:31:54 GMT  
		Size: 2.0 MB (1953738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c042e89eb7201263c2760d92bd2f7933471f8008413949938e5ca29be105869`  
		Last Modified: Mon, 09 Oct 2017 22:31:53 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:cd9f13b8c62876602ff24e5c3a90ed679e5f7fdd7388e69eedb6977ef2520a16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62892506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d927209f455eb27bb7536f5f910fb1767a1536ccecfe2de671ac1b3175a9963`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:56:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:56:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:56:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:56:30 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:57:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:57:22 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 23:57:23 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 23:57:24 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:57:24 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 23:57:25 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:57:26 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Tue, 10 Oct 2017 00:00:23 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:00:25 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:00:26 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 00:00:27 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0231247d51ea8457973adb782b3af806375178bc0dc845902db144fe776ee`  
		Last Modified: Tue, 10 Oct 2017 00:07:59 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b80cb50c0e0c723b7be3036384dc37767648d2909c6e23fcb4e055d4e58a0d`  
		Last Modified: Tue, 10 Oct 2017 00:08:09 GMT  
		Size: 11.0 MB (11005563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a96de2ab545e806df9be3ffde1a7504c8fd81f4219e5b37a32b273e892e3ec`  
		Last Modified: Tue, 10 Oct 2017 00:08:01 GMT  
		Size: 2.0 MB (1957181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd03240c8192e885f3969be59e653e084c0bc065cbe5ed1cd52c6fca987f192`  
		Last Modified: Tue, 10 Oct 2017 00:07:59 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; 386

```console
$ docker pull httpd@sha256:bcff8eb1cddd47fd159d7e24f61f3f040da54ad1dd5918a1aefd5d915a665a95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71310413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7dfb52b51b02aa42465bf0cd5b3525c661a0e91f7ccacfc20356fe201b39010`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:21 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:45:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:45:22 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:46:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:48:00 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 23:48:01 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 23:49:36 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:49:37 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:49:37 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 23:49:37 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9aa7be071476d37cff056301c62793b40590e4b99225e2375546328e0ef09c`  
		Last Modified: Mon, 09 Oct 2017 23:53:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5148c9dcfe8564ce54f225bc977b8acb3b6913562374a3a369cc27a83f60793`  
		Last Modified: Mon, 09 Oct 2017 23:53:11 GMT  
		Size: 16.6 MB (16562548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342d9bc35977cee0edc2a1e3e52c257b7b66aa06df477da27d871f1ccd301fd9`  
		Last Modified: Mon, 09 Oct 2017 23:53:04 GMT  
		Size: 2.0 MB (1973563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01305ca5b4d04ba5773114b0a3df2fdff8c33dc6fb7caa3541bba6236559e127`  
		Last Modified: Mon, 09 Oct 2017 23:53:03 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; ppc64le

```console
$ docker pull httpd@sha256:f9ea87178ae1fc0073a6a4b104a8b5b11c42ffa513aed4e3c8271e15e6a1e6fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65708688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9818b16d2dff2cc47effe91f8dd70cad18d44e6fc2b00e07fc50c6b548e242a`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:00:05 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 01:00:08 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:00:18 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 01:00:22 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 01:03:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:03:16 GMT
ENV HTTPD_VERSION=2.2.34
# Fri, 13 Oct 2017 01:02:26 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 01:02:28 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 01:02:31 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 01:08:48 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 01:08:51 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 01:09:02 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 01:09:05 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d745f81a07ca2345ac117f57d3fe9f0fe6ee16cde6dadac7e824cf7543c8089f`  
		Last Modified: Tue, 10 Oct 2017 01:29:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a70d0ea1cf3248da8e424a82db0b2a2fc2e88e62f69b5543549c2396f4555cd`  
		Last Modified: Tue, 10 Oct 2017 01:29:19 GMT  
		Size: 11.9 MB (11858909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717eded906b2cef3d20693ce7ad1d418b58b2b43a52bc43ee15e1a66b827e3b`  
		Last Modified: Fri, 13 Oct 2017 01:17:46 GMT  
		Size: 2.0 MB (2039551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc3d1aa4f5f535703f37122edca3bd800070581f4c95191eb200607860de533`  
		Last Modified: Fri, 13 Oct 2017 01:17:45 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; s390x

```console
$ docker pull httpd@sha256:cf4f476aaccb10f5d3b83f4f7762234a6d99546de4c4fe02171f16e3de4ad902
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66670493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5c522638a27e2acf72fcbce736c6a26b1190eafcc3fd2bfb0ac063d197c154`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:37 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:23:38 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:23:38 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:23:39 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:23:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:59 GMT
ENV HTTPD_VERSION=2.2.34
# Mon, 09 Oct 2017 22:23:59 GMT
ENV HTTPD_SHA1=829206394e238af0b800fc78d19c74ee466ecb23
# Mon, 09 Oct 2017 22:23:59 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:24:00 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:24:00 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2
# Mon, 09 Oct 2017 22:24:00 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.2.34.tar.bz2.asc
# Mon, 09 Oct 2017 22:25:00 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:25:01 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:25:01 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:25:01 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69376e19590b2d5790d0bed6d6e3fb0067787852357440f646ec7915f830f9c4`  
		Last Modified: Mon, 09 Oct 2017 22:27:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183ca600949cbc43d4477e1050f62b4f4214302d41648b3b5e125cb2af8f3ee8`  
		Last Modified: Mon, 09 Oct 2017 22:27:54 GMT  
		Size: 11.8 MB (11794168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2196e927b49420c4aada53506ae29b5b503adb69ae894225cb0bb786d1297b1`  
		Last Modified: Mon, 09 Oct 2017 22:27:52 GMT  
		Size: 2.1 MB (2087002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e3294b200328b6cbb91c7104ad7badd0567fff06bcf194b888dafe5ffa4110`  
		Last Modified: Mon, 09 Oct 2017 22:27:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.34-alpine`

```console
$ docker pull httpd@sha256:425eb0dd0d69270b36a23b65bda9009d25244088881e30f4a2741d55922a9489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.2.34-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:195089b3b6dd9faee02a5e7e262bef7703e35998352d0b16b39d370c914bb548
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24388912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcc84009984eff9c36818c2d3c44aea00cccf9064fc68d584ec31db298b2fb4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:08:32 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 19 Sep 2017 01:08:32 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 19 Sep 2017 01:08:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 01:08:33 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 19 Sep 2017 01:08:33 GMT
WORKDIR /usr/local/apache2
# Tue, 19 Sep 2017 01:08:33 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 12 Oct 2017 21:57:23 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 12 Oct 2017 21:57:24 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 12 Oct 2017 21:57:24 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 21:58:15 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		wget 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 12 Oct 2017 21:58:15 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:58:21 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 21:58:21 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78738a13d021efb9c88db20551ecf95a370bc5ee1ca2e80b1019836cdfeb2a58`  
		Last Modified: Tue, 19 Sep 2017 01:12:59 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67aa8520ead86e87be310b8b80f2ce04407a7929148e60c2c39f78185e63de5`  
		Last Modified: Tue, 19 Sep 2017 01:12:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490a275d3d55301ddc67f228a72af3326d9b599a46f0a1f825e7b2d2e6e1105`  
		Last Modified: Thu, 12 Oct 2017 22:03:23 GMT  
		Size: 22.0 MB (22002195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3082f56ccdba7571c0195d9c168d631c8f26fe5b0e968516fb0cbfb59a97645c`  
		Last Modified: Thu, 12 Oct 2017 22:03:18 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:425eb0dd0d69270b36a23b65bda9009d25244088881e30f4a2741d55922a9489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:195089b3b6dd9faee02a5e7e262bef7703e35998352d0b16b39d370c914bb548
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24388912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcc84009984eff9c36818c2d3c44aea00cccf9064fc68d584ec31db298b2fb4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:08:32 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 19 Sep 2017 01:08:32 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 19 Sep 2017 01:08:32 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 01:08:33 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 19 Sep 2017 01:08:33 GMT
WORKDIR /usr/local/apache2
# Tue, 19 Sep 2017 01:08:33 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 12 Oct 2017 21:57:23 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 12 Oct 2017 21:57:24 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 12 Oct 2017 21:57:24 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 21:58:15 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		wget 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 12 Oct 2017 21:58:15 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:58:21 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 21:58:21 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78738a13d021efb9c88db20551ecf95a370bc5ee1ca2e80b1019836cdfeb2a58`  
		Last Modified: Tue, 19 Sep 2017 01:12:59 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67aa8520ead86e87be310b8b80f2ce04407a7929148e60c2c39f78185e63de5`  
		Last Modified: Tue, 19 Sep 2017 01:12:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490a275d3d55301ddc67f228a72af3326d9b599a46f0a1f825e7b2d2e6e1105`  
		Last Modified: Thu, 12 Oct 2017 22:03:23 GMT  
		Size: 22.0 MB (22002195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3082f56ccdba7571c0195d9c168d631c8f26fe5b0e968516fb0cbfb59a97645c`  
		Last Modified: Thu, 12 Oct 2017 22:03:18 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:99e5ab0c67f7d76f7c50235d39ec69a3893d093bf8d34ac114a09fcdc702f6e1
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
$ docker pull httpd@sha256:dca0354b01df5d96433d7319fea5d0d19f33545a8c99918d560537072fe3cb69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68879773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24f66af34b4d76558f7743109e2476b6325fcf6cc167c6e1e07cd121a22b341`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:16:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:16:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:16:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:16:49 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:16:49 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:16:50 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:16:51 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:17:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:29 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 21:58:39 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:00:15 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:00:16 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:00:16 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:00:16 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dee1a596b5f37602a1add0f54536b2fc4556aec98fcc6d67526775c494a2433`  
		Last Modified: Mon, 09 Oct 2017 21:37:11 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86144720cb98e986315d7396d0e8216d37a374a6d196c6064635aea99fc623b7`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23273e61b31a62e632a235b46342f1ec3ff3f01e393152b8cfeacbaa3f204e3d`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011f98a84808c6b7253e51cceb2e99e8aa017d8095fe816cfc4c8adecfe59770`  
		Last Modified: Mon, 09 Oct 2017 23:21:01 GMT  
		Size: 13.4 MB (13366088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771652f83cbc06910616225f29b84ee040f5afcecdc40873ebde923f8b37bb18`  
		Last Modified: Thu, 12 Oct 2017 22:03:42 GMT  
		Size: 2.9 MB (2917546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0036b8043a1c2563fe1805b68bdc2f5acc32006c2dd9b17d43ab0faafcdd05ec`  
		Last Modified: Thu, 12 Oct 2017 22:03:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v5

```console
$ docker pull httpd@sha256:dcdfcf2b2bed1a55c3233818ee848d6948444ab0c8cfa5c3d73fa2f370ea98a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65844559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3791747c8c0f7ada0016a998dc63630c1d15bc9a02463cb6d85c30b8d9ad8630`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:01:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:01:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:01:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:01:58 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:01:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:01:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:01:59 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:02:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:02:44 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:02:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:05:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:05:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:03 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:05:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87781958359825a8d834cb84cc6bcdc30f6ca1d26a5dadc9d045fb98d687c9fc`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b3ba89b61900c6dd17b572114353498bc20164dd0431872852e9f7e57a9784`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98cbb3c645065602ab251fa7eea57ef4a42b45c14832d4ce58f48e041de8bcf`  
		Last Modified: Mon, 09 Oct 2017 22:05:36 GMT  
		Size: 12.0 MB (12034438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9081d567f3f551dd7887a4fc7d9acada2b11627876095b7adbcf2e051b88386`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 2.9 MB (2929184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4732e880ad98e066ccac1de65289d75b9fed56cbef67e8ce2e88a8e1e744955`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v7

```console
$ docker pull httpd@sha256:5a068ae3e04965691f32633e724ad3d2a3e62e6ed832db77064c7fd08c70d35e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63024881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645a5c7fe3ab1216dcdd6dd429d607befb1112ea12b0341a234bd2422a8a9a1b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:28:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:28:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:28:44 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:28:44 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:28:44 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:28:45 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:28:46 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:29:28 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:31:39 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:31:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:31:40 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:31:40 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5dc2631ae77726929345eddda76360e3f3ae72c14d96eaf4f9741505f1d43c`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0aa927b707bc804deb015db9bb93949e4ce2ead5a9371e8acb168d1222bb97`  
		Last Modified: Mon, 09 Oct 2017 22:32:08 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a429a090a54b231208a9b8c5240ea8112562558ef988d24aef26f3f790e24`  
		Last Modified: Mon, 09 Oct 2017 22:32:14 GMT  
		Size: 11.5 MB (11545699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c969512b52a5eac6d47778d1dfece7d20f49b0ba1c15a3539ad2b7459b5f933b`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 2.8 MB (2791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c69e0fb77111d7c1b3c3563ead47aa4ab6a7dea4c4f29d5b94e18fb67c936c8`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1074ae37824b08dda9af5ac79c05a6da8fc3bc68dfd4c055275cb596a7cb686b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64771407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502df2470046cc809cad7c2a657b468ac2acba4eda35b92e925d4e20cb056871`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:50 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 00:00:51 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:00:55 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 00:00:56 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 00:00:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 00:00:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 00:01:03 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 00:02:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_VERSION=2.4.28
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Tue, 10 Oct 2017 00:02:15 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:16 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:02:17 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:18 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:07:23 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:07:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:07:24 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 00:07:25 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8b95d71e4e4ed22aef9737f713281846d77a741efef8786d5f5c54afd2bc29`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406c915b37de2459025255b3ec1726bc01435881a5f803e01ebff97516922e2a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740b64fda9433efc43a77301d735cf9391850ba8c984a975cd952c5f5803e33e`  
		Last Modified: Tue, 10 Oct 2017 00:08:50 GMT  
		Size: 12.1 MB (12081347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ff9017c02c7b21053503b6e610939d16129a964f1b7eee44b41d3de983686`  
		Last Modified: Tue, 10 Oct 2017 00:08:43 GMT  
		Size: 2.8 MB (2759734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a287a081810d335bed7497b5419dd48b9c08ea0c93092735edae75bc1087fa0a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; 386

```console
$ docker pull httpd@sha256:f14020f377dcf48bd152256a5b7ec669190c72bba79db74dbcebdc1a23944463
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73521370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b39bd5c91cb6a372bdcb6a935006a3724033d12896faeec1d2b1a0a007422d1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:49:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:49:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:49:48 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:49:48 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:49:48 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:49:48 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:49:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:50:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:52:46 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:52:47 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e389cd9540df4f514fc89b34b792c561eb664b4628dc1e617655e341953c5d66`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1866283e079b05535b4f247b3c6d57a6ccb10908cbc5ff48e785fb173ab395`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baad362d1e5409671f8cb5b34f1b40813f0ba5ba8a04f427d9916d17c791a239`  
		Last Modified: Mon, 09 Oct 2017 23:53:30 GMT  
		Size: 18.0 MB (17969384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76b2db8abca19ff1b2194e744c5c4c7970a971900684bbefcefcfea873c48`  
		Last Modified: Mon, 09 Oct 2017 23:53:28 GMT  
		Size: 2.8 MB (2777119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c231271bfda655fc23d4beeb363b81bde7d90d1d0af428bcac7be20f15bd2c3`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; ppc64le

```console
$ docker pull httpd@sha256:a458de60e767ddf44f910bee79e36a13476fa3059e455dc44ac6a29fd1725c5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67749003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f24d672165ee84afede80c1fee0ed80448db55c2e91a214d9f168ff1a0f402c`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:13:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 01:13:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:13:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 01:13:24 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 01:13:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 01:13:32 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 01:13:40 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 01:17:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:17:39 GMT
ENV HTTPD_VERSION=2.4.28
# Fri, 13 Oct 2017 01:09:27 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Fri, 13 Oct 2017 01:09:29 GMT
ENV HTTPD_PATCHES=
# Fri, 13 Oct 2017 01:09:32 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 01:17:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 01:17:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 13 Oct 2017 01:17:28 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 01:17:31 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5284e00e8f502ebf3749e0f793867db2c6e00d0618a071c942f2d55efb0d83e1`  
		Last Modified: Tue, 10 Oct 2017 01:29:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb6a483d2888033dc0f0f7c492eab355648fc3285e692ca5620d4e5f19f664f`  
		Last Modified: Tue, 10 Oct 2017 01:29:34 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d242abaa5f11e7ce559161c51ebfc95d6631bac7d6bfe159994b5868ffcd5d2`  
		Last Modified: Tue, 10 Oct 2017 01:29:38 GMT  
		Size: 13.0 MB (13036427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98ae419140bd323c78ee84225692e47f118065fa19908bff08ce5c9f38c1a9a`  
		Last Modified: Fri, 13 Oct 2017 01:18:01 GMT  
		Size: 2.9 MB (2901785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c075a41694303fae8f5a046a0dce65d6e0c3d8d6d091932a53e57412cd0d24b1`  
		Last Modified: Fri, 13 Oct 2017 01:18:00 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; s390x

```console
$ docker pull httpd@sha256:3b6a38b1e1d7a886e7651f17b28dd7fadd8a2efef8ca66de0355dd24beaca68e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb6c2525e7de43a59b74c0be622e4fbe0c15781c2d478c80e6bf349e24c616e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:25:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:25:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:25:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:25:12 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:25:12 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:25:12 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:25:13 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:25:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:27:32 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:27:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:27:32 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:27:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb40f78ad84854b825a5bb4be4ff02c743ef29084a21c454098452027ececc`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf8204313ff55d04e061e6d7b41358db31c2b6ab1a2a20d3da35a9c564ddf82`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83931eca269058b77bd2172a5a6898347d4dd233eac42105ff6a00a7f93ff608`  
		Last Modified: Mon, 09 Oct 2017 22:28:08 GMT  
		Size: 13.0 MB (13004860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb721c8ec3755815d2fefeec0afe6046372273292c3ecb463ae85b0a636b1072`  
		Last Modified: Mon, 09 Oct 2017 22:28:06 GMT  
		Size: 3.0 MB (3045018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c143b08f039849d0464a5f23c9e5da7362942acdb677dd7c0388a548144e3b`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.28`

```console
$ docker pull httpd@sha256:99e5ab0c67f7d76f7c50235d39ec69a3893d093bf8d34ac114a09fcdc702f6e1
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

### `httpd:2.4.28` - linux; amd64

```console
$ docker pull httpd@sha256:dca0354b01df5d96433d7319fea5d0d19f33545a8c99918d560537072fe3cb69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68879773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24f66af34b4d76558f7743109e2476b6325fcf6cc167c6e1e07cd121a22b341`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:16:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:16:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:16:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:16:49 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:16:49 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:16:50 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:16:51 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:17:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:29 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 21:58:39 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:00:15 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:00:16 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:00:16 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:00:16 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dee1a596b5f37602a1add0f54536b2fc4556aec98fcc6d67526775c494a2433`  
		Last Modified: Mon, 09 Oct 2017 21:37:11 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86144720cb98e986315d7396d0e8216d37a374a6d196c6064635aea99fc623b7`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23273e61b31a62e632a235b46342f1ec3ff3f01e393152b8cfeacbaa3f204e3d`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011f98a84808c6b7253e51cceb2e99e8aa017d8095fe816cfc4c8adecfe59770`  
		Last Modified: Mon, 09 Oct 2017 23:21:01 GMT  
		Size: 13.4 MB (13366088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771652f83cbc06910616225f29b84ee040f5afcecdc40873ebde923f8b37bb18`  
		Last Modified: Thu, 12 Oct 2017 22:03:42 GMT  
		Size: 2.9 MB (2917546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0036b8043a1c2563fe1805b68bdc2f5acc32006c2dd9b17d43ab0faafcdd05ec`  
		Last Modified: Thu, 12 Oct 2017 22:03:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.28` - linux; arm variant v5

```console
$ docker pull httpd@sha256:dcdfcf2b2bed1a55c3233818ee848d6948444ab0c8cfa5c3d73fa2f370ea98a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65844559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3791747c8c0f7ada0016a998dc63630c1d15bc9a02463cb6d85c30b8d9ad8630`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:01:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:01:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:01:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:01:58 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:01:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:01:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:01:59 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:02:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:02:44 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:02:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:05:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:05:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:03 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:05:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87781958359825a8d834cb84cc6bcdc30f6ca1d26a5dadc9d045fb98d687c9fc`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b3ba89b61900c6dd17b572114353498bc20164dd0431872852e9f7e57a9784`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98cbb3c645065602ab251fa7eea57ef4a42b45c14832d4ce58f48e041de8bcf`  
		Last Modified: Mon, 09 Oct 2017 22:05:36 GMT  
		Size: 12.0 MB (12034438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9081d567f3f551dd7887a4fc7d9acada2b11627876095b7adbcf2e051b88386`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 2.9 MB (2929184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4732e880ad98e066ccac1de65289d75b9fed56cbef67e8ce2e88a8e1e744955`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.28` - linux; arm variant v7

```console
$ docker pull httpd@sha256:5a068ae3e04965691f32633e724ad3d2a3e62e6ed832db77064c7fd08c70d35e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63024881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645a5c7fe3ab1216dcdd6dd429d607befb1112ea12b0341a234bd2422a8a9a1b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:28:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:28:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:28:44 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:28:44 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:28:44 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:28:45 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:28:46 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:29:28 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:31:39 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:31:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:31:40 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:31:40 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5dc2631ae77726929345eddda76360e3f3ae72c14d96eaf4f9741505f1d43c`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0aa927b707bc804deb015db9bb93949e4ce2ead5a9371e8acb168d1222bb97`  
		Last Modified: Mon, 09 Oct 2017 22:32:08 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a429a090a54b231208a9b8c5240ea8112562558ef988d24aef26f3f790e24`  
		Last Modified: Mon, 09 Oct 2017 22:32:14 GMT  
		Size: 11.5 MB (11545699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c969512b52a5eac6d47778d1dfece7d20f49b0ba1c15a3539ad2b7459b5f933b`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 2.8 MB (2791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c69e0fb77111d7c1b3c3563ead47aa4ab6a7dea4c4f29d5b94e18fb67c936c8`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.28` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1074ae37824b08dda9af5ac79c05a6da8fc3bc68dfd4c055275cb596a7cb686b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64771407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502df2470046cc809cad7c2a657b468ac2acba4eda35b92e925d4e20cb056871`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:50 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 00:00:51 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:00:55 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 00:00:56 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 00:00:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 00:00:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 00:01:03 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 00:02:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_VERSION=2.4.28
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Tue, 10 Oct 2017 00:02:15 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:16 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:02:17 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:18 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:07:23 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:07:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:07:24 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 00:07:25 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8b95d71e4e4ed22aef9737f713281846d77a741efef8786d5f5c54afd2bc29`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406c915b37de2459025255b3ec1726bc01435881a5f803e01ebff97516922e2a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740b64fda9433efc43a77301d735cf9391850ba8c984a975cd952c5f5803e33e`  
		Last Modified: Tue, 10 Oct 2017 00:08:50 GMT  
		Size: 12.1 MB (12081347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ff9017c02c7b21053503b6e610939d16129a964f1b7eee44b41d3de983686`  
		Last Modified: Tue, 10 Oct 2017 00:08:43 GMT  
		Size: 2.8 MB (2759734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a287a081810d335bed7497b5419dd48b9c08ea0c93092735edae75bc1087fa0a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.28` - linux; 386

```console
$ docker pull httpd@sha256:f14020f377dcf48bd152256a5b7ec669190c72bba79db74dbcebdc1a23944463
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73521370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b39bd5c91cb6a372bdcb6a935006a3724033d12896faeec1d2b1a0a007422d1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:49:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:49:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:49:48 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:49:48 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:49:48 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:49:48 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:49:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:50:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:52:46 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:52:47 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e389cd9540df4f514fc89b34b792c561eb664b4628dc1e617655e341953c5d66`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1866283e079b05535b4f247b3c6d57a6ccb10908cbc5ff48e785fb173ab395`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baad362d1e5409671f8cb5b34f1b40813f0ba5ba8a04f427d9916d17c791a239`  
		Last Modified: Mon, 09 Oct 2017 23:53:30 GMT  
		Size: 18.0 MB (17969384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76b2db8abca19ff1b2194e744c5c4c7970a971900684bbefcefcfea873c48`  
		Last Modified: Mon, 09 Oct 2017 23:53:28 GMT  
		Size: 2.8 MB (2777119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c231271bfda655fc23d4beeb363b81bde7d90d1d0af428bcac7be20f15bd2c3`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.28` - linux; ppc64le

```console
$ docker pull httpd@sha256:a458de60e767ddf44f910bee79e36a13476fa3059e455dc44ac6a29fd1725c5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67749003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f24d672165ee84afede80c1fee0ed80448db55c2e91a214d9f168ff1a0f402c`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:13:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 01:13:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:13:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 01:13:24 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 01:13:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 01:13:32 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 01:13:40 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 01:17:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:17:39 GMT
ENV HTTPD_VERSION=2.4.28
# Fri, 13 Oct 2017 01:09:27 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Fri, 13 Oct 2017 01:09:29 GMT
ENV HTTPD_PATCHES=
# Fri, 13 Oct 2017 01:09:32 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 01:17:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 01:17:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 13 Oct 2017 01:17:28 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 01:17:31 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5284e00e8f502ebf3749e0f793867db2c6e00d0618a071c942f2d55efb0d83e1`  
		Last Modified: Tue, 10 Oct 2017 01:29:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb6a483d2888033dc0f0f7c492eab355648fc3285e692ca5620d4e5f19f664f`  
		Last Modified: Tue, 10 Oct 2017 01:29:34 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d242abaa5f11e7ce559161c51ebfc95d6631bac7d6bfe159994b5868ffcd5d2`  
		Last Modified: Tue, 10 Oct 2017 01:29:38 GMT  
		Size: 13.0 MB (13036427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98ae419140bd323c78ee84225692e47f118065fa19908bff08ce5c9f38c1a9a`  
		Last Modified: Fri, 13 Oct 2017 01:18:01 GMT  
		Size: 2.9 MB (2901785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c075a41694303fae8f5a046a0dce65d6e0c3d8d6d091932a53e57412cd0d24b1`  
		Last Modified: Fri, 13 Oct 2017 01:18:00 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.28` - linux; s390x

```console
$ docker pull httpd@sha256:3b6a38b1e1d7a886e7651f17b28dd7fadd8a2efef8ca66de0355dd24beaca68e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb6c2525e7de43a59b74c0be622e4fbe0c15781c2d478c80e6bf349e24c616e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:25:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:25:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:25:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:25:12 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:25:12 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:25:12 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:25:13 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:25:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:27:32 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:27:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:27:32 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:27:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb40f78ad84854b825a5bb4be4ff02c743ef29084a21c454098452027ececc`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf8204313ff55d04e061e6d7b41358db31c2b6ab1a2a20d3da35a9c564ddf82`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83931eca269058b77bd2172a5a6898347d4dd233eac42105ff6a00a7f93ff608`  
		Last Modified: Mon, 09 Oct 2017 22:28:08 GMT  
		Size: 13.0 MB (13004860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb721c8ec3755815d2fefeec0afe6046372273292c3ecb463ae85b0a636b1072`  
		Last Modified: Mon, 09 Oct 2017 22:28:06 GMT  
		Size: 3.0 MB (3045018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c143b08f039849d0464a5f23c9e5da7362942acdb677dd7c0388a548144e3b`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.28-alpine`

```console
$ docker pull httpd@sha256:20a8a3b9d48aba79e2732e5d60c1728aee1a60a63899c0dabab9efa8636cb61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.4.28-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:1f8afc5035e0f4fee5410a9ceff9b8caae1ab041045a135fb39c5d825c3e706e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29162426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe26194c0b94166a01e9ba65d7341d2d7eae9a968b314cfac1599a2d7cf8b9ae`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:11:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 19 Sep 2017 01:11:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 19 Sep 2017 01:11:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 01:11:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 19 Sep 2017 01:11:28 GMT
WORKDIR /usr/local/apache2
# Wed, 04 Oct 2017 22:01:15 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:00:35 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:00:36 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:00:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:02:27 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 12 Oct 2017 22:02:31 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:32 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:02:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb161ff6d5f07bce6362bac698cb5c92994c2c6c3932ef7a19c8b71b855caa1`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d1f55c023a4ab70f6a8138bcf8ea33fcf38d743fa9dbe800a65bd9f20a687e`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4579cbb02cd3675c0ef9ff6cf7066b5c1dea4022d1b983082660d854a53d25`  
		Last Modified: Thu, 12 Oct 2017 22:04:29 GMT  
		Size: 27.2 MB (27170334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd3ea5ced8b40cbd0624676c938306f6fb49cce3ac3d1362e62ef29a17c1108`  
		Last Modified: Thu, 12 Oct 2017 22:04:24 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:20a8a3b9d48aba79e2732e5d60c1728aee1a60a63899c0dabab9efa8636cb61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:1f8afc5035e0f4fee5410a9ceff9b8caae1ab041045a135fb39c5d825c3e706e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29162426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe26194c0b94166a01e9ba65d7341d2d7eae9a968b314cfac1599a2d7cf8b9ae`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:11:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 19 Sep 2017 01:11:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 19 Sep 2017 01:11:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 01:11:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 19 Sep 2017 01:11:28 GMT
WORKDIR /usr/local/apache2
# Wed, 04 Oct 2017 22:01:15 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:00:35 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:00:36 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:00:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:02:27 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 12 Oct 2017 22:02:31 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:32 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:02:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb161ff6d5f07bce6362bac698cb5c92994c2c6c3932ef7a19c8b71b855caa1`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d1f55c023a4ab70f6a8138bcf8ea33fcf38d743fa9dbe800a65bd9f20a687e`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4579cbb02cd3675c0ef9ff6cf7066b5c1dea4022d1b983082660d854a53d25`  
		Last Modified: Thu, 12 Oct 2017 22:04:29 GMT  
		Size: 27.2 MB (27170334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd3ea5ced8b40cbd0624676c938306f6fb49cce3ac3d1362e62ef29a17c1108`  
		Last Modified: Thu, 12 Oct 2017 22:04:24 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:20a8a3b9d48aba79e2732e5d60c1728aee1a60a63899c0dabab9efa8636cb61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:1f8afc5035e0f4fee5410a9ceff9b8caae1ab041045a135fb39c5d825c3e706e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29162426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe26194c0b94166a01e9ba65d7341d2d7eae9a968b314cfac1599a2d7cf8b9ae`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:11:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 19 Sep 2017 01:11:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 19 Sep 2017 01:11:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 01:11:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 19 Sep 2017 01:11:28 GMT
WORKDIR /usr/local/apache2
# Wed, 04 Oct 2017 22:01:15 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:00:35 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:00:36 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:00:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:02:27 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 12 Oct 2017 22:02:31 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:32 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:02:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb161ff6d5f07bce6362bac698cb5c92994c2c6c3932ef7a19c8b71b855caa1`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d1f55c023a4ab70f6a8138bcf8ea33fcf38d743fa9dbe800a65bd9f20a687e`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4579cbb02cd3675c0ef9ff6cf7066b5c1dea4022d1b983082660d854a53d25`  
		Last Modified: Thu, 12 Oct 2017 22:04:29 GMT  
		Size: 27.2 MB (27170334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd3ea5ced8b40cbd0624676c938306f6fb49cce3ac3d1362e62ef29a17c1108`  
		Last Modified: Thu, 12 Oct 2017 22:04:24 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:20a8a3b9d48aba79e2732e5d60c1728aee1a60a63899c0dabab9efa8636cb61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

```console
$ docker pull httpd@sha256:1f8afc5035e0f4fee5410a9ceff9b8caae1ab041045a135fb39c5d825c3e706e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29162426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe26194c0b94166a01e9ba65d7341d2d7eae9a968b314cfac1599a2d7cf8b9ae`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:11:27 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 19 Sep 2017 01:11:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 19 Sep 2017 01:11:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 01:11:28 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 19 Sep 2017 01:11:28 GMT
WORKDIR /usr/local/apache2
# Wed, 04 Oct 2017 22:01:15 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:00:35 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:00:36 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:00:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:02:27 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 12 Oct 2017 22:02:31 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:02:32 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:02:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb161ff6d5f07bce6362bac698cb5c92994c2c6c3932ef7a19c8b71b855caa1`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d1f55c023a4ab70f6a8138bcf8ea33fcf38d743fa9dbe800a65bd9f20a687e`  
		Last Modified: Tue, 19 Sep 2017 01:13:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4579cbb02cd3675c0ef9ff6cf7066b5c1dea4022d1b983082660d854a53d25`  
		Last Modified: Thu, 12 Oct 2017 22:04:29 GMT  
		Size: 27.2 MB (27170334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd3ea5ced8b40cbd0624676c938306f6fb49cce3ac3d1362e62ef29a17c1108`  
		Last Modified: Thu, 12 Oct 2017 22:04:24 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:99e5ab0c67f7d76f7c50235d39ec69a3893d093bf8d34ac114a09fcdc702f6e1
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
$ docker pull httpd@sha256:dca0354b01df5d96433d7319fea5d0d19f33545a8c99918d560537072fe3cb69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68879773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24f66af34b4d76558f7743109e2476b6325fcf6cc167c6e1e07cd121a22b341`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:16:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:16:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:16:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:16:49 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:16:49 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:16:50 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:16:51 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:17:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:29 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 21:58:39 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 21:58:39 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:00:15 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:00:16 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:00:16 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:00:16 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dee1a596b5f37602a1add0f54536b2fc4556aec98fcc6d67526775c494a2433`  
		Last Modified: Mon, 09 Oct 2017 21:37:11 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86144720cb98e986315d7396d0e8216d37a374a6d196c6064635aea99fc623b7`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23273e61b31a62e632a235b46342f1ec3ff3f01e393152b8cfeacbaa3f204e3d`  
		Last Modified: Mon, 09 Oct 2017 23:20:57 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011f98a84808c6b7253e51cceb2e99e8aa017d8095fe816cfc4c8adecfe59770`  
		Last Modified: Mon, 09 Oct 2017 23:21:01 GMT  
		Size: 13.4 MB (13366088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771652f83cbc06910616225f29b84ee040f5afcecdc40873ebde923f8b37bb18`  
		Last Modified: Thu, 12 Oct 2017 22:03:42 GMT  
		Size: 2.9 MB (2917546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0036b8043a1c2563fe1805b68bdc2f5acc32006c2dd9b17d43ab0faafcdd05ec`  
		Last Modified: Thu, 12 Oct 2017 22:03:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v5

```console
$ docker pull httpd@sha256:dcdfcf2b2bed1a55c3233818ee848d6948444ab0c8cfa5c3d73fa2f370ea98a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65844559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3791747c8c0f7ada0016a998dc63630c1d15bc9a02463cb6d85c30b8d9ad8630`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:01:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:01:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:01:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:01:58 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:01:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:01:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:01:59 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:02:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:02:44 GMT
ENV HTTPD_VERSION=2.4.28
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Thu, 12 Oct 2017 22:02:49 GMT
ENV HTTPD_PATCHES=
# Thu, 12 Oct 2017 22:02:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 12 Oct 2017 22:05:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Oct 2017 22:05:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 12 Oct 2017 22:05:03 GMT
EXPOSE 80/tcp
# Thu, 12 Oct 2017 22:05:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87781958359825a8d834cb84cc6bcdc30f6ca1d26a5dadc9d045fb98d687c9fc`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b3ba89b61900c6dd17b572114353498bc20164dd0431872852e9f7e57a9784`  
		Last Modified: Mon, 09 Oct 2017 22:05:32 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98cbb3c645065602ab251fa7eea57ef4a42b45c14832d4ce58f48e041de8bcf`  
		Last Modified: Mon, 09 Oct 2017 22:05:36 GMT  
		Size: 12.0 MB (12034438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9081d567f3f551dd7887a4fc7d9acada2b11627876095b7adbcf2e051b88386`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 2.9 MB (2929184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4732e880ad98e066ccac1de65289d75b9fed56cbef67e8ce2e88a8e1e744955`  
		Last Modified: Thu, 12 Oct 2017 22:05:23 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v7

```console
$ docker pull httpd@sha256:5a068ae3e04965691f32633e724ad3d2a3e62e6ed832db77064c7fd08c70d35e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63024881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645a5c7fe3ab1216dcdd6dd429d607befb1112ea12b0341a234bd2422a8a9a1b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:28:42 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:28:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:28:44 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:28:44 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:28:44 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:28:45 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:28:46 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:29:28 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:29 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:29:30 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:31:39 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:31:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:31:40 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:31:40 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5dc2631ae77726929345eddda76360e3f3ae72c14d96eaf4f9741505f1d43c`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0aa927b707bc804deb015db9bb93949e4ce2ead5a9371e8acb168d1222bb97`  
		Last Modified: Mon, 09 Oct 2017 22:32:08 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a429a090a54b231208a9b8c5240ea8112562558ef988d24aef26f3f790e24`  
		Last Modified: Mon, 09 Oct 2017 22:32:14 GMT  
		Size: 11.5 MB (11545699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c969512b52a5eac6d47778d1dfece7d20f49b0ba1c15a3539ad2b7459b5f933b`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 2.8 MB (2791831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c69e0fb77111d7c1b3c3563ead47aa4ab6a7dea4c4f29d5b94e18fb67c936c8`  
		Last Modified: Mon, 09 Oct 2017 22:32:09 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1074ae37824b08dda9af5ac79c05a6da8fc3bc68dfd4c055275cb596a7cb686b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64771407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502df2470046cc809cad7c2a657b468ac2acba4eda35b92e925d4e20cb056871`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:50 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 00:00:51 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:00:55 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 00:00:56 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 00:00:58 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 00:00:59 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 00:01:03 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 00:02:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_VERSION=2.4.28
# Tue, 10 Oct 2017 00:02:14 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Tue, 10 Oct 2017 00:02:15 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:16 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:02:17 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Tue, 10 Oct 2017 00:02:18 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Tue, 10 Oct 2017 00:07:23 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:07:23 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:07:24 GMT
EXPOSE 80/tcp
# Tue, 10 Oct 2017 00:07:25 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8b95d71e4e4ed22aef9737f713281846d77a741efef8786d5f5c54afd2bc29`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406c915b37de2459025255b3ec1726bc01435881a5f803e01ebff97516922e2a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740b64fda9433efc43a77301d735cf9391850ba8c984a975cd952c5f5803e33e`  
		Last Modified: Tue, 10 Oct 2017 00:08:50 GMT  
		Size: 12.1 MB (12081347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ff9017c02c7b21053503b6e610939d16129a964f1b7eee44b41d3de983686`  
		Last Modified: Tue, 10 Oct 2017 00:08:43 GMT  
		Size: 2.8 MB (2759734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a287a081810d335bed7497b5419dd48b9c08ea0c93092735edae75bc1087fa0a`  
		Last Modified: Tue, 10 Oct 2017 00:08:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; 386

```console
$ docker pull httpd@sha256:f14020f377dcf48bd152256a5b7ec669190c72bba79db74dbcebdc1a23944463
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73521370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b39bd5c91cb6a372bdcb6a935006a3724033d12896faeec1d2b1a0a007422d1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:49:47 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 23:49:47 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:49:48 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 23:49:48 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 23:49:48 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 23:49:48 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 23:49:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 23:50:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 23:50:40 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 23:50:41 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 23:52:46 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 23:52:47 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e389cd9540df4f514fc89b34b792c561eb664b4628dc1e617655e341953c5d66`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1866283e079b05535b4f247b3c6d57a6ccb10908cbc5ff48e785fb173ab395`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baad362d1e5409671f8cb5b34f1b40813f0ba5ba8a04f427d9916d17c791a239`  
		Last Modified: Mon, 09 Oct 2017 23:53:30 GMT  
		Size: 18.0 MB (17969384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a76b2db8abca19ff1b2194e744c5c4c7970a971900684bbefcefcfea873c48`  
		Last Modified: Mon, 09 Oct 2017 23:53:28 GMT  
		Size: 2.8 MB (2777119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c231271bfda655fc23d4beeb363b81bde7d90d1d0af428bcac7be20f15bd2c3`  
		Last Modified: Mon, 09 Oct 2017 23:53:27 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; ppc64le

```console
$ docker pull httpd@sha256:a458de60e767ddf44f910bee79e36a13476fa3059e455dc44ac6a29fd1725c5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67749003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f24d672165ee84afede80c1fee0ed80448db55c2e91a214d9f168ff1a0f402c`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:13:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 10 Oct 2017 01:13:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:13:20 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 10 Oct 2017 01:13:24 GMT
WORKDIR /usr/local/apache2
# Tue, 10 Oct 2017 01:13:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 10 Oct 2017 01:13:32 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 10 Oct 2017 01:13:40 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 10 Oct 2017 01:17:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:17:39 GMT
ENV HTTPD_VERSION=2.4.28
# Fri, 13 Oct 2017 01:09:27 GMT
ENV HTTPD_SHA256=c1197a3a62a4ab5c584ab89b249af38cf28b4adee9c0106b62999fd29f920666
# Fri, 13 Oct 2017 01:09:29 GMT
ENV HTTPD_PATCHES=
# Fri, 13 Oct 2017 01:09:32 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 01:17:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 01:17:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 13 Oct 2017 01:17:28 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 01:17:31 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5284e00e8f502ebf3749e0f793867db2c6e00d0618a071c942f2d55efb0d83e1`  
		Last Modified: Tue, 10 Oct 2017 01:29:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb6a483d2888033dc0f0f7c492eab355648fc3285e692ca5620d4e5f19f664f`  
		Last Modified: Tue, 10 Oct 2017 01:29:34 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d242abaa5f11e7ce559161c51ebfc95d6631bac7d6bfe159994b5868ffcd5d2`  
		Last Modified: Tue, 10 Oct 2017 01:29:38 GMT  
		Size: 13.0 MB (13036427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98ae419140bd323c78ee84225692e47f118065fa19908bff08ce5c9f38c1a9a`  
		Last Modified: Fri, 13 Oct 2017 01:18:01 GMT  
		Size: 2.9 MB (2901785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c075a41694303fae8f5a046a0dce65d6e0c3d8d6d091932a53e57412cd0d24b1`  
		Last Modified: Fri, 13 Oct 2017 01:18:00 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; s390x

```console
$ docker pull httpd@sha256:3b6a38b1e1d7a886e7651f17b28dd7fadd8a2efef8ca66de0355dd24beaca68e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb6c2525e7de43a59b74c0be622e4fbe0c15781c2d478c80e6bf349e24c616e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:25:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 09 Oct 2017 22:25:11 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:25:12 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 09 Oct 2017 22:25:12 GMT
WORKDIR /usr/local/apache2
# Mon, 09 Oct 2017 22:25:12 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Mon, 09 Oct 2017 22:25:12 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Mon, 09 Oct 2017 22:25:13 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 09 Oct 2017 22:25:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_VERSION=2.4.28
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_SHA1=0b37522b808dcee72e1d56d656b0def530b820a2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:37 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2
# Mon, 09 Oct 2017 22:25:38 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.28.tar.bz2.asc
# Mon, 09 Oct 2017 22:27:32 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:27:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:27:32 GMT
EXPOSE 80/tcp
# Mon, 09 Oct 2017 22:27:32 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb40f78ad84854b825a5bb4be4ff02c743ef29084a21c454098452027ececc`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf8204313ff55d04e061e6d7b41358db31c2b6ab1a2a20d3da35a9c564ddf82`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83931eca269058b77bd2172a5a6898347d4dd233eac42105ff6a00a7f93ff608`  
		Last Modified: Mon, 09 Oct 2017 22:28:08 GMT  
		Size: 13.0 MB (13004860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb721c8ec3755815d2fefeec0afe6046372273292c3ecb463ae85b0a636b1072`  
		Last Modified: Mon, 09 Oct 2017 22:28:06 GMT  
		Size: 3.0 MB (3045018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c143b08f039849d0464a5f23c9e5da7362942acdb677dd7c0388a548144e3b`  
		Last Modified: Mon, 09 Oct 2017 22:28:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
