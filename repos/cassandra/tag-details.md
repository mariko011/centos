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
$ docker pull cassandra@sha256:0c3cdcccb7795c55772c39f29c9ef7367760bcace6f1b8948e7b863f797fcaa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:1af7a8551c183e0942d32176095e850cc0d084f3c5bb112b8b74650ca1040911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174520607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7903aea33140a6c9cafbf76bcf6ac0b63ac3db7feea272525d1e52d395f8224`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:18:48 GMT
ENV CASSANDRA_VERSION=2.2.11
# Mon, 09 Oct 2017 22:19:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:19:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:19:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:19:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:19:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:19:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:19:57 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:19:57 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:19:57 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0649962e87b944bedce9563e334cd3bd7b96e7b2f3c473dc8ab027e8f34a588a`  
		Last Modified: Mon, 09 Oct 2017 22:23:35 GMT  
		Size: 120.5 MB (120514410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b662f2a22ad71714f45e44e7a3ea9317cdb92904231339ab97b7028a8adb57`  
		Last Modified: Mon, 09 Oct 2017 22:23:11 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dfb19cf799a652c160200bb7f4b72beed5ff369b3ada9951de8941c7dca842`  
		Last Modified: Mon, 09 Oct 2017 22:23:12 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883255008a2b7b8533afe4c04682c84c76d2850dc6cde3ae6aab1aa93ad299c6`  
		Last Modified: Mon, 09 Oct 2017 22:23:12 GMT  
		Size: 22.3 KB (22275 bytes)  
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
$ docker pull cassandra@sha256:8e468c806d685a248e9e484e44a05c0183bed9e9e953c7d1ec481d783cb1bb3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:13d55812add6d9a3692ffcbceb11ef83e8e3dded0ef9ec24dc1ce73ba98296c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170126373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb47715095d11b0e956aa6182eebe07a1cc258020ded2e234de7b238af927bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:16:54 GMT
ENV CASSANDRA_VERSION=2.1.19
# Mon, 09 Oct 2017 22:18:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:18:25 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:18:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:18:26 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:18:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:18:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:18:27 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:18:27 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:18:27 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b65c8ecb16db0233c57a2ab5cdfb8a348b96a7a500271f261c3123587e6735`  
		Last Modified: Mon, 09 Oct 2017 22:22:53 GMT  
		Size: 116.1 MB (116121869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479fb0d84b243f106d52a54677bb832a5b25f54185a146731f188461c630d242`  
		Last Modified: Mon, 09 Oct 2017 22:22:34 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3733e6ff7676ed95d0bd3cabdd39db16a029b9d6e8b6e15fdd5d89a4987307`  
		Last Modified: Mon, 09 Oct 2017 22:22:34 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca0fb2c66af55d3c8189b410d33728f61b20535193c5573064eaab4d7247619`  
		Last Modified: Mon, 09 Oct 2017 22:22:34 GMT  
		Size: 20.5 KB (20549 bytes)  
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
$ docker pull cassandra@sha256:8e468c806d685a248e9e484e44a05c0183bed9e9e953c7d1ec481d783cb1bb3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.1.19` - linux; amd64

```console
$ docker pull cassandra@sha256:13d55812add6d9a3692ffcbceb11ef83e8e3dded0ef9ec24dc1ce73ba98296c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170126373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb47715095d11b0e956aa6182eebe07a1cc258020ded2e234de7b238af927bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:16:54 GMT
ENV CASSANDRA_VERSION=2.1.19
# Mon, 09 Oct 2017 22:18:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:18:25 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:18:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:18:26 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:18:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:18:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:18:27 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:18:27 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:18:27 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b65c8ecb16db0233c57a2ab5cdfb8a348b96a7a500271f261c3123587e6735`  
		Last Modified: Mon, 09 Oct 2017 22:22:53 GMT  
		Size: 116.1 MB (116121869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479fb0d84b243f106d52a54677bb832a5b25f54185a146731f188461c630d242`  
		Last Modified: Mon, 09 Oct 2017 22:22:34 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3733e6ff7676ed95d0bd3cabdd39db16a029b9d6e8b6e15fdd5d89a4987307`  
		Last Modified: Mon, 09 Oct 2017 22:22:34 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca0fb2c66af55d3c8189b410d33728f61b20535193c5573064eaab4d7247619`  
		Last Modified: Mon, 09 Oct 2017 22:22:34 GMT  
		Size: 20.5 KB (20549 bytes)  
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
$ docker pull cassandra@sha256:0c3cdcccb7795c55772c39f29c9ef7367760bcace6f1b8948e7b863f797fcaa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:1af7a8551c183e0942d32176095e850cc0d084f3c5bb112b8b74650ca1040911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174520607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7903aea33140a6c9cafbf76bcf6ac0b63ac3db7feea272525d1e52d395f8224`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:18:48 GMT
ENV CASSANDRA_VERSION=2.2.11
# Mon, 09 Oct 2017 22:19:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:19:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:19:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:19:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:19:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:19:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:19:57 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:19:57 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:19:57 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0649962e87b944bedce9563e334cd3bd7b96e7b2f3c473dc8ab027e8f34a588a`  
		Last Modified: Mon, 09 Oct 2017 22:23:35 GMT  
		Size: 120.5 MB (120514410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b662f2a22ad71714f45e44e7a3ea9317cdb92904231339ab97b7028a8adb57`  
		Last Modified: Mon, 09 Oct 2017 22:23:11 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dfb19cf799a652c160200bb7f4b72beed5ff369b3ada9951de8941c7dca842`  
		Last Modified: Mon, 09 Oct 2017 22:23:12 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883255008a2b7b8533afe4c04682c84c76d2850dc6cde3ae6aab1aa93ad299c6`  
		Last Modified: Mon, 09 Oct 2017 22:23:12 GMT  
		Size: 22.3 KB (22275 bytes)  
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
$ docker pull cassandra@sha256:0c3cdcccb7795c55772c39f29c9ef7367760bcace6f1b8948e7b863f797fcaa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2.11` - linux; amd64

```console
$ docker pull cassandra@sha256:1af7a8551c183e0942d32176095e850cc0d084f3c5bb112b8b74650ca1040911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174520607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7903aea33140a6c9cafbf76bcf6ac0b63ac3db7feea272525d1e52d395f8224`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:18:48 GMT
ENV CASSANDRA_VERSION=2.2.11
# Mon, 09 Oct 2017 22:19:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:19:55 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:19:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:19:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:19:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:19:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:19:57 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:19:57 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:19:57 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0649962e87b944bedce9563e334cd3bd7b96e7b2f3c473dc8ab027e8f34a588a`  
		Last Modified: Mon, 09 Oct 2017 22:23:35 GMT  
		Size: 120.5 MB (120514410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b662f2a22ad71714f45e44e7a3ea9317cdb92904231339ab97b7028a8adb57`  
		Last Modified: Mon, 09 Oct 2017 22:23:11 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dfb19cf799a652c160200bb7f4b72beed5ff369b3ada9951de8941c7dca842`  
		Last Modified: Mon, 09 Oct 2017 22:23:12 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883255008a2b7b8533afe4c04682c84c76d2850dc6cde3ae6aab1aa93ad299c6`  
		Last Modified: Mon, 09 Oct 2017 22:23:12 GMT  
		Size: 22.3 KB (22275 bytes)  
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
$ docker pull cassandra@sha256:48f31ab8b5a413a728a0966940fde62ee378444cd7e8c5fffbae20ca9204adf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:2652adb553dd167f72b5d931278e588bf74fb20290a139d2a4a417357f9c1469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165115967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e136e4e9d9284dfc6ceb20976056759f8c278140c067d3ac23258cfbf4c2005f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:21:21 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:22:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:22:12 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:22:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:22:13 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:22:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:22:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:22:14 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:22:14 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:22:15 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410b9d8a71b1b5cbe562cf29925e897c230f4949c754f97994827bcb88ea1958`  
		Last Modified: Mon, 09 Oct 2017 22:28:58 GMT  
		Size: 111.1 MB (111102304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6730d2ac09d06b7c6ccaaae2e8e73ecbdabb8e811e784437b6122c78da41f`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70a1897e521fe59c7064ab1d9f34326fc8760985ecc45a63fe401b4b261ae2b`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d870760eb4a38b20156eab9435bcb267308107cff495e243beed508822f96`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 30.0 KB (29982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8e6fd229c5135fe747449942937278256b8a033e8744238b444095e7086bc7f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152215479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2173469e293d62e2af35dc7da1900a692bd313005afcc9b5c4f3fd747f387d5d`
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
# Mon, 09 Oct 2017 22:33:10 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:38:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:39:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:39:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:39:07 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:39:13 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:39:14 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:39:16 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:39:17 GMT
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
	-	`sha256:b3789bf86d4b6f5adc7f2805c583ad2ca61b2945a82f07eff212fb8487d403be`  
		Last Modified: Mon, 09 Oct 2017 22:41:22 GMT  
		Size: 100.9 MB (100913489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0142011163e791f8a0c4f9e95914e6de74a40cc891fa3250fa0c38f39aa0313`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7c64587fe63b15f88341b95be2f3fd0d3ff42e12d50b5c6a96014aa88ec85`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1698a94a6dea31795420bc644aee535f66a05119dc0b7f91a80e4350f5c83`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 30.0 KB (29982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:31b188b4e7b011e89b9c05ae696817785036568568fb83ba7857f91cea53277e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166134168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51287472deb3f801c73b3e380b450796715a999b40e6dfc26c09a9b5d7679b07`
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
# Mon, 09 Oct 2017 22:29:16 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:30:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:30:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:30:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:30:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:30:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:30:43 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:30:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:30:44 GMT
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
	-	`sha256:84a8aac202f9b6638cf9de974c9f6b3c9a4176b56a04309e1d39967de66b7622`  
		Last Modified: Mon, 09 Oct 2017 22:36:49 GMT  
		Size: 112.0 MB (111963378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ddf4e71a61f1f34022213cdf48bd1a849d1296f485b5854340db366118aa7`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f557d4ee9b1f77a1d4b5e1626468e65a36f747888d1dd425b87508ebb251be1c`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2a8764b6c7267fcba3287e8e42a2916a80293a1bd88bbba1129d7ee651800`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f7a5c749fb4d85375617b56f82b2f228e4d57c4854bd195007737323ed82d210
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155358451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f9aaaee17dde9ddc5b48020205c1373e2665e592e0e5e2c3d4c4bcc831977fa`
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
# Mon, 09 Oct 2017 23:42:04 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 23:57:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:57:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 23:58:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 23:58:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 23:58:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:58:28 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 23:58:32 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 23:58:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 23:58:42 GMT
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
	-	`sha256:4bfd4b994bf3e3a73e07092a7373cc73a02ece2fd7b7bf3cac09b6056f9b7d57`  
		Last Modified: Mon, 09 Oct 2017 23:59:58 GMT  
		Size: 102.2 MB (102161473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a078ce69e5460dbb2189ad9c84136854df1f5e98cb86e6f6105d93183a8f2b8`  
		Last Modified: Mon, 09 Oct 2017 23:59:39 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7c0aac337b22bcfe7259969d9e60851c99ca5d932948265aca0528ef9d2d9e`  
		Last Modified: Mon, 09 Oct 2017 23:59:39 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b93a1ddd2b200f78307659e0d2755fea49f62e5dea866f888a7630b6ba8b158`  
		Last Modified: Mon, 09 Oct 2017 23:59:40 GMT  
		Size: 30.0 KB (29988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:616454e966db82cbea0fdf0b579fa827445de952214edbab5a23b63bc92a5aa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:31e2fe9e643e812b3b6979c37f4ad72677ac11606118b9a519eb6d70e50d6704
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160565898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdcdfbd60a064e7fee90cfae61fdfad2fb67998b3e27b6d12e9d47e8327ad43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:20:12 GMT
ENV CASSANDRA_VERSION=3.0.14
# Mon, 09 Oct 2017 22:20:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:20:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:20:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:21:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:21:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:21:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:21:07 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:21:07 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:21:07 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4674a9cc36bb487695c69da16ef04e09b996c163fcaca54c8b9a7bd81fc88e27`  
		Last Modified: Mon, 09 Oct 2017 22:28:18 GMT  
		Size: 106.6 MB (106556578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cea2d8ed84459c398d0482459fbfa9d4ea6e5969ce83cf6f02785b387de660`  
		Last Modified: Mon, 09 Oct 2017 22:27:59 GMT  
		Size: 4.7 KB (4709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2aba431335156aaed6ff4ca737ee9e0de480e6ccb023a7c283aaf2177f2566`  
		Last Modified: Mon, 09 Oct 2017 22:27:58 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13dd38e25c1b267550b05e14fec2e82af3077ee4da63aba3b77bb392c0c8532`  
		Last Modified: Mon, 09 Oct 2017 22:27:58 GMT  
		Size: 25.3 KB (25327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:aa225a510d1ee055cf5ca4c797122f83d10931b70aa57c912eb39651f563f26e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147675279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5757ec4d5034a98c1f569164f7b0ba8c210a809f7f221548d446ca94fa6a8435`
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
# Mon, 09 Oct 2017 22:26:19 GMT
ENV CASSANDRA_VERSION=3.0.14
# Mon, 09 Oct 2017 22:32:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:32:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:32:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:32:31 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:32:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:32:45 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:32:50 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:32:53 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:32:56 GMT
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
	-	`sha256:d38b5e709d12f63ef55bd1c361ea8a7086e06d4f66c33c03de6c39007575af90`  
		Last Modified: Mon, 09 Oct 2017 22:40:19 GMT  
		Size: 96.4 MB (96377630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a1006372332e824936396da8cbcb8eb716f39876050354d07a22a35481f6f6`  
		Last Modified: Mon, 09 Oct 2017 22:39:52 GMT  
		Size: 4.7 KB (4711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88d0e7e61e8e1ad256a9f668bdbb33347ebb5166de3e50a50e00b7c311e75d7`  
		Last Modified: Mon, 09 Oct 2017 22:39:53 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3a91a23cd1999bc9ff2d47bc545042210e7bfe8fb5c34c38cd9790603435f0`  
		Last Modified: Mon, 09 Oct 2017 22:39:53 GMT  
		Size: 25.3 KB (25330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:cb8ef4c35852b3ccfe008742f50df344d1d2b886ff8ffdeed95910cc4711163c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161587232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845ade6dbba012d4e19c31314d61d135f8f352681820a794cc90ca43e48c0e89`
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
# Mon, 09 Oct 2017 22:27:38 GMT
ENV CASSANDRA_VERSION=3.0.14
# Mon, 09 Oct 2017 22:29:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:29:03 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:29:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:29:04 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:29:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:29:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:29:05 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:29:05 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:29:05 GMT
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
	-	`sha256:63981b6365670c608169718d36fe44d2ca8daa151475c4a8308aadd86b29e98c`  
		Last Modified: Mon, 09 Oct 2017 22:36:07 GMT  
		Size: 107.4 MB (107420785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7089da90a02ead31ced349dc81e525a5d5af7d8902c9e2a2fba705cc0d27c545`  
		Last Modified: Mon, 09 Oct 2017 22:35:46 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb18c3a86939c1147cb5be00471492dd494f967f2527e7214095653e43402dd`  
		Last Modified: Mon, 09 Oct 2017 22:35:46 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af51040f67d4fb1a71ca7086ecf8c1be8bf5b64e27ddc9d530672e29254b52dc`  
		Last Modified: Mon, 09 Oct 2017 22:35:46 GMT  
		Size: 25.3 KB (25327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:6632f65a5fb79fd6b4d6577e07c9b614e7dbb384ad246106c8be122e5a047811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150813835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbcae5a4f59ea95ddd659e5b9039aa1e9d4d570b87e5e407c42bc2c302d4c729`
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
# Mon, 09 Oct 2017 23:24:50 GMT
ENV CASSANDRA_VERSION=3.0.14
# Mon, 09 Oct 2017 23:40:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:40:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 23:40:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 23:40:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 23:41:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:41:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 23:41:24 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 23:41:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 23:41:36 GMT
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
	-	`sha256:7d1d98417ac2a1a3b0c23d1c97b929f9871c63edba81dbe3acdde53bfb48cf07`  
		Last Modified: Mon, 09 Oct 2017 23:59:24 GMT  
		Size: 97.6 MB (97624731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727a528b783c68a0ed024ee037dbef545639030310bd3d3270206c37b767f890`  
		Last Modified: Mon, 09 Oct 2017 23:59:05 GMT  
		Size: 4.7 KB (4710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae61651e6a197cfc78dd4483091e9a87e77d21eba2a1cf2425f4fbb35849a0a3`  
		Last Modified: Mon, 09 Oct 2017 23:59:06 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e4209e6cc2be14155fc56a84ceda1a6b4efbab1e2b388f93f23b887ef3cec5`  
		Last Modified: Mon, 09 Oct 2017 23:59:06 GMT  
		Size: 25.3 KB (25330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.15`

**does not exist** (yet?)

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:48f31ab8b5a413a728a0966940fde62ee378444cd7e8c5fffbae20ca9204adf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:2652adb553dd167f72b5d931278e588bf74fb20290a139d2a4a417357f9c1469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165115967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e136e4e9d9284dfc6ceb20976056759f8c278140c067d3ac23258cfbf4c2005f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:21:21 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:22:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:22:12 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:22:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:22:13 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:22:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:22:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:22:14 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:22:14 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:22:15 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410b9d8a71b1b5cbe562cf29925e897c230f4949c754f97994827bcb88ea1958`  
		Last Modified: Mon, 09 Oct 2017 22:28:58 GMT  
		Size: 111.1 MB (111102304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6730d2ac09d06b7c6ccaaae2e8e73ecbdabb8e811e784437b6122c78da41f`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70a1897e521fe59c7064ab1d9f34326fc8760985ecc45a63fe401b4b261ae2b`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d870760eb4a38b20156eab9435bcb267308107cff495e243beed508822f96`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 30.0 KB (29982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8e6fd229c5135fe747449942937278256b8a033e8744238b444095e7086bc7f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152215479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2173469e293d62e2af35dc7da1900a692bd313005afcc9b5c4f3fd747f387d5d`
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
# Mon, 09 Oct 2017 22:33:10 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:38:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:39:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:39:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:39:07 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:39:13 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:39:14 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:39:16 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:39:17 GMT
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
	-	`sha256:b3789bf86d4b6f5adc7f2805c583ad2ca61b2945a82f07eff212fb8487d403be`  
		Last Modified: Mon, 09 Oct 2017 22:41:22 GMT  
		Size: 100.9 MB (100913489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0142011163e791f8a0c4f9e95914e6de74a40cc891fa3250fa0c38f39aa0313`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7c64587fe63b15f88341b95be2f3fd0d3ff42e12d50b5c6a96014aa88ec85`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1698a94a6dea31795420bc644aee535f66a05119dc0b7f91a80e4350f5c83`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 30.0 KB (29982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:31b188b4e7b011e89b9c05ae696817785036568568fb83ba7857f91cea53277e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166134168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51287472deb3f801c73b3e380b450796715a999b40e6dfc26c09a9b5d7679b07`
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
# Mon, 09 Oct 2017 22:29:16 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:30:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:30:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:30:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:30:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:30:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:30:43 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:30:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:30:44 GMT
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
	-	`sha256:84a8aac202f9b6638cf9de974c9f6b3c9a4176b56a04309e1d39967de66b7622`  
		Last Modified: Mon, 09 Oct 2017 22:36:49 GMT  
		Size: 112.0 MB (111963378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ddf4e71a61f1f34022213cdf48bd1a849d1296f485b5854340db366118aa7`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f557d4ee9b1f77a1d4b5e1626468e65a36f747888d1dd425b87508ebb251be1c`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2a8764b6c7267fcba3287e8e42a2916a80293a1bd88bbba1129d7ee651800`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f7a5c749fb4d85375617b56f82b2f228e4d57c4854bd195007737323ed82d210
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155358451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f9aaaee17dde9ddc5b48020205c1373e2665e592e0e5e2c3d4c4bcc831977fa`
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
# Mon, 09 Oct 2017 23:42:04 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 23:57:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:57:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 23:58:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 23:58:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 23:58:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:58:28 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 23:58:32 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 23:58:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 23:58:42 GMT
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
	-	`sha256:4bfd4b994bf3e3a73e07092a7373cc73a02ece2fd7b7bf3cac09b6056f9b7d57`  
		Last Modified: Mon, 09 Oct 2017 23:59:58 GMT  
		Size: 102.2 MB (102161473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a078ce69e5460dbb2189ad9c84136854df1f5e98cb86e6f6105d93183a8f2b8`  
		Last Modified: Mon, 09 Oct 2017 23:59:39 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7c0aac337b22bcfe7259969d9e60851c99ca5d932948265aca0528ef9d2d9e`  
		Last Modified: Mon, 09 Oct 2017 23:59:39 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b93a1ddd2b200f78307659e0d2755fea49f62e5dea866f888a7630b6ba8b158`  
		Last Modified: Mon, 09 Oct 2017 23:59:40 GMT  
		Size: 30.0 KB (29988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.1`

**does not exist** (yet?)

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:48f31ab8b5a413a728a0966940fde62ee378444cd7e8c5fffbae20ca9204adf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:2652adb553dd167f72b5d931278e588bf74fb20290a139d2a4a417357f9c1469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165115967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e136e4e9d9284dfc6ceb20976056759f8c278140c067d3ac23258cfbf4c2005f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:16:02 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 09 Oct 2017 22:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 22:16:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 09 Oct 2017 22:16:49 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 09 Oct 2017 22:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 09 Oct 2017 22:21:21 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:22:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:22:12 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:22:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:22:13 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:22:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:22:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:22:14 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:22:14 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:22:15 GMT
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
	-	`sha256:c701b47a08df147a29b9413a9d171baf724ebf8827937d23114a6e7525bf46ce`  
		Last Modified: Mon, 09 Oct 2017 22:22:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddf66848ef3ed072954f22531192fe8229f167960defa4b4e75963dd3eb4303`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 985.1 KB (985101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10b33b3c742aa0c9d8b9be7c5c1f347949fcc5b71a6bc5d87aec1cbc91c8bb`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 377.5 KB (377531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22df799d987dea2ec7d9a60f95888744ee1fb2770ed1727372db64438b964cd5`  
		Last Modified: Mon, 09 Oct 2017 22:22:36 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d632232a4e3ca2f9bf1881378f881064c1488904e69e315cf329bc72f9b5f07`  
		Last Modified: Mon, 09 Oct 2017 22:22:39 GMT  
		Size: 18.2 KB (18231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410b9d8a71b1b5cbe562cf29925e897c230f4949c754f97994827bcb88ea1958`  
		Last Modified: Mon, 09 Oct 2017 22:28:58 GMT  
		Size: 111.1 MB (111102304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6730d2ac09d06b7c6ccaaae2e8e73ecbdabb8e811e784437b6122c78da41f`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70a1897e521fe59c7064ab1d9f34326fc8760985ecc45a63fe401b4b261ae2b`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d870760eb4a38b20156eab9435bcb267308107cff495e243beed508822f96`  
		Last Modified: Mon, 09 Oct 2017 22:28:39 GMT  
		Size: 30.0 KB (29982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:8e6fd229c5135fe747449942937278256b8a033e8744238b444095e7086bc7f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152215479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2173469e293d62e2af35dc7da1900a692bd313005afcc9b5c4f3fd747f387d5d`
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
# Mon, 09 Oct 2017 22:33:10 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:38:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:39:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:39:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:39:07 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:39:13 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:39:14 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:39:16 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:39:17 GMT
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
	-	`sha256:b3789bf86d4b6f5adc7f2805c583ad2ca61b2945a82f07eff212fb8487d403be`  
		Last Modified: Mon, 09 Oct 2017 22:41:22 GMT  
		Size: 100.9 MB (100913489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0142011163e791f8a0c4f9e95914e6de74a40cc891fa3250fa0c38f39aa0313`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7c64587fe63b15f88341b95be2f3fd0d3ff42e12d50b5c6a96014aa88ec85`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1698a94a6dea31795420bc644aee535f66a05119dc0b7f91a80e4350f5c83`  
		Last Modified: Mon, 09 Oct 2017 22:40:55 GMT  
		Size: 30.0 KB (29982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:31b188b4e7b011e89b9c05ae696817785036568568fb83ba7857f91cea53277e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166134168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51287472deb3f801c73b3e380b450796715a999b40e6dfc26c09a9b5d7679b07`
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
# Mon, 09 Oct 2017 22:29:16 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 22:30:40 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 22:30:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 22:30:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 22:30:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:30:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 22:30:43 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 22:30:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 22:30:44 GMT
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
	-	`sha256:84a8aac202f9b6638cf9de974c9f6b3c9a4176b56a04309e1d39967de66b7622`  
		Last Modified: Mon, 09 Oct 2017 22:36:49 GMT  
		Size: 112.0 MB (111963378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ddf4e71a61f1f34022213cdf48bd1a849d1296f485b5854340db366118aa7`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f557d4ee9b1f77a1d4b5e1626468e65a36f747888d1dd425b87508ebb251be1c`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2a8764b6c7267fcba3287e8e42a2916a80293a1bd88bbba1129d7ee651800`  
		Last Modified: Mon, 09 Oct 2017 22:36:25 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:f7a5c749fb4d85375617b56f82b2f228e4d57c4854bd195007737323ed82d210
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155358451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f9aaaee17dde9ddc5b48020205c1373e2665e592e0e5e2c3d4c4bcc831977fa`
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
# Mon, 09 Oct 2017 23:42:04 GMT
ENV CASSANDRA_VERSION=3.11.0
# Mon, 09 Oct 2017 23:57:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 09 Oct 2017 23:57:47 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 09 Oct 2017 23:58:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Mon, 09 Oct 2017 23:58:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 09 Oct 2017 23:58:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:58:28 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 09 Oct 2017 23:58:32 GMT
VOLUME [/var/lib/cassandra]
# Mon, 09 Oct 2017 23:58:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 09 Oct 2017 23:58:42 GMT
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
	-	`sha256:4bfd4b994bf3e3a73e07092a7373cc73a02ece2fd7b7bf3cac09b6056f9b7d57`  
		Last Modified: Mon, 09 Oct 2017 23:59:58 GMT  
		Size: 102.2 MB (102161473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a078ce69e5460dbb2189ad9c84136854df1f5e98cb86e6f6105d93183a8f2b8`  
		Last Modified: Mon, 09 Oct 2017 23:59:39 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7c0aac337b22bcfe7259969d9e60851c99ca5d932948265aca0528ef9d2d9e`  
		Last Modified: Mon, 09 Oct 2017 23:59:39 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b93a1ddd2b200f78307659e0d2755fea49f62e5dea866f888a7630b6ba8b158`  
		Last Modified: Mon, 09 Oct 2017 23:59:40 GMT  
		Size: 30.0 KB (29988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
