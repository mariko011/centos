## `jetty:latest`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
