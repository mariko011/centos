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
