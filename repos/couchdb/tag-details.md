<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:1`](#couchdb1)
-	[`couchdb:1.7`](#couchdb17)
-	[`couchdb:1.7.0`](#couchdb170)
-	[`couchdb:1.7.0-couchperuser`](#couchdb170-couchperuser)
-	[`couchdb:1.7-couchperuser`](#couchdb17-couchperuser)
-	[`couchdb:1-couchperuser`](#couchdb1-couchperuser)
-	[`couchdb:2`](#couchdb2)
-	[`couchdb:2.1`](#couchdb21)
-	[`couchdb:2.1.1`](#couchdb211)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:1`

```console
$ docker pull couchdb@sha256:03f65e23bd3155bca91fc51e04b9b231e54ea5505e8820bb3928dc38d08077d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1` - linux; amd64

```console
$ docker pull couchdb@sha256:d9c00aacfdf45d533deb7c158b919f02bafbcb417835a08aa616f07b68744306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106444114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827c620e200476d045ca067450590f43595028857073f06af412ec379d89b872`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:30:52 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Sat, 04 Nov 2017 18:30:53 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 04 Nov 2017 18:31:18 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:31:25 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Sat, 04 Nov 2017 18:31:25 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 04 Nov 2017 18:31:33 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 04 Nov 2017 18:31:33 GMT
ENV COUCHDB_VERSION=1.6.1
# Sat, 04 Nov 2017 18:32:35 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 04 Nov 2017 18:32:35 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Sat, 04 Nov 2017 18:32:36 GMT
RUN chmod +x /docker-entrypoint.sh
# Sat, 04 Nov 2017 18:32:36 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 04 Nov 2017 18:32:36 GMT
EXPOSE 5984/tcp
# Sat, 04 Nov 2017 18:32:37 GMT
WORKDIR /var/lib/couchdb
# Sat, 04 Nov 2017 18:32:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:32:37 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18348eb6a49037360c2c8ed2e622c4e955ecbda357aec4fb5aa8c1ab2a473bf7`  
		Last Modified: Sat, 04 Nov 2017 18:33:35 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04cb351bdcf31f1e948582425762bcde1c510bf9fa7b1826f1897dc9d0ecb88`  
		Last Modified: Sat, 04 Nov 2017 18:33:37 GMT  
		Size: 43.8 MB (43764756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acda2aa2eac56235f005e8161a94a1a8073ea7c4714abd8d12eb1c2ff6a41a7`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 969.8 KB (969838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a058b0a4944f6c266287c1621db73ba573f87d626c106a3418e5adfd13b824`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 646.4 KB (646379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af7c1b10b6664de65c6caaf11ae8b83bd65fb1ac7557775a769a7461e6928b`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 8.5 MB (8463822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e568938c268c99f8f1f6bb7760362ffcb1f3ea0e6d770e706d6a6998f9a0e431`  
		Last Modified: Sat, 04 Nov 2017 18:33:32 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e568938c268c99f8f1f6bb7760362ffcb1f3ea0e6d770e706d6a6998f9a0e431`  
		Last Modified: Sat, 04 Nov 2017 18:33:32 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7`

**does not exist** (yet?)

## `couchdb:1.7.0`

**does not exist** (yet?)

## `couchdb:1.7.0-couchperuser`

**does not exist** (yet?)

## `couchdb:1.7-couchperuser`

**does not exist** (yet?)

## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:a2610d3283570f6deb00756e764c6ec259f71ac8a0195350c6ab73e5372a93a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:cd5ee24ccf07961277f6cba2e40eee9a4db92998b115065060bf8ce1a88f7d64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116816185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ed58b3ea5aad88e0db0ccfa9c904c20be8f8d1f893ac946d57b649ea152917`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:30:52 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Sat, 04 Nov 2017 18:30:53 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 04 Nov 2017 18:31:18 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:31:25 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Sat, 04 Nov 2017 18:31:25 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 04 Nov 2017 18:31:33 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 04 Nov 2017 18:31:33 GMT
ENV COUCHDB_VERSION=1.6.1
# Sat, 04 Nov 2017 18:32:35 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 04 Nov 2017 18:32:35 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Sat, 04 Nov 2017 18:32:36 GMT
RUN chmod +x /docker-entrypoint.sh
# Sat, 04 Nov 2017 18:32:36 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 04 Nov 2017 18:32:36 GMT
EXPOSE 5984/tcp
# Sat, 04 Nov 2017 18:32:37 GMT
WORKDIR /var/lib/couchdb
# Sat, 04 Nov 2017 18:32:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:32:37 GMT
CMD ["couchdb"]
# Sat, 04 Nov 2017 18:32:46 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Sat, 04 Nov 2017 18:32:46 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Sat, 04 Nov 2017 18:33:22 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18348eb6a49037360c2c8ed2e622c4e955ecbda357aec4fb5aa8c1ab2a473bf7`  
		Last Modified: Sat, 04 Nov 2017 18:33:35 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04cb351bdcf31f1e948582425762bcde1c510bf9fa7b1826f1897dc9d0ecb88`  
		Last Modified: Sat, 04 Nov 2017 18:33:37 GMT  
		Size: 43.8 MB (43764756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acda2aa2eac56235f005e8161a94a1a8073ea7c4714abd8d12eb1c2ff6a41a7`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 969.8 KB (969838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a058b0a4944f6c266287c1621db73ba573f87d626c106a3418e5adfd13b824`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 646.4 KB (646379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af7c1b10b6664de65c6caaf11ae8b83bd65fb1ac7557775a769a7461e6928b`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 8.5 MB (8463822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e568938c268c99f8f1f6bb7760362ffcb1f3ea0e6d770e706d6a6998f9a0e431`  
		Last Modified: Sat, 04 Nov 2017 18:33:32 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e568938c268c99f8f1f6bb7760362ffcb1f3ea0e6d770e706d6a6998f9a0e431`  
		Last Modified: Sat, 04 Nov 2017 18:33:32 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91de62a1f79ae1b1c0d2063ce49067e322bb2942cd75141fc5efb9fea348e5e7`  
		Last Modified: Sat, 04 Nov 2017 18:34:03 GMT  
		Size: 10.4 MB (10372071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2`

**does not exist** (yet?)

## `couchdb:2.1`

**does not exist** (yet?)

## `couchdb:2.1.1`

**does not exist** (yet?)

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:03f65e23bd3155bca91fc51e04b9b231e54ea5505e8820bb3928dc38d08077d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:d9c00aacfdf45d533deb7c158b919f02bafbcb417835a08aa616f07b68744306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106444114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827c620e200476d045ca067450590f43595028857073f06af412ec379d89b872`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:30:52 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Sat, 04 Nov 2017 18:30:53 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Sat, 04 Nov 2017 18:31:18 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:31:25 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Sat, 04 Nov 2017 18:31:25 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Sat, 04 Nov 2017 18:31:33 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Sat, 04 Nov 2017 18:31:33 GMT
ENV COUCHDB_VERSION=1.6.1
# Sat, 04 Nov 2017 18:32:35 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Sat, 04 Nov 2017 18:32:35 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Sat, 04 Nov 2017 18:32:36 GMT
RUN chmod +x /docker-entrypoint.sh
# Sat, 04 Nov 2017 18:32:36 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Sat, 04 Nov 2017 18:32:36 GMT
EXPOSE 5984/tcp
# Sat, 04 Nov 2017 18:32:37 GMT
WORKDIR /var/lib/couchdb
# Sat, 04 Nov 2017 18:32:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:32:37 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18348eb6a49037360c2c8ed2e622c4e955ecbda357aec4fb5aa8c1ab2a473bf7`  
		Last Modified: Sat, 04 Nov 2017 18:33:35 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04cb351bdcf31f1e948582425762bcde1c510bf9fa7b1826f1897dc9d0ecb88`  
		Last Modified: Sat, 04 Nov 2017 18:33:37 GMT  
		Size: 43.8 MB (43764756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acda2aa2eac56235f005e8161a94a1a8073ea7c4714abd8d12eb1c2ff6a41a7`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 969.8 KB (969838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a058b0a4944f6c266287c1621db73ba573f87d626c106a3418e5adfd13b824`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 646.4 KB (646379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af7c1b10b6664de65c6caaf11ae8b83bd65fb1ac7557775a769a7461e6928b`  
		Last Modified: Sat, 04 Nov 2017 18:33:33 GMT  
		Size: 8.5 MB (8463822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e568938c268c99f8f1f6bb7760362ffcb1f3ea0e6d770e706d6a6998f9a0e431`  
		Last Modified: Sat, 04 Nov 2017 18:33:32 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e568938c268c99f8f1f6bb7760362ffcb1f3ea0e6d770e706d6a6998f9a0e431`  
		Last Modified: Sat, 04 Nov 2017 18:33:32 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
