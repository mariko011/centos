## `httpd:latest`

```console
$ docker pull httpd@sha256:1407eb0941b010035f86dfe8b7339c4dd4153e2f7b855ccc67dc0494e9f2756c
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67055222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a5f36fd8442bbb9117beace561109209f2d2f7b900a210b67b9706ff4efa18`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 16 Jan 2017 20:49:55 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Mon, 16 Jan 2017 20:49:56 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Jan 2017 20:49:57 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Mon, 16 Jan 2017 20:49:57 GMT
WORKDIR /usr/local/apache2
# Mon, 16 Jan 2017 20:49:58 GMT
ENV NGHTTP2_VERSION=1.17.0-1
# Mon, 16 Jan 2017 20:49:58 GMT
ENV OPENSSL_VERSION=1.0.2j-1~bpo8+1
# Mon, 16 Jan 2017 20:49:59 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Mon, 16 Jan 2017 20:50:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Mon, 16 Jan 2017 20:50:26 GMT
ENV HTTPD_VERSION=2.4.25
# Mon, 16 Jan 2017 20:50:27 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Mon, 16 Jan 2017 20:50:27 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Mon, 16 Jan 2017 20:50:28 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Mon, 16 Jan 2017 20:51:45 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		gcc 		libnghttp2-dev=$NGHTTP2_VERSION 		liblua5.2-dev 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 16 Jan 2017 20:51:46 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:51:46 GMT
EXPOSE 80/tcp
# Mon, 16 Jan 2017 20:51:46 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfe9ef0af524ec7d4d96b3f5f3a106913ee6762d3d38265d44a04121942dcaf`  
		Last Modified: Mon, 16 Jan 2017 20:53:14 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84871cd4d3da404e4383db874e92139923b6f95dd9a1fa6f10fad5c7f15fbc47`  
		Last Modified: Mon, 16 Jan 2017 20:53:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b376204f8aa6ffc806143408847967534adf1ccde3b92e9c656a2a1bac914034`  
		Last Modified: Mon, 16 Jan 2017 20:53:18 GMT  
		Size: 13.1 MB (13138998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8d452c2c143067871e47564677a368bfd0fc3a03b22f5dda78b4e614b745a5`  
		Last Modified: Mon, 16 Jan 2017 20:53:16 GMT  
		Size: 2.6 MB (2554022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfa9c4a8891de9ebd7796dfb183ea186abca8ef79a041c1b80e0dfee6a7de10`  
		Last Modified: Mon, 16 Jan 2017 20:53:14 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
