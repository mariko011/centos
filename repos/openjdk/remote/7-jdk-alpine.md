## `openjdk:7-jdk-alpine`

```console
$ docker pull openjdk@sha256:a126c505370ee38bcfa38613e32395587c82b26c56f258e90847116a5f70c819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:c683b6fe6e4c9e5bdecf8c3aa69d1b5f0cda689f6e2cf495655134d5ef713a38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801f5689a6ec1e0ed55d42aad404d9d77580a0ff2b1a9f9c5f0913376143e6da`
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
# Thu, 26 Oct 2017 01:25:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 26 Oct 2017 01:25:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 26 Oct 2017 01:25:23 GMT
ENV JAVA_VERSION=7u131
# Thu, 26 Oct 2017 01:25:23 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 26 Oct 2017 01:25:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:9d9bad3d1103405a7208b47bb984d20827de9a886b5c52b6b99f6c6e5963cc1b`  
		Last Modified: Thu, 26 Oct 2017 01:30:02 GMT  
		Size: 77.4 MB (77432967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-alpine` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:37f7568b3d68aa152eaca89c2702c14656d897c9928b372bb53642ac9745f95b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70169007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40fd64522d71a686808ce9410bc07feb820c5d9d5439f47dd341cc5bdf8b535`
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
# Thu, 26 Oct 2017 05:30:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 26 Oct 2017 05:30:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 26 Oct 2017 05:30:27 GMT
ENV JAVA_VERSION=7u131
# Thu, 26 Oct 2017 05:30:27 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 26 Oct 2017 05:30:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:dbbcd0d3e93139920de02620642fb670f089fabd90f438fc29ecc4c6bb66cd1c`  
		Last Modified: Thu, 26 Oct 2017 05:31:52 GMT  
		Size: 68.2 MB (68202609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6d62de8b36e88e2e479489c5085316bb11f5e2f6a2899d41da20681a4e6885f4
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76784955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e101ee9c18420dcfc4779c241414c4d2c391e59d4c42e8358a0e1f6d8759863`
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
# Thu, 01 Jun 2017 16:39:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 01 Jun 2017 16:39:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:39:08 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:39:10 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:39:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:34a884c2b57d3fe9ce7932152a421f418629fd832d6396056d6bffc1a7612ac2`  
		Last Modified: Thu, 01 Jun 2017 17:02:24 GMT  
		Size: 74.9 MB (74930497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-alpine` - linux; 386

```console
$ docker pull openjdk@sha256:832ded4232138b4e6214491777649e6cd0c2594844c091527f04434b6b73915e
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82584518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1507e978219a566d255d27424964c325f6efc515eca0601894f8cd9acc094331`
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
# Thu, 01 Jun 2017 16:37:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 01 Jun 2017 16:37:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:37:53 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:37:53 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:38:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:23069bd743943f09d8f84e2706c39e31df0bdef24786f4ffa58ed711aad7bf6c`  
		Last Modified: Thu, 01 Jun 2017 16:52:44 GMT  
		Size: 80.5 MB (80538680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-alpine` - linux; ppc64le

```console
$ docker pull openjdk@sha256:b421ce752747aa8cbb22e8151475ccef33cc47722b7085a15058704946149355
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71153917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55df5143c59db95b2bedec1282e77eac2c5b25365a8122bd906e5e60b5107570`
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
# Thu, 01 Jun 2017 17:04:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 01 Jun 2017 17:04:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 17:04:24 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 17:04:28 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 17:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:c0c51dc279381b0fb940c4db69b4c337a5aa86964664a1fd8f21da10c1d72a36`  
		Last Modified: Thu, 01 Jun 2017 18:02:24 GMT  
		Size: 69.2 MB (69196676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-alpine` - linux; s390x

```console
$ docker pull openjdk@sha256:23757a0abb208937941b31a176cd4c36b83fa1d477966388d20b064202b587b4
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71482716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1996afd1bfd2b843f779908d7e543aff8eb204303c8c96ee87fd271fac9d696a`
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
# Thu, 01 Jun 2017 16:31:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 01 Jun 2017 16:31:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:31:48 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:31:50 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:32:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d5008eabf8be1a66e1f34a6cfeb5bc77ae9d32b7c5be26411d8b7a25191ba5ae`  
		Last Modified: Thu, 01 Jun 2017 16:40:48 GMT  
		Size: 69.4 MB (69417195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
