<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2`](#httpd2)
-	[`httpd:2.2`](#httpd22)
-	[`httpd:2.2.34`](#httpd2234)
-	[`httpd:2.2.34-alpine`](#httpd2234-alpine)
-	[`httpd:2.2-alpine`](#httpd22-alpine)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2.4.29`](#httpd2429)
-	[`httpd:2.4.29-alpine`](#httpd2429-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)
-	[`httpd:latest`](#httpdlatest)

## `httpd:2`

```console
$ docker pull httpd@sha256:5eafd4b4774375dc385fa0ed980b76a1a63e5102e5a3a9baaabe3b9d2eef877c
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
$ docker pull httpd@sha256:51ba92a7b254563a457d3aed42256c91f1f63c1b751ce11520a78d89cb2a43c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68878750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bdc7fdaa4f6ff67e2106910a7538c52498511477d4c076c04b6bb5c2633679`
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
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 19:53:50 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 19:55:27 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:55:28 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 19:55:28 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 19:55:28 GMT
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
	-	`sha256:d90c670741e8d69f38b41bfa8c29ba963a5eb26372b2047df552f96df37bfd52`  
		Last Modified: Mon, 23 Oct 2017 19:57:10 GMT  
		Size: 2.9 MB (2916523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac004c0f2d32c60163cd5178fb566b8fbd0f15ef6ab05bdd43df2ee3e5f05e`  
		Last Modified: Mon, 23 Oct 2017 19:57:08 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v5

```console
$ docker pull httpd@sha256:5731f6974e7c912653b53905606f84c85c5127b4de1eb11c47717be1b8f41441
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65843368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a03c324036de8eaf0e87732b0817a4588f60e51a6e45d09ec8c39c3201ce9d9`
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
# Mon, 23 Oct 2017 22:00:01 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 22:00:02 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 22:02:26 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 22:02:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 22:02:26 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 22:02:27 GMT
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
	-	`sha256:f966a3f0524e5a9e91e6b56f20dfcdd1e23827e4255dfb4e4f391297a15b608f`  
		Last Modified: Mon, 23 Oct 2017 22:02:41 GMT  
		Size: 2.9 MB (2927993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958b8657411d627e32b3da28064d0cdd23539d30439ed74f3f775defe944dc34`  
		Last Modified: Mon, 23 Oct 2017 22:02:40 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v7

```console
$ docker pull httpd@sha256:38599b28a7f036359abacd0d5eabdabe77a4b70fcee77f960807ce830db9acc2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63023624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e60229c9afe63db9ff4fdf1aeda394bf034e94ed4c2022ba34db6b8eea3616f`
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
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 06:07:42 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 06:07:42 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 06:09:51 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:09:52 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 06:09:52 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 06:09:52 GMT
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
	-	`sha256:f1eee3c605e0aa6a96d2ebb941a32a5c67b485c29738777e4fda27b1e8bcb131`  
		Last Modified: Tue, 24 Oct 2017 06:10:08 GMT  
		Size: 2.8 MB (2790568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca70af3e4bf53ae6362d39f9ddcab0932564a694c25ec1ab496f50107f03551c`  
		Last Modified: Tue, 24 Oct 2017 06:10:06 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:ada8da57a6e9d723a36a4237b38d11e5db4b67949ee7409d8c25b949620ade60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64770686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333aab05f1c070859a13f13a21d1dcb782a08004f4abb97d83d103476b4440f7`
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
# Tue, 24 Oct 2017 11:20:07 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 11:20:08 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 11:20:09 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 11:20:10 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 11:28:39 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 11:28:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 11:28:41 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 11:28:42 GMT
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
	-	`sha256:b34b56077f477f21328db57d614a12b1344588ee1d852d01b1cf9e6730336376`  
		Last Modified: Tue, 24 Oct 2017 11:29:06 GMT  
		Size: 2.8 MB (2759009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd2ed1255cefeafc04ee4c0606bc121310149fb62f6b8bc9b1fdaf565455db`  
		Last Modified: Tue, 24 Oct 2017 11:29:05 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; 386

```console
$ docker pull httpd@sha256:79e0ec0ff2d6ef08031ace53b5cd64234c0524d13a4526661703735990be818e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73520194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7659d5a9a057d74bcfa3dfc790ec566fee08c1870a257509c77058636a411c6d`
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
# Mon, 23 Oct 2017 21:28:48 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 21:28:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 21:30:47 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 21:30:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 21:30:48 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 21:30:48 GMT
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
	-	`sha256:627ddeb483e76d0de36a6f5091bc5d600926f40cc2d29aea4583ec06f6b8a13e`  
		Last Modified: Mon, 23 Oct 2017 21:31:05 GMT  
		Size: 2.8 MB (2775940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cb4bc4867ef256ec1df93d59e85708a2a54ef21b5186da688e04eaa2f9bf9`  
		Last Modified: Mon, 23 Oct 2017 21:31:04 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; ppc64le

```console
$ docker pull httpd@sha256:60ead4acee6e9def812cffe0572f3975326c1585dba91fea548cc1f1e887df2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67748298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7285c18cb1d4638ece0a89a616de8f9dcfe645ec4c3efae5a937bdbcbc4ab9a0`
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
# Tue, 24 Oct 2017 01:02:32 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 01:02:33 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 01:02:35 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 01:02:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 01:08:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 01:08:58 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 01:09:01 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 01:09:03 GMT
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
	-	`sha256:d5fbde272f632419857ffe28dd07b315c73f76dfdb44b7d3f3bcc7eac57950e2`  
		Last Modified: Tue, 24 Oct 2017 01:09:23 GMT  
		Size: 2.9 MB (2901080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc91ac50a3b485f081b18e2c4b9a7c875e981f7f8b4d95e70fb1bfaa3507ea5a`  
		Last Modified: Tue, 24 Oct 2017 01:09:22 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; s390x

```console
$ docker pull httpd@sha256:8b576bfda0ffff78f1a7e626c6766cf020d019b6efb8007aeb6f3caf14146e6b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172100cec217a7b06fe7fc620c68e3018a40d4df8ea22e456f2d3a04ce96c33`
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
# Mon, 23 Oct 2017 20:31:33 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 20:31:34 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 20:33:01 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 20:33:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 20:33:02 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 20:33:02 GMT
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
	-	`sha256:07d5bd42f5aa511ba01be83cdf54dedc7eb1c9a3e66b770646fa711051f4442c`  
		Last Modified: Mon, 23 Oct 2017 20:33:12 GMT  
		Size: 3.0 MB (3044403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80834b45ecc40633b34f0f1eb1ea1e1795c53c5ad3289c3275ec71753f5f1af7`  
		Last Modified: Mon, 23 Oct 2017 20:33:13 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2`

```console
$ docker pull httpd@sha256:7a2188ce00d317878d38d081209657bb90eddf4b8b7a2afb2fc4dee116b49880
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
$ docker pull httpd@sha256:84595a56e890380950f378244de37f73a8ef46212de333f64ae54d9cf7388bb9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61140275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696755423d1be8540fbb4b2fbf173a22b05bee1998ebfef05cdb0efc2acaefbb`
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
# Fri, 13 Oct 2017 06:07:35 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 06:07:35 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 06:07:35 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 06:09:10 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 06:09:11 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:09:11 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 06:09:11 GMT
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
	-	`sha256:bbd0f2646a8e74ac3143aacf3fa1c82d73152c1993a1d10bbf7cbc46b15782e4`  
		Last Modified: Fri, 13 Oct 2017 06:11:52 GMT  
		Size: 2.0 MB (1953863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8513a2f9b0f3d63e9b59ffdadb4a7b2d3a6e4f27a79cc2ae5fd7b03b19c49806`  
		Last Modified: Fri, 13 Oct 2017 06:11:52 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:23d2d90db3ddb787382db512bd0853a178992782f1396014a3a7fd5b9bec097f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62892574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fbada8ff7b23fed4a09859c048524c340828538a8202f117fc5f1860a32d90`
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
# Fri, 13 Oct 2017 11:19:53 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 11:19:54 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 11:19:54 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 11:22:32 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 11:22:33 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 11:22:34 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 11:22:34 GMT
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
	-	`sha256:5376ef9b78844f7843e8283c9b8bb5e11405e8b5baae9701e97f25e793c886d5`  
		Last Modified: Fri, 13 Oct 2017 11:26:38 GMT  
		Size: 2.0 MB (1957245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9de9a59e205824fa8e878e8f43c678c3ae5d198114d47554cd53f0b7193b270`  
		Last Modified: Fri, 13 Oct 2017 11:26:36 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2` - linux; 386

```console
$ docker pull httpd@sha256:3e9e3071e6204f4d0a5ac723600b84c099e40852e89467e0879ec30399bef5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71310438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3a86ffe0da8c2af96aba955ae131480b30ca4d2af5223557bbf65a7615acbc`
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
# Fri, 13 Oct 2017 21:32:47 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 21:32:47 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 21:32:47 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 21:34:26 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 21:34:27 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 21:34:27 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 21:34:27 GMT
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
	-	`sha256:b788846d93b4ba603710a37c0f9b2635b4ea8385b796069d09b22f2c58dce68b`  
		Last Modified: Fri, 13 Oct 2017 21:37:03 GMT  
		Size: 2.0 MB (1973584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526eba362b718fb4d3bf03ca29231808ddfee2598887d97f9ac539b69da142f6`  
		Last Modified: Fri, 13 Oct 2017 21:37:02 GMT  
		Size: 304.0 B  
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
$ docker pull httpd@sha256:39928f91f48aa5a845e89f6f478bcbc8340a3432b3c2936b29015e3a44adfd85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66670696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6eb14250c54a370fc0f0771407a4655178ffbaefcdf04da746b516b1c55d015`
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
# Fri, 13 Oct 2017 20:31:29 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 20:31:29 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 20:31:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 20:32:26 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 20:32:27 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 20:32:27 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 20:32:27 GMT
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
	-	`sha256:b91ae2937f9c68292578ee8402df74ca2d94459ac4c90c9750b082b968ffecff`  
		Last Modified: Fri, 13 Oct 2017 20:36:20 GMT  
		Size: 2.1 MB (2087201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab800ed5d9af27d3bcd70d15c96cb782197dd773564412b2fcd047b86d9cc47`  
		Last Modified: Fri, 13 Oct 2017 20:36:19 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.34`

```console
$ docker pull httpd@sha256:7a2188ce00d317878d38d081209657bb90eddf4b8b7a2afb2fc4dee116b49880
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
$ docker pull httpd@sha256:84595a56e890380950f378244de37f73a8ef46212de333f64ae54d9cf7388bb9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61140275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696755423d1be8540fbb4b2fbf173a22b05bee1998ebfef05cdb0efc2acaefbb`
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
# Fri, 13 Oct 2017 06:07:35 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 06:07:35 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 06:07:35 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 06:09:10 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 06:09:11 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:09:11 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 06:09:11 GMT
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
	-	`sha256:bbd0f2646a8e74ac3143aacf3fa1c82d73152c1993a1d10bbf7cbc46b15782e4`  
		Last Modified: Fri, 13 Oct 2017 06:11:52 GMT  
		Size: 2.0 MB (1953863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8513a2f9b0f3d63e9b59ffdadb4a7b2d3a6e4f27a79cc2ae5fd7b03b19c49806`  
		Last Modified: Fri, 13 Oct 2017 06:11:52 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:23d2d90db3ddb787382db512bd0853a178992782f1396014a3a7fd5b9bec097f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62892574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fbada8ff7b23fed4a09859c048524c340828538a8202f117fc5f1860a32d90`
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
# Fri, 13 Oct 2017 11:19:53 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 11:19:54 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 11:19:54 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 11:22:32 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 11:22:33 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 11:22:34 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 11:22:34 GMT
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
	-	`sha256:5376ef9b78844f7843e8283c9b8bb5e11405e8b5baae9701e97f25e793c886d5`  
		Last Modified: Fri, 13 Oct 2017 11:26:38 GMT  
		Size: 2.0 MB (1957245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9de9a59e205824fa8e878e8f43c678c3ae5d198114d47554cd53f0b7193b270`  
		Last Modified: Fri, 13 Oct 2017 11:26:36 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.2.34` - linux; 386

```console
$ docker pull httpd@sha256:3e9e3071e6204f4d0a5ac723600b84c099e40852e89467e0879ec30399bef5d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71310438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3a86ffe0da8c2af96aba955ae131480b30ca4d2af5223557bbf65a7615acbc`
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
# Fri, 13 Oct 2017 21:32:47 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 21:32:47 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 21:32:47 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 21:34:26 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 21:34:27 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 21:34:27 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 21:34:27 GMT
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
	-	`sha256:b788846d93b4ba603710a37c0f9b2635b4ea8385b796069d09b22f2c58dce68b`  
		Last Modified: Fri, 13 Oct 2017 21:37:03 GMT  
		Size: 2.0 MB (1973584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526eba362b718fb4d3bf03ca29231808ddfee2598887d97f9ac539b69da142f6`  
		Last Modified: Fri, 13 Oct 2017 21:37:02 GMT  
		Size: 304.0 B  
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
$ docker pull httpd@sha256:39928f91f48aa5a845e89f6f478bcbc8340a3432b3c2936b29015e3a44adfd85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66670696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6eb14250c54a370fc0f0771407a4655178ffbaefcdf04da746b516b1c55d015`
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
# Fri, 13 Oct 2017 20:31:29 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Fri, 13 Oct 2017 20:31:29 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Fri, 13 Oct 2017 20:31:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 13 Oct 2017 20:32:26 GMT
RUN set -eux; 		buildDeps=' 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Oct 2017 20:32:27 GMT
COPY file:13dfb9d570a3d651eb22e29b4d6b853be966d83b41885bf3a40ca64840fd3db2 in /usr/local/bin/ 
# Fri, 13 Oct 2017 20:32:27 GMT
EXPOSE 80/tcp
# Fri, 13 Oct 2017 20:32:27 GMT
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
	-	`sha256:b91ae2937f9c68292578ee8402df74ca2d94459ac4c90c9750b082b968ffecff`  
		Last Modified: Fri, 13 Oct 2017 20:36:20 GMT  
		Size: 2.1 MB (2087201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab800ed5d9af27d3bcd70d15c96cb782197dd773564412b2fcd047b86d9cc47`  
		Last Modified: Fri, 13 Oct 2017 20:36:19 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2.34-alpine`

```console
$ docker pull httpd@sha256:ba042127f43fcaeb722a0c50ef0b00ba262417820b721b38e82e4792579d427e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.2.34-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:b1b01c5b678be986369ff583699c551076ac6a9db73b415cd3d86e173004acd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24403274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2cc4907bc00b9caaf3bc4d456d28a143190a0b90d90b3cfc2d149af7dc6ae5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:17:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 00:17:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 00:17:02 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 00:17:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 00:17:03 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 00:17:03 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 26 Oct 2017 00:17:04 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 26 Oct 2017 00:17:04 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 26 Oct 2017 00:17:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 00:17:51 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		wget 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 00:17:51 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 00:17:51 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 00:17:51 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280ee71d9a735985b67ed7d015cd973e7474bc396e71d368b06374328e1a12f1`  
		Last Modified: Thu, 26 Oct 2017 00:19:23 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7ffc298c7976b1b5a1184b82ebdacf9f7205aaaa5c4ef51456812b187be2a5`  
		Last Modified: Thu, 26 Oct 2017 00:19:23 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8564f4ceb2dfaeb3bee5d27a4aaa80aa8c3e2322f97eef2b7882a1f0af70f020`  
		Last Modified: Thu, 26 Oct 2017 00:19:29 GMT  
		Size: 22.0 MB (22016553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e547023ad65e0a32150504fb3fc5c41e01c99c28c66d287d70638ba9256b4c06`  
		Last Modified: Thu, 26 Oct 2017 00:19:23 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.2-alpine`

```console
$ docker pull httpd@sha256:ba042127f43fcaeb722a0c50ef0b00ba262417820b721b38e82e4792579d427e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.2-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:b1b01c5b678be986369ff583699c551076ac6a9db73b415cd3d86e173004acd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24403274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2cc4907bc00b9caaf3bc4d456d28a143190a0b90d90b3cfc2d149af7dc6ae5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:17:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 00:17:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 00:17:02 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 00:17:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 00:17:03 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 00:17:03 GMT
ENV HTTPD_VERSION=2.2.34
# Thu, 26 Oct 2017 00:17:04 GMT
ENV HTTPD_SHA256=e53183d5dfac5740d768b4c9bea193b1099f4b06b57e5f28d7caaf9ea7498160
# Thu, 26 Oct 2017 00:17:04 GMT
ENV HTTPD_PATCHES=CVE-2017-9798-patch-2.2.patch 42c610f8a8f8d4d08664db6d9857120c2c252c9b388d56f238718854e6013e46
# Thu, 26 Oct 2017 00:17:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 00:17:51 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		wget 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B1B96F45DFBDCCF974019235193F180AB55D9977; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared='all ssl ldap cache proxy authn_alias mem_cache file_cache authnz_ldap charset_lite dav_lock disk_cache' 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 00:17:51 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 00:17:51 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 00:17:51 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280ee71d9a735985b67ed7d015cd973e7474bc396e71d368b06374328e1a12f1`  
		Last Modified: Thu, 26 Oct 2017 00:19:23 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7ffc298c7976b1b5a1184b82ebdacf9f7205aaaa5c4ef51456812b187be2a5`  
		Last Modified: Thu, 26 Oct 2017 00:19:23 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8564f4ceb2dfaeb3bee5d27a4aaa80aa8c3e2322f97eef2b7882a1f0af70f020`  
		Last Modified: Thu, 26 Oct 2017 00:19:29 GMT  
		Size: 22.0 MB (22016553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e547023ad65e0a32150504fb3fc5c41e01c99c28c66d287d70638ba9256b4c06`  
		Last Modified: Thu, 26 Oct 2017 00:19:23 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:5eafd4b4774375dc385fa0ed980b76a1a63e5102e5a3a9baaabe3b9d2eef877c
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
$ docker pull httpd@sha256:51ba92a7b254563a457d3aed42256c91f1f63c1b751ce11520a78d89cb2a43c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68878750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bdc7fdaa4f6ff67e2106910a7538c52498511477d4c076c04b6bb5c2633679`
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
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 19:53:50 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 19:55:27 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:55:28 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 19:55:28 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 19:55:28 GMT
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
	-	`sha256:d90c670741e8d69f38b41bfa8c29ba963a5eb26372b2047df552f96df37bfd52`  
		Last Modified: Mon, 23 Oct 2017 19:57:10 GMT  
		Size: 2.9 MB (2916523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac004c0f2d32c60163cd5178fb566b8fbd0f15ef6ab05bdd43df2ee3e5f05e`  
		Last Modified: Mon, 23 Oct 2017 19:57:08 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v5

```console
$ docker pull httpd@sha256:5731f6974e7c912653b53905606f84c85c5127b4de1eb11c47717be1b8f41441
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65843368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a03c324036de8eaf0e87732b0817a4588f60e51a6e45d09ec8c39c3201ce9d9`
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
# Mon, 23 Oct 2017 22:00:01 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 22:00:02 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 22:02:26 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 22:02:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 22:02:26 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 22:02:27 GMT
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
	-	`sha256:f966a3f0524e5a9e91e6b56f20dfcdd1e23827e4255dfb4e4f391297a15b608f`  
		Last Modified: Mon, 23 Oct 2017 22:02:41 GMT  
		Size: 2.9 MB (2927993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958b8657411d627e32b3da28064d0cdd23539d30439ed74f3f775defe944dc34`  
		Last Modified: Mon, 23 Oct 2017 22:02:40 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v7

```console
$ docker pull httpd@sha256:38599b28a7f036359abacd0d5eabdabe77a4b70fcee77f960807ce830db9acc2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63023624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e60229c9afe63db9ff4fdf1aeda394bf034e94ed4c2022ba34db6b8eea3616f`
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
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 06:07:42 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 06:07:42 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 06:09:51 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:09:52 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 06:09:52 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 06:09:52 GMT
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
	-	`sha256:f1eee3c605e0aa6a96d2ebb941a32a5c67b485c29738777e4fda27b1e8bcb131`  
		Last Modified: Tue, 24 Oct 2017 06:10:08 GMT  
		Size: 2.8 MB (2790568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca70af3e4bf53ae6362d39f9ddcab0932564a694c25ec1ab496f50107f03551c`  
		Last Modified: Tue, 24 Oct 2017 06:10:06 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:ada8da57a6e9d723a36a4237b38d11e5db4b67949ee7409d8c25b949620ade60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64770686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333aab05f1c070859a13f13a21d1dcb782a08004f4abb97d83d103476b4440f7`
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
# Tue, 24 Oct 2017 11:20:07 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 11:20:08 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 11:20:09 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 11:20:10 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 11:28:39 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 11:28:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 11:28:41 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 11:28:42 GMT
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
	-	`sha256:b34b56077f477f21328db57d614a12b1344588ee1d852d01b1cf9e6730336376`  
		Last Modified: Tue, 24 Oct 2017 11:29:06 GMT  
		Size: 2.8 MB (2759009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd2ed1255cefeafc04ee4c0606bc121310149fb62f6b8bc9b1fdaf565455db`  
		Last Modified: Tue, 24 Oct 2017 11:29:05 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; 386

```console
$ docker pull httpd@sha256:79e0ec0ff2d6ef08031ace53b5cd64234c0524d13a4526661703735990be818e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73520194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7659d5a9a057d74bcfa3dfc790ec566fee08c1870a257509c77058636a411c6d`
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
# Mon, 23 Oct 2017 21:28:48 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 21:28:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 21:30:47 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 21:30:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 21:30:48 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 21:30:48 GMT
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
	-	`sha256:627ddeb483e76d0de36a6f5091bc5d600926f40cc2d29aea4583ec06f6b8a13e`  
		Last Modified: Mon, 23 Oct 2017 21:31:05 GMT  
		Size: 2.8 MB (2775940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cb4bc4867ef256ec1df93d59e85708a2a54ef21b5186da688e04eaa2f9bf9`  
		Last Modified: Mon, 23 Oct 2017 21:31:04 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; ppc64le

```console
$ docker pull httpd@sha256:60ead4acee6e9def812cffe0572f3975326c1585dba91fea548cc1f1e887df2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67748298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7285c18cb1d4638ece0a89a616de8f9dcfe645ec4c3efae5a937bdbcbc4ab9a0`
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
# Tue, 24 Oct 2017 01:02:32 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 01:02:33 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 01:02:35 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 01:02:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 01:08:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 01:08:58 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 01:09:01 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 01:09:03 GMT
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
	-	`sha256:d5fbde272f632419857ffe28dd07b315c73f76dfdb44b7d3f3bcc7eac57950e2`  
		Last Modified: Tue, 24 Oct 2017 01:09:23 GMT  
		Size: 2.9 MB (2901080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc91ac50a3b485f081b18e2c4b9a7c875e981f7f8b4d95e70fb1bfaa3507ea5a`  
		Last Modified: Tue, 24 Oct 2017 01:09:22 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; s390x

```console
$ docker pull httpd@sha256:8b576bfda0ffff78f1a7e626c6766cf020d019b6efb8007aeb6f3caf14146e6b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172100cec217a7b06fe7fc620c68e3018a40d4df8ea22e456f2d3a04ce96c33`
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
# Mon, 23 Oct 2017 20:31:33 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 20:31:34 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 20:33:01 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 20:33:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 20:33:02 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 20:33:02 GMT
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
	-	`sha256:07d5bd42f5aa511ba01be83cdf54dedc7eb1c9a3e66b770646fa711051f4442c`  
		Last Modified: Mon, 23 Oct 2017 20:33:12 GMT  
		Size: 3.0 MB (3044403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80834b45ecc40633b34f0f1eb1ea1e1795c53c5ad3289c3275ec71753f5f1af7`  
		Last Modified: Mon, 23 Oct 2017 20:33:13 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.29`

```console
$ docker pull httpd@sha256:5eafd4b4774375dc385fa0ed980b76a1a63e5102e5a3a9baaabe3b9d2eef877c
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

### `httpd:2.4.29` - linux; amd64

```console
$ docker pull httpd@sha256:51ba92a7b254563a457d3aed42256c91f1f63c1b751ce11520a78d89cb2a43c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68878750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bdc7fdaa4f6ff67e2106910a7538c52498511477d4c076c04b6bb5c2633679`
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
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 19:53:50 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 19:55:27 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:55:28 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 19:55:28 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 19:55:28 GMT
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
	-	`sha256:d90c670741e8d69f38b41bfa8c29ba963a5eb26372b2047df552f96df37bfd52`  
		Last Modified: Mon, 23 Oct 2017 19:57:10 GMT  
		Size: 2.9 MB (2916523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac004c0f2d32c60163cd5178fb566b8fbd0f15ef6ab05bdd43df2ee3e5f05e`  
		Last Modified: Mon, 23 Oct 2017 19:57:08 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.29` - linux; arm variant v5

```console
$ docker pull httpd@sha256:5731f6974e7c912653b53905606f84c85c5127b4de1eb11c47717be1b8f41441
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65843368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a03c324036de8eaf0e87732b0817a4588f60e51a6e45d09ec8c39c3201ce9d9`
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
# Mon, 23 Oct 2017 22:00:01 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 22:00:02 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 22:02:26 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 22:02:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 22:02:26 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 22:02:27 GMT
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
	-	`sha256:f966a3f0524e5a9e91e6b56f20dfcdd1e23827e4255dfb4e4f391297a15b608f`  
		Last Modified: Mon, 23 Oct 2017 22:02:41 GMT  
		Size: 2.9 MB (2927993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958b8657411d627e32b3da28064d0cdd23539d30439ed74f3f775defe944dc34`  
		Last Modified: Mon, 23 Oct 2017 22:02:40 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.29` - linux; arm variant v7

```console
$ docker pull httpd@sha256:38599b28a7f036359abacd0d5eabdabe77a4b70fcee77f960807ce830db9acc2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63023624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e60229c9afe63db9ff4fdf1aeda394bf034e94ed4c2022ba34db6b8eea3616f`
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
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 06:07:42 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 06:07:42 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 06:09:51 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:09:52 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 06:09:52 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 06:09:52 GMT
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
	-	`sha256:f1eee3c605e0aa6a96d2ebb941a32a5c67b485c29738777e4fda27b1e8bcb131`  
		Last Modified: Tue, 24 Oct 2017 06:10:08 GMT  
		Size: 2.8 MB (2790568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca70af3e4bf53ae6362d39f9ddcab0932564a694c25ec1ab496f50107f03551c`  
		Last Modified: Tue, 24 Oct 2017 06:10:06 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.29` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:ada8da57a6e9d723a36a4237b38d11e5db4b67949ee7409d8c25b949620ade60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64770686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333aab05f1c070859a13f13a21d1dcb782a08004f4abb97d83d103476b4440f7`
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
# Tue, 24 Oct 2017 11:20:07 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 11:20:08 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 11:20:09 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 11:20:10 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 11:28:39 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 11:28:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 11:28:41 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 11:28:42 GMT
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
	-	`sha256:b34b56077f477f21328db57d614a12b1344588ee1d852d01b1cf9e6730336376`  
		Last Modified: Tue, 24 Oct 2017 11:29:06 GMT  
		Size: 2.8 MB (2759009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd2ed1255cefeafc04ee4c0606bc121310149fb62f6b8bc9b1fdaf565455db`  
		Last Modified: Tue, 24 Oct 2017 11:29:05 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.29` - linux; 386

```console
$ docker pull httpd@sha256:79e0ec0ff2d6ef08031ace53b5cd64234c0524d13a4526661703735990be818e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73520194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7659d5a9a057d74bcfa3dfc790ec566fee08c1870a257509c77058636a411c6d`
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
# Mon, 23 Oct 2017 21:28:48 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 21:28:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 21:30:47 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 21:30:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 21:30:48 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 21:30:48 GMT
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
	-	`sha256:627ddeb483e76d0de36a6f5091bc5d600926f40cc2d29aea4583ec06f6b8a13e`  
		Last Modified: Mon, 23 Oct 2017 21:31:05 GMT  
		Size: 2.8 MB (2775940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cb4bc4867ef256ec1df93d59e85708a2a54ef21b5186da688e04eaa2f9bf9`  
		Last Modified: Mon, 23 Oct 2017 21:31:04 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.29` - linux; ppc64le

```console
$ docker pull httpd@sha256:60ead4acee6e9def812cffe0572f3975326c1585dba91fea548cc1f1e887df2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67748298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7285c18cb1d4638ece0a89a616de8f9dcfe645ec4c3efae5a937bdbcbc4ab9a0`
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
# Tue, 24 Oct 2017 01:02:32 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 01:02:33 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 01:02:35 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 01:02:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 01:08:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 01:08:58 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 01:09:01 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 01:09:03 GMT
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
	-	`sha256:d5fbde272f632419857ffe28dd07b315c73f76dfdb44b7d3f3bcc7eac57950e2`  
		Last Modified: Tue, 24 Oct 2017 01:09:23 GMT  
		Size: 2.9 MB (2901080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc91ac50a3b485f081b18e2c4b9a7c875e981f7f8b4d95e70fb1bfaa3507ea5a`  
		Last Modified: Tue, 24 Oct 2017 01:09:22 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.29` - linux; s390x

```console
$ docker pull httpd@sha256:8b576bfda0ffff78f1a7e626c6766cf020d019b6efb8007aeb6f3caf14146e6b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172100cec217a7b06fe7fc620c68e3018a40d4df8ea22e456f2d3a04ce96c33`
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
# Mon, 23 Oct 2017 20:31:33 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 20:31:34 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 20:33:01 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 20:33:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 20:33:02 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 20:33:02 GMT
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
	-	`sha256:07d5bd42f5aa511ba01be83cdf54dedc7eb1c9a3e66b770646fa711051f4442c`  
		Last Modified: Mon, 23 Oct 2017 20:33:12 GMT  
		Size: 3.0 MB (3044403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80834b45ecc40633b34f0f1eb1ea1e1795c53c5ad3289c3275ec71753f5f1af7`  
		Last Modified: Mon, 23 Oct 2017 20:33:13 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.29-alpine`

```console
$ docker pull httpd@sha256:2fd4d4a0c69c17bde9a08a2291de30d37c4a27b0dfb807337fc0771eb301eace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `httpd:2.4.29-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:fd16f2add97536eb610c4d69e7ffab0b860b3f14a641c3f670e5984aac959e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27905993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2338acd9adb909e828383ca25bb311941e9256e3e1093cae8634588067bd7209`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:18:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 00:18:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 00:18:02 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 00:18:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 00:18:03 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 00:18:04 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 00:18:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 00:19:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 00:19:01 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 00:19:02 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 00:19:02 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5579b075d3cccd4d5bcf72d721d1c9a5cb8535c51774d67e6de89ca040165b`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1079dab61c7882e9876a4f437713e52610103a683cd30ebaa3e0f9536ea5f190`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bda03f77a111db7e31a113fcf52cdb7f4a96eb4293269056e9203bec6b9e9b`  
		Last Modified: Thu, 26 Oct 2017 00:19:56 GMT  
		Size: 25.9 MB (25912873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e77571327a0fd9821697bf7ee208425060db74f8e89a668937b2a335881c680`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.29-alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:8093959d2633e81fac1362130ddc3744f250c59cf1ade6c8cd07852d3073c434
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27283938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9a9b86466f12ecd3c7bcb0e8326657007238caf8db7447c43d0bb9abb91eb0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:33:14 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 05:33:14 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 05:33:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:33:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 05:33:15 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 05:33:16 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 05:35:02 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 05:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:35:03 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 05:35:03 GMT
CMD ["httpd-foreground"]
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
	-	`sha256:9324cdf6b9d735dcf353eaa23090941f5af5b266acc79da09717b0000f188477`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b773ebacc0aad14b2ed970d57fb956020ee81474f0706fccb27b113a51ddc7`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad4a2556d86fa75a93d6a3656644c3c77a3816220d38df930693ca903eb437`  
		Last Modified: Thu, 26 Oct 2017 05:35:32 GMT  
		Size: 25.3 MB (25316037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2572236614ee7325b7c15f365e480af3c939a1a958ddfb464b46d3457736b2a1`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:2fd4d4a0c69c17bde9a08a2291de30d37c4a27b0dfb807337fc0771eb301eace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `httpd:2.4-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:fd16f2add97536eb610c4d69e7ffab0b860b3f14a641c3f670e5984aac959e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27905993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2338acd9adb909e828383ca25bb311941e9256e3e1093cae8634588067bd7209`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:18:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 00:18:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 00:18:02 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 00:18:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 00:18:03 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 00:18:04 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 00:18:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 00:19:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 00:19:01 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 00:19:02 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 00:19:02 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5579b075d3cccd4d5bcf72d721d1c9a5cb8535c51774d67e6de89ca040165b`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1079dab61c7882e9876a4f437713e52610103a683cd30ebaa3e0f9536ea5f190`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bda03f77a111db7e31a113fcf52cdb7f4a96eb4293269056e9203bec6b9e9b`  
		Last Modified: Thu, 26 Oct 2017 00:19:56 GMT  
		Size: 25.9 MB (25912873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e77571327a0fd9821697bf7ee208425060db74f8e89a668937b2a335881c680`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:8093959d2633e81fac1362130ddc3744f250c59cf1ade6c8cd07852d3073c434
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27283938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9a9b86466f12ecd3c7bcb0e8326657007238caf8db7447c43d0bb9abb91eb0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:33:14 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 05:33:14 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 05:33:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:33:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 05:33:15 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 05:33:16 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 05:35:02 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 05:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:35:03 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 05:35:03 GMT
CMD ["httpd-foreground"]
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
	-	`sha256:9324cdf6b9d735dcf353eaa23090941f5af5b266acc79da09717b0000f188477`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b773ebacc0aad14b2ed970d57fb956020ee81474f0706fccb27b113a51ddc7`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad4a2556d86fa75a93d6a3656644c3c77a3816220d38df930693ca903eb437`  
		Last Modified: Thu, 26 Oct 2017 05:35:32 GMT  
		Size: 25.3 MB (25316037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2572236614ee7325b7c15f365e480af3c939a1a958ddfb464b46d3457736b2a1`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:2fd4d4a0c69c17bde9a08a2291de30d37c4a27b0dfb807337fc0771eb301eace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `httpd:2-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:fd16f2add97536eb610c4d69e7ffab0b860b3f14a641c3f670e5984aac959e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27905993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2338acd9adb909e828383ca25bb311941e9256e3e1093cae8634588067bd7209`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:18:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 00:18:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 00:18:02 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 00:18:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 00:18:03 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 00:18:04 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 00:18:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 00:19:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 00:19:01 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 00:19:02 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 00:19:02 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5579b075d3cccd4d5bcf72d721d1c9a5cb8535c51774d67e6de89ca040165b`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1079dab61c7882e9876a4f437713e52610103a683cd30ebaa3e0f9536ea5f190`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bda03f77a111db7e31a113fcf52cdb7f4a96eb4293269056e9203bec6b9e9b`  
		Last Modified: Thu, 26 Oct 2017 00:19:56 GMT  
		Size: 25.9 MB (25912873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e77571327a0fd9821697bf7ee208425060db74f8e89a668937b2a335881c680`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:8093959d2633e81fac1362130ddc3744f250c59cf1ade6c8cd07852d3073c434
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27283938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9a9b86466f12ecd3c7bcb0e8326657007238caf8db7447c43d0bb9abb91eb0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:33:14 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 05:33:14 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 05:33:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:33:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 05:33:15 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 05:33:16 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 05:35:02 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 05:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:35:03 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 05:35:03 GMT
CMD ["httpd-foreground"]
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
	-	`sha256:9324cdf6b9d735dcf353eaa23090941f5af5b266acc79da09717b0000f188477`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b773ebacc0aad14b2ed970d57fb956020ee81474f0706fccb27b113a51ddc7`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad4a2556d86fa75a93d6a3656644c3c77a3816220d38df930693ca903eb437`  
		Last Modified: Thu, 26 Oct 2017 05:35:32 GMT  
		Size: 25.3 MB (25316037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2572236614ee7325b7c15f365e480af3c939a1a958ddfb464b46d3457736b2a1`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:2fd4d4a0c69c17bde9a08a2291de30d37c4a27b0dfb807337fc0771eb301eace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `httpd:alpine` - linux; amd64

```console
$ docker pull httpd@sha256:fd16f2add97536eb610c4d69e7ffab0b860b3f14a641c3f670e5984aac959e06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27905993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2338acd9adb909e828383ca25bb311941e9256e3e1093cae8634588067bd7209`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:18:02 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 00:18:02 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 00:18:02 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 00:18:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 00:18:03 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 00:18:03 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 00:18:04 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 00:18:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 00:19:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 00:19:01 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 00:19:02 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 00:19:02 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5579b075d3cccd4d5bcf72d721d1c9a5cb8535c51774d67e6de89ca040165b`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1079dab61c7882e9876a4f437713e52610103a683cd30ebaa3e0f9536ea5f190`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bda03f77a111db7e31a113fcf52cdb7f4a96eb4293269056e9203bec6b9e9b`  
		Last Modified: Thu, 26 Oct 2017 00:19:56 GMT  
		Size: 25.9 MB (25912873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e77571327a0fd9821697bf7ee208425060db74f8e89a668937b2a335881c680`  
		Last Modified: Thu, 26 Oct 2017 00:19:50 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:8093959d2633e81fac1362130ddc3744f250c59cf1ade6c8cd07852d3073c434
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27283938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9a9b86466f12ecd3c7bcb0e8326657007238caf8db7447c43d0bb9abb91eb0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:33:14 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 26 Oct 2017 05:33:14 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Thu, 26 Oct 2017 05:33:14 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:33:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Thu, 26 Oct 2017 05:33:15 GMT
WORKDIR /usr/local/apache2
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_VERSION=2.4.29
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Thu, 26 Oct 2017 05:33:16 GMT
ENV HTTPD_PATCHES=
# Thu, 26 Oct 2017 05:33:16 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Thu, 26 Oct 2017 05:35:02 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Thu, 26 Oct 2017 05:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:35:03 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 05:35:03 GMT
CMD ["httpd-foreground"]
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
	-	`sha256:9324cdf6b9d735dcf353eaa23090941f5af5b266acc79da09717b0000f188477`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b773ebacc0aad14b2ed970d57fb956020ee81474f0706fccb27b113a51ddc7`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ad4a2556d86fa75a93d6a3656644c3c77a3816220d38df930693ca903eb437`  
		Last Modified: Thu, 26 Oct 2017 05:35:32 GMT  
		Size: 25.3 MB (25316037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2572236614ee7325b7c15f365e480af3c939a1a958ddfb464b46d3457736b2a1`  
		Last Modified: Thu, 26 Oct 2017 05:35:22 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:5eafd4b4774375dc385fa0ed980b76a1a63e5102e5a3a9baaabe3b9d2eef877c
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
$ docker pull httpd@sha256:51ba92a7b254563a457d3aed42256c91f1f63c1b751ce11520a78d89cb2a43c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68878750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bdc7fdaa4f6ff67e2106910a7538c52498511477d4c076c04b6bb5c2633679`
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
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 19:53:50 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 19:53:50 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 19:55:27 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:55:28 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 19:55:28 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 19:55:28 GMT
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
	-	`sha256:d90c670741e8d69f38b41bfa8c29ba963a5eb26372b2047df552f96df37bfd52`  
		Last Modified: Mon, 23 Oct 2017 19:57:10 GMT  
		Size: 2.9 MB (2916523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ac004c0f2d32c60163cd5178fb566b8fbd0f15ef6ab05bdd43df2ee3e5f05e`  
		Last Modified: Mon, 23 Oct 2017 19:57:08 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v5

```console
$ docker pull httpd@sha256:5731f6974e7c912653b53905606f84c85c5127b4de1eb11c47717be1b8f41441
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65843368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a03c324036de8eaf0e87732b0817a4588f60e51a6e45d09ec8c39c3201ce9d9`
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
# Mon, 23 Oct 2017 22:00:01 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 22:00:02 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 22:00:02 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 22:02:26 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 22:02:26 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 22:02:26 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 22:02:27 GMT
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
	-	`sha256:f966a3f0524e5a9e91e6b56f20dfcdd1e23827e4255dfb4e4f391297a15b608f`  
		Last Modified: Mon, 23 Oct 2017 22:02:41 GMT  
		Size: 2.9 MB (2927993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958b8657411d627e32b3da28064d0cdd23539d30439ed74f3f775defe944dc34`  
		Last Modified: Mon, 23 Oct 2017 22:02:40 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v7

```console
$ docker pull httpd@sha256:38599b28a7f036359abacd0d5eabdabe77a4b70fcee77f960807ce830db9acc2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63023624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e60229c9afe63db9ff4fdf1aeda394bf034e94ed4c2022ba34db6b8eea3616f`
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
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 06:07:41 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 06:07:42 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 06:07:42 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 06:09:51 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:09:52 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 06:09:52 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 06:09:52 GMT
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
	-	`sha256:f1eee3c605e0aa6a96d2ebb941a32a5c67b485c29738777e4fda27b1e8bcb131`  
		Last Modified: Tue, 24 Oct 2017 06:10:08 GMT  
		Size: 2.8 MB (2790568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca70af3e4bf53ae6362d39f9ddcab0932564a694c25ec1ab496f50107f03551c`  
		Last Modified: Tue, 24 Oct 2017 06:10:06 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:ada8da57a6e9d723a36a4237b38d11e5db4b67949ee7409d8c25b949620ade60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64770686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333aab05f1c070859a13f13a21d1dcb782a08004f4abb97d83d103476b4440f7`
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
# Tue, 24 Oct 2017 11:20:07 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 11:20:08 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 11:20:09 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 11:20:10 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 11:28:39 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 11:28:40 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 11:28:41 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 11:28:42 GMT
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
	-	`sha256:b34b56077f477f21328db57d614a12b1344588ee1d852d01b1cf9e6730336376`  
		Last Modified: Tue, 24 Oct 2017 11:29:06 GMT  
		Size: 2.8 MB (2759009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd2ed1255cefeafc04ee4c0606bc121310149fb62f6b8bc9b1fdaf565455db`  
		Last Modified: Tue, 24 Oct 2017 11:29:05 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; 386

```console
$ docker pull httpd@sha256:79e0ec0ff2d6ef08031ace53b5cd64234c0524d13a4526661703735990be818e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73520194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7659d5a9a057d74bcfa3dfc790ec566fee08c1870a257509c77058636a411c6d`
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
# Mon, 23 Oct 2017 21:28:48 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 21:28:49 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 21:28:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 21:30:47 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 21:30:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 21:30:48 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 21:30:48 GMT
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
	-	`sha256:627ddeb483e76d0de36a6f5091bc5d600926f40cc2d29aea4583ec06f6b8a13e`  
		Last Modified: Mon, 23 Oct 2017 21:31:05 GMT  
		Size: 2.8 MB (2775940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cb4bc4867ef256ec1df93d59e85708a2a54ef21b5186da688e04eaa2f9bf9`  
		Last Modified: Mon, 23 Oct 2017 21:31:04 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; ppc64le

```console
$ docker pull httpd@sha256:60ead4acee6e9def812cffe0572f3975326c1585dba91fea548cc1f1e887df2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67748298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7285c18cb1d4638ece0a89a616de8f9dcfe645ec4c3efae5a937bdbcbc4ab9a0`
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
# Tue, 24 Oct 2017 01:02:32 GMT
ENV HTTPD_VERSION=2.4.29
# Tue, 24 Oct 2017 01:02:33 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Tue, 24 Oct 2017 01:02:35 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Oct 2017 01:02:36 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Oct 2017 01:08:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 01:08:58 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Oct 2017 01:09:01 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 01:09:03 GMT
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
	-	`sha256:d5fbde272f632419857ffe28dd07b315c73f76dfdb44b7d3f3bcc7eac57950e2`  
		Last Modified: Tue, 24 Oct 2017 01:09:23 GMT  
		Size: 2.9 MB (2901080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc91ac50a3b485f081b18e2c4b9a7c875e981f7f8b4d95e70fb1bfaa3507ea5a`  
		Last Modified: Tue, 24 Oct 2017 01:09:22 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; s390x

```console
$ docker pull httpd@sha256:8b576bfda0ffff78f1a7e626c6766cf020d019b6efb8007aeb6f3caf14146e6b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68839148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9172100cec217a7b06fe7fc620c68e3018a40d4df8ea22e456f2d3a04ce96c33`
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
# Mon, 23 Oct 2017 20:31:33 GMT
ENV HTTPD_VERSION=2.4.29
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_SHA256=777753a5a25568a2a27428b2214980564bc1c38c1abf9ccc7630b639991f7f00
# Mon, 23 Oct 2017 20:31:34 GMT
ENV HTTPD_PATCHES=
# Mon, 23 Oct 2017 20:31:34 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 23 Oct 2017 20:33:01 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile"; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 20:33:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 23 Oct 2017 20:33:02 GMT
EXPOSE 80/tcp
# Mon, 23 Oct 2017 20:33:02 GMT
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
	-	`sha256:07d5bd42f5aa511ba01be83cdf54dedc7eb1c9a3e66b770646fa711051f4442c`  
		Last Modified: Mon, 23 Oct 2017 20:33:12 GMT  
		Size: 3.0 MB (3044403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80834b45ecc40633b34f0f1eb1ea1e1795c53c5ad3289c3275ec71753f5f1af7`  
		Last Modified: Mon, 23 Oct 2017 20:33:13 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
