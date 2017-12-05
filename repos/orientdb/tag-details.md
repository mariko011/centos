<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.30`](#orientdb2230)
-	[`orientdb:2.2.30-spatial`](#orientdb2230-spatial)
-	[`orientdb:3.0.0m2`](#orientdb300m2)
-	[`orientdb:3.0.0m2-spatial`](#orientdb300m2-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:87315d4918a962de993c4d86806bd0d2d353710c2c28b075043531a46572a89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:f249c86f0f64ae4152d56219a71daa3fa46a88f7defbbb5608dee2db5b69feac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341235169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed33a38a0797f4ff3448f82da78f1a803021629b4460858e5302ddbb4975485c`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 22:52:41 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 04 Nov 2017 22:52:41 GMT
ENV ORIENTDB_VERSION=2.0.18
# Sat, 04 Nov 2017 22:52:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Sat, 04 Nov 2017 22:52:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Sat, 04 Nov 2017 22:52:45 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 04 Nov 2017 22:52:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 22:52:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 04 Nov 2017 22:52:46 GMT
WORKDIR /orientdb
# Sat, 04 Nov 2017 22:52:46 GMT
EXPOSE 2424/tcp
# Sat, 04 Nov 2017 22:52:47 GMT
EXPOSE 2480/tcp
# Sat, 04 Nov 2017 22:52:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ee7751d7e8755d385bd1cd09e6cebab99db7551f101cc2bc9e2ee1e9ccda1`  
		Last Modified: Sat, 04 Nov 2017 22:53:03 GMT  
		Size: 46.6 MB (46586558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:89d13a3aad87d63c1c416ccd4c706a07e045af8debee4e5860e28ae9914ab24b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:78e9b043a3bbc44ccbdbc8c1e258a28ff6fcc53383b112c0767669dd951b15c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103649606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf4e5c5bc0455f1fddb19cd712269524e4f58ee0f12ac063607814074b32ba9`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:33 GMT
ENV ORIENTDB_VERSION=2.1.25
# Tue, 05 Dec 2017 04:59:33 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Tue, 05 Dec 2017 04:59:33 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Tue, 05 Dec 2017 04:59:37 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 04:59:40 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Dec 2017 04:59:40 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:59:40 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Dec 2017 04:59:40 GMT
WORKDIR /orientdb
# Tue, 05 Dec 2017 04:59:46 GMT
EXPOSE 2424/tcp
# Tue, 05 Dec 2017 04:59:46 GMT
EXPOSE 2480/tcp
# Tue, 05 Dec 2017 04:59:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a99b1aa31ce48af328d19d812f3d87a80fa9573a6c1f44f5618b54c8b0d8f05`  
		Last Modified: Tue, 05 Dec 2017 05:01:17 GMT  
		Size: 268.6 KB (268613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802574708c0828740a96c11ccb750af46abe8ddbfeb143490cd4526ce1f69247`  
		Last Modified: Tue, 05 Dec 2017 05:01:20 GMT  
		Size: 31.1 MB (31087967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.30`

```console
$ docker pull orientdb@sha256:54c6fd4011364904aba82d0b12a41b4b4a19dbcb9c979e69af4eb4ed1a6b0682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.30` - linux; amd64

```console
$ docker pull orientdb@sha256:cd45d5f37db8e33076c31c1d40d7a600dbb453e960a75ba50ce0ed3b4cf91d7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119287223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dd6bf07f29396a7b855d32b0e0b9b52984c7b6ba4417eb34050236250560fb`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Dec 2017 04:59:54 GMT
ENV ORIENTDB_VERSION=2.2.30
# Tue, 05 Dec 2017 04:59:54 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Tue, 05 Dec 2017 04:59:55 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Tue, 05 Dec 2017 04:59:55 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Tue, 05 Dec 2017 04:59:58 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 05:00:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Dec 2017 05:00:01 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 05:00:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Dec 2017 05:00:02 GMT
WORKDIR /orientdb
# Tue, 05 Dec 2017 05:00:02 GMT
EXPOSE 2424/tcp
# Tue, 05 Dec 2017 05:00:02 GMT
EXPOSE 2480/tcp
# Tue, 05 Dec 2017 05:00:03 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12c5943814291368db98d896c7414af76cda9254131789df7a11d83220170cc`  
		Last Modified: Tue, 05 Dec 2017 05:01:35 GMT  
		Size: 665.5 KB (665500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8303dcbe9d9c52940129bf483f786a6f395b016cc243669ed2168ae1f7711ef`  
		Last Modified: Tue, 05 Dec 2017 05:01:38 GMT  
		Size: 46.3 MB (46328697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.30-spatial`

```console
$ docker pull orientdb@sha256:79d88eba8c1425c0a3324414eb5d520f4ae6ab7c7a28581720d09afacaae1fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.30-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:be3ac15f025c8b95b9998415e67238618e0d0dfd64d67db4b5a1a1b5d795b1f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120489834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad1c1650fadbd5dc11de559429961567fe97d1f50ab0b012d268f48278d85e1`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Dec 2017 04:59:54 GMT
ENV ORIENTDB_VERSION=2.2.30
# Tue, 05 Dec 2017 04:59:54 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Tue, 05 Dec 2017 04:59:55 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Tue, 05 Dec 2017 04:59:55 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Tue, 05 Dec 2017 04:59:58 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 05:00:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Dec 2017 05:00:01 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 05:00:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Dec 2017 05:00:02 GMT
WORKDIR /orientdb
# Tue, 05 Dec 2017 05:00:02 GMT
EXPOSE 2424/tcp
# Tue, 05 Dec 2017 05:00:02 GMT
EXPOSE 2480/tcp
# Tue, 05 Dec 2017 05:00:03 GMT
CMD ["server.sh"]
# Tue, 05 Dec 2017 05:00:10 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=52bd5e5da675a05db240babadde1c5c4
# Tue, 05 Dec 2017 05:00:10 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=0c36159eef6ad73ad07f8fc9a5dae056101638a8
# Tue, 05 Dec 2017 05:00:11 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.30/orientdb-spatial-2.2.30-dist.jar
# Tue, 05 Dec 2017 05:00:12 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12c5943814291368db98d896c7414af76cda9254131789df7a11d83220170cc`  
		Last Modified: Tue, 05 Dec 2017 05:01:35 GMT  
		Size: 665.5 KB (665500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8303dcbe9d9c52940129bf483f786a6f395b016cc243669ed2168ae1f7711ef`  
		Last Modified: Tue, 05 Dec 2017 05:01:38 GMT  
		Size: 46.3 MB (46328697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ca8051dc5029d1a0f992991be9d868659e99a51136a55b1767be153d4a625e`  
		Last Modified: Tue, 05 Dec 2017 05:02:00 GMT  
		Size: 1.2 MB (1202611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2`

```console
$ docker pull orientdb@sha256:e4f5792759f80941336dde51cdb34fafbde154dd28f0893a4a910bcfe1ab3d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2` - linux; amd64

```console
$ docker pull orientdb@sha256:d2f9ce62d11faabe247b5043a683deeadea934e5ab8b510a9ca384d7759310b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125113673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c68018eedf8ea6fab38293827781bbe744bc4efeda6c16a11220c04015047f0`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Dec 2017 05:00:24 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Tue, 05 Dec 2017 05:00:24 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4d17543d4308b73b9692281444bbfe69
# Tue, 05 Dec 2017 05:00:24 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4520d18b19f366937a9158c2753c36bae4133905
# Tue, 05 Dec 2017 05:00:24 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0m2/orientdb-community-gremlin-3.0.0m2.tar.gz
# Tue, 05 Dec 2017 05:00:28 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 05:00:34 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Dec 2017 05:00:35 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 05:00:35 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Dec 2017 05:00:35 GMT
WORKDIR /orientdb
# Tue, 05 Dec 2017 05:00:35 GMT
EXPOSE 2424/tcp
# Tue, 05 Dec 2017 05:00:36 GMT
EXPOSE 2480/tcp
# Tue, 05 Dec 2017 05:00:36 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851e788dd07f3aac8fbbe5769541a0ca5654ac45d8d691f263120601114af344`  
		Last Modified: Tue, 05 Dec 2017 05:02:13 GMT  
		Size: 665.5 KB (665513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d867300e9355279c7489bc0dfcb85944a5271f2c9a7cf157e1e12e766f3a6a4`  
		Last Modified: Tue, 05 Dec 2017 05:02:17 GMT  
		Size: 52.2 MB (52155134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2-spatial`

```console
$ docker pull orientdb@sha256:d70472df9ae56b205609fee0be0795d5e9f7de1e99bce437c8c9907ae0030de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:e348f150ecf6286ec66c4cef0b548922ae7147862b4a628dbbffd1cf26ef3db9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128073464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bfd0ad17f2fc8c878ef081a586eff5ef5d50c211567a849fe7faed151e2658`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Dec 2017 05:00:24 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Tue, 05 Dec 2017 05:00:43 GMT
ENV ORIENTDB_DOWNLOAD_MD5=6d5546b1aa88a7a78cccc51bc61ae086
# Tue, 05 Dec 2017 05:00:43 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=339ec7e96aed62b0280a4a66579a82a5ae144db5
# Tue, 05 Dec 2017 05:00:44 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m2/orientdb-community-spatial-3.0.0m2.tar.gz
# Tue, 05 Dec 2017 05:00:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 05:00:56 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Dec 2017 05:00:57 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 05:00:57 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Dec 2017 05:00:57 GMT
WORKDIR /orientdb
# Tue, 05 Dec 2017 05:01:03 GMT
EXPOSE 2424/tcp
# Tue, 05 Dec 2017 05:01:03 GMT
EXPOSE 2480/tcp
# Tue, 05 Dec 2017 05:01:03 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe154615b9f7ac8c4becfbfc2d7fee8cc2e2664c5aec10d768a4add207eea72`  
		Last Modified: Tue, 05 Dec 2017 05:02:34 GMT  
		Size: 665.5 KB (665483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8309c6f94391975d8ea4e36f28c74c6981d0f7070aa32a6ae754eb3a462634b`  
		Last Modified: Tue, 05 Dec 2017 05:02:38 GMT  
		Size: 55.1 MB (55114955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:100eba6fe883709019a19bb3cd37ee9bc0161f8401e0db7e230455f441cc2582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:9936185d37fdeb470d0208cc2c640543aa6f9fe9eb8e82bb8cf35b4eab865325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119037390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0b59a01b9554e6c520d3f8c1c53bcb71522db8cb0c941bc27fdcf4613baa65`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_VERSION=2.2.30
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Sat, 02 Dec 2017 00:23:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:23:52 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:23:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:23:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:23:53 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c853784f93a7e49d23b99957380a1fe292a3225ea6bdf491af4a2c25c1aff`  
		Last Modified: Sat, 02 Dec 2017 00:25:22 GMT  
		Size: 663.1 KB (663109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9bed0273986ed159dfa895ea05ea72404c00b13b3d6f0ef0a209da5a1f7bb`  
		Last Modified: Sat, 02 Dec 2017 00:25:25 GMT  
		Size: 46.3 MB (46328700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
