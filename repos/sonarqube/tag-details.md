<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:6.5`](#sonarqube65)
-	[`sonarqube:lts`](#sonarqubelts)
-	[`sonarqube:5.6.6`](#sonarqube566)
-	[`sonarqube:alpine`](#sonarqubealpine)
-	[`sonarqube:6.5-alpine`](#sonarqube65-alpine)
-	[`sonarqube:lts-alpine`](#sonarqubelts-alpine)
-	[`sonarqube:5.6.6-alpine`](#sonarqube566-alpine)

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:d1dd40938f4497b4531498762e786ca2d29d67452055fc9b4c40182ba44407b7
```

-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438085340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73af4a2dedf428f83e0f9389c7c0b8d9dbef2150ce78465c7b8ca0f7f04a38a3`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:55:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:55:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:56:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:56:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 08 Sep 2017 11:05:35 GMT
ENV SONAR_VERSION=6.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 08 Sep 2017 11:05:36 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:05:45 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 08 Sep 2017 11:05:46 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 08 Sep 2017 11:05:46 GMT
WORKDIR /opt/sonarqube
# Fri, 08 Sep 2017 11:05:47 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/ 
# Fri, 08 Sep 2017 11:05:47 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34a55a78629d1810896a463ad235a043bfb76771657326e7f12a5d6b5462711`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 661.9 KB (661916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0608417860f2fbf351f5691f518ecedd1b5e0fbc6a09ff9df6fc4e9cbe1d617`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ffb0683f1a94850d234bc16a57845dbbb8096706ac2f498cfa6227b5d34c88`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ab86bd63bcf0ac2f592a1ea2e581af4508a5097bdfdde4a148d9c8ce57fbdf`  
		Last Modified: Sat, 09 Sep 2017 00:35:14 GMT  
		Size: 183.7 MB (183688010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e8d28e95f8e809aafb72c4c445a45bb7f3d1f388754776e7e3abc9cd144048`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cef09101032a3ba87d8b4e2ebf809e471c694d68389028d21076986e395fbb3`  
		Last Modified: Mon, 11 Sep 2017 15:48:58 GMT  
		Size: 142.8 MB (142807181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba0f8f26f2309dfd47ab0aeaf73b91dccedc16834edaa756b66cd95059faff8`  
		Last Modified: Mon, 11 Sep 2017 15:48:47 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.5`

```console
$ docker pull sonarqube@sha256:764c2e93286f972304757196dbda1a839f00783c2470c360b49b3f83651cbaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.5` - linux; amd64

```console
$ docker pull sonarqube@sha256:2c9cc915b1fe7dc5cbd0a559cf4d45ae9e4bb73e5458636906d8a6f1f0621dc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.3 MB (438319647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6c38ffc31e6eda768dbabd4855739ecb2f9b6aec6b9d18a47173500331ed74`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 06:54:17 GMT
ENV SONAR_VERSION=6.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 13 Sep 2017 06:54:17 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 06:54:39 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 13 Sep 2017 06:54:39 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 13 Sep 2017 06:54:40 GMT
WORKDIR /opt/sonarqube
# Wed, 13 Sep 2017 06:54:40 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/ 
# Wed, 13 Sep 2017 06:54:40 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2468dc37d460997f27b0129700684430efba481c09c7d3ca4c798018ee069b`  
		Last Modified: Wed, 13 Sep 2017 06:55:52 GMT  
		Size: 142.8 MB (142807207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676d33f45a29ae0ec111ef0505798d72344086998906f51ea3f576728b14fd2d`  
		Last Modified: Wed, 13 Sep 2017 06:55:42 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:12482343eca6834cc9a9eba0e267091d0929f0dbf76e1b8b97a1a622a5835ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:409d402140223a8d7ef5ca7f79016bb886d4a1ad1964f699c67467131eb069b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412131825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa5c166fb87b14a6f37e0719c87bc7394491f589fdaeae4fe06f1d2db1b97b0`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 06:54:41 GMT
ENV SONAR_VERSION=5.6.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 13 Sep 2017 06:54:41 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 06:54:49 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 13 Sep 2017 06:54:50 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 13 Sep 2017 06:54:50 GMT
WORKDIR /opt/sonarqube
# Wed, 13 Sep 2017 06:54:50 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/ 
# Wed, 13 Sep 2017 06:54:50 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f794249c1192b21507abb0c3bbb19428d716899dacedafc74eef63f8f1aed36`  
		Last Modified: Wed, 13 Sep 2017 06:56:20 GMT  
		Size: 116.6 MB (116619385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18aeada417c4dfc1561917f9c73ff734d3558a10455c0434d1af77af6359680`  
		Last Modified: Wed, 13 Sep 2017 06:56:07 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:5.6.6`

```console
$ docker pull sonarqube@sha256:12482343eca6834cc9a9eba0e267091d0929f0dbf76e1b8b97a1a622a5835ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:5.6.6` - linux; amd64

```console
$ docker pull sonarqube@sha256:409d402140223a8d7ef5ca7f79016bb886d4a1ad1964f699c67467131eb069b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412131825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa5c166fb87b14a6f37e0719c87bc7394491f589fdaeae4fe06f1d2db1b97b0`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 06:54:41 GMT
ENV SONAR_VERSION=5.6.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 13 Sep 2017 06:54:41 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 06:54:49 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 13 Sep 2017 06:54:50 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 13 Sep 2017 06:54:50 GMT
WORKDIR /opt/sonarqube
# Wed, 13 Sep 2017 06:54:50 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/ 
# Wed, 13 Sep 2017 06:54:50 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f794249c1192b21507abb0c3bbb19428d716899dacedafc74eef63f8f1aed36`  
		Last Modified: Wed, 13 Sep 2017 06:56:20 GMT  
		Size: 116.6 MB (116619385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18aeada417c4dfc1561917f9c73ff734d3558a10455c0434d1af77af6359680`  
		Last Modified: Wed, 13 Sep 2017 06:56:07 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:02abe1c440e4b83674bc16af060dd95efffe6f6164cd24831e2177afceb3429d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:3248f7a1942155311e3d3888152d916ddd440e51218b11a1daee4ed8748faf85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220236223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4cac97ae753c0d725917b90a7f1144036f86807b659b890d428cf72b8c4b5be`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 06:54:51 GMT
ENV SONAR_VERSION=6.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 13 Sep 2017 06:54:52 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 06:55:08 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 13 Sep 2017 06:55:09 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 13 Sep 2017 06:55:09 GMT
WORKDIR /opt/sonarqube
# Wed, 13 Sep 2017 06:55:09 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/ 
# Wed, 13 Sep 2017 06:55:10 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f62a5dce25806f4fd8978fdc2caa5ca41d7f64342708d73e8d8ec15af8621d`  
		Last Modified: Wed, 13 Sep 2017 06:57:07 GMT  
		Size: 148.2 MB (148193789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc76630664febc6f017a7f698f4e7396a2a6134e14d174609065411b380a67f4`  
		Last Modified: Wed, 13 Sep 2017 06:56:51 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.5-alpine`

```console
$ docker pull sonarqube@sha256:02abe1c440e4b83674bc16af060dd95efffe6f6164cd24831e2177afceb3429d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.5-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:3248f7a1942155311e3d3888152d916ddd440e51218b11a1daee4ed8748faf85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220236223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4cac97ae753c0d725917b90a7f1144036f86807b659b890d428cf72b8c4b5be`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 06:54:51 GMT
ENV SONAR_VERSION=6.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 13 Sep 2017 06:54:52 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 06:55:08 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 13 Sep 2017 06:55:09 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 13 Sep 2017 06:55:09 GMT
WORKDIR /opt/sonarqube
# Wed, 13 Sep 2017 06:55:09 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/ 
# Wed, 13 Sep 2017 06:55:10 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f62a5dce25806f4fd8978fdc2caa5ca41d7f64342708d73e8d8ec15af8621d`  
		Last Modified: Wed, 13 Sep 2017 06:57:07 GMT  
		Size: 148.2 MB (148193789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc76630664febc6f017a7f698f4e7396a2a6134e14d174609065411b380a67f4`  
		Last Modified: Wed, 13 Sep 2017 06:56:51 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:dcfce4b8992bfb78746edc0de3b396a0db071ba501bc02cb85491cac5559220a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:178b04d7a55bd9b630bcf6dcbd62de57912be3ca82e4270f75666b121cb25607
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194046524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ac35ffe69433450bd9b098142ba4d7f8aac8d755d3380d2fbb68ea4179dc0a`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 06:55:10 GMT
ENV SONAR_VERSION=5.6.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 13 Sep 2017 06:55:11 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 06:55:30 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 13 Sep 2017 06:55:31 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 13 Sep 2017 06:55:31 GMT
WORKDIR /opt/sonarqube
# Wed, 13 Sep 2017 06:55:31 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/ 
# Wed, 13 Sep 2017 06:55:31 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dccd749a3bdcd6492135a08eb6f79e2ea2413678ba77102ff28f98cabf4200c`  
		Last Modified: Wed, 13 Sep 2017 06:57:28 GMT  
		Size: 122.0 MB (122004090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c42a375d72089faade47a9a880acc434331cd1f84d478141b087b267ea3823`  
		Last Modified: Wed, 13 Sep 2017 06:57:18 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:5.6.6-alpine`

```console
$ docker pull sonarqube@sha256:dcfce4b8992bfb78746edc0de3b396a0db071ba501bc02cb85491cac5559220a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:5.6.6-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:178b04d7a55bd9b630bcf6dcbd62de57912be3ca82e4270f75666b121cb25607
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194046524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ac35ffe69433450bd9b098142ba4d7f8aac8d755d3380d2fbb68ea4179dc0a`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 06:55:10 GMT
ENV SONAR_VERSION=5.6.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 13 Sep 2017 06:55:11 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 06:55:30 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 13 Sep 2017 06:55:31 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 13 Sep 2017 06:55:31 GMT
WORKDIR /opt/sonarqube
# Wed, 13 Sep 2017 06:55:31 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/ 
# Wed, 13 Sep 2017 06:55:31 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dccd749a3bdcd6492135a08eb6f79e2ea2413678ba77102ff28f98cabf4200c`  
		Last Modified: Wed, 13 Sep 2017 06:57:28 GMT  
		Size: 122.0 MB (122004090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c42a375d72089faade47a9a880acc434331cd1f84d478141b087b267ea3823`  
		Last Modified: Wed, 13 Sep 2017 06:57:18 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
