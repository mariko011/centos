<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `glassfish`

-	[`glassfish:4.0-jdk7`](#glassfish40-jdk7)
-	[`glassfish:4.0`](#glassfish40)
-	[`glassfish:4.1-jdk8`](#glassfish41-jdk8)
-	[`glassfish:4.1`](#glassfish41)
-	[`glassfish:latest`](#glassfishlatest)

## `glassfish:4.0-jdk7`

```console
$ docker pull glassfish@sha256:39d7aca6d06c6c8fe496b3a9d412a0bd3e4d4d8365f493232a2c54d470db6157
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.0-jdk7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.3 MB (354280250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9017ed8b84b2c1448e43cbf1ae4448db1d8f3954e480b0a2db9605d4da2dd399`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:12:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:13:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 20:48:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 20:48:01 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Wed, 31 Aug 2016 20:48:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-7-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Wed, 31 Aug 2016 20:48:10 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:48:16 GMT
RUN curl -L -o /tmp/glassfish-4.0.zip http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip &&             unzip /tmp/glassfish-4.0.zip -d /usr/local &&             rm -f /tmp/glassfish-4.0.zip
# Wed, 31 Aug 2016 20:48:16 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Wed, 31 Aug 2016 20:48:16 GMT
WORKDIR /usr/local/glassfish4
# Wed, 31 Aug 2016 20:48:16 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e1d6ebfbde12fa4aedce90247d62e887e340cdcdce54a960ed189adb5aa7e`  
		Last Modified: Wed, 31 Aug 2016 17:21:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f4f214be685f5db5a232b29b8842c9a6db561aa0c0e90942a2c862fe212ea`  
		Last Modified: Wed, 31 Aug 2016 17:22:19 GMT  
		Size: 139.6 MB (139611253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958edb780ea4b67b0778f2090b5394e1c99f55a5bd299d4a12ac80e681b9a391`  
		Last Modified: Wed, 31 Aug 2016 20:48:24 GMT  
		Size: 577.8 KB (577818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd8198d9dde514250dc64ab5bdeb33c367b33700256944f001fb067988e57ec`  
		Last Modified: Wed, 31 Aug 2016 20:48:33 GMT  
		Size: 101.1 MB (101107437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `glassfish:4.0`

```console
$ docker pull glassfish@sha256:39d7aca6d06c6c8fe496b3a9d412a0bd3e4d4d8365f493232a2c54d470db6157
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.3 MB (354280250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9017ed8b84b2c1448e43cbf1ae4448db1d8f3954e480b0a2db9605d4da2dd399`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:12:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:13:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 20:48:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 20:48:01 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Wed, 31 Aug 2016 20:48:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-7-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Wed, 31 Aug 2016 20:48:10 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:48:16 GMT
RUN curl -L -o /tmp/glassfish-4.0.zip http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip &&             unzip /tmp/glassfish-4.0.zip -d /usr/local &&             rm -f /tmp/glassfish-4.0.zip
# Wed, 31 Aug 2016 20:48:16 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Wed, 31 Aug 2016 20:48:16 GMT
WORKDIR /usr/local/glassfish4
# Wed, 31 Aug 2016 20:48:16 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e1d6ebfbde12fa4aedce90247d62e887e340cdcdce54a960ed189adb5aa7e`  
		Last Modified: Wed, 31 Aug 2016 17:21:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f4f214be685f5db5a232b29b8842c9a6db561aa0c0e90942a2c862fe212ea`  
		Last Modified: Wed, 31 Aug 2016 17:22:19 GMT  
		Size: 139.6 MB (139611253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958edb780ea4b67b0778f2090b5394e1c99f55a5bd299d4a12ac80e681b9a391`  
		Last Modified: Wed, 31 Aug 2016 20:48:24 GMT  
		Size: 577.8 KB (577818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd8198d9dde514250dc64ab5bdeb33c367b33700256944f001fb067988e57ec`  
		Last Modified: Wed, 31 Aug 2016 20:48:33 GMT  
		Size: 101.1 MB (101107437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `glassfish:4.1-jdk8`

```console
$ docker pull glassfish@sha256:a2fe5b97b07833684c6531c4b0a33b209fe90397c621f805794a212f4761dc02
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.1-jdk8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350596906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1631e1e4abb5db2228889523b1185b393197bb5cb7892f703ed6c777eeef01b7`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:48:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 20:48:50 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Wed, 31 Aug 2016 20:48:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-8-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Wed, 31 Aug 2016 20:48:58 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:49:17 GMT
RUN curl -L -o /tmp/glassfish-4.1.zip http://download.java.net/glassfish/4.1/release/glassfish-4.1.zip &&             unzip /tmp/glassfish-4.1.zip -d /usr/local &&             rm -f /tmp/glassfish-4.1.zip
# Wed, 31 Aug 2016 20:49:17 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Wed, 31 Aug 2016 20:49:18 GMT
WORKDIR /usr/local/glassfish4
# Wed, 31 Aug 2016 20:49:18 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc9457f01bb1aa3df4fc9c85fc3199da0cf768a13052ea3262ffad263ed23ca`  
		Last Modified: Wed, 31 Aug 2016 20:49:24 GMT  
		Size: 576.1 KB (576141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f67e70ed4138e430b855072344ba9b224fef8245b0fea8dec163e7f42018e29`  
		Last Modified: Wed, 31 Aug 2016 20:49:34 GMT  
		Size: 106.7 MB (106678911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `glassfish:4.1`

```console
$ docker pull glassfish@sha256:a2fe5b97b07833684c6531c4b0a33b209fe90397c621f805794a212f4761dc02
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350596906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1631e1e4abb5db2228889523b1185b393197bb5cb7892f703ed6c777eeef01b7`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:48:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 20:48:50 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Wed, 31 Aug 2016 20:48:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-8-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Wed, 31 Aug 2016 20:48:58 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:49:17 GMT
RUN curl -L -o /tmp/glassfish-4.1.zip http://download.java.net/glassfish/4.1/release/glassfish-4.1.zip &&             unzip /tmp/glassfish-4.1.zip -d /usr/local &&             rm -f /tmp/glassfish-4.1.zip
# Wed, 31 Aug 2016 20:49:17 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Wed, 31 Aug 2016 20:49:18 GMT
WORKDIR /usr/local/glassfish4
# Wed, 31 Aug 2016 20:49:18 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc9457f01bb1aa3df4fc9c85fc3199da0cf768a13052ea3262ffad263ed23ca`  
		Last Modified: Wed, 31 Aug 2016 20:49:24 GMT  
		Size: 576.1 KB (576141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f67e70ed4138e430b855072344ba9b224fef8245b0fea8dec163e7f42018e29`  
		Last Modified: Wed, 31 Aug 2016 20:49:34 GMT  
		Size: 106.7 MB (106678911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `glassfish:latest`

```console
$ docker pull glassfish@sha256:a2fe5b97b07833684c6531c4b0a33b209fe90397c621f805794a212f4761dc02
```

-	Platforms:
	-	linux; amd64

### `glassfish:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350596906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1631e1e4abb5db2228889523b1185b393197bb5cb7892f703ed6c777eeef01b7`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:48:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 20:48:50 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Wed, 31 Aug 2016 20:48:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-8-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Wed, 31 Aug 2016 20:48:58 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:49:17 GMT
RUN curl -L -o /tmp/glassfish-4.1.zip http://download.java.net/glassfish/4.1/release/glassfish-4.1.zip &&             unzip /tmp/glassfish-4.1.zip -d /usr/local &&             rm -f /tmp/glassfish-4.1.zip
# Wed, 31 Aug 2016 20:49:17 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Wed, 31 Aug 2016 20:49:18 GMT
WORKDIR /usr/local/glassfish4
# Wed, 31 Aug 2016 20:49:18 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc9457f01bb1aa3df4fc9c85fc3199da0cf768a13052ea3262ffad263ed23ca`  
		Last Modified: Wed, 31 Aug 2016 20:49:24 GMT  
		Size: 576.1 KB (576141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f67e70ed4138e430b855072344ba9b224fef8245b0fea8dec163e7f42018e29`  
		Last Modified: Wed, 31 Aug 2016 20:49:34 GMT  
		Size: 106.7 MB (106678911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
