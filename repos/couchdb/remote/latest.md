## `couchdb:latest`

```console
$ docker pull couchdb@sha256:ccb1151b030b4adbda49a12088902f2f656d21a4455d2647d305d7b4875e748b
```

-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103801193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8630facec5ecc19f9b008a019075f7f179e1957f7880a77516e19e5661faef9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:16:19 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Wed, 31 Aug 2016 01:16:20 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 31 Aug 2016 01:16:44 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 01:16:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Wed, 31 Aug 2016 01:16:51 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 31 Aug 2016 01:16:58 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 31 Aug 2016 01:16:58 GMT
ENV COUCHDB_VERSION=1.6.1
# Wed, 31 Aug 2016 01:17:52 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 31 Aug 2016 01:17:52 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Wed, 31 Aug 2016 01:17:53 GMT
RUN chmod +x /docker-entrypoint.sh
# Wed, 31 Aug 2016 01:17:53 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 31 Aug 2016 01:17:54 GMT
EXPOSE 5984/tcp
# Wed, 31 Aug 2016 01:17:54 GMT
WORKDIR /var/lib/couchdb
# Wed, 31 Aug 2016 01:17:54 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 01:17:54 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73e24cdbf9944de5832a7f21316665bd6ae800065e83edcbf1a7376daa8791`  
		Last Modified: Thu, 08 Sep 2016 17:37:08 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e690c3bdaf8be5c1e599be25a0d179a92b376ada2991df0351ce938bd45ca9`  
		Last Modified: Thu, 08 Sep 2016 17:37:16 GMT  
		Size: 42.7 MB (42671535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6965759a640cbb6970d355209ae2d47a0f2e9d05cd76866a26861a5e74c21b0c`  
		Last Modified: Thu, 08 Sep 2016 17:37:07 GMT  
		Size: 948.7 KB (948704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86038dca14f88a474ada452afe4c046892d87aa686f03a6d5120554bd8160a8`  
		Last Modified: Thu, 08 Sep 2016 17:37:06 GMT  
		Size: 631.4 KB (631406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edfdf44b2a9ec704ef60a7516b6dd9e22575608e5c2ae32a70118224aeb5ac3`  
		Last Modified: Thu, 08 Sep 2016 17:37:09 GMT  
		Size: 8.2 MB (8178132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baaef48ae8cc8ffe5ad23f795d04341018a66e44743dad56bf03eaa4d2bca2c8`  
		Last Modified: Thu, 08 Sep 2016 17:37:05 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baaef48ae8cc8ffe5ad23f795d04341018a66e44743dad56bf03eaa4d2bca2c8`  
		Last Modified: Thu, 08 Sep 2016 17:37:05 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
