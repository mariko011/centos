<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bash`

-	[`bash:4.4.12`](#bash4412)
-	[`bash:4.4`](#bash44)
-	[`bash:4`](#bash4)
-	[`bash:latest`](#bashlatest)
-	[`bash:4.3.48`](#bash4348)
-	[`bash:4.3`](#bash43)
-	[`bash:4.2.53`](#bash4253)
-	[`bash:4.2`](#bash42)
-	[`bash:4.1.17`](#bash4117)
-	[`bash:4.1`](#bash41)
-	[`bash:4.0.44`](#bash4044)
-	[`bash:4.0`](#bash40)
-	[`bash:3.2.57`](#bash3257)
-	[`bash:3.2`](#bash32)
-	[`bash:3`](#bash3)
-	[`bash:3.1.23`](#bash3123)
-	[`bash:3.1`](#bash31)
-	[`bash:3.0.22`](#bash3022)
-	[`bash:3.0`](#bash30)

## `bash:4.4.12`

```console
$ docker pull bash@sha256:d7983e735b8a07443c6c4f87c9dc3386dc00ddbcf2930d44ba24aa958c40967c
```

-	Platforms:
	-	linux; amd64

### `bash:4.4.12` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4933831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b978d19a839750ced4e800e4032234483aa0e02d4634a255e9833d4ce928eed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_VERSION=4.4
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 27 Jan 2017 22:31:27 GMT
ENV _BASH_LATEST_PATCH=12
# Fri, 27 Jan 2017 22:32:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:05 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12503a53c30aa68d0734ee1d96f3eadd3b945a637f038ba1237a1362213b4a0a`  
		Last Modified: Fri, 27 Jan 2017 22:32:42 GMT  
		Size: 3.0 MB (3031435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fce0ccf57d77222b075d33aa578ac1b56a55f6fd55c17ded6cd508f37f3c80`  
		Last Modified: Wed, 08 Feb 2017 22:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.4`

```console
$ docker pull bash@sha256:d7983e735b8a07443c6c4f87c9dc3386dc00ddbcf2930d44ba24aa958c40967c
```

-	Platforms:
	-	linux; amd64

### `bash:4.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4933831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b978d19a839750ced4e800e4032234483aa0e02d4634a255e9833d4ce928eed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_VERSION=4.4
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 27 Jan 2017 22:31:27 GMT
ENV _BASH_LATEST_PATCH=12
# Fri, 27 Jan 2017 22:32:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:05 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12503a53c30aa68d0734ee1d96f3eadd3b945a637f038ba1237a1362213b4a0a`  
		Last Modified: Fri, 27 Jan 2017 22:32:42 GMT  
		Size: 3.0 MB (3031435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fce0ccf57d77222b075d33aa578ac1b56a55f6fd55c17ded6cd508f37f3c80`  
		Last Modified: Wed, 08 Feb 2017 22:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4`

```console
$ docker pull bash@sha256:d7983e735b8a07443c6c4f87c9dc3386dc00ddbcf2930d44ba24aa958c40967c
```

-	Platforms:
	-	linux; amd64

### `bash:4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4933831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b978d19a839750ced4e800e4032234483aa0e02d4634a255e9833d4ce928eed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_VERSION=4.4
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 27 Jan 2017 22:31:27 GMT
ENV _BASH_LATEST_PATCH=12
# Fri, 27 Jan 2017 22:32:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:05 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12503a53c30aa68d0734ee1d96f3eadd3b945a637f038ba1237a1362213b4a0a`  
		Last Modified: Fri, 27 Jan 2017 22:32:42 GMT  
		Size: 3.0 MB (3031435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fce0ccf57d77222b075d33aa578ac1b56a55f6fd55c17ded6cd508f37f3c80`  
		Last Modified: Wed, 08 Feb 2017 22:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:latest`

```console
$ docker pull bash@sha256:d7983e735b8a07443c6c4f87c9dc3386dc00ddbcf2930d44ba24aa958c40967c
```

-	Platforms:
	-	linux; amd64

### `bash:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4933831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b978d19a839750ced4e800e4032234483aa0e02d4634a255e9833d4ce928eed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_VERSION=4.4
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 27 Jan 2017 22:31:27 GMT
ENV _BASH_LATEST_PATCH=12
# Fri, 27 Jan 2017 22:32:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:05 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12503a53c30aa68d0734ee1d96f3eadd3b945a637f038ba1237a1362213b4a0a`  
		Last Modified: Fri, 27 Jan 2017 22:32:42 GMT  
		Size: 3.0 MB (3031435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fce0ccf57d77222b075d33aa578ac1b56a55f6fd55c17ded6cd508f37f3c80`  
		Last Modified: Wed, 08 Feb 2017 22:10:34 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.3.48`

```console
$ docker pull bash@sha256:d9d2243ac39251ca4a43439bdbc6e12a6fe1706604a6231d5a34284a20f47491
```

-	Platforms:
	-	linux; amd64

### `bash:4.3.48` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4249954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41d913a4dd1ec30f6c26acf20f629acdaa89bd1421ee5c34b521fa837cdd943`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:53:37 GMT
ENV _BASH_VERSION=4.3
# Wed, 04 Jan 2017 20:53:38 GMT
ENV _BASH_PATCH_LEVEL=30
# Wed, 04 Jan 2017 20:53:38 GMT
ENV _BASH_LATEST_PATCH=48
# Wed, 04 Jan 2017 20:54:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:06 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1bac4df4062cb171c3f14035d0ac60b7a07052644ec444326382b763849996`  
		Last Modified: Wed, 04 Jan 2017 23:24:06 GMT  
		Size: 2.3 MB (2347559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f350d79a4e943b51ce98f9e4372df60b59d925ccf13435132c3a635d6f0000`  
		Last Modified: Wed, 08 Feb 2017 22:11:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.3`

```console
$ docker pull bash@sha256:d9d2243ac39251ca4a43439bdbc6e12a6fe1706604a6231d5a34284a20f47491
```

-	Platforms:
	-	linux; amd64

### `bash:4.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4249954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41d913a4dd1ec30f6c26acf20f629acdaa89bd1421ee5c34b521fa837cdd943`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:53:37 GMT
ENV _BASH_VERSION=4.3
# Wed, 04 Jan 2017 20:53:38 GMT
ENV _BASH_PATCH_LEVEL=30
# Wed, 04 Jan 2017 20:53:38 GMT
ENV _BASH_LATEST_PATCH=48
# Wed, 04 Jan 2017 20:54:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:06 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1bac4df4062cb171c3f14035d0ac60b7a07052644ec444326382b763849996`  
		Last Modified: Wed, 04 Jan 2017 23:24:06 GMT  
		Size: 2.3 MB (2347559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f350d79a4e943b51ce98f9e4372df60b59d925ccf13435132c3a635d6f0000`  
		Last Modified: Wed, 08 Feb 2017 22:11:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.2.53`

```console
$ docker pull bash@sha256:f290dc29c5f095bcec031b3114d54ac111d26312e34a3712a43d9e569037c6b3
```

-	Platforms:
	-	linux; amd64

### `bash:4.2.53` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4001152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fec900f88ed1f3b5009fe038f0b93b31ea0b722da9391d3abc3f13fa4cd356c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:54:43 GMT
ENV _BASH_VERSION=4.2
# Wed, 04 Jan 2017 20:54:43 GMT
ENV _BASH_PATCH_LEVEL=53
# Wed, 04 Jan 2017 20:54:44 GMT
ENV _BASH_LATEST_PATCH=53
# Wed, 04 Jan 2017 20:55:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:08 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4c5f415d92ac42017eda4a8538ef88dc9a89841948630948941bc7b7d323c`  
		Last Modified: Wed, 04 Jan 2017 23:24:41 GMT  
		Size: 2.1 MB (2098753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998f4d4c51d7660282b15531c2fb6bb1c46121b37ab8305101491f7088de4ef8`  
		Last Modified: Wed, 08 Feb 2017 22:12:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.2`

```console
$ docker pull bash@sha256:f290dc29c5f095bcec031b3114d54ac111d26312e34a3712a43d9e569037c6b3
```

-	Platforms:
	-	linux; amd64

### `bash:4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4001152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fec900f88ed1f3b5009fe038f0b93b31ea0b722da9391d3abc3f13fa4cd356c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:54:43 GMT
ENV _BASH_VERSION=4.2
# Wed, 04 Jan 2017 20:54:43 GMT
ENV _BASH_PATCH_LEVEL=53
# Wed, 04 Jan 2017 20:54:44 GMT
ENV _BASH_LATEST_PATCH=53
# Wed, 04 Jan 2017 20:55:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:08 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4c5f415d92ac42017eda4a8538ef88dc9a89841948630948941bc7b7d323c`  
		Last Modified: Wed, 04 Jan 2017 23:24:41 GMT  
		Size: 2.1 MB (2098753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998f4d4c51d7660282b15531c2fb6bb1c46121b37ab8305101491f7088de4ef8`  
		Last Modified: Wed, 08 Feb 2017 22:12:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.1.17`

```console
$ docker pull bash@sha256:3c997b3f141bfe901588b34f03ab18aa80f24b7d83eafe32451e81f6f6ae53ef
```

-	Platforms:
	-	linux; amd64

### `bash:4.1.17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3957060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d991732c5d40a114f273ac579fa4ec74f05bf6b344bee338ede9abeebd242edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:55:24 GMT
ENV _BASH_VERSION=4.1
# Wed, 04 Jan 2017 20:55:24 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 04 Jan 2017 20:55:24 GMT
ENV _BASH_LATEST_PATCH=17
# Wed, 04 Jan 2017 20:56:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:10 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaf3a3182bd0fbf893119280aa1dc01f095a60b7eaaea37bad9affdf9b92493`  
		Last Modified: Wed, 04 Jan 2017 23:25:12 GMT  
		Size: 2.1 MB (2054666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac64fb3f02fbddf9f4796806b58ab8721246455f015e968cc4bbbfcf3ce1087`  
		Last Modified: Wed, 08 Feb 2017 22:12:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.1`

```console
$ docker pull bash@sha256:3c997b3f141bfe901588b34f03ab18aa80f24b7d83eafe32451e81f6f6ae53ef
```

-	Platforms:
	-	linux; amd64

### `bash:4.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3957060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d991732c5d40a114f273ac579fa4ec74f05bf6b344bee338ede9abeebd242edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:55:24 GMT
ENV _BASH_VERSION=4.1
# Wed, 04 Jan 2017 20:55:24 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 04 Jan 2017 20:55:24 GMT
ENV _BASH_LATEST_PATCH=17
# Wed, 04 Jan 2017 20:56:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:10 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaf3a3182bd0fbf893119280aa1dc01f095a60b7eaaea37bad9affdf9b92493`  
		Last Modified: Wed, 04 Jan 2017 23:25:12 GMT  
		Size: 2.1 MB (2054666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac64fb3f02fbddf9f4796806b58ab8721246455f015e968cc4bbbfcf3ce1087`  
		Last Modified: Wed, 08 Feb 2017 22:12:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.0.44`

```console
$ docker pull bash@sha256:a79ad1b04527d1f477ad2d41f022741ca5087314c2920197aaef8391a41cdd53
```

-	Platforms:
	-	linux; amd64

### `bash:4.0.44` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68ce4a5affac192517fe931fd8cf2b8b3361c743bb9eb1391fa709e24446d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:56:25 GMT
ENV _BASH_VERSION=4.0
# Wed, 04 Jan 2017 20:56:26 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 04 Jan 2017 20:56:26 GMT
ENV _BASH_LATEST_PATCH=44
# Wed, 04 Jan 2017 20:58:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:11 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535b8f62c7cb879edc88b561e2eab8af6283702cbe906dc9eba44d5401836d6b`  
		Last Modified: Wed, 04 Jan 2017 23:25:45 GMT  
		Size: 2.0 MB (2030044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3380baee08998c80ac7f9f72fa976b56ea526b853d4d642541dfe08a6419e`  
		Last Modified: Wed, 08 Feb 2017 22:13:23 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.0`

```console
$ docker pull bash@sha256:a79ad1b04527d1f477ad2d41f022741ca5087314c2920197aaef8391a41cdd53
```

-	Platforms:
	-	linux; amd64

### `bash:4.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68ce4a5affac192517fe931fd8cf2b8b3361c743bb9eb1391fa709e24446d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:56:25 GMT
ENV _BASH_VERSION=4.0
# Wed, 04 Jan 2017 20:56:26 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 04 Jan 2017 20:56:26 GMT
ENV _BASH_LATEST_PATCH=44
# Wed, 04 Jan 2017 20:58:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:11 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535b8f62c7cb879edc88b561e2eab8af6283702cbe906dc9eba44d5401836d6b`  
		Last Modified: Wed, 04 Jan 2017 23:25:45 GMT  
		Size: 2.0 MB (2030044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3380baee08998c80ac7f9f72fa976b56ea526b853d4d642541dfe08a6419e`  
		Last Modified: Wed, 08 Feb 2017 22:13:23 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.2.57`

```console
$ docker pull bash@sha256:0d5d90a2b6c6949b38a438d56203a853d751f4957f1320b1a10445290796f7ca
```

-	Platforms:
	-	linux; amd64

### `bash:3.2.57` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918bed67687c463b893d5421bc2dcc39decf64f0c6f78f24db908ed411c09505`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:58:27 GMT
ENV _BASH_VERSION=3.2
# Wed, 04 Jan 2017 20:58:27 GMT
ENV _BASH_PATCH_LEVEL=57
# Wed, 04 Jan 2017 20:58:28 GMT
ENV _BASH_LATEST_PATCH=57
# Wed, 04 Jan 2017 21:00:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:12 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0420bc154372fe5cf769258f9239e9a75e7508b16b4f4b468a746aca337d539`  
		Last Modified: Wed, 04 Jan 2017 23:26:18 GMT  
		Size: 1.9 MB (1909651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd164156f9aa395168c4b7a7eb40d86e45eadf155fd6ce6ff0b0684ab50098a`  
		Last Modified: Wed, 08 Feb 2017 22:13:57 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.2`

```console
$ docker pull bash@sha256:0d5d90a2b6c6949b38a438d56203a853d751f4957f1320b1a10445290796f7ca
```

-	Platforms:
	-	linux; amd64

### `bash:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918bed67687c463b893d5421bc2dcc39decf64f0c6f78f24db908ed411c09505`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:58:27 GMT
ENV _BASH_VERSION=3.2
# Wed, 04 Jan 2017 20:58:27 GMT
ENV _BASH_PATCH_LEVEL=57
# Wed, 04 Jan 2017 20:58:28 GMT
ENV _BASH_LATEST_PATCH=57
# Wed, 04 Jan 2017 21:00:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:12 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0420bc154372fe5cf769258f9239e9a75e7508b16b4f4b468a746aca337d539`  
		Last Modified: Wed, 04 Jan 2017 23:26:18 GMT  
		Size: 1.9 MB (1909651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd164156f9aa395168c4b7a7eb40d86e45eadf155fd6ce6ff0b0684ab50098a`  
		Last Modified: Wed, 08 Feb 2017 22:13:57 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3`

```console
$ docker pull bash@sha256:0d5d90a2b6c6949b38a438d56203a853d751f4957f1320b1a10445290796f7ca
```

-	Platforms:
	-	linux; amd64

### `bash:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918bed67687c463b893d5421bc2dcc39decf64f0c6f78f24db908ed411c09505`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 20:58:27 GMT
ENV _BASH_VERSION=3.2
# Wed, 04 Jan 2017 20:58:27 GMT
ENV _BASH_PATCH_LEVEL=57
# Wed, 04 Jan 2017 20:58:28 GMT
ENV _BASH_LATEST_PATCH=57
# Wed, 04 Jan 2017 21:00:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:12 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0420bc154372fe5cf769258f9239e9a75e7508b16b4f4b468a746aca337d539`  
		Last Modified: Wed, 04 Jan 2017 23:26:18 GMT  
		Size: 1.9 MB (1909651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd164156f9aa395168c4b7a7eb40d86e45eadf155fd6ce6ff0b0684ab50098a`  
		Last Modified: Wed, 08 Feb 2017 22:13:57 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.1.23`

```console
$ docker pull bash@sha256:f37ced27e7aeea6bdd038cb565940fd09732752dc7b819c830e6c1ad80805eca
```

-	Platforms:
	-	linux; amd64

### `bash:3.1.23` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3793865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05bac532c46bef207087edfb839bca46ca99dcf9db4679d2c504cd79a9a50aba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:35:43 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 03 Mar 2017 21:39:07 GMT
ENV _BASH_VERSION=3.1
# Fri, 03 Mar 2017 21:39:07 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 03 Mar 2017 21:39:08 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 03 Mar 2017 21:41:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 03 Mar 2017 21:41:12 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:41:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e0304c43545299427c503a48e9d4cd4d49bcaf9c627384efee62000cf045af`  
		Last Modified: Sat, 04 Mar 2017 03:12:15 GMT  
		Size: 1.9 MB (1888258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290f61c48a2aa0c7b2ada40303d4f23b35d6e64b7d33d305f3ccf46c5a7da4bf`  
		Last Modified: Sat, 04 Mar 2017 03:12:13 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.1`

```console
$ docker pull bash@sha256:8e62e4482055614862b93ff7db57ef62cdc0a955f18cae0ff56481639da0a150
```

-	Platforms:
	-	linux; amd64

### `bash:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f73ab0601c8894a967391c4a2f88873b69f2c39e354e92800ad84c0ce6a94194`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 20:52:49 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 04 Jan 2017 21:00:10 GMT
ENV _BASH_VERSION=3.1
# Wed, 04 Jan 2017 21:00:10 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 04 Jan 2017 21:00:10 GMT
ENV _BASH_LATEST_PATCH=23
# Wed, 04 Jan 2017 21:02:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 08 Feb 2017 22:10:14 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 08 Feb 2017 22:10:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:10:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4cfefadb1b0987c1c704a690fd1f9d591eb58708b0f6e2a2d46a055ba465ba`  
		Last Modified: Wed, 04 Jan 2017 23:27:05 GMT  
		Size: 1.9 MB (1888221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494a9d157199db87f2d68dc27300c2b9a39ad3a5d9c47db70319eae2f83bb70a`  
		Last Modified: Wed, 08 Feb 2017 22:14:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.0.22`

```console
$ docker pull bash@sha256:a02bb855ffb8afd62e1a3f40bd534d4e7d5fbd942eb3fc25920798f5b3fd2126
```

-	Platforms:
	-	linux; amd64

### `bash:3.0.22` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fcdae0eef5ed3e0ff3d5ba3002277ff27e5f9dd2cf159c2148fb09a6d800c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:35:43 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 03 Mar 2017 21:37:22 GMT
ENV _BASH_VERSION=3.0
# Fri, 03 Mar 2017 21:37:22 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 03 Mar 2017 21:37:23 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 03 Mar 2017 21:39:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 03 Mar 2017 21:39:06 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:39:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:39:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034691497c5d8ca6a814bea928316b0960eb618270ce3560afa6606349ac6b75`  
		Last Modified: Sat, 04 Mar 2017 02:58:56 GMT  
		Size: 1.8 MB (1842907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3617b781b1b5d91e824707bafc9c1cf5a251bdd698ccf4a80b3594aee99a7d`  
		Last Modified: Sat, 04 Mar 2017 02:58:54 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.0`

```console
$ docker pull bash@sha256:a02bb855ffb8afd62e1a3f40bd534d4e7d5fbd942eb3fc25920798f5b3fd2126
```

-	Platforms:
	-	linux; amd64

### `bash:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fcdae0eef5ed3e0ff3d5ba3002277ff27e5f9dd2cf159c2148fb09a6d800c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:35:43 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 03 Mar 2017 21:37:22 GMT
ENV _BASH_VERSION=3.0
# Fri, 03 Mar 2017 21:37:22 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 03 Mar 2017 21:37:23 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 03 Mar 2017 21:39:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	./configure 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 03 Mar 2017 21:39:06 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:39:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:39:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034691497c5d8ca6a814bea928316b0960eb618270ce3560afa6606349ac6b75`  
		Last Modified: Sat, 04 Mar 2017 02:58:56 GMT  
		Size: 1.8 MB (1842907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3617b781b1b5d91e824707bafc9c1cf5a251bdd698ccf4a80b3594aee99a7d`  
		Last Modified: Sat, 04 Mar 2017 02:58:54 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
