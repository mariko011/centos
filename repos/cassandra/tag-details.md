<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2`](#cassandra2)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.1.19`](#cassandra2119)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2.2.11`](#cassandra2211)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.0.14`](#cassandra3014)
-	[`cassandra:3.11`](#cassandra311)
-	[`cassandra:3.11.0`](#cassandra3110)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2`

```console
$ docker pull cassandra@sha256:c3bab04d539b86f9df407af9abadd702e3b342964b52177f6264aec86a9cbda1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2` - linux; amd64

```console
$ docker pull cassandra@sha256:867d3e3dc94a776057d45cf096b3082c7dc1f0f7854c768723a8fbcb8454ac49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174503876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20ba54042e4f5c8c1fcc7fa3bfe9a0dcc8d9e414714fad9d1c0628194688cc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:15:17 GMT
ENV CASSANDRA_VERSION=2.2.10
# Wed, 13 Sep 2017 10:16:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:16:22 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:16:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:16:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:16:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:16:23 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:16:23 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:16:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:16:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90107edf786831b95d0e2f21d97ede308a824a5c32ebb7a76648a3841a044bc`  
		Last Modified: Wed, 13 Sep 2017 10:19:27 GMT  
		Size: 120.5 MB (120497110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29db192abd184b57a8c8fba0bbb86574eca527bef8bc1c7f566d6a9697082408`  
		Last Modified: Wed, 13 Sep 2017 10:19:13 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39b4144b87518c11f5781ae641b6d930123015e6f45f7d06255d177ac105d69`  
		Last Modified: Wed, 13 Sep 2017 10:19:13 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365c66ac6068d45927d034f5137fa353debfb2341ce93f046c108f2f5125d4d8`  
		Last Modified: Wed, 13 Sep 2017 10:19:14 GMT  
		Size: 22.4 KB (22352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2` - linux; 386

```console
$ docker pull cassandra@sha256:cc5dbc533bfc6cd3945f9463e7dca6ed167268ce8ed38712df7d434890ca2318
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185734499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2316e5bf3cdaf9c2bc5cd357b0906d13232b2716dd972409a20bd38ef43cab2f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:07:08 GMT
ENV CASSANDRA_VERSION=2.2.10
# Fri, 08 Sep 2017 14:09:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:09:07 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:09:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:09:09 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:09:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:09:11 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:09:11 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:09:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27d765e7ed2078b1f1d0b7da30776c3daba89409d475abe2a2af4792e9500ef`  
		Last Modified: Fri, 08 Sep 2017 14:17:59 GMT  
		Size: 131.6 MB (131571781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d2e09a1b274b93c65bcf11308bfe2d47bb83e7b47d83b461fee10bd6b0ca38`  
		Last Modified: Fri, 08 Sep 2017 14:17:27 GMT  
		Size: 4.6 KB (4641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c6d5e962d827a93d9171b37efb41fa4f33fc88ef6fbfe3fcb0f751176642c9`  
		Last Modified: Fri, 08 Sep 2017 14:17:27 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee57b340316234e2a8226bd24de976a622dc27d3edf3dff5cb0e02c7932e2b03`  
		Last Modified: Fri, 08 Sep 2017 14:17:27 GMT  
		Size: 22.4 KB (22353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:e5236101b52eb96d1621114dffbf54d4e9c5a5aada46a4035430b345338cd7a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.1` - linux; amd64

```console
$ docker pull cassandra@sha256:4831985b39c9ebaa0b4fe379ec934e6b4fca08b8c75be2cdf568ff525d99d292
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170114720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd79647a112443bd1b5bfc8f466084057cc0d46af0e608ccb9fb264355c096c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:14:07 GMT
ENV CASSANDRA_VERSION=2.1.18
# Wed, 13 Sep 2017 10:15:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:15:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:15:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:15:14 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:15:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:15:15 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:15:15 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:15:16 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:15:16 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef4d1b265f88f00e37f1aaad4ffb912c46f4dce6d22868eb336f18210081d4b`  
		Last Modified: Wed, 13 Sep 2017 10:18:56 GMT  
		Size: 116.1 MB (116109731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ae50be9c0cc81ea0c20e2b71da12f83d97619eb3803ec9e4275309cbd3a45a`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9695196ca256bc9d6678ad7b23f8adb54b80f601ff87cbb4aedd94f8d39590`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ad17c84e1e12cd0dc86e864768aa7ea489a7292c417db343f9c6c7274418d0`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 20.5 KB (20545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.1` - linux; 386

```console
$ docker pull cassandra@sha256:019a7b15d2092aff02ddd9cd6143266c79ea93340d653cbe73564cc73f9252fc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.3 MB (181329660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f3e9f0e45b91941f4c47764a9c15cf1a6d8277f47406b7f85d9612ee615ae1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:01:33 GMT
ENV CASSANDRA_VERSION=2.1.18
# Fri, 08 Sep 2017 14:03:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:03:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:03:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:03:35 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:03:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:03:37 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:03:37 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:03:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:03:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41426bef1d23cae93f8275de594323d4905b560e6b44083590487241d5a8a67`  
		Last Modified: Fri, 08 Sep 2017 14:16:42 GMT  
		Size: 127.2 MB (127168721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbea3b2771ae60cce135e2132743e658587d13c0fa4a07eb19982252db11d05`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 4.7 KB (4673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b021a90f34cffc0cecf1819e8bcad45c62849f8e22da11e2cfb4eecb722be1e`  
		Last Modified: Fri, 08 Sep 2017 14:16:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0e3bc44c155b6f5cbe5d480a9d5b11f5fe44d88fdd1e2b910ae3d41233dce9`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 20.5 KB (20545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1.19`

**does not exist** (yet?)

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:c3bab04d539b86f9df407af9abadd702e3b342964b52177f6264aec86a9cbda1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `cassandra:2.2` - linux; amd64

```console
$ docker pull cassandra@sha256:867d3e3dc94a776057d45cf096b3082c7dc1f0f7854c768723a8fbcb8454ac49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174503876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20ba54042e4f5c8c1fcc7fa3bfe9a0dcc8d9e414714fad9d1c0628194688cc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:15:17 GMT
ENV CASSANDRA_VERSION=2.2.10
# Wed, 13 Sep 2017 10:16:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:16:22 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:16:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:16:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:16:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:16:23 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:16:23 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:16:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:16:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90107edf786831b95d0e2f21d97ede308a824a5c32ebb7a76648a3841a044bc`  
		Last Modified: Wed, 13 Sep 2017 10:19:27 GMT  
		Size: 120.5 MB (120497110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29db192abd184b57a8c8fba0bbb86574eca527bef8bc1c7f566d6a9697082408`  
		Last Modified: Wed, 13 Sep 2017 10:19:13 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39b4144b87518c11f5781ae641b6d930123015e6f45f7d06255d177ac105d69`  
		Last Modified: Wed, 13 Sep 2017 10:19:13 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365c66ac6068d45927d034f5137fa353debfb2341ce93f046c108f2f5125d4d8`  
		Last Modified: Wed, 13 Sep 2017 10:19:14 GMT  
		Size: 22.4 KB (22352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:2.2` - linux; 386

```console
$ docker pull cassandra@sha256:cc5dbc533bfc6cd3945f9463e7dca6ed167268ce8ed38712df7d434890ca2318
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185734499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2316e5bf3cdaf9c2bc5cd357b0906d13232b2716dd972409a20bd38ef43cab2f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:07:08 GMT
ENV CASSANDRA_VERSION=2.2.10
# Fri, 08 Sep 2017 14:09:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:09:07 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:09:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:09:09 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:09:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:09:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:09:11 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:09:11 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:09:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27d765e7ed2078b1f1d0b7da30776c3daba89409d475abe2a2af4792e9500ef`  
		Last Modified: Fri, 08 Sep 2017 14:17:59 GMT  
		Size: 131.6 MB (131571781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d2e09a1b274b93c65bcf11308bfe2d47bb83e7b47d83b461fee10bd6b0ca38`  
		Last Modified: Fri, 08 Sep 2017 14:17:27 GMT  
		Size: 4.6 KB (4641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c6d5e962d827a93d9171b37efb41fa4f33fc88ef6fbfe3fcb0f751176642c9`  
		Last Modified: Fri, 08 Sep 2017 14:17:27 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee57b340316234e2a8226bd24de976a622dc27d3edf3dff5cb0e02c7932e2b03`  
		Last Modified: Fri, 08 Sep 2017 14:17:27 GMT  
		Size: 22.4 KB (22353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.11`

**does not exist** (yet?)

## `cassandra:3`

```console
$ docker pull cassandra@sha256:f1750fd60afbbe7bd04608febce926d22b17546d63941de9c710316f26f38d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3` - linux; amd64

```console
$ docker pull cassandra@sha256:e5d6f6ab66a7faf2b23b8b9afd46f08f92b74699585451049639bbe740d3a4f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165116123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc320790731d4dde0361f44014291f3a46cc01a2481216c8f3ad7ed2e0dbbee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:17:22 GMT
ENV CASSANDRA_VERSION=3.11.0
# Wed, 13 Sep 2017 10:18:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:18:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:18:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:18:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:18:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:18:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:18:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:18:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae66ccd8338610fb3b994804b2c8c5c57ea6be15768696aaeff8088fe1377da7`  
		Last Modified: Wed, 13 Sep 2017 10:20:20 GMT  
		Size: 111.1 MB (111101969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45728dc93f0fa7c7e6a1d3222eb3b72d0b11094da705ff6e548c87ccfc845d4e`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249f96ef61eb01a929fafae11f107caf6d5c9e899650ccddf1bc5077f86f77a2`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84beaf35c55e3d7998112e431f1598127c1979d15d9b9e7ef455739a20753485`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:10d5e4491fe75b956dc69f0acb81cffc87de7ae3b604d1a90713515aa08171fe
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152215166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10151998520fe83491d5ee1064d29880bce44f30b18c8e3529441636000f864e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 18:02:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 18:02:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:04:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 18:04:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:04:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 18:04:52 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 18:05:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 18:09:51 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 18:13:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 18:13:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 18:13:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 18:13:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 18:13:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:13:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 18:13:49 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 18:13:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 18:13:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9124b101cb5acfee8addadf0ac24c4db203148982ef94e631120be83f9e57`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f17563c770d0ed556966c0ebda53f9b700005425327b4746d9a5f35fb2c9f93`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 952.0 KB (952034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c609d767b81647bfbec744e2703089a4c3c6ae7be4c2abf53bc8f48bf92f89`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 364.8 KB (364786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38f10521b8ac8f445dd40463da6f0e19b14da1fabb1ca7bf1c6a6caeb63e71`  
		Last Modified: Fri, 08 Sep 2017 18:14:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45709a0846c2414bd2154198b936f68009703cf4a0602b71605169e25965e818`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 18.2 KB (18236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c35b48bb1e873bda8ed2b1b3af31239a8c0505ad6defec76e589876d664c06`  
		Last Modified: Fri, 08 Sep 2017 18:16:27 GMT  
		Size: 100.9 MB (100912971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f0c3d1d105284a46aa5c4be84bf13b5cb0cc0a4a2fdcbbddbfe969a45c392e`  
		Last Modified: Fri, 08 Sep 2017 18:15:35 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ac48ce6aa95c084b9550238b6cb9e94c06ed11aab89d18fb184825b07371ce`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791c6d91c5a1a8c41d308764cd46172a718b74f3102f1fb9578c86d1f21acd0b`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 30.0 KB (29984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; 386

```console
$ docker pull cassandra@sha256:68bcb3e04cbe20e3731c74b79ea8b329bf04f68396489964b5e5e07cee4414eb
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166133460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e95a241c389fcdecc0d148b1cda108600d80d76160a1726d6be70357010203`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:12:30 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 14:14:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:14:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:14:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:14:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:14:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:14:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:14:20 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:14:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:14:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c4cf07cd459970cd6ee1e04426ea8bfe8d750910b8d44400250217f2fb2eeb`  
		Last Modified: Fri, 08 Sep 2017 14:21:14 GMT  
		Size: 112.0 MB (111963358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15753ad5fa574cac8545e39468e4ee044247f082c69644948434002f5c02b917`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72067713e061614edeef1897b55d5b52f7ba201eddcf0b941aff9787168bdf05`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c213b7baabee09f902c12be0308f5b5276f0e5f2b3e37da4252913aa028b1`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2c8e54558f59edd127ba203e91dbabef07f0bfa598c5dd22dc28e606eebb8929
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155353348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0dfe8edad14fe969a884622b646089b21ec700903dc8dcc99529b5789d46a2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:13:05 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 01:13:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:13:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 01:13:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 01:13:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:15:34 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 01:16:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:16:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 01:16:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 01:16:53 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 01:16:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:16:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 01:16:54 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 01:16:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 01:16:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ef9b7a6426875383b36a3f877b3a58b32004c2cbe1d6470db554bca5a43d4`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad78cb0d21628e2fee4c41d6c68a47f3457b4c27360fab6d0f4a7fe6ceaf17ed`  
		Last Modified: Fri, 08 Sep 2017 01:17:06 GMT  
		Size: 953.9 KB (953852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b57442a3fac0a4dda2156efd92db5db6ac1c1717178b72a8787938eb01348`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 372.8 KB (372765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3367a120edbda556e69e735ca62ff4c02ad694830b29846a2ffa528319e354`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17aacb2280e1f09eee947f361b96ab30749683afe4c3e2fe3b802d91346f5`  
		Last Modified: Fri, 08 Sep 2017 01:17:03 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a364ed95a1f7ce1e6cfa1a0ec56d15005fd434ebeb6b39436e0031375adaf44`  
		Last Modified: Fri, 08 Sep 2017 01:18:01 GMT  
		Size: 102.2 MB (102157720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21556b966863262d1ec184a112f06438f9c72cd4ac95d23794349f319e58f9c`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fe6d5ab618c216d20c3e9d9432c1fbec0b48cbed7443da89e55cb4042f55e`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc4364c2ee961c4e56a6b47ad66deb438428627d4567b2b9046acb6fc1fe2a4`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 30.0 KB (29987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:39d543c96906576dfb0fc86bb831dce2f277deb6cd9c6ac4792359343df15aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0` - linux; amd64

```console
$ docker pull cassandra@sha256:e63fb1fb3685639ac2336278b49b83c623ebf7594f6ccbd803729ea39395886f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160566277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f563ce20fff411140b5f556bd399007b3e71d442f409b962beb6b39ccc0827a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:16:25 GMT
ENV CASSANDRA_VERSION=3.0.14
# Wed, 13 Sep 2017 10:17:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:17:19 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:17:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:17:20 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:17:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:17:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:17:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:17:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:17:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef16b8b42ef9dc711470e8c6f5e3e9a644f2960bd220a01f25bb95ea96725da`  
		Last Modified: Wed, 13 Sep 2017 10:19:55 GMT  
		Size: 106.6 MB (106556467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d309c1ec509db7a4e087ae490c0ffbe4e2e08664c10e2f1c93a851f46373fa13`  
		Last Modified: Wed, 13 Sep 2017 10:19:42 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ea76b3fc108ca834100f201a775c25f75cf65ad61454f52691077bc1e9322`  
		Last Modified: Wed, 13 Sep 2017 10:19:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085456a5f773c8e7728741aa1ac690c64dbd258db2850c5940c1ee0ff9f8b45b`  
		Last Modified: Wed, 13 Sep 2017 10:19:42 GMT  
		Size: 25.3 KB (25328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:6191914ad584afdf9e88a2c10b8352849cf3f2967f6f242a7adcc33e74f3a187
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147676179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1712b6eb558f676d1e1297dea4ff191ada13e085ddb25b86433ed8e27053a762`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 18:02:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 18:02:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:04:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 18:04:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:04:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 18:04:52 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 18:05:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 18:05:02 GMT
ENV CASSANDRA_VERSION=3.0.14
# Fri, 08 Sep 2017 18:09:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 18:09:34 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 18:09:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 18:09:36 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 18:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:09:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 18:09:39 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 18:09:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 18:09:41 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9124b101cb5acfee8addadf0ac24c4db203148982ef94e631120be83f9e57`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f17563c770d0ed556966c0ebda53f9b700005425327b4746d9a5f35fb2c9f93`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 952.0 KB (952034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c609d767b81647bfbec744e2703089a4c3c6ae7be4c2abf53bc8f48bf92f89`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 364.8 KB (364786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38f10521b8ac8f445dd40463da6f0e19b14da1fabb1ca7bf1c6a6caeb63e71`  
		Last Modified: Fri, 08 Sep 2017 18:14:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45709a0846c2414bd2154198b936f68009703cf4a0602b71605169e25965e818`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 18.2 KB (18236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469507a8f03345ab49608bb9d0124440fe61f7a75bf1a4b324762554d93941f`  
		Last Modified: Fri, 08 Sep 2017 18:15:06 GMT  
		Size: 96.4 MB (96378330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e877752e222dd9254e4a27155f88c6b40926e5af57837fcf374e8d34e0f9892`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 4.7 KB (4710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e965f3d027ba06de9076d7d6f949ddc0535eb166be93dff9c4593e48e72cfb89`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa557bc11aa1d1fab6665b8667a02edd71d00b3054870ecc4268b8ad147c390d`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 25.3 KB (25328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; 386

```console
$ docker pull cassandra@sha256:11bf8de1f26f236cd6c76c664c86b43bd01fc1b21f75a5b301b76ef5bb93161a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161586380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7c1d59c00beeb1fb751acd30bbb0bc121b29eca48e1a7fddd734d3cb06185`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:09:44 GMT
ENV CASSANDRA_VERSION=3.0.14
# Fri, 08 Sep 2017 14:11:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:11:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:11:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:11:37 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:11:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:11:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:11:39 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:11:39 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:11:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27fca28ded3f3dce154b1772d47021278ecb998d6465e3fab7892bfea87faf5`  
		Last Modified: Fri, 08 Sep 2017 14:19:36 GMT  
		Size: 107.4 MB (107420624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53733faf54d7b26f312553ff29c9b9fd8ed37d5a067fbedb936855047d6fe1`  
		Last Modified: Fri, 08 Sep 2017 14:19:06 GMT  
		Size: 4.7 KB (4711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1529699c1042097ae142c08201eb8a58e3d34f126e2320c886088d653f39774`  
		Last Modified: Fri, 08 Sep 2017 14:19:05 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fb7ffd57e91806852a16c5b7d5f4e2da38df28e340c0a59170d5cf51673d9d`  
		Last Modified: Fri, 08 Sep 2017 14:19:05 GMT  
		Size: 25.3 KB (25323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:86705b82ada934139ca446ed3d120ad0291b47dc9e9da6557b813c2a1a41d6de
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150810405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b70ad93d951c96fdbe2ba67fd43506be82e86f1af90c2956ab64b82037d0d11f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:13:05 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 01:13:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:13:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 01:13:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 01:13:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:13:56 GMT
ENV CASSANDRA_VERSION=3.0.14
# Fri, 08 Sep 2017 01:15:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:15:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 01:15:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 01:15:24 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 01:15:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:15:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 01:15:28 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 01:15:28 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 01:15:28 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ef9b7a6426875383b36a3f877b3a58b32004c2cbe1d6470db554bca5a43d4`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad78cb0d21628e2fee4c41d6c68a47f3457b4c27360fab6d0f4a7fe6ceaf17ed`  
		Last Modified: Fri, 08 Sep 2017 01:17:06 GMT  
		Size: 953.9 KB (953852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b57442a3fac0a4dda2156efd92db5db6ac1c1717178b72a8787938eb01348`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 372.8 KB (372765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3367a120edbda556e69e735ca62ff4c02ad694830b29846a2ffa528319e354`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17aacb2280e1f09eee947f361b96ab30749683afe4c3e2fe3b802d91346f5`  
		Last Modified: Fri, 08 Sep 2017 01:17:03 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d3c1141c3e07cfe664e8c2da8ba1cc8e3c90716aba9867f965bce2f674f16c`  
		Last Modified: Fri, 08 Sep 2017 01:17:22 GMT  
		Size: 97.6 MB (97622652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9ef3451be56aea011c7ce25cd46dd97aa55d287c3c0760a32edf64e3b8b659`  
		Last Modified: Fri, 08 Sep 2017 01:17:02 GMT  
		Size: 4.7 KB (4710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f979a374c747e6357f604c425afb717cd5644b7dabf20c854c27271e80286`  
		Last Modified: Fri, 08 Sep 2017 01:17:02 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4aec337d06b9bd64ba415bb45001d66f3f60f67a02deec10ca1684ffd6041a`  
		Last Modified: Fri, 08 Sep 2017 01:17:02 GMT  
		Size: 25.3 KB (25323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.14`

```console
$ docker pull cassandra@sha256:39d543c96906576dfb0fc86bb831dce2f277deb6cd9c6ac4792359343df15aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.0.14` - linux; amd64

```console
$ docker pull cassandra@sha256:e63fb1fb3685639ac2336278b49b83c623ebf7594f6ccbd803729ea39395886f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160566277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f563ce20fff411140b5f556bd399007b3e71d442f409b962beb6b39ccc0827a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:16:25 GMT
ENV CASSANDRA_VERSION=3.0.14
# Wed, 13 Sep 2017 10:17:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:17:19 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:17:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:17:20 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:17:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:17:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:17:21 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:17:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:17:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef16b8b42ef9dc711470e8c6f5e3e9a644f2960bd220a01f25bb95ea96725da`  
		Last Modified: Wed, 13 Sep 2017 10:19:55 GMT  
		Size: 106.6 MB (106556467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d309c1ec509db7a4e087ae490c0ffbe4e2e08664c10e2f1c93a851f46373fa13`  
		Last Modified: Wed, 13 Sep 2017 10:19:42 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ea76b3fc108ca834100f201a775c25f75cf65ad61454f52691077bc1e9322`  
		Last Modified: Wed, 13 Sep 2017 10:19:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085456a5f773c8e7728741aa1ac690c64dbd258db2850c5940c1ee0ff9f8b45b`  
		Last Modified: Wed, 13 Sep 2017 10:19:42 GMT  
		Size: 25.3 KB (25328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.14` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:6191914ad584afdf9e88a2c10b8352849cf3f2967f6f242a7adcc33e74f3a187
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147676179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1712b6eb558f676d1e1297dea4ff191ada13e085ddb25b86433ed8e27053a762`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 18:02:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 18:02:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:04:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 18:04:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:04:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 18:04:52 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 18:05:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 18:05:02 GMT
ENV CASSANDRA_VERSION=3.0.14
# Fri, 08 Sep 2017 18:09:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 18:09:34 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 18:09:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 18:09:36 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 18:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:09:39 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 18:09:39 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 18:09:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 18:09:41 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9124b101cb5acfee8addadf0ac24c4db203148982ef94e631120be83f9e57`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f17563c770d0ed556966c0ebda53f9b700005425327b4746d9a5f35fb2c9f93`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 952.0 KB (952034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c609d767b81647bfbec744e2703089a4c3c6ae7be4c2abf53bc8f48bf92f89`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 364.8 KB (364786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38f10521b8ac8f445dd40463da6f0e19b14da1fabb1ca7bf1c6a6caeb63e71`  
		Last Modified: Fri, 08 Sep 2017 18:14:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45709a0846c2414bd2154198b936f68009703cf4a0602b71605169e25965e818`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 18.2 KB (18236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469507a8f03345ab49608bb9d0124440fe61f7a75bf1a4b324762554d93941f`  
		Last Modified: Fri, 08 Sep 2017 18:15:06 GMT  
		Size: 96.4 MB (96378330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e877752e222dd9254e4a27155f88c6b40926e5af57837fcf374e8d34e0f9892`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 4.7 KB (4710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e965f3d027ba06de9076d7d6f949ddc0535eb166be93dff9c4593e48e72cfb89`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa557bc11aa1d1fab6665b8667a02edd71d00b3054870ecc4268b8ad147c390d`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 25.3 KB (25328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.14` - linux; 386

```console
$ docker pull cassandra@sha256:11bf8de1f26f236cd6c76c664c86b43bd01fc1b21f75a5b301b76ef5bb93161a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161586380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7c1d59c00beeb1fb751acd30bbb0bc121b29eca48e1a7fddd734d3cb06185`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:09:44 GMT
ENV CASSANDRA_VERSION=3.0.14
# Fri, 08 Sep 2017 14:11:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:11:35 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:11:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:11:37 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:11:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:11:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:11:39 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:11:39 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:11:39 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27fca28ded3f3dce154b1772d47021278ecb998d6465e3fab7892bfea87faf5`  
		Last Modified: Fri, 08 Sep 2017 14:19:36 GMT  
		Size: 107.4 MB (107420624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c53733faf54d7b26f312553ff29c9b9fd8ed37d5a067fbedb936855047d6fe1`  
		Last Modified: Fri, 08 Sep 2017 14:19:06 GMT  
		Size: 4.7 KB (4711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1529699c1042097ae142c08201eb8a58e3d34f126e2320c886088d653f39774`  
		Last Modified: Fri, 08 Sep 2017 14:19:05 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fb7ffd57e91806852a16c5b7d5f4e2da38df28e340c0a59170d5cf51673d9d`  
		Last Modified: Fri, 08 Sep 2017 14:19:05 GMT  
		Size: 25.3 KB (25323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.0.14` - linux; ppc64le

```console
$ docker pull cassandra@sha256:86705b82ada934139ca446ed3d120ad0291b47dc9e9da6557b813c2a1a41d6de
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150810405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b70ad93d951c96fdbe2ba67fd43506be82e86f1af90c2956ab64b82037d0d11f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:13:05 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 01:13:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:13:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 01:13:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 01:13:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:13:56 GMT
ENV CASSANDRA_VERSION=3.0.14
# Fri, 08 Sep 2017 01:15:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:15:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 01:15:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 01:15:24 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 01:15:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:15:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 01:15:28 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 01:15:28 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 01:15:28 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ef9b7a6426875383b36a3f877b3a58b32004c2cbe1d6470db554bca5a43d4`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad78cb0d21628e2fee4c41d6c68a47f3457b4c27360fab6d0f4a7fe6ceaf17ed`  
		Last Modified: Fri, 08 Sep 2017 01:17:06 GMT  
		Size: 953.9 KB (953852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b57442a3fac0a4dda2156efd92db5db6ac1c1717178b72a8787938eb01348`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 372.8 KB (372765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3367a120edbda556e69e735ca62ff4c02ad694830b29846a2ffa528319e354`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17aacb2280e1f09eee947f361b96ab30749683afe4c3e2fe3b802d91346f5`  
		Last Modified: Fri, 08 Sep 2017 01:17:03 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d3c1141c3e07cfe664e8c2da8ba1cc8e3c90716aba9867f965bce2f674f16c`  
		Last Modified: Fri, 08 Sep 2017 01:17:22 GMT  
		Size: 97.6 MB (97622652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9ef3451be56aea011c7ce25cd46dd97aa55d287c3c0760a32edf64e3b8b659`  
		Last Modified: Fri, 08 Sep 2017 01:17:02 GMT  
		Size: 4.7 KB (4710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f979a374c747e6357f604c425afb717cd5644b7dabf20c854c27271e80286`  
		Last Modified: Fri, 08 Sep 2017 01:17:02 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4aec337d06b9bd64ba415bb45001d66f3f60f67a02deec10ca1684ffd6041a`  
		Last Modified: Fri, 08 Sep 2017 01:17:02 GMT  
		Size: 25.3 KB (25323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:f1750fd60afbbe7bd04608febce926d22b17546d63941de9c710316f26f38d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11` - linux; amd64

```console
$ docker pull cassandra@sha256:e5d6f6ab66a7faf2b23b8b9afd46f08f92b74699585451049639bbe740d3a4f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165116123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc320790731d4dde0361f44014291f3a46cc01a2481216c8f3ad7ed2e0dbbee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:17:22 GMT
ENV CASSANDRA_VERSION=3.11.0
# Wed, 13 Sep 2017 10:18:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:18:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:18:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:18:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:18:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:18:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:18:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:18:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae66ccd8338610fb3b994804b2c8c5c57ea6be15768696aaeff8088fe1377da7`  
		Last Modified: Wed, 13 Sep 2017 10:20:20 GMT  
		Size: 111.1 MB (111101969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45728dc93f0fa7c7e6a1d3222eb3b72d0b11094da705ff6e548c87ccfc845d4e`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249f96ef61eb01a929fafae11f107caf6d5c9e899650ccddf1bc5077f86f77a2`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84beaf35c55e3d7998112e431f1598127c1979d15d9b9e7ef455739a20753485`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:10d5e4491fe75b956dc69f0acb81cffc87de7ae3b604d1a90713515aa08171fe
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152215166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10151998520fe83491d5ee1064d29880bce44f30b18c8e3529441636000f864e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 18:02:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 18:02:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:04:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 18:04:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:04:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 18:04:52 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 18:05:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 18:09:51 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 18:13:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 18:13:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 18:13:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 18:13:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 18:13:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:13:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 18:13:49 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 18:13:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 18:13:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9124b101cb5acfee8addadf0ac24c4db203148982ef94e631120be83f9e57`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f17563c770d0ed556966c0ebda53f9b700005425327b4746d9a5f35fb2c9f93`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 952.0 KB (952034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c609d767b81647bfbec744e2703089a4c3c6ae7be4c2abf53bc8f48bf92f89`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 364.8 KB (364786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38f10521b8ac8f445dd40463da6f0e19b14da1fabb1ca7bf1c6a6caeb63e71`  
		Last Modified: Fri, 08 Sep 2017 18:14:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45709a0846c2414bd2154198b936f68009703cf4a0602b71605169e25965e818`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 18.2 KB (18236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c35b48bb1e873bda8ed2b1b3af31239a8c0505ad6defec76e589876d664c06`  
		Last Modified: Fri, 08 Sep 2017 18:16:27 GMT  
		Size: 100.9 MB (100912971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f0c3d1d105284a46aa5c4be84bf13b5cb0cc0a4a2fdcbbddbfe969a45c392e`  
		Last Modified: Fri, 08 Sep 2017 18:15:35 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ac48ce6aa95c084b9550238b6cb9e94c06ed11aab89d18fb184825b07371ce`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791c6d91c5a1a8c41d308764cd46172a718b74f3102f1fb9578c86d1f21acd0b`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 30.0 KB (29984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; 386

```console
$ docker pull cassandra@sha256:68bcb3e04cbe20e3731c74b79ea8b329bf04f68396489964b5e5e07cee4414eb
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166133460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e95a241c389fcdecc0d148b1cda108600d80d76160a1726d6be70357010203`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:12:30 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 14:14:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:14:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:14:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:14:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:14:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:14:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:14:20 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:14:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:14:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c4cf07cd459970cd6ee1e04426ea8bfe8d750910b8d44400250217f2fb2eeb`  
		Last Modified: Fri, 08 Sep 2017 14:21:14 GMT  
		Size: 112.0 MB (111963358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15753ad5fa574cac8545e39468e4ee044247f082c69644948434002f5c02b917`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72067713e061614edeef1897b55d5b52f7ba201eddcf0b941aff9787168bdf05`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c213b7baabee09f902c12be0308f5b5276f0e5f2b3e37da4252913aa028b1`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2c8e54558f59edd127ba203e91dbabef07f0bfa598c5dd22dc28e606eebb8929
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155353348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0dfe8edad14fe969a884622b646089b21ec700903dc8dcc99529b5789d46a2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:13:05 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 01:13:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:13:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 01:13:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 01:13:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:15:34 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 01:16:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:16:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 01:16:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 01:16:53 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 01:16:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:16:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 01:16:54 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 01:16:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 01:16:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ef9b7a6426875383b36a3f877b3a58b32004c2cbe1d6470db554bca5a43d4`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad78cb0d21628e2fee4c41d6c68a47f3457b4c27360fab6d0f4a7fe6ceaf17ed`  
		Last Modified: Fri, 08 Sep 2017 01:17:06 GMT  
		Size: 953.9 KB (953852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b57442a3fac0a4dda2156efd92db5db6ac1c1717178b72a8787938eb01348`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 372.8 KB (372765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3367a120edbda556e69e735ca62ff4c02ad694830b29846a2ffa528319e354`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17aacb2280e1f09eee947f361b96ab30749683afe4c3e2fe3b802d91346f5`  
		Last Modified: Fri, 08 Sep 2017 01:17:03 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a364ed95a1f7ce1e6cfa1a0ec56d15005fd434ebeb6b39436e0031375adaf44`  
		Last Modified: Fri, 08 Sep 2017 01:18:01 GMT  
		Size: 102.2 MB (102157720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21556b966863262d1ec184a112f06438f9c72cd4ac95d23794349f319e58f9c`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fe6d5ab618c216d20c3e9d9432c1fbec0b48cbed7443da89e55cb4042f55e`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc4364c2ee961c4e56a6b47ad66deb438428627d4567b2b9046acb6fc1fe2a4`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 30.0 KB (29987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.0`

```console
$ docker pull cassandra@sha256:f1750fd60afbbe7bd04608febce926d22b17546d63941de9c710316f26f38d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:3.11.0` - linux; amd64

```console
$ docker pull cassandra@sha256:e5d6f6ab66a7faf2b23b8b9afd46f08f92b74699585451049639bbe740d3a4f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165116123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc320790731d4dde0361f44014291f3a46cc01a2481216c8f3ad7ed2e0dbbee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:17:22 GMT
ENV CASSANDRA_VERSION=3.11.0
# Wed, 13 Sep 2017 10:18:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:18:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:18:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:18:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:18:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:18:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:18:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:18:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae66ccd8338610fb3b994804b2c8c5c57ea6be15768696aaeff8088fe1377da7`  
		Last Modified: Wed, 13 Sep 2017 10:20:20 GMT  
		Size: 111.1 MB (111101969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45728dc93f0fa7c7e6a1d3222eb3b72d0b11094da705ff6e548c87ccfc845d4e`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249f96ef61eb01a929fafae11f107caf6d5c9e899650ccddf1bc5077f86f77a2`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84beaf35c55e3d7998112e431f1598127c1979d15d9b9e7ef455739a20753485`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.0` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:10d5e4491fe75b956dc69f0acb81cffc87de7ae3b604d1a90713515aa08171fe
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152215166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10151998520fe83491d5ee1064d29880bce44f30b18c8e3529441636000f864e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 18:02:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 18:02:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:04:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 18:04:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:04:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 18:04:52 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 18:05:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 18:09:51 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 18:13:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 18:13:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 18:13:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 18:13:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 18:13:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:13:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 18:13:49 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 18:13:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 18:13:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9124b101cb5acfee8addadf0ac24c4db203148982ef94e631120be83f9e57`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f17563c770d0ed556966c0ebda53f9b700005425327b4746d9a5f35fb2c9f93`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 952.0 KB (952034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c609d767b81647bfbec744e2703089a4c3c6ae7be4c2abf53bc8f48bf92f89`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 364.8 KB (364786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38f10521b8ac8f445dd40463da6f0e19b14da1fabb1ca7bf1c6a6caeb63e71`  
		Last Modified: Fri, 08 Sep 2017 18:14:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45709a0846c2414bd2154198b936f68009703cf4a0602b71605169e25965e818`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 18.2 KB (18236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c35b48bb1e873bda8ed2b1b3af31239a8c0505ad6defec76e589876d664c06`  
		Last Modified: Fri, 08 Sep 2017 18:16:27 GMT  
		Size: 100.9 MB (100912971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f0c3d1d105284a46aa5c4be84bf13b5cb0cc0a4a2fdcbbddbfe969a45c392e`  
		Last Modified: Fri, 08 Sep 2017 18:15:35 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ac48ce6aa95c084b9550238b6cb9e94c06ed11aab89d18fb184825b07371ce`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791c6d91c5a1a8c41d308764cd46172a718b74f3102f1fb9578c86d1f21acd0b`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 30.0 KB (29984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.0` - linux; 386

```console
$ docker pull cassandra@sha256:68bcb3e04cbe20e3731c74b79ea8b329bf04f68396489964b5e5e07cee4414eb
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166133460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e95a241c389fcdecc0d148b1cda108600d80d76160a1726d6be70357010203`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:12:30 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 14:14:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:14:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:14:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:14:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:14:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:14:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:14:20 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:14:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:14:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c4cf07cd459970cd6ee1e04426ea8bfe8d750910b8d44400250217f2fb2eeb`  
		Last Modified: Fri, 08 Sep 2017 14:21:14 GMT  
		Size: 112.0 MB (111963358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15753ad5fa574cac8545e39468e4ee044247f082c69644948434002f5c02b917`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72067713e061614edeef1897b55d5b52f7ba201eddcf0b941aff9787168bdf05`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c213b7baabee09f902c12be0308f5b5276f0e5f2b3e37da4252913aa028b1`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:3.11.0` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2c8e54558f59edd127ba203e91dbabef07f0bfa598c5dd22dc28e606eebb8929
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155353348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0dfe8edad14fe969a884622b646089b21ec700903dc8dcc99529b5789d46a2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:13:05 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 01:13:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:13:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 01:13:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 01:13:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:15:34 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 01:16:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:16:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 01:16:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 01:16:53 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 01:16:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:16:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 01:16:54 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 01:16:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 01:16:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ef9b7a6426875383b36a3f877b3a58b32004c2cbe1d6470db554bca5a43d4`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad78cb0d21628e2fee4c41d6c68a47f3457b4c27360fab6d0f4a7fe6ceaf17ed`  
		Last Modified: Fri, 08 Sep 2017 01:17:06 GMT  
		Size: 953.9 KB (953852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b57442a3fac0a4dda2156efd92db5db6ac1c1717178b72a8787938eb01348`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 372.8 KB (372765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3367a120edbda556e69e735ca62ff4c02ad694830b29846a2ffa528319e354`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17aacb2280e1f09eee947f361b96ab30749683afe4c3e2fe3b802d91346f5`  
		Last Modified: Fri, 08 Sep 2017 01:17:03 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a364ed95a1f7ce1e6cfa1a0ec56d15005fd434ebeb6b39436e0031375adaf44`  
		Last Modified: Fri, 08 Sep 2017 01:18:01 GMT  
		Size: 102.2 MB (102157720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21556b966863262d1ec184a112f06438f9c72cd4ac95d23794349f319e58f9c`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fe6d5ab618c216d20c3e9d9432c1fbec0b48cbed7443da89e55cb4042f55e`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc4364c2ee961c4e56a6b47ad66deb438428627d4567b2b9046acb6fc1fe2a4`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 30.0 KB (29987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:f1750fd60afbbe7bd04608febce926d22b17546d63941de9c710316f26f38d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `cassandra:latest` - linux; amd64

```console
$ docker pull cassandra@sha256:e5d6f6ab66a7faf2b23b8b9afd46f08f92b74699585451049639bbe740d3a4f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165116123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc320790731d4dde0361f44014291f3a46cc01a2481216c8f3ad7ed2e0dbbee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:40:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 10:13:17 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 13 Sep 2017 10:13:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 10:13:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 10:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:14:01 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 13 Sep 2017 10:14:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 13 Sep 2017 10:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 10:17:22 GMT
ENV CASSANDRA_VERSION=3.11.0
# Wed, 13 Sep 2017 10:18:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 13 Sep 2017 10:18:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 13 Sep 2017 10:18:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Wed, 13 Sep 2017 10:18:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 10:18:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:18:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 13 Sep 2017 10:18:19 GMT
VOLUME [/var/lib/cassandra]
# Wed, 13 Sep 2017 10:18:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 13 Sep 2017 10:18:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b28e4afdec2f8d17bbcbe8577f98d1871948d56d797389bc79af519d4a58bcf`  
		Last Modified: Wed, 13 Sep 2017 08:43:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae96ac188a67dae3c83c5bd1139f9b87fbd083a611b0db41d6ca241918cad6e`  
		Last Modified: Wed, 13 Sep 2017 10:18:34 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67847175079250dab3ce6dac167505fa8d9c6f84b4f036badd2adbae9582b7e7`  
		Last Modified: Wed, 13 Sep 2017 10:18:35 GMT  
		Size: 985.1 KB (985143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85642f3da04283a85358432719b7672f01f468fd6779e305f529d019a8ac618`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 377.6 KB (377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb5e76fe295aa4ba3077f47567e1998fc43f2364edc54f6b5046030e2500bc`  
		Last Modified: Wed, 13 Sep 2017 10:18:32 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c348007e1b68e0c778120670ad3c8ca50bfc28c239e84ec715f42a08c84eb60`  
		Last Modified: Wed, 13 Sep 2017 10:18:30 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae66ccd8338610fb3b994804b2c8c5c57ea6be15768696aaeff8088fe1377da7`  
		Last Modified: Wed, 13 Sep 2017 10:20:20 GMT  
		Size: 111.1 MB (111101969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45728dc93f0fa7c7e6a1d3222eb3b72d0b11094da705ff6e548c87ccfc845d4e`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249f96ef61eb01a929fafae11f107caf6d5c9e899650ccddf1bc5077f86f77a2`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84beaf35c55e3d7998112e431f1598127c1979d15d9b9e7ef455739a20753485`  
		Last Modified: Wed, 13 Sep 2017 10:20:08 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; arm64 variant v8

```console
$ docker pull cassandra@sha256:10d5e4491fe75b956dc69f0acb81cffc87de7ae3b604d1a90713515aa08171fe
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152215166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10151998520fe83491d5ee1064d29880bce44f30b18c8e3529441636000f864e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 18:02:36 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 18:02:37 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 18:04:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 18:04:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:04:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 18:04:52 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 18:05:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 18:09:51 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 18:13:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 18:13:38 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 18:13:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 18:13:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 18:13:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 18:13:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 18:13:49 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 18:13:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 18:13:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9124b101cb5acfee8addadf0ac24c4db203148982ef94e631120be83f9e57`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f17563c770d0ed556966c0ebda53f9b700005425327b4746d9a5f35fb2c9f93`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 952.0 KB (952034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c609d767b81647bfbec744e2703089a4c3c6ae7be4c2abf53bc8f48bf92f89`  
		Last Modified: Fri, 08 Sep 2017 18:14:22 GMT  
		Size: 364.8 KB (364786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38f10521b8ac8f445dd40463da6f0e19b14da1fabb1ca7bf1c6a6caeb63e71`  
		Last Modified: Fri, 08 Sep 2017 18:14:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45709a0846c2414bd2154198b936f68009703cf4a0602b71605169e25965e818`  
		Last Modified: Fri, 08 Sep 2017 18:14:19 GMT  
		Size: 18.2 KB (18236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c35b48bb1e873bda8ed2b1b3af31239a8c0505ad6defec76e589876d664c06`  
		Last Modified: Fri, 08 Sep 2017 18:16:27 GMT  
		Size: 100.9 MB (100912971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f0c3d1d105284a46aa5c4be84bf13b5cb0cc0a4a2fdcbbddbfe969a45c392e`  
		Last Modified: Fri, 08 Sep 2017 18:15:35 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ac48ce6aa95c084b9550238b6cb9e94c06ed11aab89d18fb184825b07371ce`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791c6d91c5a1a8c41d308764cd46172a718b74f3102f1fb9578c86d1f21acd0b`  
		Last Modified: Fri, 08 Sep 2017 18:15:36 GMT  
		Size: 30.0 KB (29984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; 386

```console
$ docker pull cassandra@sha256:68bcb3e04cbe20e3731c74b79ea8b329bf04f68396489964b5e5e07cee4414eb
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166133460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e95a241c389fcdecc0d148b1cda108600d80d76160a1726d6be70357010203`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:59:26 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 13:59:26 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 14:00:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 14:01:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:01:17 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 14:01:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 14:01:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 14:12:30 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 14:14:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 14:14:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 14:14:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 14:14:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 14:14:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 14:14:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 14:14:20 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 14:14:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 14:14:21 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c76b5ca63d8b3b04437824b692a5771acc0bd9fb7c6f94e8c2467bdd9193408`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834af446957abb6cf7c5e1732611b02848ea1e7441870581e28f34155254a032`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 964.0 KB (964030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4fc290833d9aaff36cb1df8145486803bd398749c51196ea2b6582586aeba9`  
		Last Modified: Fri, 08 Sep 2017 14:16:10 GMT  
		Size: 377.0 KB (377047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5b34bcb5c5ed458f7e5abac2da41d3349617677931740e98763552ee1904c`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a98ec726338e59ec32265f04cdbf52d9ad15f1ea05fedb036053badaef0610`  
		Last Modified: Fri, 08 Sep 2017 14:16:09 GMT  
		Size: 18.2 KB (18234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c4cf07cd459970cd6ee1e04426ea8bfe8d750910b8d44400250217f2fb2eeb`  
		Last Modified: Fri, 08 Sep 2017 14:21:14 GMT  
		Size: 112.0 MB (111963358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15753ad5fa574cac8545e39468e4ee044247f082c69644948434002f5c02b917`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72067713e061614edeef1897b55d5b52f7ba201eddcf0b941aff9787168bdf05`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c213b7baabee09f902c12be0308f5b5276f0e5f2b3e37da4252913aa028b1`  
		Last Modified: Fri, 08 Sep 2017 14:20:41 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cassandra:latest` - linux; ppc64le

```console
$ docker pull cassandra@sha256:2c8e54558f59edd127ba203e91dbabef07f0bfa598c5dd22dc28e606eebb8929
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155353348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0dfe8edad14fe969a884622b646089b21ec700903dc8dcc99529b5789d46a2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:13:05 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 08 Sep 2017 01:13:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 01:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 01:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:13:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Fri, 08 Sep 2017 01:13:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 08 Sep 2017 01:13:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 01:15:34 GMT
ENV CASSANDRA_VERSION=3.11.0
# Fri, 08 Sep 2017 01:16:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386) 			echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' > /etc/apt/sources.list.d/cassandra.list; 			apt-get update; 			;; 		*) 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get install -y --no-install-recommends 				wget ca-certificates 				dpkg-dev 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						tempDir="$(mktemp -d)"; 			for pkg in cassandra cassandra-tools; do 				deb="${pkg}_${CASSANDRA_VERSION}_all.deb"; 				wget -O "$tempDir/$deb" "http://www.apache.org/dist/cassandra/debian/pool/main/c/cassandra/$deb"; 			done; 						ls -lAFh "$tempDir"; 			( cd "$tempDir" && dpkg-scanpackages . > Packages ); 			grep '^Package: ' "$tempDir/Packages"; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 08 Sep 2017 01:16:52 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 08 Sep 2017 01:16:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		ppc64el) 			if grep -q -- '^-Xss' "$CASSANDRA_CONFIG/jvm.options"; then 				grep -- '^-Xss256k$' "$CASSANDRA_CONFIG/jvm.options"; 				sed -ri 's/^-Xss256k$/-Xss512k/' "$CASSANDRA_CONFIG/jvm.options"; 				grep -- '^-Xss512k$' "$CASSANDRA_CONFIG/jvm.options"; 			elif grep -q -- '-Xss256k' "$CASSANDRA_CONFIG/cassandra-env.sh"; then 				sed -ri 's/-Xss256k/-Xss512k/g' "$CASSANDRA_CONFIG/cassandra-env.sh"; 				grep -- '-Xss512k' "$CASSANDRA_CONFIG/cassandra-env.sh"; 			fi; 			;; 	esac; 		sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' "$CASSANDRA_CONFIG/cassandra-env.sh"
# Fri, 08 Sep 2017 01:16:53 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 08 Sep 2017 01:16:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:16:54 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 08 Sep 2017 01:16:54 GMT
VOLUME [/var/lib/cassandra]
# Fri, 08 Sep 2017 01:16:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 08 Sep 2017 01:16:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ef9b7a6426875383b36a3f877b3a58b32004c2cbe1d6470db554bca5a43d4`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad78cb0d21628e2fee4c41d6c68a47f3457b4c27360fab6d0f4a7fe6ceaf17ed`  
		Last Modified: Fri, 08 Sep 2017 01:17:06 GMT  
		Size: 953.9 KB (953852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b57442a3fac0a4dda2156efd92db5db6ac1c1717178b72a8787938eb01348`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 372.8 KB (372765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3367a120edbda556e69e735ca62ff4c02ad694830b29846a2ffa528319e354`  
		Last Modified: Fri, 08 Sep 2017 01:17:05 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17aacb2280e1f09eee947f361b96ab30749683afe4c3e2fe3b802d91346f5`  
		Last Modified: Fri, 08 Sep 2017 01:17:03 GMT  
		Size: 18.2 KB (18233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a364ed95a1f7ce1e6cfa1a0ec56d15005fd434ebeb6b39436e0031375adaf44`  
		Last Modified: Fri, 08 Sep 2017 01:18:01 GMT  
		Size: 102.2 MB (102157720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21556b966863262d1ec184a112f06438f9c72cd4ac95d23794349f319e58f9c`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fe6d5ab618c216d20c3e9d9432c1fbec0b48cbed7443da89e55cb4042f55e`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc4364c2ee961c4e56a6b47ad66deb438428627d4567b2b9046acb6fc1fe2a4`  
		Last Modified: Fri, 08 Sep 2017 01:17:40 GMT  
		Size: 30.0 KB (29987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
