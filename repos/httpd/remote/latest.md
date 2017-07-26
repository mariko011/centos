## `httpd:latest`

```console
$ docker pull httpd@sha256:5b35d13089db73df620f4c198f5a4bfa56b8fe45a0364f343df9a26d874fef6c
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68887424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74fcb59d25bdf03adcc8d89bcda8ae9456d2041c557c973072085708814e5c7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 26 Jul 2017 05:49:13 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 26 Jul 2017 05:49:13 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:49:14 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 26 Jul 2017 05:49:14 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Jul 2017 05:49:14 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 26 Jul 2017 05:49:15 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 26 Jul 2017 05:49:15 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 26 Jul 2017 05:49:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_VERSION=2.4.27
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_SHA1=699e4e917e8fb5fd7d0ce7e009f8256ed02ec6fc
# Wed, 26 Jul 2017 05:49:38 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2
# Wed, 26 Jul 2017 05:49:39 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.27.tar.bz2.asc
# Wed, 26 Jul 2017 05:51:07 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 05:51:08 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:51:08 GMT
EXPOSE 80/tcp
# Wed, 26 Jul 2017 05:51:08 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf157792586abc3385471c59d759569a1801d979b476b2cde69ccc49452b3e6c`  
		Last Modified: Wed, 26 Jul 2017 05:51:37 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c620105f0566d5108dc337f100b690e7d824f2b0895abc4296ed39a43009f0b7`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830b826a2e138e6bf5ff58efc7d25cf97b859d20f0bfbc7c776def3278048de3`  
		Last Modified: Wed, 26 Jul 2017 05:51:40 GMT  
		Size: 13.4 MB (13365113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2eb5743536660b4ec40ee535a0ef8c9d2f4f784b3f209ebfea8506322b3cee`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 2.9 MB (2915692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb53f3c0989782a2cac123af563bcb850ae213241fed911a4ea3c0ab5e41dd13`  
		Last Modified: Wed, 26 Jul 2017 05:51:38 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
