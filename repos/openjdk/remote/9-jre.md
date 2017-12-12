## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:c2bc0aeae1399843587c6d130f2d9b4e30d9e74a8ab4703724a5a8799fe0b0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:9-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:3500f1c836957d50cbee0d7fce09bb327cc34d330b9614e35f184c4dd9319f2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266374486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697fd5cb1b4d0c2958d5d805a5e60992ad12e300eee977734b92a7cde30c98fb`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:56:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:56:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:56:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c26c1c94d5d4a0ef5acdf7b1fbee94a790368e9614210ed68d7ecda436bea`  
		Last Modified: Sat, 04 Nov 2017 19:05:32 GMT  
		Size: 855.5 KB (855473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06b9b5dba20339e663479b51caf0676be4275b4afb0d6147c828ce6b1c6dbf4`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575425a3fcf40302c971a89bc2e0b0b1c99c7351390118233c122fc4b6125abf`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55eb4e2af396ff2ad411d2b965cf677cd6b57c24a5e87d90568a1e8d3a09b88`  
		Last Modified: Sat, 04 Nov 2017 19:06:04 GMT  
		Size: 199.8 MB (199813754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:630e76600ab6ed7a386775671d0da455136f7eadc8b77fc7ba3043023f09ba1b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245992775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3600be71e61eacb7c004f4c4cbc92e4d789908baed379df863ae11df23350406`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:38 GMT
ADD file:ed4faefd58667ec248b15ae9b227fc04967695ab4002e9f3a65e8e53b3f73cc6 in / 
# Mon, 09 Oct 2017 21:43:39 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:16:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 08:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 08:31:21 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 08:31:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 08:31:23 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 08:31:23 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:04:29 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:04:29 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:06:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:45a6221cafba09e06352fbe396f5863616e79d7ab2b9481c3016ee02a2fc322d`  
		Last Modified: Mon, 09 Oct 2017 21:49:19 GMT  
		Size: 46.0 MB (46010091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a71f239a0573ab2b5a38f8e4787b24e0ed366e436a7165e9ff81a4ea2645db`  
		Last Modified: Mon, 09 Oct 2017 22:25:10 GMT  
		Size: 7.7 MB (7735486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0081db03c6e7f4630bd9fd81942272f85f8d8ee868106b37440abf9da70f035f`  
		Last Modified: Fri, 03 Nov 2017 08:01:12 GMT  
		Size: 9.2 MB (9232575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094b5b3bbd9275408ed1df1d6f5c36c7d5dbded5f6238b1de7469f9934170f37`  
		Last Modified: Sat, 04 Nov 2017 10:14:15 GMT  
		Size: 848.5 KB (848517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3545a78c32771d6d224df6a883a11176630b1aa1122ebcd5e74d764ccee821a`  
		Last Modified: Sat, 04 Nov 2017 10:14:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b88aa10422bd728102860b1384d38db8b7e9562fc947535f4e80aa3911e937`  
		Last Modified: Sat, 04 Nov 2017 10:14:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27141398f90a2413880ce469f901b366d07e9611ae6f9a36f8653a23b238ccee`  
		Last Modified: Sat, 04 Nov 2017 10:15:00 GMT  
		Size: 182.2 MB (182165727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:0b35f770266d148101d779975e852eaa34547debd6f72f50810c654aae25f8c8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86573f4a305f3bddef55c1cf2ff17d0491339d28fff4bc327615c1555de64668`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:30:47 GMT
ADD file:b788e24f4cada715c58008741a4bc6b55912bf54f897e9febf55038c7259474a in / 
# Tue, 12 Dec 2017 13:30:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:18:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:18:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:24:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:24:03 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:24:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:24:05 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:24:05 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:24:06 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 15:24:06 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 15:25:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ee9da7ca0ecfb9e496d4e6a11a2de17d38b2676f64081ca6643b85f1026bd24a`  
		Last Modified: Tue, 12 Dec 2017 13:42:33 GMT  
		Size: 44.8 MB (44836300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9035433aec00afaaa737a1213c4367cab1ef3d7a572aa2cb952e73854b963d0`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 7.5 MB (7534247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d036c584b8f46f4616710df516ffdb5657ef66387fcf24bd3752cdeaf9091427`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 8.4 MB (8438419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8053ed8fc580846cce780616eb015dd48cb75ce50026b0651185fdc9b68f4d`  
		Last Modified: Tue, 12 Dec 2017 15:40:57 GMT  
		Size: 833.0 KB (833006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0b66db551911f881340feffd442e3e6e7cfb7fd8eb95cab7ec3f997a023348`  
		Last Modified: Tue, 12 Dec 2017 15:40:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6687521354339ce192f9f65105ca6daea26726b87076dc6da633f404d61bd94e`  
		Last Modified: Tue, 12 Dec 2017 15:40:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217d742570881fbcd9c5d15560ccf4cf3c6420826f6177844d143b41791c819b`  
		Last Modified: Tue, 12 Dec 2017 15:41:40 GMT  
		Size: 179.9 MB (179869680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:64af34f7ca38726cc4c33d49a1ca52d01649eb33b7adad0e438fa9535561c3c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246460092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d028c19e599bafc456d78f65c3b79dacf0e2288a0fa2e3f691d4fb2683952ac5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:2dbe9971a07bebac37e2e609659f04c039921d9ece341799444660b1c747e595 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:00:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:51:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:51:16 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 11:51:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 11:51:30 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 11:51:42 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 12:51:40 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 12:51:40 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 12:59:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e81325a6af85f75a75f466627b0f3e722d22ef0a99868726a293425fa3678d30`  
		Last Modified: Mon, 09 Oct 2017 21:57:27 GMT  
		Size: 45.3 MB (45334165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b15acc099095e5b3dae6d84d900fe23c7d7fdf62fa46ad2bf73cd1939322b`  
		Last Modified: Mon, 09 Oct 2017 23:29:57 GMT  
		Size: 7.7 MB (7719898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4498a4fb63cad7de63f11fac1e366250a2d44ef615c578b8613a2e156d949f5c`  
		Last Modified: Fri, 03 Nov 2017 10:49:53 GMT  
		Size: 9.2 MB (9222133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adfd4424bed9e9a202ee24a3ef7f5aca271f4f3c837dc1cd875b7808ca9d401`  
		Last Modified: Sat, 04 Nov 2017 13:22:19 GMT  
		Size: 841.8 KB (841786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c45bf8ed0d32d1a087d6cb2e0c9e98e19e33b99ac750bd3ab3d99783155743a`  
		Last Modified: Sat, 04 Nov 2017 13:22:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc357b8991cdd5369b7416824dcb5599056eaff3161fb4d586be2dd9f2a7650`  
		Last Modified: Sat, 04 Nov 2017 13:22:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f5aa75cce70e90f5353f37ce79e0c8df407216f91567dad2425da7b0866283`  
		Last Modified: Sat, 04 Nov 2017 13:23:10 GMT  
		Size: 183.3 MB (183341732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; 386

```console
$ docker pull openjdk@sha256:a61cdf7fb81906c5d83582148db554e4f1eb4c33c16ebc4099c98394cbe5d729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276845596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7424fa61d204acd3011b1760e9d18ca8a0445e303fd0f057d4c0b72714649a61`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:31 GMT
ADD file:7151fc1811302d898848668f8be530bdc1d6b0832da7b159b54c108f9b9f39ef in / 
# Mon, 09 Oct 2017 21:44:32 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:26:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:20:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:20:06 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 01:20:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 01:20:08 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 01:20:08 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:22:59 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:22:59 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:24:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4f0ba6c109e4a20a92a03d7e3ed54b584598a77c79e7891221658b1b505c8d3`  
		Last Modified: Mon, 09 Oct 2017 21:50:58 GMT  
		Size: 48.4 MB (48397299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b294cfff7eb8dcc3dafb8c0e7697c3a7d4be20ea1cffb502417ad7ef4a81c`  
		Last Modified: Mon, 09 Oct 2017 23:38:45 GMT  
		Size: 8.5 MB (8522414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa574558b4cb00ba838337e7a215b8c5b8278384e951eba7da0e1f7003f859d`  
		Last Modified: Fri, 03 Nov 2017 00:12:49 GMT  
		Size: 9.8 MB (9805839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c83aa8f0eeb4541d19d20ee8aec8f4bf42d81409759cd9fabcc0486cd0baea`  
		Last Modified: Sat, 04 Nov 2017 10:53:19 GMT  
		Size: 864.2 KB (864244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713b661c399fa9d2601652fbf0545e233c02ba312366c6272c7bf2df70399a0e`  
		Last Modified: Sat, 04 Nov 2017 10:53:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc53938c4bd117b11646c75d4f6df840345aacc5cec4e3d07cb624e2a603ef4b`  
		Last Modified: Sat, 04 Nov 2017 10:53:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e2c89237b0edf215a1409f545e40ae92051afe3a6109480fcfe649b7b82d62`  
		Last Modified: Sat, 04 Nov 2017 10:53:58 GMT  
		Size: 209.3 MB (209255423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; ppc64le

```console
$ docker pull openjdk@sha256:a89ed7486c9b7836c48a411b15e12e05bad562f14579acfadb46a0e6d6e76c4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256643464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3d7554645e7440ee9a5d4a8b42cea30569313792a8e0e7641b6e2c24f58ca8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:18 GMT
ADD file:c095ec4581fd0b74d04b5c60602abfc26045b0c8018b11e233ff33678663b4bc in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:35:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:38:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 21:38:21 GMT
ENV LANG=C.UTF-8
# Thu, 02 Nov 2017 21:38:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 02 Nov 2017 21:38:30 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 02 Nov 2017 21:38:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 11:13:41 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 11:13:42 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 11:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:11a0304e8c893e4d955264c2d8a8a0c4dd84908eba9876476623a4a364a7c48e`  
		Last Modified: Mon, 09 Oct 2017 21:50:45 GMT  
		Size: 48.7 MB (48723592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ee00dbe27034f9638c9023274ecf0166a5b554572eb473a7ffc2b3c764737c`  
		Last Modified: Tue, 10 Oct 2017 00:56:04 GMT  
		Size: 8.0 MB (7978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c04e765611a9cec3c8d273fb944b688101979527677b6d1673ff23fb276b98`  
		Last Modified: Thu, 02 Nov 2017 17:49:42 GMT  
		Size: 9.7 MB (9742580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5be93727f0d3b96b8c4b4704f9862cccb70e64024ac1c53f362bb19e329081`  
		Last Modified: Sat, 04 Nov 2017 11:28:44 GMT  
		Size: 851.7 KB (851736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2231ea9d19885ff05d8d49bd16ab5932f644a997581e4cac38e310b3e46ceb5`  
		Last Modified: Sat, 04 Nov 2017 11:28:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52da9fec892061595ad52bd4684defbb9e17302d688a4e5c2804f54868eecc3e`  
		Last Modified: Sat, 04 Nov 2017 11:28:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ae2de461803934ab58bc730cbb36a89ed38cd4b7bf963124c6c5cbbe11afc`  
		Last Modified: Sat, 04 Nov 2017 11:29:22 GMT  
		Size: 189.3 MB (189346310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; s390x

```console
$ docker pull openjdk@sha256:74eab3b89b7480eb226942167d9752abd544bf830e54e51c3e7125e84f9f2fa2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.6 MB (232568499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e7695a4eff897df6a86cb46860e501adbb2f0ec37ffb6e4da0c04d428abdde`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:24:08 GMT
ADD file:8ee198fa6df35cac591aebbfa42175a2cab73b8096a422f1a8f995252c8883e8 in / 
# Tue, 12 Dec 2017 06:24:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:56:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:44:15 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 07:44:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 07:44:16 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 07:44:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 07:44:16 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 07:44:17 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 07:45:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2556c296741d957f26b83c22fed075dd4d9d0b7075925e7992bc685a3a29eb16`  
		Last Modified: Tue, 12 Dec 2017 06:29:30 GMT  
		Size: 48.1 MB (48137286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d413a8c982037396464e6f9e6eb0e7845e1cc272707609ed8b23d2643e2f1b6`  
		Last Modified: Tue, 12 Dec 2017 07:04:24 GMT  
		Size: 8.2 MB (8168898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ebc4a1cf8c2fc6a586a0d02ce61a52505ac06659ca8124aee9a85f72cdb510`  
		Last Modified: Tue, 12 Dec 2017 07:04:25 GMT  
		Size: 9.0 MB (8950206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cee7715672e615c4223e9e3b3f09e986bab1eb594298ed475593abdb69ea5`  
		Last Modified: Tue, 12 Dec 2017 07:52:05 GMT  
		Size: 866.9 KB (866864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70e4fb7bcc69c297ecbf5523e21de762cf9d8ca927f7c5b5e10ca8f312d9d93`  
		Last Modified: Tue, 12 Dec 2017 07:52:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e7a6600ef364c687500c418d4cd5c442774a176747a059735b068a03a7389`  
		Last Modified: Tue, 12 Dec 2017 07:52:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912d93af40c3c1ef904886dab4b3492abf16a9d8486c021a7a8b2365137b8f0a`  
		Last Modified: Tue, 12 Dec 2017 07:52:29 GMT  
		Size: 166.4 MB (166444866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
