## `openjdk:8u131-jre-alpine`

```console
$ docker pull openjdk@sha256:ab816601e821f3f797c529fe9aa9dac3ed8ad15e778b035971092efabf2e4898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8u131-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:debb92896692ee4e14208dad1de1c9780e3cadced0eaa7dc68e1a9544ad912f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56277853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5699ac7295f98a22190a1a4b0e503dfac9501fb38ea1482f6631cfbb46a520f2`
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
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u131-jre-alpine` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:66336b64d4d3f172b8d78581ee0e5eaa601fb3c2b7d925ad0abcaffb21a0d5e5
```

-	Docker Version: 17.05.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53853995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eceb530f0482d310cdbe5799fef9b98400ffe720ea0570fe8dc8723ddff3d4b7`
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
# Fri, 02 Jun 2017 21:53:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 02 Jun 2017 21:53:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 02 Jun 2017 21:53:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 02 Jun 2017 21:53:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Fri, 02 Jun 2017 21:53:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d6a14b6a7b8a8c59d50be933b1f00fd62e8b5f513c41cd4766dbbae0bab1f5fd`  
		Last Modified: Fri, 02 Jun 2017 21:56:40 GMT  
		Size: 51.9 MB (51887970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u131-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e0bc16f29eea60a2cccaf647678d0115373cea513cf100ed8c8bfd5ac346eb1a
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54509513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485aa773522ea329961c399aa9c6d6f362d0f76f9ebdba63ec340e207682994c`
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
# Thu, 01 Jun 2017 16:54:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 16:54:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:54:28 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 16:54:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 16:54:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:b987e315f89f109e1c270d1b2df43a3f673cd9c6c71fec71a74d5177e2827cd7`  
		Last Modified: Thu, 01 Jun 2017 17:07:18 GMT  
		Size: 52.7 MB (52655055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u131-jre-alpine` - linux; 386

```console
$ docker pull openjdk@sha256:879044678736495a74e90641f5c996fcc5fd602d5c57915b32181f325b8ba594
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (56966751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbb1b564f816a26da30879dff016bc85bc4e43c1c015be3964ef68fff3061d7`
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
# Thu, 01 Jun 2017 16:47:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 16:47:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:47:28 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 16:47:28 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 16:47:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:b2c79cc868acf9d29e477b4db9c2014a16c12381123aaedb6763ff82b7a87f34`  
		Last Modified: Thu, 01 Jun 2017 16:55:56 GMT  
		Size: 54.9 MB (54920913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u131-jre-alpine` - linux; ppc64le

```console
$ docker pull openjdk@sha256:9f25038a024ee6e8defc635917305f7bfb0f3c08e4a5bd61d9b0b6a9b3c6d427
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55219183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f941c65dbbce20323498b21867730e64363e90b6eab42ee7675bc50b0a497e`
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
# Thu, 01 Jun 2017 17:50:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 17:50:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 17:50:19 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 17:50:20 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:50:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:269f505b091dde8f8724283d6ab6df4413473af161d8e194e1eeb3878c6a9721`  
		Last Modified: Thu, 01 Jun 2017 18:06:09 GMT  
		Size: 53.3 MB (53261942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u131-jre-alpine` - linux; s390x

```console
$ docker pull openjdk@sha256:616087ccfc29095add7c606413c963865ba1e25e466478d4ba96e7639d9d4110
```

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54978840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2344cad1aa1ad40070a6ee0085bb44bb4b823d0978bc2614c3a870e95b03401`
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
# Thu, 01 Jun 2017 16:36:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 16:36:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:36:36 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 16:36:37 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 16:36:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:20a67c521b51ea1062938b493c53030f6523243cfe72d4b24e97fb5c001983b9`  
		Last Modified: Thu, 01 Jun 2017 16:44:32 GMT  
		Size: 52.9 MB (52913319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
