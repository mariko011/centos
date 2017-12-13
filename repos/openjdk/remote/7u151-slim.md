## `openjdk:7u151-slim`

```console
$ docker pull openjdk@sha256:8152013b545ba631b361ea4e4f67098c3f4d8d13e6fb8346f9db842f4cef2453
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

### `openjdk:7u151-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:3e8f38ff179e7d35b2be40720eb3a996541553771f7e660e8e1063f05093c486
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148783948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4449c3413ac8a78832b0212e867c81476242a1cea7c7ce2b41f78a79fcf0d4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:24:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:24:00 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:24:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:24:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:24:07 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 05:24:07 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 05:24:07 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 05:25:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6172df11fd37fb5c8236578573abb3a4fcfe301991cee5f56aa9bf791efe27`  
		Last Modified: Tue, 12 Dec 2017 05:46:13 GMT  
		Size: 463.7 KB (463702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa777ba277022b8fdb201deb1eb0f0ae3fb4b94f455a6b85ff778e4cd01f694`  
		Last Modified: Tue, 12 Dec 2017 05:46:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475c21de02f74cf8ededa50463a3a43806babeb4b27b5a1541994cf945e05641`  
		Last Modified: Tue, 12 Dec 2017 05:46:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e198765f276396845e1179270389390a743965f81a49a22586a3075bdbcb17f`  
		Last Modified: Tue, 12 Dec 2017 05:46:33 GMT  
		Size: 118.2 MB (118205350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:f142ab3c13efcbda14b8334273a9c57268ebd4248cf41ba3ace57d2cbad2067a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121607930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ed49c71b4112408cadb400f3ad89323cf38a3eee5c01a8bcf7d795145281f5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:28:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:28:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:28:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:28:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:28:19 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 23:28:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 23:29:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa099f182f1269f00e84b0752f62b91a57b8dc0308620b6d011bc11d368a4423`  
		Last Modified: Tue, 12 Dec 2017 23:50:50 GMT  
		Size: 456.4 KB (456443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dcc9c8d949f6d6d32b34588004033e87e1ff1b4d10d6ffc6cbc1b16f2df88f`  
		Last Modified: Tue, 12 Dec 2017 23:50:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d7376d2cc9b9f5ba46cefb8d86e6bce4cadeab4d23601ba94e3c67723fc201`  
		Last Modified: Tue, 12 Dec 2017 23:50:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b04ddf811a0d94746c28a51f364e38b864d72ac4e4b4c4a90a5606b06a44cd`  
		Last Modified: Tue, 12 Dec 2017 23:51:11 GMT  
		Size: 92.7 MB (92727583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:6c74cde3e35113d13f27678f3ac4cc317226f2b4f823ccf08b1ca30972e77af5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127184059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24965abfcf6e64cccd2694d90f06afe36cec6b629ad7617c5283a9f459b37372`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:08:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:08:54 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:08:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:08:56 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:08:56 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:08:57 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 15:08:57 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 15:10:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8304bfd7bdc1b8313bdad168853b583b33ed755c0b18ec792f826b5c21e175b5`  
		Last Modified: Tue, 12 Dec 2017 15:30:56 GMT  
		Size: 432.3 KB (432316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635e96167e4b85a80c60577e079a4877a967ab32c491afd1204245f6eb9bfda`  
		Last Modified: Tue, 12 Dec 2017 15:30:56 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be7961888ba110366d83f07c522f28d21f9798e047e0df17fa7aeae3bb6372`  
		Last Modified: Tue, 12 Dec 2017 15:30:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965e1b77fe66309cd7c3ab43b009665bdfb7d0f0ed67d585d5b737158a5a5e8e`  
		Last Modified: Tue, 12 Dec 2017 15:31:17 GMT  
		Size: 100.5 MB (100468652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e11acef215f695dd7ce122cb3dc8fb869bc9317553a8faa129bc58a076aff103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120592753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedfec792f5f7dc33a63410b2516f901fbeb21197e0e7f29b3350e601a6a2102`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:59:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:59:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:59:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:59:30 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:59:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:59:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:59:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 01:06:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a24f9054de6049ff209097f030f33b2b3a730cdda41aee7369007cadb1e0f80`  
		Last Modified: Tue, 10 Oct 2017 02:05:43 GMT  
		Size: 457.9 KB (457885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd284f43507bcac78e2f93512d0790d24f64720a1f17971e0312bb6475ea27ee`  
		Last Modified: Tue, 10 Oct 2017 02:05:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a082a1003eb057bcb8d89a7c258b0fcd24e24745e03eaf2e8f0023cea29bec`  
		Last Modified: Tue, 10 Oct 2017 02:05:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb29937877c30b6010c20b737c764f913bdc768027f8ea2c69e69cb5b015c71`  
		Last Modified: Tue, 10 Oct 2017 02:06:09 GMT  
		Size: 92.7 MB (92653900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; 386

```console
$ docker pull openjdk@sha256:0f2df9bf8e109060b622f00ff482e7d8f6615d9a0659caf6b4d13eea8f3436e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161856611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe9c7569184011f08b74a7eed0b828ee8713d7f62d2b7644c3f0c5f4e2be130`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:27:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:27:31 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:27:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 18:27:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 18:29:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e742e390c789a22a9d5c7948944bb6a4066f9faf5477634ad83913840db5e1`  
		Last Modified: Tue, 12 Dec 2017 19:29:22 GMT  
		Size: 466.3 KB (466279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac488f66f6b7a8d110136c119f7ec7b781c18f8d993046aa54c8427caddf6d`  
		Last Modified: Tue, 12 Dec 2017 19:29:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a90fb722b894fee2f17cbf3835d8f4f8c161382e91ebf2deb78e130b63c8d0`  
		Last Modified: Tue, 12 Dec 2017 19:29:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611f33014ca3ac298c4e43c025dc75a7837f0ab320f5f13a8c69dc3aa05adc0b`  
		Last Modified: Tue, 12 Dec 2017 19:29:53 GMT  
		Size: 131.1 MB (131123698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:3b7900c5eb850715585a2065a3eda115d333ff788dee01e6e8142743613cafc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125006011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc4498f25ccc0df380b2ccbfaf7c817655332026e8f08f1bbeed9864ee62b85`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:33:17 GMT
ADD file:db3712029b01ae02058b528d156cfdf714f7f2b5fc30216a349f13c15ff9fd67 in / 
# Tue, 12 Dec 2017 01:33:18 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:26:12 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:26:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 03:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 03:26:26 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 03:26:28 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 03:26:30 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 03:40:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f90148bfa218fdcac96e1ad5dd98070db3f45afdca6148d5d71bb9c4b12e5776`  
		Last Modified: Tue, 12 Dec 2017 01:39:02 GMT  
		Size: 29.3 MB (29306117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0077d9dba5f567d3fe2cb71dd90900412fa41f62c1ca66981e854fbdb3cd2ad`  
		Last Modified: Tue, 12 Dec 2017 04:18:09 GMT  
		Size: 460.3 KB (460251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f14bfc7ffd89f2a729a5f8bf677d0b8e5444d3171efc7200fd0c51f5cafa96a`  
		Last Modified: Tue, 12 Dec 2017 04:18:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b649fa52ebfe8710c693d1e859d6cc105b13c82df0adcbcedfe608b7182f0cb`  
		Last Modified: Tue, 12 Dec 2017 04:18:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa15a704c2cbc810501f0a7e5dbd788228ea0efecffdb3b8bfb301ab52b3d16`  
		Last Modified: Tue, 12 Dec 2017 04:18:32 GMT  
		Size: 95.2 MB (95239263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:3d552bec7b17c65aecd187021aa2bfc731b16da63949163a5571a3f46fb1cd5f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126299048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e11ddf03794f49016fd46215223e96ffce72f7f2f25de52620de95105ec2a0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:46:47 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:46:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 17:55:43 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 17:56:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ba875618679016cd04120ae46c200efd84d2448e1167f6704ff8073cbba66`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 473.2 KB (473158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1ef31f07182ced6c6014230f6f96bd6f9035af692baeebeda41f62946764fd`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5a8a703ee4e278471fc8b31d7f6746c6e40985735d58742e02536485178b4b`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49084c3173c55dee25291d8bd22e55ce85794132d0fa7026c356dedf764e5dd3`  
		Last Modified: Tue, 28 Nov 2017 18:01:10 GMT  
		Size: 95.5 MB (95531318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
