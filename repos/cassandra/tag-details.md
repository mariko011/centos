<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2`](#cassandra2)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.1.19`](#cassandra2119)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2.2.11`](#cassandra2211)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.0.15`](#cassandra3015)
-	[`cassandra:3.11`](#cassandra311)
-	[`cassandra:3.11.1`](#cassandra3111)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2`

```console
$ docker pull cassandra@sha256:ce07048e2cfec4dd1d6f7ec9627e571a449d5806f66a035e72fbce3c7b2421a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:b79b7a32ffca7a22fcfcfbe2ea131af00dbc0b588b5d19df775ef3a2e3b9a98e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174968637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd25a8bd5bafe8ad7327c634a894534385dea99f908a335f98b5260a16a6d2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:26:11 GMT
ENV CASSANDRA_VERSION=2.2.11
# Fri, 03 Nov 2017 22:27:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:27:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:27:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:27:58 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:27:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:27:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:27:59 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:27:59 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:27:59 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f0ee41abb1cfe0ad6b142f4c6a8ff939ff74d673b28d4ffd9d67e84c9602b4`  
		Last Modified: Fri, 03 Nov 2017 22:30:42 GMT  
		Size: 121.0 MB (120962347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755bc46fb116eec925320cf76bf4a51c97c4bad8defb082dd1d3d1d0d1a457a9`  
		Last Modified: Fri, 03 Nov 2017 22:30:28 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72f518951660e9dbe7c9ed38cb2cb56664c8607a099af9ca6c7340290c7526d`  
		Last Modified: Fri, 03 Nov 2017 22:30:29 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f15618dc447f9116d0bfa468aae3294d3991e7ccb9efc3cacc985650e490e8`  
		Last Modified: Fri, 03 Nov 2017 22:30:28 GMT  
		Size: 22.3 KB (22277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2` - linux; 386

```console
$ docker pull cassandra@sha256:a900ae74f47d04629aa9928bb80a020923b63bed006099cd28b23245ebe8f686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185758999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6a3110f8c2d209a05d8683ac559658608502b46018e701749f265039c630b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:22:21 GMT
ENV CASSANDRA_VERSION=2.2.11
# Mon, 09 Oct 2017 22:24:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:24:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:24:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:24:04 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:24:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:24:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:24:05 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:24:05 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:24:05 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc43348e56073eb8eb6fb3d59138e31bb926f6a542a441595f5d039052683c2`  
		Last Modified: Mon, 09 Oct 2017 22:32:03 GMT  
		Size: 131.6 MB (131595672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7a5102839ea44c32cd071fd7afa30a27d69b56461b2e40c00996a49487a85d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3056533d0af157b79102c6ea3b2f939fcbb779dbcecf995cf75dd0bf4b9a4f8d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70727c9d080eb48370824c9bfef90401ac1677de159c7f0d84d75de0acfe2a0d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 22.3 KB (22275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:bcf84de3091b66a952274282727f49c59e79a0c85ff0ac0c8b93d9dd3859b98f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:3dd9e6aa97ad2c766884e75fa5cb7d9cdb6b463d5173ff62aefd409264be06dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170573355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d48fa4f019246d203813d282b5d40dc49e2c244ea3d0249cdd4a6cd2ecf641f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:24:14 GMT
ENV CASSANDRA_VERSION=2.1.19
# Fri, 03 Nov 2017 22:26:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:26:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:26:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:26:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:26:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:26:03 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:26:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:26:04 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a45bb8deb7cc8e8d22f63685e4719f544fed217f8db29ca54ef1ac05080650`  
		Last Modified: Fri, 03 Nov 2017 22:30:17 GMT  
		Size: 116.6 MB (116568752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf08585f092601d7eac9b633318fd618e24aa8e50c6a7d53878ad2d3fd9496`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 4.7 KB (4674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a699368380e3d3330c92af7ac939983755c44c5e63863c8c1c23d992b47ded52`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a42e0c735d5a078e8e4c4dd75c46a2089f1c3a417e395134d415244892ea55`  
		Last Modified: Fri, 03 Nov 2017 22:30:04 GMT  
		Size: 20.6 KB (20552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:332c44e17759e9a030d566224457c7fa83b16b277e948f4d136b4f737fb6d1d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.3 MB (181345964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c3777463df28c14fefee196ff1936850d03d51bf1bf420aa401408d2b19b25`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:20:43 GMT
ENV CASSANDRA_VERSION=2.1.19
# Mon, 09 Oct 2017 22:22:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:22:08 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:22:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:22:09 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:22:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:22:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:22:10 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:22:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:22:10 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e528a6df911924806b6d67a876e06d0f0f0ccb2b4fbdd2c355c64fdee4e20`  
		Last Modified: Mon, 09 Oct 2017 22:31:22 GMT  
		Size: 127.2 MB (127184330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad1623f1a43fff911c80b28d9244443a58053511fd86f95f0b824399dc8a9e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fb72b5af80f52ec760ac6127b1971852648c76d0fa4acfd9afd84f0634b4f`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7eed1b53a9008773124d3921f31deb336cc5fcf8d727291e45f1925ab0b095`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 20.5 KB (20548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.19`

```console
$ docker pull cassandra@sha256:bcf84de3091b66a952274282727f49c59e79a0c85ff0ac0c8b93d9dd3859b98f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.1.19` - linux; amd64

```console
$ docker pull cassandra@sha256:3dd9e6aa97ad2c766884e75fa5cb7d9cdb6b463d5173ff62aefd409264be06dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170573355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d48fa4f019246d203813d282b5d40dc49e2c244ea3d0249cdd4a6cd2ecf641f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:24:14 GMT
ENV CASSANDRA_VERSION=2.1.19
# Fri, 03 Nov 2017 22:26:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:26:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:26:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:26:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:26:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:26:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:26:03 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:26:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:26:04 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a45bb8deb7cc8e8d22f63685e4719f544fed217f8db29ca54ef1ac05080650`  
		Last Modified: Fri, 03 Nov 2017 22:30:17 GMT  
		Size: 116.6 MB (116568752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf08585f092601d7eac9b633318fd618e24aa8e50c6a7d53878ad2d3fd9496`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 4.7 KB (4674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a699368380e3d3330c92af7ac939983755c44c5e63863c8c1c23d992b47ded52`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a42e0c735d5a078e8e4c4dd75c46a2089f1c3a417e395134d415244892ea55`  
		Last Modified: Fri, 03 Nov 2017 22:30:04 GMT  
		Size: 20.6 KB (20552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1.19` - linux; 386

```console
$ docker pull cassandra@sha256:332c44e17759e9a030d566224457c7fa83b16b277e948f4d136b4f737fb6d1d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.3 MB (181345964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c3777463df28c14fefee196ff1936850d03d51bf1bf420aa401408d2b19b25`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:20:43 GMT
ENV CASSANDRA_VERSION=2.1.19
# Mon, 09 Oct 2017 22:22:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:22:08 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:22:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:22:09 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:22:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:22:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:22:10 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:22:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:22:10 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e528a6df911924806b6d67a876e06d0f0f0ccb2b4fbdd2c355c64fdee4e20`  
		Last Modified: Mon, 09 Oct 2017 22:31:22 GMT  
		Size: 127.2 MB (127184330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad1623f1a43fff911c80b28d9244443a58053511fd86f95f0b824399dc8a9e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fb72b5af80f52ec760ac6127b1971852648c76d0fa4acfd9afd84f0634b4f`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7eed1b53a9008773124d3921f31deb336cc5fcf8d727291e45f1925ab0b095`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 20.5 KB (20548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:ce07048e2cfec4dd1d6f7ec9627e571a449d5806f66a035e72fbce3c7b2421a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:b79b7a32ffca7a22fcfcfbe2ea131af00dbc0b588b5d19df775ef3a2e3b9a98e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174968637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd25a8bd5bafe8ad7327c634a894534385dea99f908a335f98b5260a16a6d2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:26:11 GMT
ENV CASSANDRA_VERSION=2.2.11
# Fri, 03 Nov 2017 22:27:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:27:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:27:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:27:58 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:27:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:27:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:27:59 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:27:59 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:27:59 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f0ee41abb1cfe0ad6b142f4c6a8ff939ff74d673b28d4ffd9d67e84c9602b4`  
		Last Modified: Fri, 03 Nov 2017 22:30:42 GMT  
		Size: 121.0 MB (120962347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755bc46fb116eec925320cf76bf4a51c97c4bad8defb082dd1d3d1d0d1a457a9`  
		Last Modified: Fri, 03 Nov 2017 22:30:28 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72f518951660e9dbe7c9ed38cb2cb56664c8607a099af9ca6c7340290c7526d`  
		Last Modified: Fri, 03 Nov 2017 22:30:29 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f15618dc447f9116d0bfa468aae3294d3991e7ccb9efc3cacc985650e490e8`  
		Last Modified: Fri, 03 Nov 2017 22:30:28 GMT  
		Size: 22.3 KB (22277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2` - linux; 386

```console
$ docker pull cassandra@sha256:a900ae74f47d04629aa9928bb80a020923b63bed006099cd28b23245ebe8f686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185758999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6a3110f8c2d209a05d8683ac559658608502b46018e701749f265039c630b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:22:21 GMT
ENV CASSANDRA_VERSION=2.2.11
# Mon, 09 Oct 2017 22:24:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:24:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:24:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:24:04 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:24:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:24:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:24:05 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:24:05 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:24:05 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc43348e56073eb8eb6fb3d59138e31bb926f6a542a441595f5d039052683c2`  
		Last Modified: Mon, 09 Oct 2017 22:32:03 GMT  
		Size: 131.6 MB (131595672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7a5102839ea44c32cd071fd7afa30a27d69b56461b2e40c00996a49487a85d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3056533d0af157b79102c6ea3b2f939fcbb779dbcecf995cf75dd0bf4b9a4f8d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70727c9d080eb48370824c9bfef90401ac1677de159c7f0d84d75de0acfe2a0d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 22.3 KB (22275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.11`

```console
$ docker pull cassandra@sha256:ce07048e2cfec4dd1d6f7ec9627e571a449d5806f66a035e72fbce3c7b2421a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2.11` - linux; amd64

```console
$ docker pull cassandra@sha256:b79b7a32ffca7a22fcfcfbe2ea131af00dbc0b588b5d19df775ef3a2e3b9a98e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174968637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd25a8bd5bafe8ad7327c634a894534385dea99f908a335f98b5260a16a6d2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:26:11 GMT
ENV CASSANDRA_VERSION=2.2.11
# Fri, 03 Nov 2017 22:27:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:27:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:27:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:27:58 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:27:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:27:58 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:27:59 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:27:59 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:27:59 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f0ee41abb1cfe0ad6b142f4c6a8ff939ff74d673b28d4ffd9d67e84c9602b4`  
		Last Modified: Fri, 03 Nov 2017 22:30:42 GMT  
		Size: 121.0 MB (120962347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755bc46fb116eec925320cf76bf4a51c97c4bad8defb082dd1d3d1d0d1a457a9`  
		Last Modified: Fri, 03 Nov 2017 22:30:28 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72f518951660e9dbe7c9ed38cb2cb56664c8607a099af9ca6c7340290c7526d`  
		Last Modified: Fri, 03 Nov 2017 22:30:29 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f15618dc447f9116d0bfa468aae3294d3991e7ccb9efc3cacc985650e490e8`  
		Last Modified: Fri, 03 Nov 2017 22:30:28 GMT  
		Size: 22.3 KB (22277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2.11` - linux; 386

```console
$ docker pull cassandra@sha256:a900ae74f47d04629aa9928bb80a020923b63bed006099cd28b23245ebe8f686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185758999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6a3110f8c2d209a05d8683ac559658608502b46018e701749f265039c630b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:22:21 GMT
ENV CASSANDRA_VERSION=2.2.11
# Mon, 09 Oct 2017 22:24:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:24:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:24:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:24:04 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:24:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:24:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:24:05 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:24:05 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:24:05 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc43348e56073eb8eb6fb3d59138e31bb926f6a542a441595f5d039052683c2`  
		Last Modified: Mon, 09 Oct 2017 22:32:03 GMT  
		Size: 131.6 MB (131595672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7a5102839ea44c32cd071fd7afa30a27d69b56461b2e40c00996a49487a85d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3056533d0af157b79102c6ea3b2f939fcbb779dbcecf995cf75dd0bf4b9a4f8d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70727c9d080eb48370824c9bfef90401ac1677de159c7f0d84d75de0acfe2a0d`  
		Last Modified: Mon, 09 Oct 2017 22:31:40 GMT  
		Size: 22.3 KB (22275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:2e7a4002cc94bd1105fbe39c499792097b38eee935cf828ba19cc10dd59dc1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:145f5abc2e81e7a135789294b9c594d531fccf3412e6157a549e68cd10485e7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165227227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f98fe54c4501af19011f25763774008275113cf65868bc1f54f66bc24810996`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:29:01 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 03 Nov 2017 22:29:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:29:50 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:29:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:29:51 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:29:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:29:52 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deea70dad3395c1933ea41e375c94028a47701b55a09830ad266db630c53c5c`  
		Last Modified: Fri, 03 Nov 2017 22:31:37 GMT  
		Size: 111.2 MB (111213450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ea18ed8892a09b8e6737a5ff66df17a2821d5e64285e257b8f7bb7413ae88a`  
		Last Modified: Fri, 03 Nov 2017 22:31:21 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397934d2bcbdc507d3df8081a3ce54e6eddf7071ff9b79eecd7e9e65dbe73e8`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33268dfb0105b69fe8618758f71d05bcb5e88b6a1496c2d940f3b9aa03a97703`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4291f16b3e8962e72407dfea3961b375b6a3d41606bda069a073602cc599f54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152327796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4c7fcf3ccf64f2954f56362f710fc40b3a76215a0d76af097b76b3e3412008`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:24:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:24:42 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:25:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:26:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:26:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 22:56:11 GMT
ENV CASSANDRA_VERSION=3.11.1
# Thu, 12 Oct 2017 22:59:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 22:59:14 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 12 Oct 2017 22:59:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 12 Oct 2017 22:59:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 12 Oct 2017 22:59:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:59:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 12 Oct 2017 22:59:20 GMT
VOLUME [/var/lib/cassandra]
# Thu, 12 Oct 2017 22:59:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 12 Oct 2017 22:59:22 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:99f2fad115e9377cf0a0798e0ec1ec4afdadf1c2e6a0594f995a14c0f3a5125e`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ea63199ff36b8f817827562b933e05f558a292368cf6a4d7302039d160aa6f`  
		Last Modified: Mon, 09 Oct 2017 22:39:56 GMT  
		Size: 952.0 KB (952015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db78f4ab7e10cd21b67fbaac68eef41f3833f375c7ed9bf879cb3171d8d36e88`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 364.7 KB (364747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49bf518ffcddf0af11ec9d204affef2443f72ee70e805ff2e69664986145092`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f82bcca437e712804fc33b12286afdff823668259932c629abc3d98697d2709`  
		Last Modified: Mon, 09 Oct 2017 22:39:52 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde556839e47ea6a53fcf2dbdc030a60a409f8ee80efae72e539b689c18a1f8`  
		Last Modified: Thu, 12 Oct 2017 23:01:15 GMT  
		Size: 101.0 MB (101025787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2316929f34db8732bf9bb2e1a3396f342cf120739bcda9b565133b90af0c2add`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db500e0c487c24b004b41c216c0ce8585d2aa0187047730364f525271669f98d`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9826d34b816ab3d0e43f7069d301dccd3169d6dc817123cfe676cf44e8e2f36a`  
		Last Modified: Thu, 12 Oct 2017 23:00:48 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:bf98923d8432aad3e86626ba5fb4b5421b1eb96509001e0432e5cbb6d70d61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166246354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43fa126e4f65ef8f559026faa12f92fbf3e1053d3db28f3ae2f0c172c682ec1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 07:36:05 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 07:37:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 07:37:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 07:37:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 07:37:34 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 07:37:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 07:37:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 07:37:35 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 07:37:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 07:37:36 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21810457736e9e9a1760468df2df0152d416f80c9dd3bbff6733e82d25f58fe9`  
		Last Modified: Fri, 13 Oct 2017 07:38:59 GMT  
		Size: 112.1 MB (112075538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac342159a379ca7dbea1b6768f0e52df12b300e5bc5d58bae44727c2e70b7cf`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72df2f3cf36ac77855d44c0234ab4d0763c658a1579f31a686368eaf880e5d`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7fb8ef0deff7f0ae293b68f9bb0a55ec05a1b45b1d7606b10aa79c9fba4012`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:a165462adc81dedef31d61d3c6c46c478ae4747a855485d6c4dcdd4f06e1edfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155469616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec3091a62acc56c2a1daa5b3af1ed225e68d56fff2b0291ce68f03d8c6c9f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:18:01 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 23:18:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:23:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:24:25 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 23:24:30 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 23:24:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 10:13:51 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 10:21:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 10:21:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 10:21:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 10:21:23 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 10:21:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:21:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 10:21:38 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 10:21:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 10:21:43 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:79171908998f3b6105c63d0c7cd6a4ebd447f312268e2c7a7e190860488f018f`  
		Last Modified: Mon, 09 Oct 2017 23:59:10 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d53d1bff593d1d7a02ef39cb11cd382263ad3e43e171bc3dc634a837314069`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 954.5 KB (954451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0beab1bb5eadcf1e5b456be53502903d2691d8cb65bb5228313d65ef10622e`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 373.3 KB (373322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dab6cce43b742f0aa877d2003321512e0ce84cdfa9f1a6409b781aa3f07701`  
		Last Modified: Mon, 09 Oct 2017 23:59:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12877d3419758101b4c9e9a300e481b62baa1e8b53aa192c4585936f1d99c595`  
		Last Modified: Mon, 09 Oct 2017 23:59:05 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea917b4f9fa1029fb59e54ca3e342d97eee2828d8a557c1ba40659fb8bde04c`  
		Last Modified: Fri, 13 Oct 2017 10:22:51 GMT  
		Size: 102.3 MB (102272622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bee019255d18ccc00350bf1b35d0375e215a0e1f2ef5b9547f78e9919ad31b4`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3852e9c72f4a5088a270cbb8aa7fd6969e4e81446c1a100e2cffd5a0a784d24b`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f45818ced87e2ada1df4e02cdfed28b689347993665acbbf0e4288185fc67c`  
		Last Modified: Fri, 13 Oct 2017 10:22:33 GMT  
		Size: 30.0 KB (30008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:7350413932cca16e3c14f0617f696e9dae5c5e840cd67396f9e98e6cad1f3757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:d326a84dea684762f2b82e56d2eb8e8baffd149ebbe38f9d86d8140924a24922
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160677266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:974e7e5c620cbf7cd144424a77c2cfc6b6bdc73c8e0b3cb564d09f7b99dc8fe0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:28:04 GMT
ENV CASSANDRA_VERSION=3.0.15
# Fri, 03 Nov 2017 22:28:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:28:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:28:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:28:53 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:28:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:28:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:28:54 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:28:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:28:55 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295882ff0073a4ba14b80ee326beef66d40591e5c528efe6fb7085615d2359f1`  
		Last Modified: Fri, 03 Nov 2017 22:31:09 GMT  
		Size: 106.7 MB (106667831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401c7dede31d40057a0a7c31bba6b5387531250a05e4a4a298fdf1fdddd50f8`  
		Last Modified: Fri, 03 Nov 2017 22:30:55 GMT  
		Size: 4.7 KB (4708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e53a8f9011dd3f3f3722292ffa2590be50cb9384786d21869b0b9b4926696`  
		Last Modified: Fri, 03 Nov 2017 22:30:55 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7f2c28b55de0af8d3a3b3646788ba2ca25c22a09623d86c1e637fc2f176ac8`  
		Last Modified: Fri, 03 Nov 2017 22:30:55 GMT  
		Size: 25.4 KB (25351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4a5a00a595ab1de24ce02a48cd3a5dfed7bbff2a03813b41a9bc7a518efdbcb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147784292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed60883a4285a7b39d70b1fe7ac24473a0510b6bd43f1a841eceb0207fcc7b7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:24:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:24:42 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:25:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:26:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:26:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 22:52:42 GMT
ENV CASSANDRA_VERSION=3.0.15
# Thu, 12 Oct 2017 22:55:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 22:55:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 12 Oct 2017 22:55:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 12 Oct 2017 22:55:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 12 Oct 2017 22:55:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:55:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 12 Oct 2017 22:55:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 12 Oct 2017 22:55:49 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 12 Oct 2017 22:55:50 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:99f2fad115e9377cf0a0798e0ec1ec4afdadf1c2e6a0594f995a14c0f3a5125e`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ea63199ff36b8f817827562b933e05f558a292368cf6a4d7302039d160aa6f`  
		Last Modified: Mon, 09 Oct 2017 22:39:56 GMT  
		Size: 952.0 KB (952015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db78f4ab7e10cd21b67fbaac68eef41f3833f375c7ed9bf879cb3171d8d36e88`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 364.7 KB (364747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49bf518ffcddf0af11ec9d204affef2443f72ee70e805ff2e69664986145092`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f82bcca437e712804fc33b12286afdff823668259932c629abc3d98697d2709`  
		Last Modified: Mon, 09 Oct 2017 22:39:52 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496fea65c6f0b62d1bf4140476ddd070a5261e01d4373086f0899acf480874dc`  
		Last Modified: Thu, 12 Oct 2017 23:00:18 GMT  
		Size: 96.5 MB (96486626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769546d72bcf747345549ca577e54060cbfd50f6ca82c1214b8c664faed397`  
		Last Modified: Thu, 12 Oct 2017 22:59:52 GMT  
		Size: 4.7 KB (4712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23db39b58255487116bd5a426d93b541c1771f4f7f6ad643449475c8c58d7a`  
		Last Modified: Thu, 12 Oct 2017 22:59:52 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e31d8018c74535300c1cf6d864f3d6089abb4d12c4381c50b11ad15adc97df`  
		Last Modified: Thu, 12 Oct 2017 22:59:52 GMT  
		Size: 25.3 KB (25348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:f4b25f55d31a91789c24743d42f42e9d7be885a8ad5d03be84431675d38f0529
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161694293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ecc76b104c8e2c2a312dfaf676fa6734de0e3198bc6bfdf89e70fefa40bf23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 07:32:50 GMT
ENV CASSANDRA_VERSION=3.0.15
# Fri, 13 Oct 2017 07:34:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 07:34:10 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 07:34:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 07:34:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 07:34:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 07:34:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 07:34:12 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 07:34:12 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 07:34:12 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab5acfae9208172662e62c17452c960a32642239d7b76e74b87da5c539b50b1`  
		Last Modified: Fri, 13 Oct 2017 07:38:24 GMT  
		Size: 107.5 MB (107527822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67f053a9ef4a9729f2d6fbd558a4ad76df71b7370a60dabc99eb968b0abced4`  
		Last Modified: Fri, 13 Oct 2017 07:38:05 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed229a2af020b89413fbece2364faf7f75c8edbde73a6016b26e906a2802d0d6`  
		Last Modified: Fri, 13 Oct 2017 07:38:05 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ed909af6c61863835872b99b206c23788a8c42b14f850ae789af9073c83e4c`  
		Last Modified: Fri, 13 Oct 2017 07:38:05 GMT  
		Size: 25.4 KB (25351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:d3020ebe8f673f971e9214530a32dae884f757cee37280499830ed163432a402
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150924747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5808326bbc989e0abb06ecbf01a2ab39d588339803a8e99e0c7c6e39b42cc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:18:01 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 23:18:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:23:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:24:25 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 23:24:30 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 23:24:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 10:05:21 GMT
ENV CASSANDRA_VERSION=3.0.15
# Fri, 13 Oct 2017 10:13:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 10:13:07 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 10:13:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 10:13:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 10:13:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:13:26 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 10:13:29 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 10:13:31 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 10:13:34 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:79171908998f3b6105c63d0c7cd6a4ebd447f312268e2c7a7e190860488f018f`  
		Last Modified: Mon, 09 Oct 2017 23:59:10 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d53d1bff593d1d7a02ef39cb11cd382263ad3e43e171bc3dc634a837314069`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 954.5 KB (954451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0beab1bb5eadcf1e5b456be53502903d2691d8cb65bb5228313d65ef10622e`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 373.3 KB (373322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dab6cce43b742f0aa877d2003321512e0ce84cdfa9f1a6409b781aa3f07701`  
		Last Modified: Mon, 09 Oct 2017 23:59:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12877d3419758101b4c9e9a300e481b62baa1e8b53aa192c4585936f1d99c595`  
		Last Modified: Mon, 09 Oct 2017 23:59:05 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f650cdf990019db24c66ed06287923e7f7557d78ca7990f760ba5e4f22370e6`  
		Last Modified: Fri, 13 Oct 2017 10:22:15 GMT  
		Size: 97.7 MB (97735624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efa1d9dc8f3472b2e694cc3d37be50053917e04c0c9aa913148bb90236b0971`  
		Last Modified: Fri, 13 Oct 2017 10:21:57 GMT  
		Size: 4.7 KB (4711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2b144c797d162573acc192a37a99af757d7e55a4b385936b582698bee90e50`  
		Last Modified: Fri, 13 Oct 2017 10:21:57 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cb855239f75e2ac7a4dffe855043698f7910b7b0e372eff9228d5b51b71de3`  
		Last Modified: Fri, 13 Oct 2017 10:21:57 GMT  
		Size: 25.3 KB (25349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.15`

```console
$ docker pull cassandra@sha256:7350413932cca16e3c14f0617f696e9dae5c5e840cd67396f9e98e6cad1f3757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0.15` - linux; amd64

```console
$ docker pull cassandra@sha256:d326a84dea684762f2b82e56d2eb8e8baffd149ebbe38f9d86d8140924a24922
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160677266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:974e7e5c620cbf7cd144424a77c2cfc6b6bdc73c8e0b3cb564d09f7b99dc8fe0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:28:04 GMT
ENV CASSANDRA_VERSION=3.0.15
# Fri, 03 Nov 2017 22:28:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:28:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:28:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:28:53 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:28:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:28:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:28:54 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:28:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:28:55 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295882ff0073a4ba14b80ee326beef66d40591e5c528efe6fb7085615d2359f1`  
		Last Modified: Fri, 03 Nov 2017 22:31:09 GMT  
		Size: 106.7 MB (106667831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401c7dede31d40057a0a7c31bba6b5387531250a05e4a4a298fdf1fdddd50f8`  
		Last Modified: Fri, 03 Nov 2017 22:30:55 GMT  
		Size: 4.7 KB (4708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e53a8f9011dd3f3f3722292ffa2590be50cb9384786d21869b0b9b4926696`  
		Last Modified: Fri, 03 Nov 2017 22:30:55 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7f2c28b55de0af8d3a3b3646788ba2ca25c22a09623d86c1e637fc2f176ac8`  
		Last Modified: Fri, 03 Nov 2017 22:30:55 GMT  
		Size: 25.4 KB (25351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.15` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4a5a00a595ab1de24ce02a48cd3a5dfed7bbff2a03813b41a9bc7a518efdbcb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147784292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed60883a4285a7b39d70b1fe7ac24473a0510b6bd43f1a841eceb0207fcc7b7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:24:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:24:42 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:25:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:26:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:26:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 22:52:42 GMT
ENV CASSANDRA_VERSION=3.0.15
# Thu, 12 Oct 2017 22:55:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 22:55:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 12 Oct 2017 22:55:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 12 Oct 2017 22:55:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 12 Oct 2017 22:55:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:55:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 12 Oct 2017 22:55:48 GMT
VOLUME [/var/lib/cassandra]
# Thu, 12 Oct 2017 22:55:49 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 12 Oct 2017 22:55:50 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:99f2fad115e9377cf0a0798e0ec1ec4afdadf1c2e6a0594f995a14c0f3a5125e`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ea63199ff36b8f817827562b933e05f558a292368cf6a4d7302039d160aa6f`  
		Last Modified: Mon, 09 Oct 2017 22:39:56 GMT  
		Size: 952.0 KB (952015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db78f4ab7e10cd21b67fbaac68eef41f3833f375c7ed9bf879cb3171d8d36e88`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 364.7 KB (364747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49bf518ffcddf0af11ec9d204affef2443f72ee70e805ff2e69664986145092`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f82bcca437e712804fc33b12286afdff823668259932c629abc3d98697d2709`  
		Last Modified: Mon, 09 Oct 2017 22:39:52 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496fea65c6f0b62d1bf4140476ddd070a5261e01d4373086f0899acf480874dc`  
		Last Modified: Thu, 12 Oct 2017 23:00:18 GMT  
		Size: 96.5 MB (96486626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5769546d72bcf747345549ca577e54060cbfd50f6ca82c1214b8c664faed397`  
		Last Modified: Thu, 12 Oct 2017 22:59:52 GMT  
		Size: 4.7 KB (4712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23db39b58255487116bd5a426d93b541c1771f4f7f6ad643449475c8c58d7a`  
		Last Modified: Thu, 12 Oct 2017 22:59:52 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e31d8018c74535300c1cf6d864f3d6089abb4d12c4381c50b11ad15adc97df`  
		Last Modified: Thu, 12 Oct 2017 22:59:52 GMT  
		Size: 25.3 KB (25348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.15` - linux; 386

```console
$ docker pull cassandra@sha256:f4b25f55d31a91789c24743d42f42e9d7be885a8ad5d03be84431675d38f0529
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161694293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ecc76b104c8e2c2a312dfaf676fa6734de0e3198bc6bfdf89e70fefa40bf23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 07:32:50 GMT
ENV CASSANDRA_VERSION=3.0.15
# Fri, 13 Oct 2017 07:34:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 07:34:10 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 07:34:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 07:34:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 07:34:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 07:34:12 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 07:34:12 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 07:34:12 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 07:34:12 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab5acfae9208172662e62c17452c960a32642239d7b76e74b87da5c539b50b1`  
		Last Modified: Fri, 13 Oct 2017 07:38:24 GMT  
		Size: 107.5 MB (107527822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67f053a9ef4a9729f2d6fbd558a4ad76df71b7370a60dabc99eb968b0abced4`  
		Last Modified: Fri, 13 Oct 2017 07:38:05 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed229a2af020b89413fbece2364faf7f75c8edbde73a6016b26e906a2802d0d6`  
		Last Modified: Fri, 13 Oct 2017 07:38:05 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ed909af6c61863835872b99b206c23788a8c42b14f850ae789af9073c83e4c`  
		Last Modified: Fri, 13 Oct 2017 07:38:05 GMT  
		Size: 25.4 KB (25351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.15` - linux; ppc64le

```console
$ docker pull cassandra@sha256:d3020ebe8f673f971e9214530a32dae884f757cee37280499830ed163432a402
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150924747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5808326bbc989e0abb06ecbf01a2ab39d588339803a8e99e0c7c6e39b42cc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:18:01 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 23:18:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:23:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:24:25 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 23:24:30 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 23:24:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 10:05:21 GMT
ENV CASSANDRA_VERSION=3.0.15
# Fri, 13 Oct 2017 10:13:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 10:13:07 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 10:13:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 10:13:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 10:13:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:13:26 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 10:13:29 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 10:13:31 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 10:13:34 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:79171908998f3b6105c63d0c7cd6a4ebd447f312268e2c7a7e190860488f018f`  
		Last Modified: Mon, 09 Oct 2017 23:59:10 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d53d1bff593d1d7a02ef39cb11cd382263ad3e43e171bc3dc634a837314069`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 954.5 KB (954451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0beab1bb5eadcf1e5b456be53502903d2691d8cb65bb5228313d65ef10622e`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 373.3 KB (373322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dab6cce43b742f0aa877d2003321512e0ce84cdfa9f1a6409b781aa3f07701`  
		Last Modified: Mon, 09 Oct 2017 23:59:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12877d3419758101b4c9e9a300e481b62baa1e8b53aa192c4585936f1d99c595`  
		Last Modified: Mon, 09 Oct 2017 23:59:05 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f650cdf990019db24c66ed06287923e7f7557d78ca7990f760ba5e4f22370e6`  
		Last Modified: Fri, 13 Oct 2017 10:22:15 GMT  
		Size: 97.7 MB (97735624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efa1d9dc8f3472b2e694cc3d37be50053917e04c0c9aa913148bb90236b0971`  
		Last Modified: Fri, 13 Oct 2017 10:21:57 GMT  
		Size: 4.7 KB (4711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2b144c797d162573acc192a37a99af757d7e55a4b385936b582698bee90e50`  
		Last Modified: Fri, 13 Oct 2017 10:21:57 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cb855239f75e2ac7a4dffe855043698f7910b7b0e372eff9228d5b51b71de3`  
		Last Modified: Fri, 13 Oct 2017 10:21:57 GMT  
		Size: 25.3 KB (25349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:2e7a4002cc94bd1105fbe39c499792097b38eee935cf828ba19cc10dd59dc1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:145f5abc2e81e7a135789294b9c594d531fccf3412e6157a549e68cd10485e7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165227227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f98fe54c4501af19011f25763774008275113cf65868bc1f54f66bc24810996`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:29:01 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 03 Nov 2017 22:29:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:29:50 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:29:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:29:51 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:29:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:29:52 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deea70dad3395c1933ea41e375c94028a47701b55a09830ad266db630c53c5c`  
		Last Modified: Fri, 03 Nov 2017 22:31:37 GMT  
		Size: 111.2 MB (111213450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ea18ed8892a09b8e6737a5ff66df17a2821d5e64285e257b8f7bb7413ae88a`  
		Last Modified: Fri, 03 Nov 2017 22:31:21 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397934d2bcbdc507d3df8081a3ce54e6eddf7071ff9b79eecd7e9e65dbe73e8`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33268dfb0105b69fe8618758f71d05bcb5e88b6a1496c2d940f3b9aa03a97703`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4291f16b3e8962e72407dfea3961b375b6a3d41606bda069a073602cc599f54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152327796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4c7fcf3ccf64f2954f56362f710fc40b3a76215a0d76af097b76b3e3412008`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:24:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:24:42 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:25:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:26:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:26:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 22:56:11 GMT
ENV CASSANDRA_VERSION=3.11.1
# Thu, 12 Oct 2017 22:59:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 22:59:14 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 12 Oct 2017 22:59:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 12 Oct 2017 22:59:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 12 Oct 2017 22:59:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:59:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 12 Oct 2017 22:59:20 GMT
VOLUME [/var/lib/cassandra]
# Thu, 12 Oct 2017 22:59:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 12 Oct 2017 22:59:22 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:99f2fad115e9377cf0a0798e0ec1ec4afdadf1c2e6a0594f995a14c0f3a5125e`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ea63199ff36b8f817827562b933e05f558a292368cf6a4d7302039d160aa6f`  
		Last Modified: Mon, 09 Oct 2017 22:39:56 GMT  
		Size: 952.0 KB (952015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db78f4ab7e10cd21b67fbaac68eef41f3833f375c7ed9bf879cb3171d8d36e88`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 364.7 KB (364747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49bf518ffcddf0af11ec9d204affef2443f72ee70e805ff2e69664986145092`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f82bcca437e712804fc33b12286afdff823668259932c629abc3d98697d2709`  
		Last Modified: Mon, 09 Oct 2017 22:39:52 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde556839e47ea6a53fcf2dbdc030a60a409f8ee80efae72e539b689c18a1f8`  
		Last Modified: Thu, 12 Oct 2017 23:01:15 GMT  
		Size: 101.0 MB (101025787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2316929f34db8732bf9bb2e1a3396f342cf120739bcda9b565133b90af0c2add`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db500e0c487c24b004b41c216c0ce8585d2aa0187047730364f525271669f98d`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9826d34b816ab3d0e43f7069d301dccd3169d6dc817123cfe676cf44e8e2f36a`  
		Last Modified: Thu, 12 Oct 2017 23:00:48 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:bf98923d8432aad3e86626ba5fb4b5421b1eb96509001e0432e5cbb6d70d61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166246354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43fa126e4f65ef8f559026faa12f92fbf3e1053d3db28f3ae2f0c172c682ec1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 07:36:05 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 07:37:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 07:37:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 07:37:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 07:37:34 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 07:37:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 07:37:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 07:37:35 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 07:37:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 07:37:36 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21810457736e9e9a1760468df2df0152d416f80c9dd3bbff6733e82d25f58fe9`  
		Last Modified: Fri, 13 Oct 2017 07:38:59 GMT  
		Size: 112.1 MB (112075538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac342159a379ca7dbea1b6768f0e52df12b300e5bc5d58bae44727c2e70b7cf`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72df2f3cf36ac77855d44c0234ab4d0763c658a1579f31a686368eaf880e5d`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7fb8ef0deff7f0ae293b68f9bb0a55ec05a1b45b1d7606b10aa79c9fba4012`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:a165462adc81dedef31d61d3c6c46c478ae4747a855485d6c4dcdd4f06e1edfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155469616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec3091a62acc56c2a1daa5b3af1ed225e68d56fff2b0291ce68f03d8c6c9f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:18:01 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 23:18:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:23:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:24:25 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 23:24:30 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 23:24:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 10:13:51 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 10:21:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 10:21:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 10:21:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 10:21:23 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 10:21:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:21:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 10:21:38 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 10:21:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 10:21:43 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:79171908998f3b6105c63d0c7cd6a4ebd447f312268e2c7a7e190860488f018f`  
		Last Modified: Mon, 09 Oct 2017 23:59:10 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d53d1bff593d1d7a02ef39cb11cd382263ad3e43e171bc3dc634a837314069`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 954.5 KB (954451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0beab1bb5eadcf1e5b456be53502903d2691d8cb65bb5228313d65ef10622e`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 373.3 KB (373322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dab6cce43b742f0aa877d2003321512e0ce84cdfa9f1a6409b781aa3f07701`  
		Last Modified: Mon, 09 Oct 2017 23:59:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12877d3419758101b4c9e9a300e481b62baa1e8b53aa192c4585936f1d99c595`  
		Last Modified: Mon, 09 Oct 2017 23:59:05 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea917b4f9fa1029fb59e54ca3e342d97eee2828d8a557c1ba40659fb8bde04c`  
		Last Modified: Fri, 13 Oct 2017 10:22:51 GMT  
		Size: 102.3 MB (102272622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bee019255d18ccc00350bf1b35d0375e215a0e1f2ef5b9547f78e9919ad31b4`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3852e9c72f4a5088a270cbb8aa7fd6969e4e81446c1a100e2cffd5a0a784d24b`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f45818ced87e2ada1df4e02cdfed28b689347993665acbbf0e4288185fc67c`  
		Last Modified: Fri, 13 Oct 2017 10:22:33 GMT  
		Size: 30.0 KB (30008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.1`

```console
$ docker pull cassandra@sha256:2e7a4002cc94bd1105fbe39c499792097b38eee935cf828ba19cc10dd59dc1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11.1` - linux; amd64

```console
$ docker pull cassandra@sha256:145f5abc2e81e7a135789294b9c594d531fccf3412e6157a549e68cd10485e7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165227227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f98fe54c4501af19011f25763774008275113cf65868bc1f54f66bc24810996`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:29:01 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 03 Nov 2017 22:29:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:29:50 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:29:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:29:51 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:29:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:29:52 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deea70dad3395c1933ea41e375c94028a47701b55a09830ad266db630c53c5c`  
		Last Modified: Fri, 03 Nov 2017 22:31:37 GMT  
		Size: 111.2 MB (111213450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ea18ed8892a09b8e6737a5ff66df17a2821d5e64285e257b8f7bb7413ae88a`  
		Last Modified: Fri, 03 Nov 2017 22:31:21 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397934d2bcbdc507d3df8081a3ce54e6eddf7071ff9b79eecd7e9e65dbe73e8`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33268dfb0105b69fe8618758f71d05bcb5e88b6a1496c2d940f3b9aa03a97703`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.1` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4291f16b3e8962e72407dfea3961b375b6a3d41606bda069a073602cc599f54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152327796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4c7fcf3ccf64f2954f56362f710fc40b3a76215a0d76af097b76b3e3412008`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:24:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:24:42 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:25:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:26:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:26:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 22:56:11 GMT
ENV CASSANDRA_VERSION=3.11.1
# Thu, 12 Oct 2017 22:59:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 22:59:14 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 12 Oct 2017 22:59:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 12 Oct 2017 22:59:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 12 Oct 2017 22:59:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:59:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 12 Oct 2017 22:59:20 GMT
VOLUME [/var/lib/cassandra]
# Thu, 12 Oct 2017 22:59:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 12 Oct 2017 22:59:22 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:99f2fad115e9377cf0a0798e0ec1ec4afdadf1c2e6a0594f995a14c0f3a5125e`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ea63199ff36b8f817827562b933e05f558a292368cf6a4d7302039d160aa6f`  
		Last Modified: Mon, 09 Oct 2017 22:39:56 GMT  
		Size: 952.0 KB (952015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db78f4ab7e10cd21b67fbaac68eef41f3833f375c7ed9bf879cb3171d8d36e88`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 364.7 KB (364747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49bf518ffcddf0af11ec9d204affef2443f72ee70e805ff2e69664986145092`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f82bcca437e712804fc33b12286afdff823668259932c629abc3d98697d2709`  
		Last Modified: Mon, 09 Oct 2017 22:39:52 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde556839e47ea6a53fcf2dbdc030a60a409f8ee80efae72e539b689c18a1f8`  
		Last Modified: Thu, 12 Oct 2017 23:01:15 GMT  
		Size: 101.0 MB (101025787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2316929f34db8732bf9bb2e1a3396f342cf120739bcda9b565133b90af0c2add`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db500e0c487c24b004b41c216c0ce8585d2aa0187047730364f525271669f98d`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9826d34b816ab3d0e43f7069d301dccd3169d6dc817123cfe676cf44e8e2f36a`  
		Last Modified: Thu, 12 Oct 2017 23:00:48 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.1` - linux; 386

```console
$ docker pull cassandra@sha256:bf98923d8432aad3e86626ba5fb4b5421b1eb96509001e0432e5cbb6d70d61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166246354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43fa126e4f65ef8f559026faa12f92fbf3e1053d3db28f3ae2f0c172c682ec1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 07:36:05 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 07:37:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 07:37:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 07:37:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 07:37:34 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 07:37:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 07:37:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 07:37:35 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 07:37:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 07:37:36 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21810457736e9e9a1760468df2df0152d416f80c9dd3bbff6733e82d25f58fe9`  
		Last Modified: Fri, 13 Oct 2017 07:38:59 GMT  
		Size: 112.1 MB (112075538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac342159a379ca7dbea1b6768f0e52df12b300e5bc5d58bae44727c2e70b7cf`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72df2f3cf36ac77855d44c0234ab4d0763c658a1579f31a686368eaf880e5d`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7fb8ef0deff7f0ae293b68f9bb0a55ec05a1b45b1d7606b10aa79c9fba4012`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.1` - linux; ppc64le

```console
$ docker pull cassandra@sha256:a165462adc81dedef31d61d3c6c46c478ae4747a855485d6c4dcdd4f06e1edfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155469616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec3091a62acc56c2a1daa5b3af1ed225e68d56fff2b0291ce68f03d8c6c9f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:18:01 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 23:18:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:23:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:24:25 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 23:24:30 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 23:24:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 10:13:51 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 10:21:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 10:21:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 10:21:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 10:21:23 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 10:21:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:21:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 10:21:38 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 10:21:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 10:21:43 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:79171908998f3b6105c63d0c7cd6a4ebd447f312268e2c7a7e190860488f018f`  
		Last Modified: Mon, 09 Oct 2017 23:59:10 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d53d1bff593d1d7a02ef39cb11cd382263ad3e43e171bc3dc634a837314069`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 954.5 KB (954451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0beab1bb5eadcf1e5b456be53502903d2691d8cb65bb5228313d65ef10622e`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 373.3 KB (373322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dab6cce43b742f0aa877d2003321512e0ce84cdfa9f1a6409b781aa3f07701`  
		Last Modified: Mon, 09 Oct 2017 23:59:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12877d3419758101b4c9e9a300e481b62baa1e8b53aa192c4585936f1d99c595`  
		Last Modified: Mon, 09 Oct 2017 23:59:05 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea917b4f9fa1029fb59e54ca3e342d97eee2828d8a557c1ba40659fb8bde04c`  
		Last Modified: Fri, 13 Oct 2017 10:22:51 GMT  
		Size: 102.3 MB (102272622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bee019255d18ccc00350bf1b35d0375e215a0e1f2ef5b9547f78e9919ad31b4`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3852e9c72f4a5088a270cbb8aa7fd6969e4e81446c1a100e2cffd5a0a784d24b`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f45818ced87e2ada1df4e02cdfed28b689347993665acbbf0e4288185fc67c`  
		Last Modified: Fri, 13 Oct 2017 10:22:33 GMT  
		Size: 30.0 KB (30008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:2e7a4002cc94bd1105fbe39c499792097b38eee935cf828ba19cc10dd59dc1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:145f5abc2e81e7a135789294b9c594d531fccf3412e6157a549e68cd10485e7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165227227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f98fe54c4501af19011f25763774008275113cf65868bc1f54f66bc24810996`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:23:34 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 03 Nov 2017 22:23:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:23:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 22:24:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:24:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 03 Nov 2017 22:24:11 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 03 Nov 2017 22:24:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:29:01 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 03 Nov 2017 22:29:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 03 Nov 2017 22:29:50 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 03 Nov 2017 22:29:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 03 Nov 2017 22:29:51 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 03 Nov 2017 22:29:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:29:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 03 Nov 2017 22:29:52 GMT
VOLUME [/var/lib/cassandra]
# Fri, 03 Nov 2017 22:29:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 03 Nov 2017 22:29:52 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:2e999997009123565830e63005a5c84d85cca72ca4af7fcd7a03d20c9a27b76c`  
		Last Modified: Fri, 03 Nov 2017 22:30:06 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de73773f7daf510db00e7abb8275a00f124eb7f0a623fcf48e24da9fb9481876`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 985.1 KB (985128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ba48dc69c770c3a6c798dbf11ca70400f1457641d316aa1c63835598387525`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 377.6 KB (377586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eab53d8d0004d76f8b2314b906800a75cee3f170e194024e83520bca9c9315`  
		Last Modified: Fri, 03 Nov 2017 22:30:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3f2fcd43aee614f32e027fbfd19f79abe6f9da8e295369fd5e807a38f9124`  
		Last Modified: Fri, 03 Nov 2017 22:30:03 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deea70dad3395c1933ea41e375c94028a47701b55a09830ad266db630c53c5c`  
		Last Modified: Fri, 03 Nov 2017 22:31:37 GMT  
		Size: 111.2 MB (111213450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ea18ed8892a09b8e6737a5ff66df17a2821d5e64285e257b8f7bb7413ae88a`  
		Last Modified: Fri, 03 Nov 2017 22:31:21 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397934d2bcbdc507d3df8081a3ce54e6eddf7071ff9b79eecd7e9e65dbe73e8`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33268dfb0105b69fe8618758f71d05bcb5e88b6a1496c2d940f3b9aa03a97703`  
		Last Modified: Fri, 03 Nov 2017 22:31:20 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:4291f16b3e8962e72407dfea3961b375b6a3d41606bda069a073602cc599f54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152327796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4c7fcf3ccf64f2954f56362f710fc40b3a76215a0d76af097b76b3e3412008`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:24:42 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:24:42 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:25:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:26:11 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:26:12 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:26:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 12 Oct 2017 22:56:11 GMT
ENV CASSANDRA_VERSION=3.11.1
# Thu, 12 Oct 2017 22:59:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 12 Oct 2017 22:59:14 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 12 Oct 2017 22:59:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Thu, 12 Oct 2017 22:59:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 12 Oct 2017 22:59:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Oct 2017 22:59:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 12 Oct 2017 22:59:20 GMT
VOLUME [/var/lib/cassandra]
# Thu, 12 Oct 2017 22:59:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 12 Oct 2017 22:59:22 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:99f2fad115e9377cf0a0798e0ec1ec4afdadf1c2e6a0594f995a14c0f3a5125e`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ea63199ff36b8f817827562b933e05f558a292368cf6a4d7302039d160aa6f`  
		Last Modified: Mon, 09 Oct 2017 22:39:56 GMT  
		Size: 952.0 KB (952015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db78f4ab7e10cd21b67fbaac68eef41f3833f375c7ed9bf879cb3171d8d36e88`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 364.7 KB (364747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49bf518ffcddf0af11ec9d204affef2443f72ee70e805ff2e69664986145092`  
		Last Modified: Mon, 09 Oct 2017 22:39:55 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f82bcca437e712804fc33b12286afdff823668259932c629abc3d98697d2709`  
		Last Modified: Mon, 09 Oct 2017 22:39:52 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde556839e47ea6a53fcf2dbdc030a60a409f8ee80efae72e539b689c18a1f8`  
		Last Modified: Thu, 12 Oct 2017 23:01:15 GMT  
		Size: 101.0 MB (101025787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2316929f34db8732bf9bb2e1a3396f342cf120739bcda9b565133b90af0c2add`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db500e0c487c24b004b41c216c0ce8585d2aa0187047730364f525271669f98d`  
		Last Modified: Thu, 12 Oct 2017 23:00:47 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9826d34b816ab3d0e43f7069d301dccd3169d6dc817123cfe676cf44e8e2f36a`  
		Last Modified: Thu, 12 Oct 2017 23:00:48 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:bf98923d8432aad3e86626ba5fb4b5421b1eb96509001e0432e5cbb6d70d61a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166246354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43fa126e4f65ef8f559026faa12f92fbf3e1053d3db28f3ae2f0c172c682ec1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:19:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:19:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:20:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:20:33 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:20:33 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:20:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 07:36:05 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 07:37:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 07:37:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 07:37:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 07:37:34 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 07:37:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 07:37:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 07:37:35 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 07:37:36 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 07:37:36 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:8d954c6da23858bd5d150052f57d7c7aa8b1e9e4b55d557991326e66bc2fc24c`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8889156eca6d0832b726606f42131ba15496e2bc3a8928dbe2b5b752d2978edf`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 964.0 KB (964037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02655408464614347f02615c18819a1c1d795487a99292a032e10f72d377319`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 377.0 KB (377016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1b2d9e0ac042dd0556f71a3f7ff80672e1ac7a50bb4709a85c41b410760e0`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e08b3330960270f714c909895d1a13d60c9f7cde16c54266bd713ff5f90b99`  
		Last Modified: Mon, 09 Oct 2017 22:31:03 GMT  
		Size: 18.2 KB (18230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21810457736e9e9a1760468df2df0152d416f80c9dd3bbff6733e82d25f58fe9`  
		Last Modified: Fri, 13 Oct 2017 07:38:59 GMT  
		Size: 112.1 MB (112075538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac342159a379ca7dbea1b6768f0e52df12b300e5bc5d58bae44727c2e70b7cf`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72df2f3cf36ac77855d44c0234ab4d0763c658a1579f31a686368eaf880e5d`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7fb8ef0deff7f0ae293b68f9bb0a55ec05a1b45b1d7606b10aa79c9fba4012`  
		Last Modified: Fri, 13 Oct 2017 07:38:42 GMT  
		Size: 30.0 KB (30004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:a165462adc81dedef31d61d3c6c46c478ae4747a855485d6c4dcdd4f06e1edfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155469616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ec3091a62acc56c2a1daa5b3af1ed225e68d56fff2b0291ce68f03d8c6c9f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:18:01 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 23:18:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:23:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:24:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:24:25 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 23:24:30 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 23:24:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Oct 2017 10:13:51 GMT
ENV CASSANDRA_VERSION=3.11.1
# Fri, 13 Oct 2017 10:21:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 13 Oct 2017 10:21:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Oct 2017 10:21:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 13 Oct 2017 10:21:23 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Oct 2017 10:21:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:21:35 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Oct 2017 10:21:38 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Oct 2017 10:21:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Oct 2017 10:21:43 GMT
CMD ["cassandra" "-f"]
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
	-	`sha256:79171908998f3b6105c63d0c7cd6a4ebd447f312268e2c7a7e190860488f018f`  
		Last Modified: Mon, 09 Oct 2017 23:59:10 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d53d1bff593d1d7a02ef39cb11cd382263ad3e43e171bc3dc634a837314069`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 954.5 KB (954451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0beab1bb5eadcf1e5b456be53502903d2691d8cb65bb5228313d65ef10622e`  
		Last Modified: Mon, 09 Oct 2017 23:59:09 GMT  
		Size: 373.3 KB (373322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dab6cce43b742f0aa877d2003321512e0ce84cdfa9f1a6409b781aa3f07701`  
		Last Modified: Mon, 09 Oct 2017 23:59:08 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12877d3419758101b4c9e9a300e481b62baa1e8b53aa192c4585936f1d99c595`  
		Last Modified: Mon, 09 Oct 2017 23:59:05 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea917b4f9fa1029fb59e54ca3e342d97eee2828d8a557c1ba40659fb8bde04c`  
		Last Modified: Fri, 13 Oct 2017 10:22:51 GMT  
		Size: 102.3 MB (102272622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bee019255d18ccc00350bf1b35d0375e215a0e1f2ef5b9547f78e9919ad31b4`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3852e9c72f4a5088a270cbb8aa7fd6969e4e81446c1a100e2cffd5a0a784d24b`  
		Last Modified: Fri, 13 Oct 2017 10:22:32 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f45818ced87e2ada1df4e02cdfed28b689347993665acbbf0e4288185fc67c`  
		Last Modified: Fri, 13 Oct 2017 10:22:33 GMT  
		Size: 30.0 KB (30008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
