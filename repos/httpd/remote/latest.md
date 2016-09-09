## `httpd:latest`

```console
$ docker pull httpd@sha256:3ad4d7c4f1815bd1c16788a57f81b41335a68a915afdf16e59603f5e50a0d3a4
```

-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70656814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3336dd034d5055820464e13461e50a40278496d27cf346ed6d170fc7fe6317`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:45:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 21:45:21 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 21:45:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 21:45:22 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 21:45:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		libpcre++0 		libssl1.0.0 	&& rm -r /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:46:26 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 30 Aug 2016 21:46:27 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 30 Aug 2016 21:47:27 GMT
RUN set -x 	&& buildDeps=' 		bzip2 		ca-certificates 		gcc 		libpcre++-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:47:27 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 30 Aug 2016 21:47:28 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 21:47:28 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95e1f92326d796b5be45cd75926d967275f321835d71ad6dfcfe02c28866fdb`  
		Last Modified: Thu, 08 Sep 2016 17:42:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8046a7a4e9a34101363bfe75596866e48e20d1c8709daa00c4d1ba8fe4b24`  
		Last Modified: Thu, 08 Sep 2016 17:42:50 GMT  
		Size: 11.7 MB (11731568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a0d292c371ea231efac204ef938f04f6e290650a250bea19bc5f4d2e6f5d1f`  
		Last Modified: Thu, 08 Sep 2016 17:43:48 GMT  
		Size: 7.6 MB (7557538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7586acab34ec4cd399db5029b2a3224189b27dd483cae8476f10c073303c21`  
		Last Modified: Thu, 08 Sep 2016 17:43:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
