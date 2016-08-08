<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:6.0`](#sonarqube60)
-	[`sonarqube:lts`](#sonarqubelts)
-	[`sonarqube:5.6.1`](#sonarqube561)
-	[`sonarqube:alpine`](#sonarqubealpine)
-	[`sonarqube:6.0-alpine`](#sonarqube60-alpine)
-	[`sonarqube:lts-alpine`](#sonarqubelts-alpine)
-	[`sonarqube:5.6.1-alpine`](#sonarqube561-alpine)

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:840c96df09acbf7bcddaef0a63f6eb7fb6f1f08a4af8745defb4214ae9448d4c
```

-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.3 MB (369315130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ca54d22f2a8178263c4701cccaa102befb27763584bcb745d8b097d1c74de5`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:06:43 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 05 Aug 2016 22:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:06:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 05 Aug 2016 22:06:47 GMT
ENV JAVA_VERSION=8u91
# Fri, 05 Aug 2016 22:06:48 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 05 Aug 2016 22:06:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 05 Aug 2016 22:08:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 05 Aug 2016 22:08:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 Aug 2016 21:06:00 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Mon, 08 Aug 2016 21:06:01 GMT
ENV SONAR_VERSION=6.0 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Mon, 08 Aug 2016 21:06:02 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 21:06:25 GMT
RUN set -x     && cd /tmp     && curl -fSL -O "https://archive.raspbian.org/raspbian/pool/main/c/ca-certificates/ca-certificates_20130119+deb7u1_all.deb"     && echo "3494ecfd607e4233d8d1a656eceb6bd109d756bc0afe9d3b29dfc0acc4fe19cf  ca-certificates_20130119+deb7u1_all.deb" | sha256sum -c -     && dpkg -P --force-all ca-certificates     && dpkg -i ca-certificates_20130119+deb7u1_all.deb     && rm ca-certificates_20130119+deb7u1_all.deb     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Mon, 08 Aug 2016 21:06:27 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Mon, 08 Aug 2016 21:06:28 GMT
WORKDIR /opt/sonarqube
# Mon, 08 Aug 2016 21:06:30 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/
# Mon, 08 Aug 2016 21:06:31 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B
	-	`sha256:b987bd349aa094960d32b6cf01f28604a595155ff3f6e9ad4262e4b3eba480d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:58 GMT  
		Size: 130.0 MB (129984944 bytes)
	-	`sha256:cc07342899764251d877aeb04dd94a665b46ef2422afda45ad2b044d66d2dfe4`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 284.3 KB (284348 bytes)
	-	`sha256:1406655692e96ae9cf6851780db5c685343ce292e923aac6c0e5236cfe04eb90`  
		Last Modified: Mon, 08 Aug 2016 21:07:54 GMT  
		Size: 126.1 MB (126063745 bytes)
	-	`sha256:c2abc4899c4dd846f41da2351c66ad332e70f6ccdd5f7a8ef9547c0091de87de`  
		Last Modified: Mon, 08 Aug 2016 21:07:40 GMT  
		Size: 435.0 B

## `sonarqube:6.0`

```console
$ docker pull sonarqube@sha256:840c96df09acbf7bcddaef0a63f6eb7fb6f1f08a4af8745defb4214ae9448d4c
```

-	Platforms:
	-	linux; amd64

### `sonarqube:6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.3 MB (369315130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ca54d22f2a8178263c4701cccaa102befb27763584bcb745d8b097d1c74de5`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:06:43 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 05 Aug 2016 22:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:06:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 05 Aug 2016 22:06:47 GMT
ENV JAVA_VERSION=8u91
# Fri, 05 Aug 2016 22:06:48 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 05 Aug 2016 22:06:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 05 Aug 2016 22:08:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 05 Aug 2016 22:08:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 Aug 2016 21:06:00 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Mon, 08 Aug 2016 21:06:01 GMT
ENV SONAR_VERSION=6.0 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Mon, 08 Aug 2016 21:06:02 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 21:06:25 GMT
RUN set -x     && cd /tmp     && curl -fSL -O "https://archive.raspbian.org/raspbian/pool/main/c/ca-certificates/ca-certificates_20130119+deb7u1_all.deb"     && echo "3494ecfd607e4233d8d1a656eceb6bd109d756bc0afe9d3b29dfc0acc4fe19cf  ca-certificates_20130119+deb7u1_all.deb" | sha256sum -c -     && dpkg -P --force-all ca-certificates     && dpkg -i ca-certificates_20130119+deb7u1_all.deb     && rm ca-certificates_20130119+deb7u1_all.deb     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Mon, 08 Aug 2016 21:06:27 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Mon, 08 Aug 2016 21:06:28 GMT
WORKDIR /opt/sonarqube
# Mon, 08 Aug 2016 21:06:30 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/
# Mon, 08 Aug 2016 21:06:31 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B
	-	`sha256:b987bd349aa094960d32b6cf01f28604a595155ff3f6e9ad4262e4b3eba480d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:58 GMT  
		Size: 130.0 MB (129984944 bytes)
	-	`sha256:cc07342899764251d877aeb04dd94a665b46ef2422afda45ad2b044d66d2dfe4`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 284.3 KB (284348 bytes)
	-	`sha256:1406655692e96ae9cf6851780db5c685343ce292e923aac6c0e5236cfe04eb90`  
		Last Modified: Mon, 08 Aug 2016 21:07:54 GMT  
		Size: 126.1 MB (126063745 bytes)
	-	`sha256:c2abc4899c4dd846f41da2351c66ad332e70f6ccdd5f7a8ef9547c0091de87de`  
		Last Modified: Mon, 08 Aug 2016 21:07:40 GMT  
		Size: 435.0 B

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:806e17be8d0e549226de39a1a89cccac6545577696b10f77a166681ff4059b1d
```

-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.9 MB (360921638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed7ad838d35cd2357295a2dc757eb1c481891460479c9694daafd610131686b`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:06:43 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 05 Aug 2016 22:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:06:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 05 Aug 2016 22:06:47 GMT
ENV JAVA_VERSION=8u91
# Fri, 05 Aug 2016 22:06:48 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 05 Aug 2016 22:06:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 05 Aug 2016 22:08:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 05 Aug 2016 22:08:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 Aug 2016 21:06:00 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Mon, 08 Aug 2016 21:06:33 GMT
ENV SONAR_VERSION=5.6.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Mon, 08 Aug 2016 21:06:34 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 21:06:52 GMT
RUN set -x     && cd /tmp     && curl -fSL -O "https://archive.raspbian.org/raspbian/pool/main/c/ca-certificates/ca-certificates_20130119+deb7u1_all.deb"     && echo "3494ecfd607e4233d8d1a656eceb6bd109d756bc0afe9d3b29dfc0acc4fe19cf  ca-certificates_20130119+deb7u1_all.deb" | sha256sum -c -     && dpkg -P --force-all ca-certificates     && dpkg -i ca-certificates_20130119+deb7u1_all.deb     && rm ca-certificates_20130119+deb7u1_all.deb     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Mon, 08 Aug 2016 21:06:54 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Mon, 08 Aug 2016 21:06:55 GMT
WORKDIR /opt/sonarqube
# Mon, 08 Aug 2016 21:06:57 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/
# Mon, 08 Aug 2016 21:06:58 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B
	-	`sha256:b987bd349aa094960d32b6cf01f28604a595155ff3f6e9ad4262e4b3eba480d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:58 GMT  
		Size: 130.0 MB (129984944 bytes)
	-	`sha256:cc07342899764251d877aeb04dd94a665b46ef2422afda45ad2b044d66d2dfe4`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 284.3 KB (284348 bytes)
	-	`sha256:0b38f76276cba830697cc9eb114c35f355e8e6e37b5162e2ec7c3a36a2bce68b`  
		Last Modified: Mon, 08 Aug 2016 21:08:40 GMT  
		Size: 117.7 MB (117670255 bytes)
	-	`sha256:72d26e6f373dd98adfb6af04046ea64090042ed90146fff4ff38a9686b804a52`  
		Last Modified: Mon, 08 Aug 2016 21:08:28 GMT  
		Size: 433.0 B

## `sonarqube:5.6.1`

```console
$ docker pull sonarqube@sha256:806e17be8d0e549226de39a1a89cccac6545577696b10f77a166681ff4059b1d
```

-	Platforms:
	-	linux; amd64

### `sonarqube:5.6.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.9 MB (360921638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed7ad838d35cd2357295a2dc757eb1c481891460479c9694daafd610131686b`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:06:43 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 05 Aug 2016 22:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:06:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 05 Aug 2016 22:06:47 GMT
ENV JAVA_VERSION=8u91
# Fri, 05 Aug 2016 22:06:48 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 05 Aug 2016 22:06:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 05 Aug 2016 22:08:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 05 Aug 2016 22:08:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 Aug 2016 21:06:00 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Mon, 08 Aug 2016 21:06:33 GMT
ENV SONAR_VERSION=5.6.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Mon, 08 Aug 2016 21:06:34 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 21:06:52 GMT
RUN set -x     && cd /tmp     && curl -fSL -O "https://archive.raspbian.org/raspbian/pool/main/c/ca-certificates/ca-certificates_20130119+deb7u1_all.deb"     && echo "3494ecfd607e4233d8d1a656eceb6bd109d756bc0afe9d3b29dfc0acc4fe19cf  ca-certificates_20130119+deb7u1_all.deb" | sha256sum -c -     && dpkg -P --force-all ca-certificates     && dpkg -i ca-certificates_20130119+deb7u1_all.deb     && rm ca-certificates_20130119+deb7u1_all.deb     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Mon, 08 Aug 2016 21:06:54 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Mon, 08 Aug 2016 21:06:55 GMT
WORKDIR /opt/sonarqube
# Mon, 08 Aug 2016 21:06:57 GMT
COPY file:137c5d28bd342cc8742a0ad6123eb8bd930c44da4719a82c9d33387b567c147c in /opt/sonarqube/bin/
# Mon, 08 Aug 2016 21:06:58 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B
	-	`sha256:b987bd349aa094960d32b6cf01f28604a595155ff3f6e9ad4262e4b3eba480d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:58 GMT  
		Size: 130.0 MB (129984944 bytes)
	-	`sha256:cc07342899764251d877aeb04dd94a665b46ef2422afda45ad2b044d66d2dfe4`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 284.3 KB (284348 bytes)
	-	`sha256:0b38f76276cba830697cc9eb114c35f355e8e6e37b5162e2ec7c3a36a2bce68b`  
		Last Modified: Mon, 08 Aug 2016 21:08:40 GMT  
		Size: 117.7 MB (117670255 bytes)
	-	`sha256:72d26e6f373dd98adfb6af04046ea64090042ed90146fff4ff38a9686b804a52`  
		Last Modified: Mon, 08 Aug 2016 21:08:28 GMT  
		Size: 433.0 B

## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:1288bbd758424ded5a272bf287a77b6e5c1b767c17aa77edb5409e98184ca9af
```

-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181043364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab8f10fd0589c50a5c56b55aeb41f5664f507ea4e3acce165e100b396af23a1`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 22:01:59 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Mon, 08 Aug 2016 21:06:59 GMT
ENV SONAR_VERSION=6.0 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Mon, 08 Aug 2016 21:07:00 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 21:07:24 GMT
RUN set -x     && apk add --no-cache gnupg unzip curl     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Mon, 08 Aug 2016 21:07:26 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Mon, 08 Aug 2016 21:07:27 GMT
WORKDIR /opt/sonarqube
# Mon, 08 Aug 2016 21:07:29 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/
# Mon, 08 Aug 2016 21:07:30 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:1220e5671d5a88156f5adb07a350ab5be6964be32b9768f6c3fde3f010708b14`  
		Last Modified: Mon, 08 Aug 2016 21:09:27 GMT  
		Size: 129.4 MB (129407173 bytes)
	-	`sha256:0a02cbf0f076127587ce3dad87b5b0dbb446c78971a6fefeee06f9cd20967540`  
		Last Modified: Mon, 08 Aug 2016 21:09:14 GMT  
		Size: 432.0 B

## `sonarqube:6.0-alpine`

```console
$ docker pull sonarqube@sha256:1288bbd758424ded5a272bf287a77b6e5c1b767c17aa77edb5409e98184ca9af
```

-	Platforms:
	-	linux; amd64

### `sonarqube:6.0-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181043364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab8f10fd0589c50a5c56b55aeb41f5664f507ea4e3acce165e100b396af23a1`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 22:01:59 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Mon, 08 Aug 2016 21:06:59 GMT
ENV SONAR_VERSION=6.0 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Mon, 08 Aug 2016 21:07:00 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 21:07:24 GMT
RUN set -x     && apk add --no-cache gnupg unzip curl     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Mon, 08 Aug 2016 21:07:26 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Mon, 08 Aug 2016 21:07:27 GMT
WORKDIR /opt/sonarqube
# Mon, 08 Aug 2016 21:07:29 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/
# Mon, 08 Aug 2016 21:07:30 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:1220e5671d5a88156f5adb07a350ab5be6964be32b9768f6c3fde3f010708b14`  
		Last Modified: Mon, 08 Aug 2016 21:09:27 GMT  
		Size: 129.4 MB (129407173 bytes)
	-	`sha256:0a02cbf0f076127587ce3dad87b5b0dbb446c78971a6fefeee06f9cd20967540`  
		Last Modified: Mon, 08 Aug 2016 21:09:14 GMT  
		Size: 432.0 B

## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:251ad3fdd4bc7ca0b3d72d29390ef1b7ab893859803ded359d1c41da9f256c5e
```

-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172647309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7ab9d21fcff860158547f0d1c1cce1718b317847964e1a8ae47414656fb137`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 22:01:59 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Thu, 28 Jul 2016 20:41:19 GMT
ENV SONAR_VERSION=5.6.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 28 Jul 2016 20:41:19 GMT
EXPOSE 9000/tcp
# Thu, 28 Jul 2016 20:41:38 GMT
RUN set -x     && apk add --no-cache gnupg unzip curl     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Thu, 28 Jul 2016 20:41:40 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Thu, 28 Jul 2016 20:41:40 GMT
WORKDIR /opt/sonarqube
# Thu, 28 Jul 2016 20:41:42 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/
# Thu, 28 Jul 2016 20:41:43 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:f902e5c14a302c1a0c0d1a5d39e59a63d15efae485b4b2214efbd7a84fa6e9f6`  
		Last Modified: Thu, 28 Jul 2016 20:42:56 GMT  
		Size: 121.0 MB (121011117 bytes)
	-	`sha256:95e039e01e0fa1e380e32d48cbe2380368537c30cb63fa54e7670a293437ef16`  
		Last Modified: Thu, 28 Jul 2016 20:42:42 GMT  
		Size: 433.0 B

## `sonarqube:5.6.1-alpine`

```console
$ docker pull sonarqube@sha256:251ad3fdd4bc7ca0b3d72d29390ef1b7ab893859803ded359d1c41da9f256c5e
```

-	Platforms:
	-	linux; amd64

### `sonarqube:5.6.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172647309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7ab9d21fcff860158547f0d1c1cce1718b317847964e1a8ae47414656fb137`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 22:01:59 GMT
MAINTAINER David Gageot <david.gageot@sonarsource.com>
# Thu, 28 Jul 2016 20:41:19 GMT
ENV SONAR_VERSION=5.6.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 28 Jul 2016 20:41:19 GMT
EXPOSE 9000/tcp
# Thu, 28 Jul 2016 20:41:38 GMT
RUN set -x     && apk add --no-cache gnupg unzip curl     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Thu, 28 Jul 2016 20:41:40 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions]
# Thu, 28 Jul 2016 20:41:40 GMT
WORKDIR /opt/sonarqube
# Thu, 28 Jul 2016 20:41:42 GMT
COPY file:83e169627dc34c4308fd222d47a1ae7c388a283efdc49980a885a8788308a052 in /opt/sonarqube/bin/
# Thu, 28 Jul 2016 20:41:43 GMT
ENTRYPOINT &{["./bin/run.sh"]}
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:f902e5c14a302c1a0c0d1a5d39e59a63d15efae485b4b2214efbd7a84fa6e9f6`  
		Last Modified: Thu, 28 Jul 2016 20:42:56 GMT  
		Size: 121.0 MB (121011117 bytes)
	-	`sha256:95e039e01e0fa1e380e32d48cbe2380368537c30cb63fa54e7670a293437ef16`  
		Last Modified: Thu, 28 Jul 2016 20:42:42 GMT  
		Size: 433.0 B
