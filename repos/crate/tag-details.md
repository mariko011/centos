<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `crate`

-	[`crate:latest`](#cratelatest)
-	[`crate:0.55`](#crate055)
-	[`crate:0.55.4`](#crate0554)
-	[`crate:0.52`](#crate052)
-	[`crate:0.52.4`](#crate0524)

## `crate:latest`

```console
$ docker pull crate@sha256:958f7b8407e99d9d4cae2e0238ee2234d140ddbe4787264ffa5b4c8b1ff22723
```

-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151135627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2adeecd1a9e0e6e6cc58c15fca62318b429fc0587c3ced765cbdd975335ff50c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Mon, 11 Jul 2016 19:34:59 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 11 Jul 2016 19:35:00 GMT
ENV GOSU_VERSION=1.9
# Mon, 11 Jul 2016 19:35:18 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 11 Jul 2016 19:35:19 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 12 Aug 2016 16:10:40 GMT
ENV CRATE_VERSION=0.55.3
# Fri, 12 Aug 2016 16:11:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Fri, 12 Aug 2016 16:11:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:11:12 GMT
VOLUME [/data]
# Fri, 12 Aug 2016 16:11:13 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Fri, 12 Aug 2016 16:11:15 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Fri, 12 Aug 2016 16:11:17 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in /
# Fri, 12 Aug 2016 16:11:18 GMT
WORKDIR /data
# Fri, 12 Aug 2016 16:11:19 GMT
EXPOSE 4200/tcp 4300/tcp
# Fri, 12 Aug 2016 16:11:21 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:11:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:d3fc8c0e2d5743f55e355862d4d9eb8113f368a69446fb2e80db590744f1b014`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 581.8 KB (581764 bytes)
	-	`sha256:34791ba5b6d32b7f3559a6301bf26d3d5b3c4e948c1474266b975dd0846c0d12`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 22.2 KB (22199 bytes)
	-	`sha256:9fa286203affc84dfcc1b4dbeb34f3e4f36ae517574f442f0cdae5356e3a9684`  
		Last Modified: Fri, 12 Aug 2016 16:11:56 GMT  
		Size: 148.2 MB (148220419 bytes)
	-	`sha256:702c6edee1c0c39f2ed47c7f3583b4303ccf0900256fae599ba691bf6a5ebaaf`  
		Last Modified: Fri, 12 Aug 2016 16:11:33 GMT  
		Size: 235.0 B
	-	`sha256:91358d324e3981fb02e191e29f5445c7d9a179003382cb41c7a62fdaa2c8d842`  
		Last Modified: Fri, 12 Aug 2016 16:11:34 GMT  
		Size: 401.0 B
	-	`sha256:fbfba38685e13c3abe2417ac17cab33a34c0a595c97bf2704a25dda676039425`  
		Last Modified: Fri, 12 Aug 2016 16:11:33 GMT  
		Size: 231.0 B
	-	`sha256:03f4d5465ac8852fb33b9d1a81f34ade9180079ad43d79f169c44f85d996ee4b`  
		Last Modified: Fri, 12 Aug 2016 16:11:33 GMT  
		Size: 92.0 B

## `crate:0.55`

```console
$ docker pull crate@sha256:7c61c0ce1a85ea4684269e0045988a466770103d21a69200bd96247cd84a2db2
```

-	Platforms:
	-	linux; amd64

### `crate:0.55` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151135823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4cbe4bb7bd35e0442623390c1fc17ac89fadac3061a76083a7a81d4d386e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Mon, 11 Jul 2016 19:34:59 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 11 Jul 2016 19:35:00 GMT
ENV GOSU_VERSION=1.9
# Mon, 11 Jul 2016 19:35:18 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 11 Jul 2016 19:35:19 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 17 Aug 2016 17:12:19 GMT
ENV CRATE_VERSION=0.55.4
# Wed, 17 Aug 2016 17:12:41 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Wed, 17 Aug 2016 17:12:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Aug 2016 17:12:42 GMT
VOLUME [/data]
# Wed, 17 Aug 2016 17:12:43 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Wed, 17 Aug 2016 17:12:44 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Wed, 17 Aug 2016 17:12:45 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in /
# Wed, 17 Aug 2016 17:12:45 GMT
WORKDIR /data
# Wed, 17 Aug 2016 17:12:45 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 17 Aug 2016 17:12:46 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 17 Aug 2016 17:12:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:d3fc8c0e2d5743f55e355862d4d9eb8113f368a69446fb2e80db590744f1b014`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 581.8 KB (581764 bytes)
	-	`sha256:34791ba5b6d32b7f3559a6301bf26d3d5b3c4e948c1474266b975dd0846c0d12`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 22.2 KB (22199 bytes)
	-	`sha256:046919ed7fe67b782b167ea9a0f096bffc844df5f081f704ef8abbe9c42887f4`  
		Last Modified: Wed, 17 Aug 2016 17:13:37 GMT  
		Size: 148.2 MB (148220616 bytes)
	-	`sha256:2c56c61df9e135f947f955b5835a1a9aa6ffab0a904f5cdace8259f06a3a1549`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 236.0 B
	-	`sha256:2e9de0034fb1a32760517bd744798d6c7f3a8a226a67b0d11b09515c75417ad3`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 400.0 B
	-	`sha256:8f169d899600e574723ddf36d127e7fb564f3483781c8c1e1acdbb79e67a82fd`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 232.0 B
	-	`sha256:2a0a71caa11ab02e0a64b7edb7915cce93c0862fddead8f3950a57202034be5b`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 90.0 B

## `crate:0.55.4`

```console
$ docker pull crate@sha256:7c61c0ce1a85ea4684269e0045988a466770103d21a69200bd96247cd84a2db2
```

-	Platforms:
	-	linux; amd64

### `crate:0.55.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151135823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4cbe4bb7bd35e0442623390c1fc17ac89fadac3061a76083a7a81d4d386e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Mon, 11 Jul 2016 19:34:59 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 11 Jul 2016 19:35:00 GMT
ENV GOSU_VERSION=1.9
# Mon, 11 Jul 2016 19:35:18 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 11 Jul 2016 19:35:19 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Wed, 17 Aug 2016 17:12:19 GMT
ENV CRATE_VERSION=0.55.4
# Wed, 17 Aug 2016 17:12:41 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/sigar/lib/libsigar-amd64-linux.so     && chown -R crate /crate     && apk del .build-deps
# Wed, 17 Aug 2016 17:12:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Aug 2016 17:12:42 GMT
VOLUME [/data]
# Wed, 17 Aug 2016 17:12:43 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Wed, 17 Aug 2016 17:12:44 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Wed, 17 Aug 2016 17:12:45 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in /
# Wed, 17 Aug 2016 17:12:45 GMT
WORKDIR /data
# Wed, 17 Aug 2016 17:12:45 GMT
EXPOSE 4200/tcp 4300/tcp
# Wed, 17 Aug 2016 17:12:46 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 17 Aug 2016 17:12:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:d3fc8c0e2d5743f55e355862d4d9eb8113f368a69446fb2e80db590744f1b014`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 581.8 KB (581764 bytes)
	-	`sha256:34791ba5b6d32b7f3559a6301bf26d3d5b3c4e948c1474266b975dd0846c0d12`  
		Last Modified: Mon, 11 Jul 2016 19:36:02 GMT  
		Size: 22.2 KB (22199 bytes)
	-	`sha256:046919ed7fe67b782b167ea9a0f096bffc844df5f081f704ef8abbe9c42887f4`  
		Last Modified: Wed, 17 Aug 2016 17:13:37 GMT  
		Size: 148.2 MB (148220616 bytes)
	-	`sha256:2c56c61df9e135f947f955b5835a1a9aa6ffab0a904f5cdace8259f06a3a1549`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 236.0 B
	-	`sha256:2e9de0034fb1a32760517bd744798d6c7f3a8a226a67b0d11b09515c75417ad3`  
		Last Modified: Wed, 17 Aug 2016 17:12:59 GMT  
		Size: 400.0 B
	-	`sha256:8f169d899600e574723ddf36d127e7fb564f3483781c8c1e1acdbb79e67a82fd`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 232.0 B
	-	`sha256:2a0a71caa11ab02e0a64b7edb7915cce93c0862fddead8f3950a57202034be5b`  
		Last Modified: Wed, 17 Aug 2016 17:12:58 GMT  
		Size: 90.0 B

## `crate:0.52`

```console
$ docker pull crate@sha256:c9041f70f17948a43fefc2c4f964367f404561550ab12152d907dbc33f79f512
```

-	Platforms:
	-	linux; amd64

### `crate:0.52` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180963805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f49c992cb8f4f716a4271eba0aec4ef0794a4ac618a5f0afb4d8c5bc00cdc7a`
-	Default Command: `["crate"]`

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
# Thu, 11 Aug 2016 16:55:34 GMT
MAINTAINER Crate Technology GmbH <office@crate.io>
# Thu, 11 Aug 2016 16:56:41 GMT
RUN apt-get update &&     apt-get install -y python3 &&     rm -rf /var/lib/apt &&     ln -s /usr/bin/python3 /usr/bin/python
# Thu, 11 Aug 2016 16:56:42 GMT
ENV CRATE_VERSION=0.52.4
# Thu, 11 Aug 2016 16:56:51 GMT
RUN mkdir /crate &&   wget -nv -O - "https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz"   | tar -xzC /crate --strip-components=1
# Thu, 11 Aug 2016 16:56:52 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 16:56:53 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 16:56:54 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Thu, 11 Aug 2016 16:56:55 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Thu, 11 Aug 2016 16:56:56 GMT
WORKDIR /data
# Thu, 11 Aug 2016 16:56:57 GMT
EXPOSE 4200/tcp 4300/tcp
# Thu, 11 Aug 2016 16:56:58 GMT
CMD ["crate"]
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
	-	`sha256:b5ab031b74d757517853f902b0b379a70c06135d3fa5c3ed9a48701b1df8ad78`  
		Last Modified: Thu, 11 Aug 2016 16:57:12 GMT  
		Size: 9.5 MB (9505373 bytes)
	-	`sha256:9b7669a819df536b8571627e06287867137afed819aeb1b5623c813a10b327e3`  
		Last Modified: Thu, 11 Aug 2016 16:57:14 GMT  
		Size: 47.3 MB (47311848 bytes)
	-	`sha256:28efbb102306efe6f68585b98ba774a681211f0cdee23eeda7f635ade16c266c`  
		Last Modified: Thu, 11 Aug 2016 16:57:08 GMT  
		Size: 227.0 B
	-	`sha256:7e945e2294c9e30287640e35e60c35d9b4d49b0d9ea4e306769e767fc12d1647`  
		Last Modified: Thu, 11 Aug 2016 16:57:08 GMT  
		Size: 392.0 B
	-	`sha256:32ebd48f751790800fad17951f7d28d5bb53599d75da09e2b8da7aa4004c1ee5`  
		Last Modified: Thu, 11 Aug 2016 16:57:08 GMT  
		Size: 89.0 B

## `crate:0.52.4`

```console
$ docker pull crate@sha256:c9041f70f17948a43fefc2c4f964367f404561550ab12152d907dbc33f79f512
```

-	Platforms:
	-	linux; amd64

### `crate:0.52.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180963805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f49c992cb8f4f716a4271eba0aec4ef0794a4ac618a5f0afb4d8c5bc00cdc7a`
-	Default Command: `["crate"]`

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
# Thu, 11 Aug 2016 16:55:34 GMT
MAINTAINER Crate Technology GmbH <office@crate.io>
# Thu, 11 Aug 2016 16:56:41 GMT
RUN apt-get update &&     apt-get install -y python3 &&     rm -rf /var/lib/apt &&     ln -s /usr/bin/python3 /usr/bin/python
# Thu, 11 Aug 2016 16:56:42 GMT
ENV CRATE_VERSION=0.52.4
# Thu, 11 Aug 2016 16:56:51 GMT
RUN mkdir /crate &&   wget -nv -O - "https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz"   | tar -xzC /crate --strip-components=1
# Thu, 11 Aug 2016 16:56:52 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 16:56:53 GMT
VOLUME [/data]
# Thu, 11 Aug 2016 16:56:54 GMT
ADD file:33e1eb95331f2fdac6f7aa4f37d1379542d54d333f63db873d8bfbf0aaa86e2d in /crate/config/crate.yml
# Thu, 11 Aug 2016 16:56:55 GMT
ADD file:a3aa60dd23939bb1b0c1bf558d768d3f06cead16fd33d36cdad411bd43d16448 in /crate/config/logging.yml
# Thu, 11 Aug 2016 16:56:56 GMT
WORKDIR /data
# Thu, 11 Aug 2016 16:56:57 GMT
EXPOSE 4200/tcp 4300/tcp
# Thu, 11 Aug 2016 16:56:58 GMT
CMD ["crate"]
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
	-	`sha256:b5ab031b74d757517853f902b0b379a70c06135d3fa5c3ed9a48701b1df8ad78`  
		Last Modified: Thu, 11 Aug 2016 16:57:12 GMT  
		Size: 9.5 MB (9505373 bytes)
	-	`sha256:9b7669a819df536b8571627e06287867137afed819aeb1b5623c813a10b327e3`  
		Last Modified: Thu, 11 Aug 2016 16:57:14 GMT  
		Size: 47.3 MB (47311848 bytes)
	-	`sha256:28efbb102306efe6f68585b98ba774a681211f0cdee23eeda7f635ade16c266c`  
		Last Modified: Thu, 11 Aug 2016 16:57:08 GMT  
		Size: 227.0 B
	-	`sha256:7e945e2294c9e30287640e35e60c35d9b4d49b0d9ea4e306769e767fc12d1647`  
		Last Modified: Thu, 11 Aug 2016 16:57:08 GMT  
		Size: 392.0 B
	-	`sha256:32ebd48f751790800fad17951f7d28d5bb53599d75da09e2b8da7aa4004c1ee5`  
		Last Modified: Thu, 11 Aug 2016 16:57:08 GMT  
		Size: 89.0 B
