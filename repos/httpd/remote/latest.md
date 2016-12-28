## `httpd:latest`

```console
$ docker pull httpd@sha256:0d817a924bed1a216f12a0f4947b5f8a2f173bd5a9cebfe1382d024287154c99
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66772724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4363ef5f1221bd275f00b8b8a97344a5829a06f16b98354a665a6c611e7cf1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:46:46 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 13 Dec 2016 23:46:46 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Dec 2016 23:46:47 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 13 Dec 2016 23:46:47 GMT
WORKDIR /usr/local/apache2
# Tue, 13 Dec 2016 23:46:48 GMT
ENV NGHTTP2_VERSION=1.17.0-1
# Tue, 13 Dec 2016 23:46:49 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 13 Dec 2016 23:47:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:18:40 GMT
ENV HTTPD_VERSION=2.4.25
# Thu, 22 Dec 2016 20:18:41 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Thu, 22 Dec 2016 20:18:42 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Thu, 22 Dec 2016 20:21:33 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 22 Dec 2016 20:21:34 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Thu, 22 Dec 2016 20:21:35 GMT
EXPOSE 80/tcp
# Thu, 22 Dec 2016 20:21:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ab16045130b299e0151965f52f0a6eb32df9fec13d1a4f1c249e459547be6e`  
		Last Modified: Mon, 19 Dec 2016 22:41:11 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298301d4f044a4dd43672a4ea47a51a8f7ad0db5511f8edef2d71171b1062d70`  
		Last Modified: Mon, 19 Dec 2016 22:42:09 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb487922f95a3b2b4253ccc2d68a6af3dfac51b0a42ef7a7c29cffd2a309667`  
		Last Modified: Mon, 19 Dec 2016 22:42:17 GMT  
		Size: 12.9 MB (12856756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a220ee5999873a95bb73a503a19f6b6d583731bf3f6c0d4bea220e117bc9d`  
		Last Modified: Thu, 22 Dec 2016 20:26:08 GMT  
		Size: 2.6 MB (2552069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a413d53eb3b0ca4c2cecd7818673e9f0cb2598aaec88fe7aba095dae91e43858`  
		Last Modified: Thu, 22 Dec 2016 20:26:07 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
