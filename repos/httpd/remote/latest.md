## `httpd:latest`

```console
$ docker pull httpd@sha256:4612fba4347bd87eaeecd5c522d844f26cc4065b45eef9291277497946b7a86c
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67057444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f316d5949bb02561a68216997d2d7a3b80d1f621729d50e1f14a4172af6ad464`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 28 Feb 2017 03:30:22 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 28 Feb 2017 03:30:22 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:30:23 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 28 Feb 2017 03:30:24 GMT
WORKDIR /usr/local/apache2
# Tue, 28 Feb 2017 03:30:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 28 Feb 2017 03:30:24 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Tue, 28 Feb 2017 03:30:25 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 28 Feb 2017 03:30:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:30:43 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 28 Feb 2017 03:30:44 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 28 Feb 2017 03:31:59 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:31:59 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:31:59 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 03:32:00 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523938ce3875c7db3b64d4f90dd7a245e33f4611aa2f4011ad802bbd8de8ecb`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35123eac43ece6e53bc7518a2e109a0e8264c41a6ff822c6327a0ccab9fadffb`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b018d9be386a93e19a1d2baf8ba3cb45d1cad9bb3658da4a50633fb06df888`  
		Last Modified: Thu, 02 Mar 2017 00:46:10 GMT  
		Size: 13.1 MB (13138872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9836efbe758ab9a815a6b5dc1e9a5966cc31f501484aba52c5434057c57446`  
		Last Modified: Thu, 02 Mar 2017 00:46:06 GMT  
		Size: 2.6 MB (2554206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb10b12e5d35cf97497825940087f8307faf1a227450874e1c5f342ea42d617`  
		Last Modified: Thu, 02 Mar 2017 00:46:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
