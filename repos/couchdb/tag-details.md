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
$ docker pull couchdb@sha256:d36bc65131e8896f01681694f4ac2f5bcd78a99b91817b3e6dc269a23558c8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1` - linux; amd64

```console
$ docker pull couchdb@sha256:22cce10db0538662a2d8d7ce1d8a39d71eb6a96ea04ac0f93660ec739e63e687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105334725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fcf8995edf9a6ebb76511129d604ef2534fa431b4b5a179c35cdaec41e47e5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:11:26 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:11:57 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:11:57 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:12:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:12:12 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Tue, 07 Nov 2017 15:12:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:12:21 GMT
ENV COUCHDB_VERSION=1.7.0
# Tue, 07 Nov 2017 15:13:30 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Tue, 07 Nov 2017 15:13:30 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Tue, 07 Nov 2017 15:13:30 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Tue, 07 Nov 2017 15:13:31 GMT
EXPOSE 5984/tcp
# Tue, 07 Nov 2017 15:13:31 GMT
WORKDIR /var/lib/couchdb
# Tue, 07 Nov 2017 15:13:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:13:31 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d0633546beebb6e3c0c891b432aca0a0d565acc614083c99e855d9da33fe1`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb8331f1f361857a55e6229523f6dc26ea231dcfe86d83968cd38b4b3501f3`  
		Last Modified: Tue, 07 Nov 2017 15:15:15 GMT  
		Size: 43.8 MB (43764685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823852dcd2e2fda5e3bdd2c68639c4384ae28f24dbd22d36d713d93e5b4cb6de`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 827.3 KB (827306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e4a2e2d9eed07ed103997d9085dcdec20b67fb5fce417cd5706456b8b19dd`  
		Last Modified: Tue, 07 Nov 2017 15:15:11 GMT  
		Size: 512.9 KB (512886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba3f6d8ddfbd9c7cdf59bfb9a76a53c5b9a679bd3e882fbdcc374fa0c12bd93`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 7.6 MB (7631499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb91836049c7c8d7a9bc9c1a6c86cc26a7e6e7a01ba374e952cf7a61600f69d`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7`

```console
$ docker pull couchdb@sha256:d36bc65131e8896f01681694f4ac2f5bcd78a99b91817b3e6dc269a23558c8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7` - linux; amd64

```console
$ docker pull couchdb@sha256:22cce10db0538662a2d8d7ce1d8a39d71eb6a96ea04ac0f93660ec739e63e687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105334725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fcf8995edf9a6ebb76511129d604ef2534fa431b4b5a179c35cdaec41e47e5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:11:26 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:11:57 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:11:57 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:12:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:12:12 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Tue, 07 Nov 2017 15:12:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:12:21 GMT
ENV COUCHDB_VERSION=1.7.0
# Tue, 07 Nov 2017 15:13:30 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Tue, 07 Nov 2017 15:13:30 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Tue, 07 Nov 2017 15:13:30 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Tue, 07 Nov 2017 15:13:31 GMT
EXPOSE 5984/tcp
# Tue, 07 Nov 2017 15:13:31 GMT
WORKDIR /var/lib/couchdb
# Tue, 07 Nov 2017 15:13:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:13:31 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d0633546beebb6e3c0c891b432aca0a0d565acc614083c99e855d9da33fe1`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb8331f1f361857a55e6229523f6dc26ea231dcfe86d83968cd38b4b3501f3`  
		Last Modified: Tue, 07 Nov 2017 15:15:15 GMT  
		Size: 43.8 MB (43764685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823852dcd2e2fda5e3bdd2c68639c4384ae28f24dbd22d36d713d93e5b4cb6de`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 827.3 KB (827306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e4a2e2d9eed07ed103997d9085dcdec20b67fb5fce417cd5706456b8b19dd`  
		Last Modified: Tue, 07 Nov 2017 15:15:11 GMT  
		Size: 512.9 KB (512886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba3f6d8ddfbd9c7cdf59bfb9a76a53c5b9a679bd3e882fbdcc374fa0c12bd93`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 7.6 MB (7631499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb91836049c7c8d7a9bc9c1a6c86cc26a7e6e7a01ba374e952cf7a61600f69d`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.0`

```console
$ docker pull couchdb@sha256:d36bc65131e8896f01681694f4ac2f5bcd78a99b91817b3e6dc269a23558c8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.0` - linux; amd64

```console
$ docker pull couchdb@sha256:22cce10db0538662a2d8d7ce1d8a39d71eb6a96ea04ac0f93660ec739e63e687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105334725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fcf8995edf9a6ebb76511129d604ef2534fa431b4b5a179c35cdaec41e47e5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:11:26 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:11:57 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:11:57 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:12:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:12:12 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Tue, 07 Nov 2017 15:12:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:12:21 GMT
ENV COUCHDB_VERSION=1.7.0
# Tue, 07 Nov 2017 15:13:30 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Tue, 07 Nov 2017 15:13:30 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Tue, 07 Nov 2017 15:13:30 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Tue, 07 Nov 2017 15:13:31 GMT
EXPOSE 5984/tcp
# Tue, 07 Nov 2017 15:13:31 GMT
WORKDIR /var/lib/couchdb
# Tue, 07 Nov 2017 15:13:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:13:31 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d0633546beebb6e3c0c891b432aca0a0d565acc614083c99e855d9da33fe1`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb8331f1f361857a55e6229523f6dc26ea231dcfe86d83968cd38b4b3501f3`  
		Last Modified: Tue, 07 Nov 2017 15:15:15 GMT  
		Size: 43.8 MB (43764685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823852dcd2e2fda5e3bdd2c68639c4384ae28f24dbd22d36d713d93e5b4cb6de`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 827.3 KB (827306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e4a2e2d9eed07ed103997d9085dcdec20b67fb5fce417cd5706456b8b19dd`  
		Last Modified: Tue, 07 Nov 2017 15:15:11 GMT  
		Size: 512.9 KB (512886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba3f6d8ddfbd9c7cdf59bfb9a76a53c5b9a679bd3e882fbdcc374fa0c12bd93`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 7.6 MB (7631499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb91836049c7c8d7a9bc9c1a6c86cc26a7e6e7a01ba374e952cf7a61600f69d`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7.0-couchperuser`

```console
$ docker pull couchdb@sha256:0ebaeb7ec79e67f33d514bb7bb25ce7e47bf0ead51f8b57614fee7f1b617df49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7.0-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:643176b2da0cd9b28d910f0b8e8aa7be4d86f1a8769bf51ec977bf414b9812dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115707253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8431d16df0506108407139214c787e6b92aac1a0341dc2b25d04bd745a4e884c`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:11:26 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:11:57 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:11:57 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:12:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:12:12 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Tue, 07 Nov 2017 15:12:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:12:21 GMT
ENV COUCHDB_VERSION=1.7.0
# Tue, 07 Nov 2017 15:13:30 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Tue, 07 Nov 2017 15:13:30 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Tue, 07 Nov 2017 15:13:30 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Tue, 07 Nov 2017 15:13:31 GMT
EXPOSE 5984/tcp
# Tue, 07 Nov 2017 15:13:31 GMT
WORKDIR /var/lib/couchdb
# Tue, 07 Nov 2017 15:13:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:13:31 GMT
CMD ["couchdb"]
# Tue, 07 Nov 2017 15:13:50 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:13:50 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Tue, 07 Nov 2017 15:14:22 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d0633546beebb6e3c0c891b432aca0a0d565acc614083c99e855d9da33fe1`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb8331f1f361857a55e6229523f6dc26ea231dcfe86d83968cd38b4b3501f3`  
		Last Modified: Tue, 07 Nov 2017 15:15:15 GMT  
		Size: 43.8 MB (43764685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823852dcd2e2fda5e3bdd2c68639c4384ae28f24dbd22d36d713d93e5b4cb6de`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 827.3 KB (827306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e4a2e2d9eed07ed103997d9085dcdec20b67fb5fce417cd5706456b8b19dd`  
		Last Modified: Tue, 07 Nov 2017 15:15:11 GMT  
		Size: 512.9 KB (512886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba3f6d8ddfbd9c7cdf59bfb9a76a53c5b9a679bd3e882fbdcc374fa0c12bd93`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 7.6 MB (7631499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb91836049c7c8d7a9bc9c1a6c86cc26a7e6e7a01ba374e952cf7a61600f69d`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b916aee58c542f650e286b46f996c3253bb99b831ac0afa29b1da431f74841a1`  
		Last Modified: Tue, 07 Nov 2017 15:15:39 GMT  
		Size: 10.4 MB (10372528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1.7-couchperuser`

```console
$ docker pull couchdb@sha256:0ebaeb7ec79e67f33d514bb7bb25ce7e47bf0ead51f8b57614fee7f1b617df49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1.7-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:643176b2da0cd9b28d910f0b8e8aa7be4d86f1a8769bf51ec977bf414b9812dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115707253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8431d16df0506108407139214c787e6b92aac1a0341dc2b25d04bd745a4e884c`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:11:26 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:11:57 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:11:57 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:12:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:12:12 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Tue, 07 Nov 2017 15:12:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:12:21 GMT
ENV COUCHDB_VERSION=1.7.0
# Tue, 07 Nov 2017 15:13:30 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Tue, 07 Nov 2017 15:13:30 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Tue, 07 Nov 2017 15:13:30 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Tue, 07 Nov 2017 15:13:31 GMT
EXPOSE 5984/tcp
# Tue, 07 Nov 2017 15:13:31 GMT
WORKDIR /var/lib/couchdb
# Tue, 07 Nov 2017 15:13:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:13:31 GMT
CMD ["couchdb"]
# Tue, 07 Nov 2017 15:13:50 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:13:50 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Tue, 07 Nov 2017 15:14:22 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d0633546beebb6e3c0c891b432aca0a0d565acc614083c99e855d9da33fe1`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb8331f1f361857a55e6229523f6dc26ea231dcfe86d83968cd38b4b3501f3`  
		Last Modified: Tue, 07 Nov 2017 15:15:15 GMT  
		Size: 43.8 MB (43764685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823852dcd2e2fda5e3bdd2c68639c4384ae28f24dbd22d36d713d93e5b4cb6de`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 827.3 KB (827306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e4a2e2d9eed07ed103997d9085dcdec20b67fb5fce417cd5706456b8b19dd`  
		Last Modified: Tue, 07 Nov 2017 15:15:11 GMT  
		Size: 512.9 KB (512886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba3f6d8ddfbd9c7cdf59bfb9a76a53c5b9a679bd3e882fbdcc374fa0c12bd93`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 7.6 MB (7631499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb91836049c7c8d7a9bc9c1a6c86cc26a7e6e7a01ba374e952cf7a61600f69d`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b916aee58c542f650e286b46f996c3253bb99b831ac0afa29b1da431f74841a1`  
		Last Modified: Tue, 07 Nov 2017 15:15:39 GMT  
		Size: 10.4 MB (10372528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:0ebaeb7ec79e67f33d514bb7bb25ce7e47bf0ead51f8b57614fee7f1b617df49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

```console
$ docker pull couchdb@sha256:643176b2da0cd9b28d910f0b8e8aa7be4d86f1a8769bf51ec977bf414b9812dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115707253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8431d16df0506108407139214c787e6b92aac1a0341dc2b25d04bd745a4e884c`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:11:26 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:11:57 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:11:57 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:12:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends wget;     rm -rf /var/lib/apt/lists/*;         dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')";         wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch";     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;     rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;     chmod +x /usr/local/bin/gosu;     gosu nobody true;         wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch";     wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7;     gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini;     rm -r "$GNUPGHOME" /usr/local/bin/tini.asc;     chmod +x /usr/local/bin/tini;     tini --version;         apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:12:12 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Tue, 07 Nov 2017 15:12:19 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:12:21 GMT
ENV COUCHDB_VERSION=1.7.0
# Tue, 07 Nov 2017 15:13:30 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL https://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Tue, 07 Nov 2017 15:13:30 GMT
COPY file:5881c18ea19cf9ff03427338ee18f45b99a773da0f61baf103b1ba4166ee1b8f in / 
# Tue, 07 Nov 2017 15:13:30 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Tue, 07 Nov 2017 15:13:31 GMT
EXPOSE 5984/tcp
# Tue, 07 Nov 2017 15:13:31 GMT
WORKDIR /var/lib/couchdb
# Tue, 07 Nov 2017 15:13:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:13:31 GMT
CMD ["couchdb"]
# Tue, 07 Nov 2017 15:13:50 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:13:50 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Tue, 07 Nov 2017 15:14:22 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d0633546beebb6e3c0c891b432aca0a0d565acc614083c99e855d9da33fe1`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb8331f1f361857a55e6229523f6dc26ea231dcfe86d83968cd38b4b3501f3`  
		Last Modified: Tue, 07 Nov 2017 15:15:15 GMT  
		Size: 43.8 MB (43764685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823852dcd2e2fda5e3bdd2c68639c4384ae28f24dbd22d36d713d93e5b4cb6de`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 827.3 KB (827306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118e4a2e2d9eed07ed103997d9085dcdec20b67fb5fce417cd5706456b8b19dd`  
		Last Modified: Tue, 07 Nov 2017 15:15:11 GMT  
		Size: 512.9 KB (512886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba3f6d8ddfbd9c7cdf59bfb9a76a53c5b9a679bd3e882fbdcc374fa0c12bd93`  
		Last Modified: Tue, 07 Nov 2017 15:15:12 GMT  
		Size: 7.6 MB (7631499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb91836049c7c8d7a9bc9c1a6c86cc26a7e6e7a01ba374e952cf7a61600f69d`  
		Last Modified: Tue, 07 Nov 2017 15:15:10 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b916aee58c542f650e286b46f996c3253bb99b831ac0afa29b1da431f74841a1`  
		Last Modified: Tue, 07 Nov 2017 15:15:39 GMT  
		Size: 10.4 MB (10372528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2`

```console
$ docker pull couchdb@sha256:39eb59c0ca2e3be265e93f8390134d01a88d8715ff61acfa99ca10b4322b18d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2` - linux; amd64

```console
$ docker pull couchdb@sha256:2ee5d501f667a65ef92cde16067076571faced57fdb58d3ea97fc60ba834fb9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155306139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573fe05d5b599bd6d6dd4f4463b369a5eab47434d919544d76dd0614de6af7c8`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:08:45 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:09:51 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:09:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:09:52 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:10:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:10:07 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 07 Nov 2017 15:10:15 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:10:15 GMT
ENV COUCHDB_VERSION=2.1.1
# Tue, 07 Nov 2017 15:11:10 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Tue, 07 Nov 2017 15:11:13 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Tue, 07 Nov 2017 15:11:16 GMT
WORKDIR /opt/couchdb
# Tue, 07 Nov 2017 15:11:16 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 07 Nov 2017 15:11:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 07 Nov 2017 15:11:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:11:20 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a46d96a805b020706e3fde646bc8ff7d5f04d46403ee0551dc835d497f22e`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c66de2553605fb9eccc9bd68ca2d1d3e5539170c3ac3adbf40790cbea01f84b`  
		Last Modified: Tue, 07 Nov 2017 15:14:43 GMT  
		Size: 84.1 MB (84059404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3bf0ff27825e57d00d760c61c07dbeb5eabedcf0ff26e507022dbe5bffb843`  
		Last Modified: Tue, 07 Nov 2017 15:14:34 GMT  
		Size: 912.8 KB (912751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45533d8b08c87a5231e92a452110539bc13d1187ed512d8d5ec98a3c1cd2e3d`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 527.9 KB (527925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8c68ca08cafea76dd862afeef21b2cf500c1ebf12fdf3b339ad995ff569`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 17.2 MB (17205327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b249b67f8cd6ade47824b0815d6ff8d940dccac1f3d7ef60f4762747dfd19ad5`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6febb5140f6d090fcd45dfc29b73cbafe632ecdd2980dbdc06835f4aeeec4f19`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be959830d8b1dbbfd206eb03ffd7b134b719e5c9e8e8b41b2b95153a08143a9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bc1b2c89e175c305ffce768ca9a3a460683587b2b96f76c302e07ad672d6e9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1`

```console
$ docker pull couchdb@sha256:39eb59c0ca2e3be265e93f8390134d01a88d8715ff61acfa99ca10b4322b18d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:2ee5d501f667a65ef92cde16067076571faced57fdb58d3ea97fc60ba834fb9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155306139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573fe05d5b599bd6d6dd4f4463b369a5eab47434d919544d76dd0614de6af7c8`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:08:45 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:09:51 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:09:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:09:52 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:10:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:10:07 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 07 Nov 2017 15:10:15 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:10:15 GMT
ENV COUCHDB_VERSION=2.1.1
# Tue, 07 Nov 2017 15:11:10 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Tue, 07 Nov 2017 15:11:13 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Tue, 07 Nov 2017 15:11:16 GMT
WORKDIR /opt/couchdb
# Tue, 07 Nov 2017 15:11:16 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 07 Nov 2017 15:11:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 07 Nov 2017 15:11:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:11:20 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a46d96a805b020706e3fde646bc8ff7d5f04d46403ee0551dc835d497f22e`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c66de2553605fb9eccc9bd68ca2d1d3e5539170c3ac3adbf40790cbea01f84b`  
		Last Modified: Tue, 07 Nov 2017 15:14:43 GMT  
		Size: 84.1 MB (84059404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3bf0ff27825e57d00d760c61c07dbeb5eabedcf0ff26e507022dbe5bffb843`  
		Last Modified: Tue, 07 Nov 2017 15:14:34 GMT  
		Size: 912.8 KB (912751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45533d8b08c87a5231e92a452110539bc13d1187ed512d8d5ec98a3c1cd2e3d`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 527.9 KB (527925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8c68ca08cafea76dd862afeef21b2cf500c1ebf12fdf3b339ad995ff569`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 17.2 MB (17205327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b249b67f8cd6ade47824b0815d6ff8d940dccac1f3d7ef60f4762747dfd19ad5`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6febb5140f6d090fcd45dfc29b73cbafe632ecdd2980dbdc06835f4aeeec4f19`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be959830d8b1dbbfd206eb03ffd7b134b719e5c9e8e8b41b2b95153a08143a9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bc1b2c89e175c305ffce768ca9a3a460683587b2b96f76c302e07ad672d6e9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:2.1.1`

```console
$ docker pull couchdb@sha256:39eb59c0ca2e3be265e93f8390134d01a88d8715ff61acfa99ca10b4322b18d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:2.1.1` - linux; amd64

```console
$ docker pull couchdb@sha256:2ee5d501f667a65ef92cde16067076571faced57fdb58d3ea97fc60ba834fb9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155306139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573fe05d5b599bd6d6dd4f4463b369a5eab47434d919544d76dd0614de6af7c8`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:08:45 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:09:51 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:09:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:09:52 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:10:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:10:07 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 07 Nov 2017 15:10:15 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:10:15 GMT
ENV COUCHDB_VERSION=2.1.1
# Tue, 07 Nov 2017 15:11:10 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Tue, 07 Nov 2017 15:11:13 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Tue, 07 Nov 2017 15:11:16 GMT
WORKDIR /opt/couchdb
# Tue, 07 Nov 2017 15:11:16 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 07 Nov 2017 15:11:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 07 Nov 2017 15:11:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:11:20 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a46d96a805b020706e3fde646bc8ff7d5f04d46403ee0551dc835d497f22e`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c66de2553605fb9eccc9bd68ca2d1d3e5539170c3ac3adbf40790cbea01f84b`  
		Last Modified: Tue, 07 Nov 2017 15:14:43 GMT  
		Size: 84.1 MB (84059404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3bf0ff27825e57d00d760c61c07dbeb5eabedcf0ff26e507022dbe5bffb843`  
		Last Modified: Tue, 07 Nov 2017 15:14:34 GMT  
		Size: 912.8 KB (912751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45533d8b08c87a5231e92a452110539bc13d1187ed512d8d5ec98a3c1cd2e3d`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 527.9 KB (527925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8c68ca08cafea76dd862afeef21b2cf500c1ebf12fdf3b339ad995ff569`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 17.2 MB (17205327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b249b67f8cd6ade47824b0815d6ff8d940dccac1f3d7ef60f4762747dfd19ad5`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6febb5140f6d090fcd45dfc29b73cbafe632ecdd2980dbdc06835f4aeeec4f19`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be959830d8b1dbbfd206eb03ffd7b134b719e5c9e8e8b41b2b95153a08143a9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bc1b2c89e175c305ffce768ca9a3a460683587b2b96f76c302e07ad672d6e9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:39eb59c0ca2e3be265e93f8390134d01a88d8715ff61acfa99ca10b4322b18d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:2ee5d501f667a65ef92cde16067076571faced57fdb58d3ea97fc60ba834fb9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155306139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573fe05d5b599bd6d6dd4f4463b369a5eab47434d919544d76dd0614de6af7c8`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Tue, 07 Nov 2017 15:08:44 GMT
MAINTAINER CouchDB Developers dev@couchdb.apache.org
# Tue, 07 Nov 2017 15:08:45 GMT
RUN groupadd -r couchdb && useradd -d /opt/couchdb -g couchdb couchdb
# Tue, 07 Nov 2017 15:09:51 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     erlang-reltool     haproxy     libicu52     libmozjs185-1.0     openssl   && rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 15:09:52 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 15:09:52 GMT
ENV TINI_VERSION=0.16.1
# Tue, 07 Nov 2017 15:10:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini --version; 		apt-get purge -y --auto-remove wget
# Tue, 07 Nov 2017 15:10:07 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B   29E4F38113DF707D722A6EF91FE9AF73118F1A7C   2EC788AE3F239FA13E82D215CDE711289384AE37
# Tue, 07 Nov 2017 15:10:15 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 07 Nov 2017 15:10:15 GMT
ENV COUCHDB_VERSION=2.1.1
# Tue, 07 Nov 2017 15:11:10 GMT
RUN buildDeps='     apt-transport-https     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     make   '  && apt-get update -y -qq && apt-get install -y --no-install-recommends $buildDeps  && cd /usr/src && mkdir couchdb  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz  && curl -fSL https://dist.apache.org/repos/dist/release/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc  && gpg --batch --verify couchdb.tar.gz.asc couchdb.tar.gz  && tar -xzf couchdb.tar.gz -C couchdb --strip-components=1  && cd couchdb  && ./configure --disable-docs  && make release  && mv /usr/src/couchdb/rel/couchdb /opt/  && apt-get purge -y --auto-remove $buildDeps  && rm -rf /var/lib/apt/lists/* /usr/src/couchdb*  && mkdir /opt/couchdb/data  && chown -R couchdb:couchdb /opt/couchdb
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:6e48edd87a901be3cfaa928bf5b42264b4e3173d6c817b46878bf1104dcff208 in /opt/couchdb/etc/local.d/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:92f7c74ebcdab3f422f19b237777e707346b0b921cecac100009f5e1e9918e1e in /opt/couchdb/etc/ 
# Tue, 07 Nov 2017 15:11:12 GMT
COPY file:4b6c87a451132457c240370120ddfb8a03af930f0acadd3c8522f18f4c9b7398 in / 
# Tue, 07 Nov 2017 15:11:13 GMT
RUN chown -R couchdb:couchdb /opt/couchdb/etc/local.d/ /opt/couchdb/etc/vm.args
# Tue, 07 Nov 2017 15:11:16 GMT
WORKDIR /opt/couchdb
# Tue, 07 Nov 2017 15:11:16 GMT
EXPOSE 4369/tcp 5984/tcp 9100/tcp
# Tue, 07 Nov 2017 15:11:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 07 Nov 2017 15:11:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 15:11:20 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a46d96a805b020706e3fde646bc8ff7d5f04d46403ee0551dc835d497f22e`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c66de2553605fb9eccc9bd68ca2d1d3e5539170c3ac3adbf40790cbea01f84b`  
		Last Modified: Tue, 07 Nov 2017 15:14:43 GMT  
		Size: 84.1 MB (84059404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3bf0ff27825e57d00d760c61c07dbeb5eabedcf0ff26e507022dbe5bffb843`  
		Last Modified: Tue, 07 Nov 2017 15:14:34 GMT  
		Size: 912.8 KB (912751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45533d8b08c87a5231e92a452110539bc13d1187ed512d8d5ec98a3c1cd2e3d`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 527.9 KB (527925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f8d8c68ca08cafea76dd862afeef21b2cf500c1ebf12fdf3b339ad995ff569`  
		Last Modified: Tue, 07 Nov 2017 15:14:33 GMT  
		Size: 17.2 MB (17205327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b249b67f8cd6ade47824b0815d6ff8d940dccac1f3d7ef60f4762747dfd19ad5`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6febb5140f6d090fcd45dfc29b73cbafe632ecdd2980dbdc06835f4aeeec4f19`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 769.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be959830d8b1dbbfd206eb03ffd7b134b719e5c9e8e8b41b2b95153a08143a9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bc1b2c89e175c305ffce768ca9a3a460683587b2b96f76c302e07ad672d6e9`  
		Last Modified: Tue, 07 Nov 2017 15:14:31 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
