## `openjdk:jdk-alpine`

```console
$ docker pull openjdk@sha256:8b31d9da9d120c6a2d81e06d1a24b425bcfcf7b3df4d1f011ada992fc2ad6252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:44d6525139666454076f5d30a3ef426a0636b3d2e2e916b511682b66f31d2846
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72045488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1fdb34c52a85b59d4ab970cefd6d8a9a0515a1e0ad0f5910a65ca853f349b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-alpine` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:6074218a58d537c26ea021abb33b9557d75cd01e9dd72cfe53ee034f1e62eb20
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69647478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71233eb93fb027b8cf849ed6f756f6b0ec6638f6a972deed0b05e839cf58fe33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:30:25 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 05:30:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 05:31:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 05:31:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:31:07 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 05:31:07 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 05:31:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40582f0dca4419edfce4da23d0e09feee9846320b70797bd9268a2e515e04853`  
		Last Modified: Thu, 26 Oct 2017 05:31:40 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34080b348e7e08b8582d6ba5f9e5fe0dd11faef6201172f1f6fb73f69724a5fa`  
		Last Modified: Thu, 26 Oct 2017 05:32:25 GMT  
		Size: 67.7 MB (67681080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:757f47de80332a690990322315b63b39a22086a3ee19701aaa26cec8309de6cf
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70268975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886b749bb71559802e207290079d1755f06f4057322ed0ad7ef0e194028bb215`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 24 May 2017 21:54:56 GMT
ADD file:ffdd27dd0b5fefdcead643a4412d36f3717979d65cda6ebb668e40159e3fdf53 in / 
# Wed, 31 May 2017 20:50:32 GMT
ENV TZ=UTC
# Wed, 31 May 2017 20:50:34 GMT
CMD ["sh"]
# Thu, 01 Jun 2017 16:39:03 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:39:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:52:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:52:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:52:36 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 16:52:37 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 16:52:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:71fcf717f6891cc6e3bcfce0be75b0226979f2cd03d38082ffa7877b8feebc31`  
		Last Modified: Wed, 24 May 2017 21:55:06 GMT  
		Size: 1.9 MB (1854219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72364d7d34eea9ae494c63348aa2ef883ad38354d0af6c5f33f6ff483fb1670`  
		Last Modified: Thu, 01 Jun 2017 17:01:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96009e984fb87d6cdb6567a4de4b4014dedd8ad31e0a0505b34a2ef23af76862`  
		Last Modified: Thu, 01 Jun 2017 17:05:53 GMT  
		Size: 68.4 MB (68414517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-alpine` - linux; 386

```console
$ docker pull openjdk@sha256:372c5aa98bd679c8aecb2ed0a28f92dad0e741f145ce60ae5c103d749df89eaf
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72736511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cb29ffccd2402be573d6b490fdef17eab40a8e4648f89b9ec16be2efdfe883`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 24 May 2017 21:54:50 GMT
ADD file:e10abfc7e3c323767adf450d96a9477d75a449181d01e9f11e30ccc153d22d49 in / 
# Wed, 31 May 2017 20:27:22 GMT
ENV TZ=UTC
# Wed, 31 May 2017 20:27:23 GMT
CMD ["sh"]
# Thu, 01 Jun 2017 16:37:50 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:37:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:46:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:46:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:46:09 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 16:46:09 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 16:46:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:81379ec603883e250d438d8b896066b5635ee83290982f5373fcbc569e11b227`  
		Last Modified: Wed, 24 May 2017 21:54:55 GMT  
		Size: 2.0 MB (2045600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09338c4618b3fd944be16d6d6395805f229d092d72dfb783e2edcccec2bd810c`  
		Last Modified: Thu, 01 Jun 2017 16:52:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0684f877d15f4787b6cda92a4ff89330ea56b6518d4d16e6c9e107325df34e6`  
		Last Modified: Thu, 01 Jun 2017 16:54:58 GMT  
		Size: 70.7 MB (70690673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-alpine` - linux; ppc64le

```console
$ docker pull openjdk@sha256:e81c65d02d434b2d399ee78266a14660f4c46f4e5663ddc2326a228ed9d9e04f
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71038261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc0451049349fa77c81b19883411019ffa6cf4158cbc7a6e0efac6a7db21844`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 24 May 2017 21:54:42 GMT
ADD file:834982569659caf84fea158cba2b6305a0024a17f660d34f66ab07953e03e677 in / 
# Wed, 31 May 2017 20:53:23 GMT
ENV TZ=UTC
# Wed, 31 May 2017 20:53:32 GMT
CMD ["sh"]
# Thu, 01 Jun 2017 17:04:04 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 17:04:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 17:44:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 17:44:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 17:44:19 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 17:44:20 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:44:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:7061fcd193cbeed54a287cee7a71fc81fb2aaa0c24a0d38d3899c7b8c70c3dbd`  
		Last Modified: Wed, 24 May 2017 21:54:49 GMT  
		Size: 2.0 MB (1957002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84405f25b085cecafa3be3dc1d7431507bae7df969f686091bfe0b937e49fc5f`  
		Last Modified: Thu, 01 Jun 2017 18:02:08 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cfbf220fc0e2fb11d9c942253a9c3739ae7b28735465b3b5bcf7f969c1869`  
		Last Modified: Thu, 01 Jun 2017 18:04:57 GMT  
		Size: 69.1 MB (69081020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-alpine` - linux; s390x

```console
$ docker pull openjdk@sha256:0b43d2e23faa48a99381ef0b4e3edff0dc53f3fc85c6f48f6fe22ca7ac8676f5
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70750752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c265f015afb2e31d0566f2c500bb00b4ad3f95fcc0a42a2f888a9e10c2f603a4`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 24 May 2017 21:55:01 GMT
ADD file:112165733aad4763dc22ab51fee7f15130533bc22daccda6c0c11c70b225126f in / 
# Wed, 31 May 2017 20:24:12 GMT
ENV TZ=UTC
# Wed, 31 May 2017 20:24:13 GMT
CMD ["sh"]
# Thu, 01 Jun 2017 16:31:42 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:31:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:35:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:35:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:35:23 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 16:35:24 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 16:35:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:2605c66e87571067516195ef0856981701ebcea726f80e47b5df0045c3fc955e`  
		Last Modified: Wed, 24 May 2017 21:55:11 GMT  
		Size: 2.1 MB (2065283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6862e05660a842a4c6bf927fac8b607d01395351c12b13595a3a4b9ba19cf767`  
		Last Modified: Thu, 01 Jun 2017 16:40:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f10d2a1f80909507df3f6197150c6e9217d7f86892bb29effd13fa9c47270a`  
		Last Modified: Thu, 01 Jun 2017 16:43:31 GMT  
		Size: 68.7 MB (68685231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
