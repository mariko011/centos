## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:b80742f49d3a9e7a72c99a2fe7c971ddf06a414681b285994b197041a25566ad
```

-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.4 MB (364444693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d65ae135bc8c85a14d4966f937089ce75478700da000e06f042dc0ec5be66e`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:16:40 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Wed, 10 May 2017 16:17:13 GMT
ENV SONAR_VERSION=6.3.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 10 May 2017 16:17:14 GMT
EXPOSE 9000/tcp
# Wed, 10 May 2017 16:17:26 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 10 May 2017 16:17:27 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 10 May 2017 16:17:28 GMT
WORKDIR /opt/sonarqube
# Wed, 10 May 2017 16:17:29 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/ 
# Wed, 10 May 2017 16:17:30 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6815342efabf2db4ec408e7b9cf1ba235077a501b0091152850c0c98ca8a3e0a`  
		Last Modified: Sat, 13 May 2017 18:54:52 GMT  
		Size: 116.6 MB (116585267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee844d484d60bed4d168d330ba4a7b7934982836fad3564b202c0997e4565c6`  
		Last Modified: Sat, 13 May 2017 18:54:45 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
