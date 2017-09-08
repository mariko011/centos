## `couchdb:latest`

```console
$ docker pull couchdb@sha256:09d0d00ce1aadde6323f4661ac20d8d2f0f61c37bff4f9e0447c2d713219ee49
```

-	Platforms:
	-	linux; amd64

### `couchdb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106213345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd862eda51dd3330fa4b9df27a33051b7908943b8e6bd13505efaf154ac178`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:02:44 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Fri, 08 Sep 2017 00:02:45 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Fri, 08 Sep 2017 00:03:20 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:03:25 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Fri, 08 Sep 2017 00:03:29 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Fri, 08 Sep 2017 00:03:35 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 08 Sep 2017 00:03:38 GMT
ENV COUCHDB_VERSION=1.6.1
# Fri, 08 Sep 2017 00:04:48 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Fri, 08 Sep 2017 00:04:48 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Fri, 08 Sep 2017 00:04:49 GMT
RUN chmod +x /docker-entrypoint.sh
# Fri, 08 Sep 2017 00:04:49 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Fri, 08 Sep 2017 00:04:50 GMT
EXPOSE 5984/tcp
# Fri, 08 Sep 2017 00:04:50 GMT
WORKDIR /var/lib/couchdb
# Fri, 08 Sep 2017 00:04:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 00:04:51 GMT
CMD ["couchdb"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a69a5984dd7871ef848bc672b750915c26e1d6a9921d5d080410af40940b236`  
		Last Modified: Fri, 08 Sep 2017 18:06:46 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522333eb610551a8550e3016adac3f094ba30fe2fe141b999a4ca86c8ed3e337`  
		Last Modified: Fri, 08 Sep 2017 18:06:54 GMT  
		Size: 43.8 MB (43766266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ece587af3f109fcb9d17e82d4a50237ae666286b55ba224ea04d7d2f83c117`  
		Last Modified: Fri, 08 Sep 2017 18:06:46 GMT  
		Size: 969.8 KB (969812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf97f5ebb6eba7df17b1b7b4ae9a4ff5e672e64dd4418f0988ed9f3c8e25f66`  
		Last Modified: Fri, 08 Sep 2017 18:06:47 GMT  
		Size: 641.1 KB (641079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be6c739b84266b4d370a69abd24063df054bb06945ddab75e6c4b6e5248f631`  
		Last Modified: Fri, 08 Sep 2017 18:06:48 GMT  
		Size: 8.2 MB (8236476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb030ffef4ef22efbae5b266826cd178a2033b98c71cc24bf930c02bb2b65730`  
		Last Modified: Fri, 08 Sep 2017 18:06:46 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb030ffef4ef22efbae5b266826cd178a2033b98c71cc24bf930c02bb2b65730`  
		Last Modified: Fri, 08 Sep 2017 18:06:46 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
