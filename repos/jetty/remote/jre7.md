## `jetty:jre7`

```console
$ docker pull jetty@sha256:d763fd1c3fa9ab25c5e009f683652ed0ea490d7c7030dd4872a8487e14ed4982
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158172174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150b8c72b6dbf959c3dc1fe1293915ba88e758c4329da1f47f11eb0ee8b03a79`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:32:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:33:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 03:53:41 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:53:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:53:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:53:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:53:43 GMT
WORKDIR /usr/local/jetty
# Sat, 24 Sep 2016 03:53:43 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Sat, 24 Sep 2016 03:53:43 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Sat, 24 Sep 2016 03:53:44 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 24 Sep 2016 03:53:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 24 Sep 2016 03:53:47 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 24 Sep 2016 03:53:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 24 Sep 2016 03:53:49 GMT
WORKDIR /var/lib/jetty
# Sat, 24 Sep 2016 03:53:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 24 Sep 2016 03:53:52 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 24 Sep 2016 03:53:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 24 Sep 2016 03:53:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 24 Sep 2016 03:53:54 GMT
EXPOSE 8080/tcp
# Sat, 24 Sep 2016 03:53:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 03:53:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae3b0638638646d213f6edc2c16e52ddb60e20e07e4c2f091ff7e2928b10bd0`  
		Last Modified: Fri, 23 Sep 2016 19:33:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab678d1c6f004857bf4dbca219e8111b0a5699350e84a2edeaaf7327612f66eb`  
		Last Modified: Fri, 23 Sep 2016 19:33:51 GMT  
		Size: 77.7 MB (77712461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed3951a8d1a0b45f2633c7a97acf6750623f379fc4bfac649faef645be1ec3`  
		Last Modified: Sat, 24 Sep 2016 03:54:06 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3154c65b3e2e9097d18db27f63956db509a35cac0cada2014a77a954742d81d8`  
		Last Modified: Sat, 24 Sep 2016 03:54:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca1fd2f56ca8a2c3ae1b39e9ffb7fa68727208bfc1ce199ab30b25afad81e6e`  
		Last Modified: Sat, 24 Sep 2016 03:54:05 GMT  
		Size: 10.0 MB (10004220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136b686dd7f4660b0c946cb4f51d8744aed28a2c0b7e85cc7cd3c46fadfecbc4`  
		Last Modified: Sat, 24 Sep 2016 03:54:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c283c8ecf27539bda6d277d23b67419ecc88a3aa7f283c7bde8c5ac362cc9c20`  
		Last Modified: Sat, 24 Sep 2016 03:54:04 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea583c7cd535b53817dd4410ccf2c16f461eec9bc40ff4c6bb92f01efdcbe572`  
		Last Modified: Sat, 24 Sep 2016 03:54:03 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b163e65d8b5ac822a4e0938ba333b69d19ef3c5f574429af9b0bdffee5f10`  
		Last Modified: Sat, 24 Sep 2016 03:54:03 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
