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
$ docker pull bash@sha256:cfd580e538871fdb0f31dae146171d15cc9767b3bb0b345edcbf757d523bb86a
```

-	Platforms:
	-	linux; amd64

### `bash:4.4.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4653181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9804b0112967b287b788fe6d74e268f61d548d5b7f08d6b9f166f07f3eeb85f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:19:52 GMT
ENV _BASH_VERSION=4.4
# Tue, 30 May 2017 16:19:53 GMT
ENV _BASH_PATCH_LEVEL=0
# Tue, 30 May 2017 16:19:53 GMT
ENV _BASH_LATEST_PATCH=12
# Tue, 30 May 2017 16:20:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:20:55 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:20:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:20:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a408e4fbc48c70a0232a36de1e77c400b8963c0adb0fa71daa935ddcf64b861`  
		Last Modified: Tue, 30 May 2017 16:27:43 GMT  
		Size: 2.7 MB (2684920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e43e066180376c551433bfe073279ff4394aa7b6268f3ec2f57ed4d854ff3f`  
		Last Modified: Tue, 30 May 2017 16:27:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.4`

```console
$ docker pull bash@sha256:cfd580e538871fdb0f31dae146171d15cc9767b3bb0b345edcbf757d523bb86a
```

-	Platforms:
	-	linux; amd64

### `bash:4.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4653181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9804b0112967b287b788fe6d74e268f61d548d5b7f08d6b9f166f07f3eeb85f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:19:52 GMT
ENV _BASH_VERSION=4.4
# Tue, 30 May 2017 16:19:53 GMT
ENV _BASH_PATCH_LEVEL=0
# Tue, 30 May 2017 16:19:53 GMT
ENV _BASH_LATEST_PATCH=12
# Tue, 30 May 2017 16:20:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:20:55 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:20:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:20:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a408e4fbc48c70a0232a36de1e77c400b8963c0adb0fa71daa935ddcf64b861`  
		Last Modified: Tue, 30 May 2017 16:27:43 GMT  
		Size: 2.7 MB (2684920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e43e066180376c551433bfe073279ff4394aa7b6268f3ec2f57ed4d854ff3f`  
		Last Modified: Tue, 30 May 2017 16:27:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4`

```console
$ docker pull bash@sha256:cfd580e538871fdb0f31dae146171d15cc9767b3bb0b345edcbf757d523bb86a
```

-	Platforms:
	-	linux; amd64

### `bash:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4653181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9804b0112967b287b788fe6d74e268f61d548d5b7f08d6b9f166f07f3eeb85f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:19:52 GMT
ENV _BASH_VERSION=4.4
# Tue, 30 May 2017 16:19:53 GMT
ENV _BASH_PATCH_LEVEL=0
# Tue, 30 May 2017 16:19:53 GMT
ENV _BASH_LATEST_PATCH=12
# Tue, 30 May 2017 16:20:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:20:55 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:20:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:20:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a408e4fbc48c70a0232a36de1e77c400b8963c0adb0fa71daa935ddcf64b861`  
		Last Modified: Tue, 30 May 2017 16:27:43 GMT  
		Size: 2.7 MB (2684920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e43e066180376c551433bfe073279ff4394aa7b6268f3ec2f57ed4d854ff3f`  
		Last Modified: Tue, 30 May 2017 16:27:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:latest`

```console
$ docker pull bash@sha256:1cd4e553b8cefb576348615965509dac59bbbd4edefef44880086d0d52f412b1
```

-	Platforms:
	-	linux; amd64

### `bash:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4653205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf418722d7eb8037d7d8c6526ff18dc5e2536eb224aa7bcb7d454dfccdce603`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 17:05:50 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 10 May 2017 21:05:13 GMT
ENV _BASH_VERSION=4.4
# Wed, 10 May 2017 21:05:14 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 10 May 2017 21:05:14 GMT
ENV _BASH_LATEST_PATCH=12
# Wed, 10 May 2017 21:06:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 10 May 2017 21:06:12 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Wed, 10 May 2017 21:06:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:06:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c97219de1e16bac2dcb5f33aef156e07f50ba94fc96ea00bc3f1e42a79a55`  
		Last Modified: Thu, 11 May 2017 14:44:07 GMT  
		Size: 2.7 MB (2684964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67880e86a5f31dea0888a8b6db0f5f096a3ffc3cf4a0a361ee928d1eb7c3d0e6`  
		Last Modified: Thu, 11 May 2017 14:44:05 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.3.48`

```console
$ docker pull bash@sha256:680d375fc28eacf5f07020ef5b6eafe58e317236c9486be702abc61ccb2463a6
```

-	Platforms:
	-	linux; amd64

### `bash:4.3.48` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4348980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025fedff2e48d99349ac874b5f2bc33ed7e7eb1a66a2acd7cddec2ba102dc48f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:18:11 GMT
ENV _BASH_VERSION=4.3
# Tue, 30 May 2017 16:18:12 GMT
ENV _BASH_PATCH_LEVEL=30
# Tue, 30 May 2017 16:18:13 GMT
ENV _BASH_LATEST_PATCH=48
# Tue, 30 May 2017 16:19:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:19:29 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:19:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af623716c5d20737fe6b82173b16107e3e36971b30412c2944fdaaf4c79209ce`  
		Last Modified: Tue, 30 May 2017 16:26:52 GMT  
		Size: 2.4 MB (2380717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825e3f2efb623082c71812a1018f808719c1c7b00ef714b2658e36b31ef81fe`  
		Last Modified: Tue, 30 May 2017 16:26:52 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.3`

```console
$ docker pull bash@sha256:680d375fc28eacf5f07020ef5b6eafe58e317236c9486be702abc61ccb2463a6
```

-	Platforms:
	-	linux; amd64

### `bash:4.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4348980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025fedff2e48d99349ac874b5f2bc33ed7e7eb1a66a2acd7cddec2ba102dc48f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:18:11 GMT
ENV _BASH_VERSION=4.3
# Tue, 30 May 2017 16:18:12 GMT
ENV _BASH_PATCH_LEVEL=30
# Tue, 30 May 2017 16:18:13 GMT
ENV _BASH_LATEST_PATCH=48
# Tue, 30 May 2017 16:19:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:19:29 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:19:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af623716c5d20737fe6b82173b16107e3e36971b30412c2944fdaaf4c79209ce`  
		Last Modified: Tue, 30 May 2017 16:26:52 GMT  
		Size: 2.4 MB (2380717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825e3f2efb623082c71812a1018f808719c1c7b00ef714b2658e36b31ef81fe`  
		Last Modified: Tue, 30 May 2017 16:26:52 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.2.53`

```console
$ docker pull bash@sha256:502a8f5dfa81a0bc701e863bae6e058eba79d7a299a10a5c69303922a9d29278
```

-	Platforms:
	-	linux; amd64

### `bash:4.2.53` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4101060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9d01ac3a764e51f0908db0f31942c9a6eb8e87b68e6872dbd73c101db95d04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:17:01 GMT
ENV _BASH_VERSION=4.2
# Tue, 30 May 2017 16:17:02 GMT
ENV _BASH_PATCH_LEVEL=53
# Tue, 30 May 2017 16:17:03 GMT
ENV _BASH_LATEST_PATCH=53
# Tue, 30 May 2017 16:17:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:17:48 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:17:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f69340523a40ce786a41b295b8ffb85e2d3aa1a5405c2170a731afc4dabe170`  
		Last Modified: Tue, 30 May 2017 16:26:00 GMT  
		Size: 2.1 MB (2132799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4048de569d17c083a3c215fd6010fb4e7aa5a4a8d7163aa694fb6f09b941d7`  
		Last Modified: Tue, 30 May 2017 16:25:57 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.2`

```console
$ docker pull bash@sha256:502a8f5dfa81a0bc701e863bae6e058eba79d7a299a10a5c69303922a9d29278
```

-	Platforms:
	-	linux; amd64

### `bash:4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4101060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9d01ac3a764e51f0908db0f31942c9a6eb8e87b68e6872dbd73c101db95d04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:17:01 GMT
ENV _BASH_VERSION=4.2
# Tue, 30 May 2017 16:17:02 GMT
ENV _BASH_PATCH_LEVEL=53
# Tue, 30 May 2017 16:17:03 GMT
ENV _BASH_LATEST_PATCH=53
# Tue, 30 May 2017 16:17:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:17:48 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:17:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f69340523a40ce786a41b295b8ffb85e2d3aa1a5405c2170a731afc4dabe170`  
		Last Modified: Tue, 30 May 2017 16:26:00 GMT  
		Size: 2.1 MB (2132799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4048de569d17c083a3c215fd6010fb4e7aa5a4a8d7163aa694fb6f09b941d7`  
		Last Modified: Tue, 30 May 2017 16:25:57 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.1.17`

```console
$ docker pull bash@sha256:3a4decad5e750bedd7827213e198a061e7923da431b8e2fc876a6c983b0a2650
```

-	Platforms:
	-	linux; amd64

### `bash:4.1.17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4056399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e06a0b9e757370a50fab24bb2aaaddf359ef468f1847017f300af0c0e88907`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:15:30 GMT
ENV _BASH_VERSION=4.1
# Tue, 30 May 2017 16:15:31 GMT
ENV _BASH_PATCH_LEVEL=0
# Tue, 30 May 2017 16:15:32 GMT
ENV _BASH_LATEST_PATCH=17
# Tue, 30 May 2017 16:16:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:16:38 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:16:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293272b80c55d124771ae9ae0a8ca5d9c148ea8726b68b1be8dedde8996439a8`  
		Last Modified: Tue, 30 May 2017 16:25:09 GMT  
		Size: 2.1 MB (2088134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a91eaa1de7026c48ca354918a51681bf466c445b33279e47b3982da8b31dc0`  
		Last Modified: Tue, 30 May 2017 16:25:07 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.1`

```console
$ docker pull bash@sha256:3a4decad5e750bedd7827213e198a061e7923da431b8e2fc876a6c983b0a2650
```

-	Platforms:
	-	linux; amd64

### `bash:4.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4056399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e06a0b9e757370a50fab24bb2aaaddf359ef468f1847017f300af0c0e88907`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:15:30 GMT
ENV _BASH_VERSION=4.1
# Tue, 30 May 2017 16:15:31 GMT
ENV _BASH_PATCH_LEVEL=0
# Tue, 30 May 2017 16:15:32 GMT
ENV _BASH_LATEST_PATCH=17
# Tue, 30 May 2017 16:16:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:16:38 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:16:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293272b80c55d124771ae9ae0a8ca5d9c148ea8726b68b1be8dedde8996439a8`  
		Last Modified: Tue, 30 May 2017 16:25:09 GMT  
		Size: 2.1 MB (2088134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a91eaa1de7026c48ca354918a51681bf466c445b33279e47b3982da8b31dc0`  
		Last Modified: Tue, 30 May 2017 16:25:07 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.0.44`

```console
$ docker pull bash@sha256:505cac191f45ec19f48074f3936b047a0ab95786bcd0980e91485fe975243a7a
```

-	Platforms:
	-	linux; amd64

### `bash:4.0.44` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4031941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa90ea063f8c06e90e668948a5a4741e8b48bbf71b13755c6d0f5b86f0ac3e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:13:03 GMT
ENV _BASH_VERSION=4.0
# Tue, 30 May 2017 16:13:04 GMT
ENV _BASH_PATCH_LEVEL=0
# Tue, 30 May 2017 16:13:05 GMT
ENV _BASH_LATEST_PATCH=44
# Tue, 30 May 2017 16:15:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:15:06 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:15:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560b7e735036f754a046ad1f38533271ad6d311de93b7816b77f317ac3e684c7`  
		Last Modified: Tue, 30 May 2017 16:24:17 GMT  
		Size: 2.1 MB (2063678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55da27ce4f72793d2d0d92a9fe1fdf19a50984a5a41a998e4d6237f48c8477c8`  
		Last Modified: Tue, 30 May 2017 16:24:17 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.0`

```console
$ docker pull bash@sha256:505cac191f45ec19f48074f3936b047a0ab95786bcd0980e91485fe975243a7a
```

-	Platforms:
	-	linux; amd64

### `bash:4.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4031941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa90ea063f8c06e90e668948a5a4741e8b48bbf71b13755c6d0f5b86f0ac3e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 30 May 2017 16:13:03 GMT
ENV _BASH_VERSION=4.0
# Tue, 30 May 2017 16:13:04 GMT
ENV _BASH_PATCH_LEVEL=0
# Tue, 30 May 2017 16:13:05 GMT
ENV _BASH_LATEST_PATCH=44
# Tue, 30 May 2017 16:15:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:15:06 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:15:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560b7e735036f754a046ad1f38533271ad6d311de93b7816b77f317ac3e684c7`  
		Last Modified: Tue, 30 May 2017 16:24:17 GMT  
		Size: 2.1 MB (2063678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55da27ce4f72793d2d0d92a9fe1fdf19a50984a5a41a998e4d6237f48c8477c8`  
		Last Modified: Tue, 30 May 2017 16:24:17 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.2.57`

```console
$ docker pull bash@sha256:86e075210fc97aa018b2a6ea27e6605a663160365fc8c99ae360a7051b5df2f4
```

-	Platforms:
	-	linux; amd64

### `bash:3.2.57` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3909633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2c208ef9c376d3a9cdeab5eb3d0ad383bb7a800ee877d91ede138afb036185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 26 May 2017 14:31:40 GMT
ENV _BASH_VERSION=3.2
# Fri, 26 May 2017 14:31:41 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 26 May 2017 14:31:43 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 26 May 2017 14:33:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 26 May 2017 14:33:45 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 26 May 2017 14:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 May 2017 14:33:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011e109af8582b02097606b352a77adac84ecb709121a55cff8f31fffb14595`  
		Last Modified: Tue, 30 May 2017 16:23:04 GMT  
		Size: 1.9 MB (1941368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772de2c45e4949164a203fbc1bdb4bb8aa3661774f62928586b95350e5df1253`  
		Last Modified: Tue, 30 May 2017 16:23:02 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.2`

```console
$ docker pull bash@sha256:86e075210fc97aa018b2a6ea27e6605a663160365fc8c99ae360a7051b5df2f4
```

-	Platforms:
	-	linux; amd64

### `bash:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3909633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2c208ef9c376d3a9cdeab5eb3d0ad383bb7a800ee877d91ede138afb036185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 26 May 2017 14:31:40 GMT
ENV _BASH_VERSION=3.2
# Fri, 26 May 2017 14:31:41 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 26 May 2017 14:31:43 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 26 May 2017 14:33:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 26 May 2017 14:33:45 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 26 May 2017 14:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 May 2017 14:33:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011e109af8582b02097606b352a77adac84ecb709121a55cff8f31fffb14595`  
		Last Modified: Tue, 30 May 2017 16:23:04 GMT  
		Size: 1.9 MB (1941368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772de2c45e4949164a203fbc1bdb4bb8aa3661774f62928586b95350e5df1253`  
		Last Modified: Tue, 30 May 2017 16:23:02 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3`

```console
$ docker pull bash@sha256:86e075210fc97aa018b2a6ea27e6605a663160365fc8c99ae360a7051b5df2f4
```

-	Platforms:
	-	linux; amd64

### `bash:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3909633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2c208ef9c376d3a9cdeab5eb3d0ad383bb7a800ee877d91ede138afb036185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 26 May 2017 14:31:40 GMT
ENV _BASH_VERSION=3.2
# Fri, 26 May 2017 14:31:41 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 26 May 2017 14:31:43 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 26 May 2017 14:33:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 26 May 2017 14:33:45 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 26 May 2017 14:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 May 2017 14:33:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011e109af8582b02097606b352a77adac84ecb709121a55cff8f31fffb14595`  
		Last Modified: Tue, 30 May 2017 16:23:04 GMT  
		Size: 1.9 MB (1941368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772de2c45e4949164a203fbc1bdb4bb8aa3661774f62928586b95350e5df1253`  
		Last Modified: Tue, 30 May 2017 16:23:02 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.1.23`

```console
$ docker pull bash@sha256:67c844d1f5997ddaf77b169acb538134af209084df133a052ac7538468768ecb
```

-	Platforms:
	-	linux; amd64

### `bash:3.1.23` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3886408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aae992b918519d5429dede6f6cd9336bf3d0731163c46af8954265a0009ca3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 26 May 2017 14:36:43 GMT
ENV _BASH_VERSION=3.1
# Fri, 26 May 2017 14:36:44 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 26 May 2017 14:36:45 GMT
ENV _BASH_LATEST_PATCH=23
# Tue, 30 May 2017 16:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:12:39 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:12:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:12:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647c4f6988796704fa9c46f0010a27603f9b2feed27fd8ed5474abbb9af4286f`  
		Last Modified: Tue, 30 May 2017 16:22:13 GMT  
		Size: 1.9 MB (1918144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e94c59dffacc5fd51da86c82953b355454d014891e06bdd3fb44d13472a8ae9`  
		Last Modified: Tue, 30 May 2017 16:22:13 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.1`

```console
$ docker pull bash@sha256:67c844d1f5997ddaf77b169acb538134af209084df133a052ac7538468768ecb
```

-	Platforms:
	-	linux; amd64

### `bash:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3886408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aae992b918519d5429dede6f6cd9336bf3d0731163c46af8954265a0009ca3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 26 May 2017 14:36:43 GMT
ENV _BASH_VERSION=3.1
# Fri, 26 May 2017 14:36:44 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 26 May 2017 14:36:45 GMT
ENV _BASH_LATEST_PATCH=23
# Tue, 30 May 2017 16:12:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Tue, 30 May 2017 16:12:39 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Tue, 30 May 2017 16:12:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:12:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647c4f6988796704fa9c46f0010a27603f9b2feed27fd8ed5474abbb9af4286f`  
		Last Modified: Tue, 30 May 2017 16:22:13 GMT  
		Size: 1.9 MB (1918144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e94c59dffacc5fd51da86c82953b355454d014891e06bdd3fb44d13472a8ae9`  
		Last Modified: Tue, 30 May 2017 16:22:13 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.0.22`

```console
$ docker pull bash@sha256:d271dc63c6a7cab47da87fbed1c5d3bd0acbd3da82ebcc2f5ef1161b94048793
```

-	Platforms:
	-	linux; amd64

### `bash:3.0.22` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac0bf058a05ec027850512bf8bdc0d42a058818396e08ac24ca2a0b5044d3c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 26 May 2017 14:34:28 GMT
ENV _BASH_VERSION=3.0
# Fri, 26 May 2017 14:34:29 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 26 May 2017 14:34:30 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 26 May 2017 14:36:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 26 May 2017 14:36:20 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 26 May 2017 14:36:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 May 2017 14:36:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffb2e9efa5cf42ed34521b07d684d068e0446261412010b78a94af4e0fd68a3`  
		Last Modified: Tue, 30 May 2017 16:21:24 GMT  
		Size: 1.9 MB (1872216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c448926644d8c877de128005f5395e9bb254493aa121b622a09cfbcf54b67be7`  
		Last Modified: Tue, 30 May 2017 16:21:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.0`

```console
$ docker pull bash@sha256:d271dc63c6a7cab47da87fbed1c5d3bd0acbd3da82ebcc2f5ef1161b94048793
```

-	Platforms:
	-	linux; amd64

### `bash:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac0bf058a05ec027850512bf8bdc0d42a058818396e08ac24ca2a0b5044d3c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Fri, 26 May 2017 14:31:39 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 26 May 2017 14:34:28 GMT
ENV _BASH_VERSION=3.0
# Fri, 26 May 2017 14:34:29 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 26 May 2017 14:34:30 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 26 May 2017 14:36:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -r "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=$f;hb=HEAD"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 26 May 2017 14:36:20 GMT
COPY file:fdf06dbdd83ac10faaf143ecd72819fb62707a3e7d98847f450da20c672c1bf5 in /usr/local/bin/ 
# Fri, 26 May 2017 14:36:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 May 2017 14:36:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffb2e9efa5cf42ed34521b07d684d068e0446261412010b78a94af4e0fd68a3`  
		Last Modified: Tue, 30 May 2017 16:21:24 GMT  
		Size: 1.9 MB (1872216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c448926644d8c877de128005f5395e9bb254493aa121b622a09cfbcf54b67be7`  
		Last Modified: Tue, 30 May 2017 16:21:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
