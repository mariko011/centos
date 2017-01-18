## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:111a775a289d6a3af62528488c973203f0fc6f6813259f90e55e2f5e255528c5
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158249061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b5caf2bc04759592effc3f09a6825ee3dcd999c68e030f8a9da2fca2be6356`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Jan 2017 00:38:45 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:47 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:56 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:01 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:01 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:02 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f17517de399b265dfbaa04761f4d3c4407a333185aea00645ba3fb0560d4d0`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3025ae836bbac18daaab748cf1f113f078cf05106b6ddc647d38382d963e9`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa3dab4b64b0b24b22d36966bfa51180785131d21892f5056e74e6a5013095`  
		Last Modified: Wed, 18 Jan 2017 08:25:41 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc10f536ef13c77323405e43945c3e558813716a38ba8115fc3c66919f5e5cc1`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a098dea165e6a17e26d44753ded1dbf4ad026db60ddf39b8fdf51762a32e322`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220a12f72899bf9d98956758fdf91e37c1de0e3bd1528491aeb061411284cabd`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83839bba1c48a191739e4d269a57f613150799eae9a7f621f286a15f8736966`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
