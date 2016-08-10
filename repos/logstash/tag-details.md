<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `logstash`

-	[`logstash:1.5.6-1`](#logstash156-1)
-	[`logstash:1.5.6`](#logstash156)
-	[`logstash:1.5`](#logstash15)
-	[`logstash:1`](#logstash1)
-	[`logstash:2.0.0-1`](#logstash200-1)
-	[`logstash:2.0.0`](#logstash200)
-	[`logstash:2.0`](#logstash20)
-	[`logstash:2.1.3-1`](#logstash213-1)
-	[`logstash:2.1.3`](#logstash213)
-	[`logstash:2.1`](#logstash21)
-	[`logstash:2.2.4-1`](#logstash224-1)
-	[`logstash:2.2.4`](#logstash224)
-	[`logstash:2.2`](#logstash22)
-	[`logstash:2.3.4-1`](#logstash234-1)
-	[`logstash:2.3.4`](#logstash234)
-	[`logstash:2.3`](#logstash23)
-	[`logstash:2`](#logstash2)
-	[`logstash:latest`](#logstashlatest)
-	[`logstash:5.0.0-alpha5-1`](#logstash500-alpha5-1)
-	[`logstash:5.0.0-alpha5`](#logstash500-alpha5)
-	[`logstash:5.0.0`](#logstash500)
-	[`logstash:5.0`](#logstash50)
-	[`logstash:5`](#logstash5)

## `logstash:1.5.6-1`

```console
$ docker pull logstash@sha256:b011915b84e9b0d4d8789e4136c04a9fa726da74337ee1c4fb8087aaf53a90fb
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216642963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2b1991e41f2c458be2cc27e823a30bce72f249c34a7fe6947b77b4724a6f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:04:23 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 10 Aug 2016 19:04:24 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 10 Aug 2016 19:04:26 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:05:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:05:40 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:05:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:05:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:05:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:05:45 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:05:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:1a46afa4a5dea4f24ee6be5cfe24bdb3e121aa9748b33d84f722e53237b4c4f0`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 224.0 B
	-	`sha256:6142652e33c84011c627e2137700cf0f6f4074545ae1fbd0656a64a8d2c80535`  
		Last Modified: Wed, 10 Aug 2016 19:13:12 GMT  
		Size: 90.8 MB (90753174 bytes)
	-	`sha256:0295aa2a31cffed9b4ecf3a1a77276974cce4fc738ec734e226803c88e79682c`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 251.0 B

## `logstash:1.5.6`

```console
$ docker pull logstash@sha256:b011915b84e9b0d4d8789e4136c04a9fa726da74337ee1c4fb8087aaf53a90fb
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216642963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2b1991e41f2c458be2cc27e823a30bce72f249c34a7fe6947b77b4724a6f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:04:23 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 10 Aug 2016 19:04:24 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 10 Aug 2016 19:04:26 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:05:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:05:40 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:05:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:05:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:05:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:05:45 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:05:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:1a46afa4a5dea4f24ee6be5cfe24bdb3e121aa9748b33d84f722e53237b4c4f0`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 224.0 B
	-	`sha256:6142652e33c84011c627e2137700cf0f6f4074545ae1fbd0656a64a8d2c80535`  
		Last Modified: Wed, 10 Aug 2016 19:13:12 GMT  
		Size: 90.8 MB (90753174 bytes)
	-	`sha256:0295aa2a31cffed9b4ecf3a1a77276974cce4fc738ec734e226803c88e79682c`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 251.0 B

## `logstash:1.5`

```console
$ docker pull logstash@sha256:b011915b84e9b0d4d8789e4136c04a9fa726da74337ee1c4fb8087aaf53a90fb
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216642963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2b1991e41f2c458be2cc27e823a30bce72f249c34a7fe6947b77b4724a6f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:04:23 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 10 Aug 2016 19:04:24 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 10 Aug 2016 19:04:26 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:05:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:05:40 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:05:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:05:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:05:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:05:45 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:05:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:1a46afa4a5dea4f24ee6be5cfe24bdb3e121aa9748b33d84f722e53237b4c4f0`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 224.0 B
	-	`sha256:6142652e33c84011c627e2137700cf0f6f4074545ae1fbd0656a64a8d2c80535`  
		Last Modified: Wed, 10 Aug 2016 19:13:12 GMT  
		Size: 90.8 MB (90753174 bytes)
	-	`sha256:0295aa2a31cffed9b4ecf3a1a77276974cce4fc738ec734e226803c88e79682c`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 251.0 B

## `logstash:1`

```console
$ docker pull logstash@sha256:b011915b84e9b0d4d8789e4136c04a9fa726da74337ee1c4fb8087aaf53a90fb
```

-	Platforms:
	-	linux; amd64

### `logstash:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216642963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b2b1991e41f2c458be2cc27e823a30bce72f249c34a7fe6947b77b4724a6f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:04:23 GMT
ENV LOGSTASH_MAJOR=1.5
# Wed, 10 Aug 2016 19:04:24 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Wed, 10 Aug 2016 19:04:26 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:05:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:05:40 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:05:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:05:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:05:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:05:45 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:05:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:1a46afa4a5dea4f24ee6be5cfe24bdb3e121aa9748b33d84f722e53237b4c4f0`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 224.0 B
	-	`sha256:6142652e33c84011c627e2137700cf0f6f4074545ae1fbd0656a64a8d2c80535`  
		Last Modified: Wed, 10 Aug 2016 19:13:12 GMT  
		Size: 90.8 MB (90753174 bytes)
	-	`sha256:0295aa2a31cffed9b4ecf3a1a77276974cce4fc738ec734e226803c88e79682c`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 251.0 B

## `logstash:2.0.0-1`

```console
$ docker pull logstash@sha256:3f7b0f5ed2762c6cc0f3ba5e385c239c58616da445ad2c2bb00fcd5146dc3f7e
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0-1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207423354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4f3e39d69c2a28136f39cc55f7331bb46e766c5db833a19c22db65c29b7fef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:05:47 GMT
ENV LOGSTASH_MAJOR=2.0
# Wed, 10 Aug 2016 19:05:48 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Wed, 10 Aug 2016 19:05:50 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:07:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:07:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:07:06 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:07:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:07:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:07:10 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:07:11 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:b81fc91eaf79e86857a1551bf6fb2d7f652af61245f8c077ead0cf04a1c8d51f`  
		Last Modified: Wed, 10 Aug 2016 19:14:05 GMT  
		Size: 223.0 B
	-	`sha256:af69cba3d0a60a6cbeeebda7df990ca86ef0be3a09aac1104ee6b1c3f0f4ee00`  
		Last Modified: Wed, 10 Aug 2016 19:14:18 GMT  
		Size: 81.5 MB (81533565 bytes)
	-	`sha256:df0e35a2e088b678f4291711f63150f6774d063538ea8be96713b51df4cc5e2f`  
		Last Modified: Wed, 10 Aug 2016 19:14:05 GMT  
		Size: 252.0 B

## `logstash:2.0.0`

```console
$ docker pull logstash@sha256:3f7b0f5ed2762c6cc0f3ba5e385c239c58616da445ad2c2bb00fcd5146dc3f7e
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207423354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4f3e39d69c2a28136f39cc55f7331bb46e766c5db833a19c22db65c29b7fef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:05:47 GMT
ENV LOGSTASH_MAJOR=2.0
# Wed, 10 Aug 2016 19:05:48 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Wed, 10 Aug 2016 19:05:50 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:07:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:07:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:07:06 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:07:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:07:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:07:10 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:07:11 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:b81fc91eaf79e86857a1551bf6fb2d7f652af61245f8c077ead0cf04a1c8d51f`  
		Last Modified: Wed, 10 Aug 2016 19:14:05 GMT  
		Size: 223.0 B
	-	`sha256:af69cba3d0a60a6cbeeebda7df990ca86ef0be3a09aac1104ee6b1c3f0f4ee00`  
		Last Modified: Wed, 10 Aug 2016 19:14:18 GMT  
		Size: 81.5 MB (81533565 bytes)
	-	`sha256:df0e35a2e088b678f4291711f63150f6774d063538ea8be96713b51df4cc5e2f`  
		Last Modified: Wed, 10 Aug 2016 19:14:05 GMT  
		Size: 252.0 B

## `logstash:2.0`

```console
$ docker pull logstash@sha256:3f7b0f5ed2762c6cc0f3ba5e385c239c58616da445ad2c2bb00fcd5146dc3f7e
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207423354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4f3e39d69c2a28136f39cc55f7331bb46e766c5db833a19c22db65c29b7fef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:05:47 GMT
ENV LOGSTASH_MAJOR=2.0
# Wed, 10 Aug 2016 19:05:48 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Wed, 10 Aug 2016 19:05:50 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:07:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:07:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:07:06 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:07:08 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:07:09 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:07:10 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:07:11 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:b81fc91eaf79e86857a1551bf6fb2d7f652af61245f8c077ead0cf04a1c8d51f`  
		Last Modified: Wed, 10 Aug 2016 19:14:05 GMT  
		Size: 223.0 B
	-	`sha256:af69cba3d0a60a6cbeeebda7df990ca86ef0be3a09aac1104ee6b1c3f0f4ee00`  
		Last Modified: Wed, 10 Aug 2016 19:14:18 GMT  
		Size: 81.5 MB (81533565 bytes)
	-	`sha256:df0e35a2e088b678f4291711f63150f6774d063538ea8be96713b51df4cc5e2f`  
		Last Modified: Wed, 10 Aug 2016 19:14:05 GMT  
		Size: 252.0 B

## `logstash:2.1.3-1`

```console
$ docker pull logstash@sha256:eabadf09f0872db7daf4bf14305517fadb07087b8878189f7db76e4f05bf9491
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3-1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201227153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9991343041bb6c72b8410d25cd9bf73b301efc26056e6a57742b5614297aecf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:07:12 GMT
ENV LOGSTASH_MAJOR=2.1
# Wed, 10 Aug 2016 19:07:13 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Wed, 10 Aug 2016 19:07:15 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:08:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:08:33 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:08:34 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:08:35 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:08:36 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:08:37 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:08:38 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:162e610dc6a0e766fecbd0baa4645c9aab1c730c543698c55bcd8b9f12ae2d9d`  
		Last Modified: Wed, 10 Aug 2016 19:14:58 GMT  
		Size: 224.0 B
	-	`sha256:bf8d674c1265985337973eb3e045877be91926a69b335019f304055bda901376`  
		Last Modified: Wed, 10 Aug 2016 19:15:09 GMT  
		Size: 75.3 MB (75337364 bytes)
	-	`sha256:471e6f31d77e2cb3a0406a19282733a1037ccd9f7073afc93940b2d1d71b5c4f`  
		Last Modified: Wed, 10 Aug 2016 19:14:58 GMT  
		Size: 251.0 B

## `logstash:2.1.3`

```console
$ docker pull logstash@sha256:eabadf09f0872db7daf4bf14305517fadb07087b8878189f7db76e4f05bf9491
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201227153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9991343041bb6c72b8410d25cd9bf73b301efc26056e6a57742b5614297aecf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:07:12 GMT
ENV LOGSTASH_MAJOR=2.1
# Wed, 10 Aug 2016 19:07:13 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Wed, 10 Aug 2016 19:07:15 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:08:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:08:33 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:08:34 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:08:35 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:08:36 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:08:37 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:08:38 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:162e610dc6a0e766fecbd0baa4645c9aab1c730c543698c55bcd8b9f12ae2d9d`  
		Last Modified: Wed, 10 Aug 2016 19:14:58 GMT  
		Size: 224.0 B
	-	`sha256:bf8d674c1265985337973eb3e045877be91926a69b335019f304055bda901376`  
		Last Modified: Wed, 10 Aug 2016 19:15:09 GMT  
		Size: 75.3 MB (75337364 bytes)
	-	`sha256:471e6f31d77e2cb3a0406a19282733a1037ccd9f7073afc93940b2d1d71b5c4f`  
		Last Modified: Wed, 10 Aug 2016 19:14:58 GMT  
		Size: 251.0 B

## `logstash:2.1`

```console
$ docker pull logstash@sha256:eabadf09f0872db7daf4bf14305517fadb07087b8878189f7db76e4f05bf9491
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 MB (201227153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9991343041bb6c72b8410d25cd9bf73b301efc26056e6a57742b5614297aecf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:07:12 GMT
ENV LOGSTASH_MAJOR=2.1
# Wed, 10 Aug 2016 19:07:13 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Wed, 10 Aug 2016 19:07:15 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:08:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:08:33 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:08:34 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:08:35 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:08:36 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:08:37 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:08:38 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:162e610dc6a0e766fecbd0baa4645c9aab1c730c543698c55bcd8b9f12ae2d9d`  
		Last Modified: Wed, 10 Aug 2016 19:14:58 GMT  
		Size: 224.0 B
	-	`sha256:bf8d674c1265985337973eb3e045877be91926a69b335019f304055bda901376`  
		Last Modified: Wed, 10 Aug 2016 19:15:09 GMT  
		Size: 75.3 MB (75337364 bytes)
	-	`sha256:471e6f31d77e2cb3a0406a19282733a1037ccd9f7073afc93940b2d1d71b5c4f`  
		Last Modified: Wed, 10 Aug 2016 19:14:58 GMT  
		Size: 251.0 B

## `logstash:2.2.4-1`

```console
$ docker pull logstash@sha256:317d21618612350675fb22d660ef7d89a0765b5092df34282f00ca062be63d5c
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4-1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202027365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340b61450b9b9039e176301b859f98a4272489ccf91547f1a01930037b9efc49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:08:39 GMT
ENV LOGSTASH_MAJOR=2.2
# Wed, 10 Aug 2016 19:08:39 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Wed, 10 Aug 2016 19:08:41 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:09:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:09:55 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:09:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:09:57 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:09:58 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:09:59 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:10:00 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:8e2e376af8bc8a43f32a4ad0649a585a85b681687e430a34e56c62b93fcf4a46`  
		Last Modified: Wed, 10 Aug 2016 19:15:49 GMT  
		Size: 224.0 B
	-	`sha256:b35a8df372ebed7b74142854d41f72bf7526cb2babc99f0978d2e4061de0a4f3`  
		Last Modified: Wed, 10 Aug 2016 19:16:00 GMT  
		Size: 76.1 MB (76137576 bytes)
	-	`sha256:3e33785a31df8d507f83506a0c6e14ebff7491214a51329f42ef156cc196768c`  
		Last Modified: Wed, 10 Aug 2016 19:15:49 GMT  
		Size: 251.0 B

## `logstash:2.2.4`

```console
$ docker pull logstash@sha256:317d21618612350675fb22d660ef7d89a0765b5092df34282f00ca062be63d5c
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202027365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340b61450b9b9039e176301b859f98a4272489ccf91547f1a01930037b9efc49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:08:39 GMT
ENV LOGSTASH_MAJOR=2.2
# Wed, 10 Aug 2016 19:08:39 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Wed, 10 Aug 2016 19:08:41 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:09:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:09:55 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:09:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:09:57 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:09:58 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:09:59 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:10:00 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:8e2e376af8bc8a43f32a4ad0649a585a85b681687e430a34e56c62b93fcf4a46`  
		Last Modified: Wed, 10 Aug 2016 19:15:49 GMT  
		Size: 224.0 B
	-	`sha256:b35a8df372ebed7b74142854d41f72bf7526cb2babc99f0978d2e4061de0a4f3`  
		Last Modified: Wed, 10 Aug 2016 19:16:00 GMT  
		Size: 76.1 MB (76137576 bytes)
	-	`sha256:3e33785a31df8d507f83506a0c6e14ebff7491214a51329f42ef156cc196768c`  
		Last Modified: Wed, 10 Aug 2016 19:15:49 GMT  
		Size: 251.0 B

## `logstash:2.2`

```console
$ docker pull logstash@sha256:317d21618612350675fb22d660ef7d89a0765b5092df34282f00ca062be63d5c
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202027365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340b61450b9b9039e176301b859f98a4272489ccf91547f1a01930037b9efc49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:08:39 GMT
ENV LOGSTASH_MAJOR=2.2
# Wed, 10 Aug 2016 19:08:39 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Wed, 10 Aug 2016 19:08:41 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:09:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:09:55 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:09:55 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:09:57 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:09:58 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:09:59 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:10:00 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:8e2e376af8bc8a43f32a4ad0649a585a85b681687e430a34e56c62b93fcf4a46`  
		Last Modified: Wed, 10 Aug 2016 19:15:49 GMT  
		Size: 224.0 B
	-	`sha256:b35a8df372ebed7b74142854d41f72bf7526cb2babc99f0978d2e4061de0a4f3`  
		Last Modified: Wed, 10 Aug 2016 19:16:00 GMT  
		Size: 76.1 MB (76137576 bytes)
	-	`sha256:3e33785a31df8d507f83506a0c6e14ebff7491214a51329f42ef156cc196768c`  
		Last Modified: Wed, 10 Aug 2016 19:15:49 GMT  
		Size: 251.0 B

## `logstash:2.3.4-1`

```console
$ docker pull logstash@sha256:5c8bcc7785eedf69043ec758d72fc3edc3a6a965067c87084168fff0eb534644
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4-1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206614411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2baf469627a99bf5391b9787e24c6cfddb501f42af87438958d3c2eb15d937d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 10 Aug 2016 19:10:03 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:11:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:11:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:11:18 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:11:19 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:11:20 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:11:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:11:21 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:f505f3e96b8f8b18f748cc2871153b5c8efbde271d9ec827de1b48615b2e7996`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 222.0 B
	-	`sha256:1061041d49b4adf50168624d628e7db86bec6ab60d7754b42bfce5733af72bd4`  
		Last Modified: Wed, 10 Aug 2016 19:16:54 GMT  
		Size: 80.7 MB (80724624 bytes)
	-	`sha256:871b0ca55612d61950e4016d36746c41f422b99d2dea3f3ea6300568f080ffd3`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 251.0 B

## `logstash:2.3.4`

```console
$ docker pull logstash@sha256:5c8bcc7785eedf69043ec758d72fc3edc3a6a965067c87084168fff0eb534644
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206614411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2baf469627a99bf5391b9787e24c6cfddb501f42af87438958d3c2eb15d937d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 10 Aug 2016 19:10:03 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:11:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:11:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:11:18 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:11:19 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:11:20 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:11:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:11:21 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:f505f3e96b8f8b18f748cc2871153b5c8efbde271d9ec827de1b48615b2e7996`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 222.0 B
	-	`sha256:1061041d49b4adf50168624d628e7db86bec6ab60d7754b42bfce5733af72bd4`  
		Last Modified: Wed, 10 Aug 2016 19:16:54 GMT  
		Size: 80.7 MB (80724624 bytes)
	-	`sha256:871b0ca55612d61950e4016d36746c41f422b99d2dea3f3ea6300568f080ffd3`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 251.0 B

## `logstash:2.3`

```console
$ docker pull logstash@sha256:5c8bcc7785eedf69043ec758d72fc3edc3a6a965067c87084168fff0eb534644
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206614411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2baf469627a99bf5391b9787e24c6cfddb501f42af87438958d3c2eb15d937d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 10 Aug 2016 19:10:03 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:11:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:11:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:11:18 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:11:19 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:11:20 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:11:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:11:21 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:f505f3e96b8f8b18f748cc2871153b5c8efbde271d9ec827de1b48615b2e7996`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 222.0 B
	-	`sha256:1061041d49b4adf50168624d628e7db86bec6ab60d7754b42bfce5733af72bd4`  
		Last Modified: Wed, 10 Aug 2016 19:16:54 GMT  
		Size: 80.7 MB (80724624 bytes)
	-	`sha256:871b0ca55612d61950e4016d36746c41f422b99d2dea3f3ea6300568f080ffd3`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 251.0 B

## `logstash:2`

```console
$ docker pull logstash@sha256:5c8bcc7785eedf69043ec758d72fc3edc3a6a965067c87084168fff0eb534644
```

-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206614411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2baf469627a99bf5391b9787e24c6cfddb501f42af87438958d3c2eb15d937d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 10 Aug 2016 19:10:03 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:11:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:11:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:11:18 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:11:19 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:11:20 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:11:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:11:21 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:f505f3e96b8f8b18f748cc2871153b5c8efbde271d9ec827de1b48615b2e7996`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 222.0 B
	-	`sha256:1061041d49b4adf50168624d628e7db86bec6ab60d7754b42bfce5733af72bd4`  
		Last Modified: Wed, 10 Aug 2016 19:16:54 GMT  
		Size: 80.7 MB (80724624 bytes)
	-	`sha256:871b0ca55612d61950e4016d36746c41f422b99d2dea3f3ea6300568f080ffd3`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 251.0 B

## `logstash:latest`

```console
$ docker pull logstash@sha256:5c8bcc7785eedf69043ec758d72fc3edc3a6a965067c87084168fff0eb534644
```

-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206614411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2baf469627a99bf5391b9787e24c6cfddb501f42af87438958d3c2eb15d937d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_MAJOR=2.3
# Wed, 10 Aug 2016 19:10:01 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Wed, 10 Aug 2016 19:10:03 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:11:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:11:17 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:11:18 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:11:19 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:11:20 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:11:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:11:21 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:f505f3e96b8f8b18f748cc2871153b5c8efbde271d9ec827de1b48615b2e7996`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 222.0 B
	-	`sha256:1061041d49b4adf50168624d628e7db86bec6ab60d7754b42bfce5733af72bd4`  
		Last Modified: Wed, 10 Aug 2016 19:16:54 GMT  
		Size: 80.7 MB (80724624 bytes)
	-	`sha256:871b0ca55612d61950e4016d36746c41f422b99d2dea3f3ea6300568f080ffd3`  
		Last Modified: Wed, 10 Aug 2016 19:16:43 GMT  
		Size: 251.0 B

## `logstash:5.0.0-alpha5-1`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0-alpha5-1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B

## `logstash:5.0.0-alpha5`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0-alpha5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B

## `logstash:5.0.0`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B

## `logstash:5.0`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B

## `logstash:5`

```console
$ docker pull logstash@sha256:1b270ce9b9c86378bf5e42d5b1ca5a90d1fa0bb4d794daa6ed4c669449b54cce
```

-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228680018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68a3a37cf888b8dff76d8ad422e5dc7ce8991b0d7c0796d17f2de0b545b40a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 Aug 2016 19:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:03:58 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 10 Aug 2016 19:03:59 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 Aug 2016 19:04:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 Aug 2016 19:04:22 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_MAJOR=5.0
# Wed, 10 Aug 2016 19:11:22 GMT
ENV LOGSTASH_VERSION=1:5.0.0~alpha5-1
# Wed, 10 Aug 2016 19:11:24 GMT
RUN echo "deb http://packages.elastic.co/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list
# Wed, 10 Aug 2016 19:12:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 19:12:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Aug 2016 19:12:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 10 Aug 2016 19:12:43 GMT
RUN set -ex 	&& if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^(path.log|path.config):!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi
# Wed, 10 Aug 2016 19:12:44 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in /
# Wed, 10 Aug 2016 19:12:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 19:12:45 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:bce15ff1cbf760565842ae0171db5c82b00e6b082d4a062a01f1749db8993899`  
		Last Modified: Wed, 10 Aug 2016 19:13:02 GMT  
		Size: 933.9 KB (933868 bytes)
	-	`sha256:b9ded4ed7c991d6e302cad04210eafb45fcbd4c281e6d9ecf003654ceb8b0a02`  
		Last Modified: Wed, 10 Aug 2016 19:13:00 GMT  
		Size: 195.0 B
	-	`sha256:3181c22f5a6bc88128e9758d43b666b4cb5536d343468e3df809be330068f300`  
		Last Modified: Wed, 10 Aug 2016 19:12:57 GMT  
		Size: 807.9 KB (807926 bytes)
	-	`sha256:bbfd3230c943bf07a5c8e389965c02b927be60841dac35d287be265de02981ea`  
		Last Modified: Wed, 10 Aug 2016 19:12:56 GMT  
		Size: 1.4 KB (1449 bytes)
	-	`sha256:410fe604f0f3286faa70915308e1c5813824026047cd4c8ab7d07abce0b77f1f`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 223.0 B
	-	`sha256:933029607219c0c2c7dc28181d5e1fc3c305e39d44bda3769dd077df87442afe`  
		Last Modified: Wed, 10 Aug 2016 19:18:18 GMT  
		Size: 102.8 MB (102788905 bytes)
	-	`sha256:eedafb1656fa804bddc2e4055627fd1d7ef31eb51848f2e8fb00b247d6731264`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 1.3 KB (1325 bytes)
	-	`sha256:6668534d5f9b4fe8b40c13d85c28e30fbe38982410a0cc37bd0d028af86f2ade`  
		Last Modified: Wed, 10 Aug 2016 19:17:58 GMT  
		Size: 251.0 B
