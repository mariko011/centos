## `couchdb:latest`

```console
$ docker pull couchdb@sha256:13140922d28de05f2e3bfddfacb5d1a92041ee9648aaeec0ca25f3c152407434
```

-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106213862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daffd1a3b8ccd5a902440ad6c5606483bf64cfa4b5b7debb93d85752849d51e1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 01:28:27 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Wed, 21 Jun 2017 01:28:30 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Wed, 21 Jun 2017 01:28:53 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 01:29:04 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Wed, 21 Jun 2017 01:29:25 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Wed, 21 Jun 2017 01:29:32 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 21 Jun 2017 01:29:53 GMT
ENV COUCHDB_VERSION=1.6.1
# Wed, 21 Jun 2017 01:30:56 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Wed, 21 Jun 2017 01:31:18 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Wed, 21 Jun 2017 01:31:19 GMT
RUN chmod +x /docker-entrypoint.sh
# Wed, 21 Jun 2017 01:31:20 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Wed, 21 Jun 2017 01:31:21 GMT
EXPOSE 5984/tcp
# Wed, 21 Jun 2017 01:31:22 GMT
WORKDIR /var/lib/couchdb
# Wed, 21 Jun 2017 01:31:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Jun 2017 01:31:47 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa827108e98905746b797a85012921ff95f62ef0d4d268ec2301b0754feafd1`  
		Last Modified: Sat, 24 Jun 2017 06:54:53 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b999a6447d0a38c50f1113cb143068990bf6b7acfecd9623bdddda99d4956522`  
		Last Modified: Sat, 24 Jun 2017 06:55:03 GMT  
		Size: 43.8 MB (43767414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1102bff463b48322ba5dea4c35ad8927e808ff18e5894ecaf5f46e200a074cbb`  
		Last Modified: Sat, 24 Jun 2017 06:54:53 GMT  
		Size: 959.7 KB (959698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44b04d90856116980a7e4731215e5dba9466daf6b0e6952155c890f72ee2426`  
		Last Modified: Sat, 24 Jun 2017 06:54:53 GMT  
		Size: 631.4 KB (631390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258c6369a295b325023ef129ef8564f4ab0ea8b7e66e75757bb360832cf1a7dc`  
		Last Modified: Sat, 24 Jun 2017 06:54:55 GMT  
		Size: 8.2 MB (8236388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ac556ca7f27ca81c45c02b527366084e4777389692f17e947d356f4334e679`  
		Last Modified: Sat, 24 Jun 2017 06:54:53 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ac556ca7f27ca81c45c02b527366084e4777389692f17e947d356f4334e679`  
		Last Modified: Sat, 24 Jun 2017 06:54:53 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
