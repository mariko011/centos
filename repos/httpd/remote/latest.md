## `httpd:latest`

```console
$ docker pull httpd@sha256:8f58a3ef340038615498cead8b83fa3b31e4fe5c16961c6c3635e973ac9303ed
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68880481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e597b50dd7cf920147efa372ebd2f4d3e4707082ab90fa51aaf8e55b9f2a29`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 23 Jun 2017 00:13:28 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Jun 2017 00:13:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 00:13:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Jun 2017 00:13:31 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Jun 2017 00:13:32 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 23 Jun 2017 00:13:33 GMT
ENV OPENSSL_VERSION=1.0.2k-1~bpo8+1
# Fri, 23 Jun 2017 00:13:34 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 23 Jun 2017 00:13:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:13:54 GMT
ENV HTTPD_VERSION=2.4.25
# Fri, 23 Jun 2017 00:13:55 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Fri, 23 Jun 2017 00:13:56 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Fri, 23 Jun 2017 00:13:57 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 23 Jun 2017 00:15:10 GMT
RUN set -x 	&& buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	" 	&& apt-get update 	&& apt-get install -y --no-install-recommends -V $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 00:15:11 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:15:12 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 00:15:13 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56798d8e5a3081371b84de38415c30c0f1ae034e4d57d82383c468a95521fc53`  
		Last Modified: Sat, 24 Jun 2017 10:58:55 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b25413538ac04aa893f729c216553d9c86b0ea69318cfe903e16eb078492b7`  
		Last Modified: Sat, 24 Jun 2017 10:58:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d879f4e260dd8d46a4eaf0c29f253a501fa82337840c30a6274de23227ab6e`  
		Last Modified: Sat, 24 Jun 2017 10:59:02 GMT  
		Size: 13.4 MB (13364435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4f7e960a3e3b32308101dec9c1525b961a242dca799737d2ad0c3e19350b42`  
		Last Modified: Sat, 24 Jun 2017 10:58:56 GMT  
		Size: 2.9 MB (2900253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f5eb5312902eedee33d3b8d0f2abc7750f3ae7e32733b26547371f8eb6b034`  
		Last Modified: Sat, 24 Jun 2017 10:58:55 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
