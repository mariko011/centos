## `openjdk:7u131-jre-alpine`

```console
$ docker pull openjdk@sha256:caf53e2d261d8f8a90a8ffb50925508b40a0e57ee73c096759f4477e9c26346e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u131-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:96f1e5d02044f9a33b346704288fe11e347f97f8191b4e5a0993396793b4e76b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63123576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83fcef1819e51ce777326c142310c0f30f6e573257ae56c42cab4ec421edbd4`
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
# Thu, 26 Oct 2017 01:25:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 26 Oct 2017 01:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 26 Oct 2017 01:25:42 GMT
ENV JAVA_VERSION=7u131
# Thu, 26 Oct 2017 01:25:43 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 26 Oct 2017 01:25:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:a3f46573409dd9f560886eb33161e8edffc7c97624bab30e18c210f8e9fd718d`  
		Last Modified: Thu, 26 Oct 2017 01:30:55 GMT  
		Size: 61.1 MB (61131904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u131-jre-alpine` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:f2fb2f8983fabb99147ac32156770445b339e5a60ea1fc8914121ab02e03dd4a
```

-	Docker Version: 17.05.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53853590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b3a331ed1e9d133c246600e36a290f6126c8c0f1b449b4bdd86dba840a4fe5`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 02 Jun 2017 21:12:28 GMT
ADD file:ba1aea06cf7508163de7e276134ed5fc45a9d040b4b4b50937f0278c859a98e2 in / 
# Fri, 02 Jun 2017 21:12:29 GMT
ENV TZ=UTC
# Fri, 02 Jun 2017 21:12:29 GMT
CMD ["sh"]
# Fri, 02 Jun 2017 21:51:27 GMT
ENV LANG=C.UTF-8
# Fri, 02 Jun 2017 21:51:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 02 Jun 2017 21:52:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 02 Jun 2017 21:52:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 02 Jun 2017 21:52:15 GMT
ENV JAVA_VERSION=7u131
# Fri, 02 Jun 2017 21:52:16 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Fri, 02 Jun 2017 21:52:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b3b3cf8259467a3d78fdb5f2d0b0151913be6489d95cfa7a09eb290f16412558`  
		Last Modified: Fri, 02 Jun 2017 19:27:50 GMT  
		Size: 2.0 MB (1965788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3153b7802b1851b4651c8f1fbee895cae9f3c1fb8e383177415e088a37c9d`  
		Last Modified: Fri, 02 Jun 2017 21:53:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e2ac0cb1ddd12352a93006d6a361a6700d158655b3254ec273b17b8e70a90c`  
		Last Modified: Fri, 02 Jun 2017 21:55:09 GMT  
		Size: 51.9 MB (51887565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u131-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b0e3eae440ba9fe494b914a7d7c278b17db6810d31eaa5663cec9616fc4d70a5
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60515763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad76d1af3015a458c05b59c0d98f64dc1debc30910252b4024f1c4c8097a434`
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
# Thu, 01 Jun 2017 16:44:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 01 Jun 2017 16:44:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:44:35 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:44:36 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:45:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:b6b61f8cf859f0186af46ad1680346deec5ed08f86745c1567b5ce81e8d1fa9c`  
		Last Modified: Thu, 01 Jun 2017 17:03:58 GMT  
		Size: 58.7 MB (58661305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u131-jre-alpine` - linux; 386

```console
$ docker pull openjdk@sha256:838aa8cd8d95508024afafcb187e08d44edc50e57159765280c792c94523ff07
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66268722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c11787c72dab54396e3228968013241aa7e80905ae7b12fdd998cacfc26f1dc`
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
# Thu, 01 Jun 2017 16:42:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 01 Jun 2017 16:42:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:42:39 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:42:39 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:42:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:c6f533d8ef7d78309d84505ae4aac1073d5c3a0d686a65934b87e9728d02a2a8`  
		Last Modified: Thu, 01 Jun 2017 16:53:45 GMT  
		Size: 64.2 MB (64222884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u131-jre-alpine` - linux; ppc64le

```console
$ docker pull openjdk@sha256:96f6ff69dead4af93dc6a3902b40f68e712a2e18ebbf8ee89768b8a22f0d4230
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54800904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04ca81c0541d1c47838eec44108badf158e94109ef0c3c3d12888c4934c38f1`
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
# Thu, 01 Jun 2017 17:24:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 01 Jun 2017 17:24:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 17:24:47 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 17:24:51 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 17:25:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:168cf2d36659edc8e36225e7d8cb4afb844941cdf7ee0a8da6aeaa030a3c6ed5`  
		Last Modified: Thu, 01 Jun 2017 18:03:28 GMT  
		Size: 52.8 MB (52843663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u131-jre-alpine` - linux; s390x

```console
$ docker pull openjdk@sha256:e4eadbaf3952574edbbd4a8b27432692ff71026be8a17831cb8b224084bc2c9a
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55193090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55370d638b09a87ea23ebfb9f06afd44c47b0504c339bce1946dec1c7b3dbe82`
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
# Thu, 01 Jun 2017 16:33:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 01 Jun 2017 16:33:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:33:40 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:33:41 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:33:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:49beb2101111039585446297d0213cfaf6424b8abb3bdc2d38afe57d1892cf98`  
		Last Modified: Thu, 01 Jun 2017 16:41:56 GMT  
		Size: 53.1 MB (53127569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
