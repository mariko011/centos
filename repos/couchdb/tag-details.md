<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:latest`](#couchdblatest)
-	[`couchdb:1.6.1`](#couchdb161)
-	[`couchdb:1.6`](#couchdb16)
-	[`couchdb:1`](#couchdb1)
-	[`couchdb:1.6.1-couchperuser`](#couchdb161-couchperuser)
-	[`couchdb:1.6-couchperuser`](#couchdb16-couchperuser)
-	[`couchdb:1-couchperuser`](#couchdb1-couchperuser)

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:247be9bc4e30a2ab053aea9dbb2976b0214a1b517632008c8dbd6a2e9e809cee
```

-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103813918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad1569a75d7bafc7a36efc51bb6439667eecc5a95ecbb1dc8d0e5ddc0847c27`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:52:15 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:52:17 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Mon, 27 Feb 2017 22:52:39 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:52:46 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Mon, 27 Feb 2017 22:52:46 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Mon, 27 Feb 2017 22:52:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Mon, 27 Feb 2017 22:52:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Mon, 27 Feb 2017 22:53:46 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Mon, 27 Feb 2017 22:53:46 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Mon, 27 Feb 2017 22:53:47 GMT
RUN chmod +x /docker-entrypoint.sh
# Mon, 27 Feb 2017 22:53:48 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Mon, 27 Feb 2017 22:53:48 GMT
EXPOSE 5984/tcp
# Mon, 27 Feb 2017 22:53:48 GMT
WORKDIR /var/lib/couchdb
# Mon, 27 Feb 2017 22:53:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:53:49 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5300acbba45295e8ff4e6f11af2ecf1e0ef06dd49e6c960e0a0d724afa35ad04`  
		Last Modified: Wed, 01 Mar 2017 23:02:26 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bf09bc50b58d8b6549ae342c355bf062e9a67eaa9728b3e6e7cc2d74c97d05`  
		Last Modified: Wed, 01 Mar 2017 23:02:35 GMT  
		Size: 42.7 MB (42688212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd6c6faf141dbd7bb48a14f2d95d9422963a8a455ec128f9e6abe0f9926797`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 948.7 KB (948697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6f55cf29fb19bcad45b66b401e96cc3f94a523b6f4cb4e84622d74c46bf47d`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 631.4 KB (631410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015aa6dab8a4455b9fde2a883e617a14662ac044129806c12101cb97114da19b`  
		Last Modified: Wed, 01 Mar 2017 23:02:25 GMT  
		Size: 8.2 MB (8178073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.6.1`

```console
$ docker pull couchdb@sha256:247be9bc4e30a2ab053aea9dbb2976b0214a1b517632008c8dbd6a2e9e809cee
```

-	Platforms:
	-	linux; amd64

### `couchdb:1.6.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103813918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad1569a75d7bafc7a36efc51bb6439667eecc5a95ecbb1dc8d0e5ddc0847c27`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:52:15 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:52:17 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Mon, 27 Feb 2017 22:52:39 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:52:46 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Mon, 27 Feb 2017 22:52:46 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Mon, 27 Feb 2017 22:52:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Mon, 27 Feb 2017 22:52:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Mon, 27 Feb 2017 22:53:46 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Mon, 27 Feb 2017 22:53:46 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Mon, 27 Feb 2017 22:53:47 GMT
RUN chmod +x /docker-entrypoint.sh
# Mon, 27 Feb 2017 22:53:48 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Mon, 27 Feb 2017 22:53:48 GMT
EXPOSE 5984/tcp
# Mon, 27 Feb 2017 22:53:48 GMT
WORKDIR /var/lib/couchdb
# Mon, 27 Feb 2017 22:53:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:53:49 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5300acbba45295e8ff4e6f11af2ecf1e0ef06dd49e6c960e0a0d724afa35ad04`  
		Last Modified: Wed, 01 Mar 2017 23:02:26 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bf09bc50b58d8b6549ae342c355bf062e9a67eaa9728b3e6e7cc2d74c97d05`  
		Last Modified: Wed, 01 Mar 2017 23:02:35 GMT  
		Size: 42.7 MB (42688212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd6c6faf141dbd7bb48a14f2d95d9422963a8a455ec128f9e6abe0f9926797`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 948.7 KB (948697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6f55cf29fb19bcad45b66b401e96cc3f94a523b6f4cb4e84622d74c46bf47d`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 631.4 KB (631410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015aa6dab8a4455b9fde2a883e617a14662ac044129806c12101cb97114da19b`  
		Last Modified: Wed, 01 Mar 2017 23:02:25 GMT  
		Size: 8.2 MB (8178073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.6`

```console
$ docker pull couchdb@sha256:247be9bc4e30a2ab053aea9dbb2976b0214a1b517632008c8dbd6a2e9e809cee
```

-	Platforms:
	-	linux; amd64

### `couchdb:1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103813918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad1569a75d7bafc7a36efc51bb6439667eecc5a95ecbb1dc8d0e5ddc0847c27`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:52:15 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:52:17 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Mon, 27 Feb 2017 22:52:39 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:52:46 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Mon, 27 Feb 2017 22:52:46 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Mon, 27 Feb 2017 22:52:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Mon, 27 Feb 2017 22:52:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Mon, 27 Feb 2017 22:53:46 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Mon, 27 Feb 2017 22:53:46 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Mon, 27 Feb 2017 22:53:47 GMT
RUN chmod +x /docker-entrypoint.sh
# Mon, 27 Feb 2017 22:53:48 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Mon, 27 Feb 2017 22:53:48 GMT
EXPOSE 5984/tcp
# Mon, 27 Feb 2017 22:53:48 GMT
WORKDIR /var/lib/couchdb
# Mon, 27 Feb 2017 22:53:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:53:49 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5300acbba45295e8ff4e6f11af2ecf1e0ef06dd49e6c960e0a0d724afa35ad04`  
		Last Modified: Wed, 01 Mar 2017 23:02:26 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bf09bc50b58d8b6549ae342c355bf062e9a67eaa9728b3e6e7cc2d74c97d05`  
		Last Modified: Wed, 01 Mar 2017 23:02:35 GMT  
		Size: 42.7 MB (42688212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd6c6faf141dbd7bb48a14f2d95d9422963a8a455ec128f9e6abe0f9926797`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 948.7 KB (948697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6f55cf29fb19bcad45b66b401e96cc3f94a523b6f4cb4e84622d74c46bf47d`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 631.4 KB (631410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015aa6dab8a4455b9fde2a883e617a14662ac044129806c12101cb97114da19b`  
		Last Modified: Wed, 01 Mar 2017 23:02:25 GMT  
		Size: 8.2 MB (8178073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1`

```console
$ docker pull couchdb@sha256:247be9bc4e30a2ab053aea9dbb2976b0214a1b517632008c8dbd6a2e9e809cee
```

-	Platforms:
	-	linux; amd64

### `couchdb:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103813918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad1569a75d7bafc7a36efc51bb6439667eecc5a95ecbb1dc8d0e5ddc0847c27`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:52:15 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:52:17 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Mon, 27 Feb 2017 22:52:39 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:52:46 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Mon, 27 Feb 2017 22:52:46 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Mon, 27 Feb 2017 22:52:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Mon, 27 Feb 2017 22:52:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Mon, 27 Feb 2017 22:53:46 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Mon, 27 Feb 2017 22:53:46 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Mon, 27 Feb 2017 22:53:47 GMT
RUN chmod +x /docker-entrypoint.sh
# Mon, 27 Feb 2017 22:53:48 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Mon, 27 Feb 2017 22:53:48 GMT
EXPOSE 5984/tcp
# Mon, 27 Feb 2017 22:53:48 GMT
WORKDIR /var/lib/couchdb
# Mon, 27 Feb 2017 22:53:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:53:49 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5300acbba45295e8ff4e6f11af2ecf1e0ef06dd49e6c960e0a0d724afa35ad04`  
		Last Modified: Wed, 01 Mar 2017 23:02:26 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bf09bc50b58d8b6549ae342c355bf062e9a67eaa9728b3e6e7cc2d74c97d05`  
		Last Modified: Wed, 01 Mar 2017 23:02:35 GMT  
		Size: 42.7 MB (42688212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd6c6faf141dbd7bb48a14f2d95d9422963a8a455ec128f9e6abe0f9926797`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 948.7 KB (948697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6f55cf29fb19bcad45b66b401e96cc3f94a523b6f4cb4e84622d74c46bf47d`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 631.4 KB (631410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015aa6dab8a4455b9fde2a883e617a14662ac044129806c12101cb97114da19b`  
		Last Modified: Wed, 01 Mar 2017 23:02:25 GMT  
		Size: 8.2 MB (8178073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.6.1-couchperuser`

```console
$ docker pull couchdb@sha256:7cf35789a84f391e78df098993d17974c43ce78bd7ef6a254543d929ab7d77cc
```

-	Platforms:
	-	linux; amd64

### `couchdb:1.6.1-couchperuser` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113927762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05801e29b14602ad45a9d4a114364f546b4759c7e2166929f685fd915bf60696`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:52:15 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:52:17 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Mon, 27 Feb 2017 22:52:39 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:52:46 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Mon, 27 Feb 2017 22:52:46 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Mon, 27 Feb 2017 22:52:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Mon, 27 Feb 2017 22:52:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Mon, 27 Feb 2017 22:53:46 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Mon, 27 Feb 2017 22:53:46 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Mon, 27 Feb 2017 22:53:47 GMT
RUN chmod +x /docker-entrypoint.sh
# Mon, 27 Feb 2017 22:53:48 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Mon, 27 Feb 2017 22:53:48 GMT
EXPOSE 5984/tcp
# Mon, 27 Feb 2017 22:53:48 GMT
WORKDIR /var/lib/couchdb
# Mon, 27 Feb 2017 22:53:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:53:49 GMT
CMD ["couchdb"]
# Mon, 27 Feb 2017 22:53:50 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:53:50 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Mon, 27 Feb 2017 22:54:24 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5300acbba45295e8ff4e6f11af2ecf1e0ef06dd49e6c960e0a0d724afa35ad04`  
		Last Modified: Wed, 01 Mar 2017 23:02:26 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bf09bc50b58d8b6549ae342c355bf062e9a67eaa9728b3e6e7cc2d74c97d05`  
		Last Modified: Wed, 01 Mar 2017 23:02:35 GMT  
		Size: 42.7 MB (42688212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd6c6faf141dbd7bb48a14f2d95d9422963a8a455ec128f9e6abe0f9926797`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 948.7 KB (948697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6f55cf29fb19bcad45b66b401e96cc3f94a523b6f4cb4e84622d74c46bf47d`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 631.4 KB (631410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015aa6dab8a4455b9fde2a883e617a14662ac044129806c12101cb97114da19b`  
		Last Modified: Wed, 01 Mar 2017 23:02:25 GMT  
		Size: 8.2 MB (8178073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f490dca113f87ce900bc0ab9e277c93a523d88f2f4abbd40914803c84d7e96`  
		Last Modified: Wed, 01 Mar 2017 23:03:50 GMT  
		Size: 10.1 MB (10113844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.6-couchperuser`

```console
$ docker pull couchdb@sha256:7cf35789a84f391e78df098993d17974c43ce78bd7ef6a254543d929ab7d77cc
```

-	Platforms:
	-	linux; amd64

### `couchdb:1.6-couchperuser` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113927762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05801e29b14602ad45a9d4a114364f546b4759c7e2166929f685fd915bf60696`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:52:15 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:52:17 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Mon, 27 Feb 2017 22:52:39 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:52:46 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Mon, 27 Feb 2017 22:52:46 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Mon, 27 Feb 2017 22:52:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Mon, 27 Feb 2017 22:52:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Mon, 27 Feb 2017 22:53:46 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Mon, 27 Feb 2017 22:53:46 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Mon, 27 Feb 2017 22:53:47 GMT
RUN chmod +x /docker-entrypoint.sh
# Mon, 27 Feb 2017 22:53:48 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Mon, 27 Feb 2017 22:53:48 GMT
EXPOSE 5984/tcp
# Mon, 27 Feb 2017 22:53:48 GMT
WORKDIR /var/lib/couchdb
# Mon, 27 Feb 2017 22:53:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:53:49 GMT
CMD ["couchdb"]
# Mon, 27 Feb 2017 22:53:50 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:53:50 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Mon, 27 Feb 2017 22:54:24 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5300acbba45295e8ff4e6f11af2ecf1e0ef06dd49e6c960e0a0d724afa35ad04`  
		Last Modified: Wed, 01 Mar 2017 23:02:26 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bf09bc50b58d8b6549ae342c355bf062e9a67eaa9728b3e6e7cc2d74c97d05`  
		Last Modified: Wed, 01 Mar 2017 23:02:35 GMT  
		Size: 42.7 MB (42688212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd6c6faf141dbd7bb48a14f2d95d9422963a8a455ec128f9e6abe0f9926797`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 948.7 KB (948697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6f55cf29fb19bcad45b66b401e96cc3f94a523b6f4cb4e84622d74c46bf47d`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 631.4 KB (631410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015aa6dab8a4455b9fde2a883e617a14662ac044129806c12101cb97114da19b`  
		Last Modified: Wed, 01 Mar 2017 23:02:25 GMT  
		Size: 8.2 MB (8178073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f490dca113f87ce900bc0ab9e277c93a523d88f2f4abbd40914803c84d7e96`  
		Last Modified: Wed, 01 Mar 2017 23:03:50 GMT  
		Size: 10.1 MB (10113844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:7cf35789a84f391e78df098993d17974c43ce78bd7ef6a254543d929ab7d77cc
```

-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113927762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05801e29b14602ad45a9d4a114364f546b4759c7e2166929f685fd915bf60696`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:52:15 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:52:17 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Mon, 27 Feb 2017 22:52:39 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:52:46 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Mon, 27 Feb 2017 22:52:46 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Mon, 27 Feb 2017 22:52:52 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Mon, 27 Feb 2017 22:52:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Mon, 27 Feb 2017 22:53:46 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Mon, 27 Feb 2017 22:53:46 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Mon, 27 Feb 2017 22:53:47 GMT
RUN chmod +x /docker-entrypoint.sh
# Mon, 27 Feb 2017 22:53:48 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Mon, 27 Feb 2017 22:53:48 GMT
EXPOSE 5984/tcp
# Mon, 27 Feb 2017 22:53:48 GMT
WORKDIR /var/lib/couchdb
# Mon, 27 Feb 2017 22:53:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 22:53:49 GMT
CMD ["couchdb"]
# Mon, 27 Feb 2017 22:53:50 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Mon, 27 Feb 2017 22:53:50 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Mon, 27 Feb 2017 22:54:24 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5300acbba45295e8ff4e6f11af2ecf1e0ef06dd49e6c960e0a0d724afa35ad04`  
		Last Modified: Wed, 01 Mar 2017 23:02:26 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bf09bc50b58d8b6549ae342c355bf062e9a67eaa9728b3e6e7cc2d74c97d05`  
		Last Modified: Wed, 01 Mar 2017 23:02:35 GMT  
		Size: 42.7 MB (42688212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd6c6faf141dbd7bb48a14f2d95d9422963a8a455ec128f9e6abe0f9926797`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 948.7 KB (948697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6f55cf29fb19bcad45b66b401e96cc3f94a523b6f4cb4e84622d74c46bf47d`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 631.4 KB (631410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015aa6dab8a4455b9fde2a883e617a14662ac044129806c12101cb97114da19b`  
		Last Modified: Wed, 01 Mar 2017 23:02:25 GMT  
		Size: 8.2 MB (8178073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0e2bc1fe4a6441b6fbbe7798544c14a2b839a4d1d9d25c6bd2814a7b2696b`  
		Last Modified: Wed, 01 Mar 2017 23:02:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f490dca113f87ce900bc0ab9e277c93a523d88f2f4abbd40914803c84d7e96`  
		Last Modified: Wed, 01 Mar 2017 23:03:50 GMT  
		Size: 10.1 MB (10113844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
