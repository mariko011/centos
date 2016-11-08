## `couchdb:1-couchperuser`

```console
$ docker pull couchdb@sha256:e460e9a639b080971661e245ce302897bff697038a9a58ebe56335c6fa28b995
```

-	Platforms:
	-	linux; amd64

### `couchdb:1-couchperuser` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113881773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d0fd1e94fa6b886270a7ff1f7e90e4f505fc291a316ca5f95060612d590799`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["couchdb"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:02:28 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Tue, 08 Nov 2016 19:02:29 GMT
RUN groupadd -r couchdb && useradd -d /var/lib/couchdb -g couchdb couchdb
# Tue, 08 Nov 2016 19:02:54 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     erlang-nox     libicu52     libmozjs185-1.0     libnspr4     libnspr4-0d   && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:03:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --verify /usr/local/bin/tini.asc   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini
# Tue, 08 Nov 2016 19:03:07 GMT
ENV GPG_KEYS=15DD4F3B8AACA54740EB78C7B7B7C53943ECCEE1   1CFBFA43C19B6DF4A0CA3934669C02FFDF3CEBA3   25BBBAC113C1BFD5AA594A4C9F96B92930380381   4BFCA2B99BADC6F9F105BEC9C5E32E2D6B065BFB   5D680346FAA3E51B29DBCB681015F68F9DA248BC   7BCCEB868313DDA925DF1805ECA5BCB7BB9656B0   C3F4DFAEAD621E1C94523AEEC376457E61D50B88   D2B17F9DA23C0A10991AF2E3D9EE01E47852AEE4   E0AF0A194D55C84E4A19A801CDB0C0F904F4EE9B
# Tue, 08 Nov 2016 19:03:18 GMT
RUN set -xe   && for key in $GPG_KEYS; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 08 Nov 2016 19:03:20 GMT
ENV COUCHDB_VERSION=1.6.1
# Tue, 08 Nov 2016 19:04:20 GMT
RUN buildDeps='     gcc     g++     erlang-dev     libcurl4-openssl-dev     libicu-dev     libmozjs185-dev     libnspr4-dev     make   '   && apt-get update && apt-get install -y --no-install-recommends $buildDeps   && curl -fSL http://apache.osuosl.org/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz -o couchdb.tar.gz   && curl -fSL https://www.apache.org/dist/couchdb/source/$COUCHDB_VERSION/apache-couchdb-$COUCHDB_VERSION.tar.gz.asc -o couchdb.tar.gz.asc   && gpg --verify couchdb.tar.gz.asc   && mkdir -p /usr/src/couchdb   && tar -xzf couchdb.tar.gz -C /usr/src/couchdb --strip-components=1   && cd /usr/src/couchdb   && ./configure --with-js-lib=/usr/lib --with-js-include=/usr/include/mozjs   && make && make install   && apt-get purge -y --auto-remove $buildDeps   && rm -rf /var/lib/apt/lists/* /usr/src/couchdb /couchdb.tar.gz*   && chown -R couchdb:couchdb     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && chmod -R g+rw     /usr/local/lib/couchdb /usr/local/etc/couchdb     /usr/local/var/lib/couchdb /usr/local/var/log/couchdb /usr/local/var/run/couchdb   && mkdir -p /var/lib/couchdb   && sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini   && sed -e 's!/usr/local/var/log/couchdb/couch.log$!/dev/null!' -i /usr/local/etc/couchdb/default.ini
# Tue, 08 Nov 2016 19:04:20 GMT
COPY file:9167181556794bc11f93a378f69052e0de980ac17e33be172c375a8564bbe89a in / 
# Tue, 08 Nov 2016 19:04:21 GMT
RUN chmod +x /docker-entrypoint.sh
# Tue, 08 Nov 2016 19:04:22 GMT
VOLUME [/usr/local/var/lib/couchdb]
# Tue, 08 Nov 2016 19:04:22 GMT
EXPOSE 5984/tcp
# Tue, 08 Nov 2016 19:04:22 GMT
WORKDIR /var/lib/couchdb
# Tue, 08 Nov 2016 19:04:23 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 19:04:23 GMT
CMD ["couchdb"]
# Tue, 08 Nov 2016 19:06:01 GMT
MAINTAINER Clemens Stolle klaemo@apache.org
# Tue, 08 Nov 2016 19:06:01 GMT
ENV COUCHPERUSER_SHA=5d28db3272eea9619d4391b33aae6030f0319ecc54aa2a2f2b6c6a8d448f03f2
# Tue, 08 Nov 2016 19:06:33 GMT
RUN apt-get update && apt-get install -y rebar make  && mkdir -p /usr/local/lib/couchdb/plugins/couchperuser  && cd /usr/local/lib/couchdb/plugins  && curl -L -o couchperuser.tar.gz https://github.com/etrepum/couchperuser/archive/1.1.0.tar.gz  && echo "$COUCHPERUSER_SHA *couchperuser.tar.gz" | sha256sum -c -  && tar -xzf couchperuser.tar.gz -C couchperuser --strip-components=1  && rm couchperuser.tar.gz  && cd couchperuser  && make  && apt-get purge -y --auto-remove rebar make
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541a9926d810ab5fa60b5dcb0640511e8919b8b9cc1472f752884833fa9af7f8`  
		Last Modified: Tue, 08 Nov 2016 19:04:38 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834d46adacee052c03ca069b86372a5b67b5a9985feb1506d332be6cc58aec7d`  
		Last Modified: Tue, 08 Nov 2016 19:05:07 GMT  
		Size: 42.7 MB (42672341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2d62957897ed0964ef6c22b07df5c7183fff8cc3cf4d21b705f5e6c22bc069`  
		Last Modified: Tue, 08 Nov 2016 19:04:35 GMT  
		Size: 948.7 KB (948695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe96d255ff33a83922dcb4ca13cdd568116081ac7f21f7c54031eaa9bd9057`  
		Last Modified: Tue, 08 Nov 2016 19:04:35 GMT  
		Size: 631.4 KB (631406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d2d0c9c1252932e9ebcdc55cedb82176061d2088be37d4b6e76b56233f7f3d`  
		Last Modified: Tue, 08 Nov 2016 19:04:37 GMT  
		Size: 8.2 MB (8178129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8865cb5c02f77273099b012e4ca978346a87a523edd99c0fea9fc91c2a9aba7f`  
		Last Modified: Tue, 08 Nov 2016 19:04:34 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8865cb5c02f77273099b012e4ca978346a87a523edd99c0fea9fc91c2a9aba7f`  
		Last Modified: Tue, 08 Nov 2016 19:04:34 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa31bfb6309fd5e87c3858e2fd94e472d90f6c7d2252adb2aacba74d28142aff`  
		Last Modified: Tue, 08 Nov 2016 19:06:47 GMT  
		Size: 10.1 MB (10090062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
