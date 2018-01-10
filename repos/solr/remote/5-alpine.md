## `solr:5-alpine`

```console
$ docker pull solr@sha256:4c6f3892d991856e82f107f4a50770f88f62785a4ef8020928ffb0d185745f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `solr:5-alpine` - linux; amd64

```console
$ docker pull solr@sha256:134747946baef83d49f14e715d0248d5fdb9f7b5b1c52a857b9aec1eaec02a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196420348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ff4b74c0451eaeb92633cc6ec3460820aed83de7e6c87453cceca59cce9540`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:44:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 Jan 2018 08:44:28 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 Jan 2018 08:44:32 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 Jan 2018 08:44:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 Jan 2018 08:49:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:49:45 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 10 Jan 2018 08:49:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 Jan 2018 08:50:02 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 10 Jan 2018 08:50:03 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Wed, 10 Jan 2018 08:50:04 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 10 Jan 2018 08:50:04 GMT
EXPOSE 8983/tcp
# Wed, 10 Jan 2018 08:50:04 GMT
WORKDIR /opt/solr
# Wed, 10 Jan 2018 08:50:04 GMT
USER [solr]
# Wed, 10 Jan 2018 08:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 08:50:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f178ea66d15ffe067420878a638ca383ad61b15bc9b7b3dee671e5ece3e63b`  
		Last Modified: Wed, 10 Jan 2018 08:50:42 GMT  
		Size: 7.4 MB (7369084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7684307dcabc2ff93401e66b34698b0794fd4cfd7e8d3697d302383caa013ae0`  
		Last Modified: Wed, 10 Jan 2018 08:50:38 GMT  
		Size: 590.9 KB (590888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3e4d7aee2c69bf6b91aad0ea1da4f24abf8a44eabbe5b2289a0aad606ae7b4`  
		Last Modified: Wed, 10 Jan 2018 09:08:57 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6175f9985b5ef2bc5acdd5c1fe0642ec91d3baade93ba52e5162eb0569bdfa95`  
		Last Modified: Wed, 10 Jan 2018 09:08:57 GMT  
		Size: 10.8 KB (10813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef206e9c867cfc617a27d3c6a8ae7596a7feebfe02322cce388138d429447336`  
		Last Modified: Wed, 10 Jan 2018 09:09:09 GMT  
		Size: 131.9 MB (131920324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a81dae51d64bbc09a94e3fa74d2d63f0dff2bd81ce11e29fcee9784cbcbf21`  
		Last Modified: Wed, 10 Jan 2018 09:08:57 GMT  
		Size: 4.1 KB (4132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f7457a4254253a39bb48b94e0cdc1cac6c3ce8adcedcc8b1555d40ac17b97a`  
		Last Modified: Wed, 10 Jan 2018 09:08:57 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:f976f705eac0eb45acde97d1d91477f8321eb58008882257b0a51ed19a99b126
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193733784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8b62fd30ac073daeeb3e5d1b53af997bbe2af6ceaddccbe3691128c8a16996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:23:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 20:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 20:23:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 11 Dec 2017 14:22:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Dec 2017 14:22:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Dec 2017 14:22:29 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Mon, 11 Dec 2017 14:22:34 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 11 Dec 2017 14:25:35 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 11 Dec 2017 14:25:36 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Mon, 11 Dec 2017 14:25:39 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Dec 2017 14:25:56 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 22 Dec 2017 14:23:30 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Fri, 22 Dec 2017 14:23:31 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 22 Dec 2017 14:23:32 GMT
EXPOSE 8983/tcp
# Fri, 22 Dec 2017 14:23:32 GMT
WORKDIR /opt/solr
# Fri, 22 Dec 2017 14:23:32 GMT
USER [solr]
# Fri, 22 Dec 2017 14:23:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:23:32 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d7c0e055b96c1979695e21ec3f1d3670ee5d5a6700215e39e846652801c677`  
		Last Modified: Tue, 05 Dec 2017 20:24:54 GMT  
		Size: 52.1 MB (52054188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c66114429b91ee6d237104f3ba1b383c7470c2ed97acc9fb3b15f68ca9d5d`  
		Last Modified: Mon, 11 Dec 2017 14:26:10 GMT  
		Size: 7.1 MB (7114563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c968be9ab9fb9f4764875ec231535a72856e26a79370ee449f5e665bbfec349`  
		Last Modified: Mon, 11 Dec 2017 14:26:07 GMT  
		Size: 585.6 KB (585605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894752714585c3fabc86685a53638321cc5d11450658c0134ba741f1dbffd981`  
		Last Modified: Mon, 11 Dec 2017 14:28:46 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2a23261af5c9ba9d8bdbbfce8a94b160a74c8a226a0f4c7836c827b289593f`  
		Last Modified: Mon, 11 Dec 2017 14:28:46 GMT  
		Size: 10.8 KB (10846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52198673c79b045aebe49a4ade1d2ade10a70decd73c5aaa51eb67ff3ead12b1`  
		Last Modified: Mon, 11 Dec 2017 14:29:06 GMT  
		Size: 131.9 MB (131920308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cce7b8fac6d87a73129bf1d270835671c02ad1e74ba3cfe7c6e3021608708e`  
		Last Modified: Fri, 22 Dec 2017 14:24:44 GMT  
		Size: 4.2 KB (4156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d7f951679b96792498fd38edd95b9086ea224234774bc9ab9886d1bc81f6e0`  
		Last Modified: Fri, 22 Dec 2017 14:24:43 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-alpine` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:84ce45e7ba56a2130307fd9291ff914f77800bf58fb8083cbafb401ee332c1e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194577621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e95ad29c3f5f84a6b12247e8dc86af84e3dd1bdd8b5c4990109adba70a78df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 00:50:51 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Dec 2017 00:50:51 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Dec 2017 00:51:00 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 07 Dec 2017 00:51:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Dec 2017 01:02:04 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Dec 2017 01:02:05 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 07 Dec 2017 01:02:09 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 07 Dec 2017 01:02:32 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 22 Dec 2017 00:57:40 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Fri, 22 Dec 2017 00:57:42 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 22 Dec 2017 00:57:43 GMT
EXPOSE 8983/tcp
# Fri, 22 Dec 2017 00:57:43 GMT
WORKDIR /opt/solr
# Fri, 22 Dec 2017 00:57:44 GMT
USER [solr]
# Fri, 22 Dec 2017 00:57:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 00:57:45 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455aff3580c22e04a0926932538e2fc01fe2f1db96ab2c6ebd66fb3f08af810f`  
		Last Modified: Thu, 07 Dec 2017 01:04:58 GMT  
		Size: 6.9 MB (6903234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c17bc8ce871ca4358c544dab1515da31c04c081f12e7f009ae010377172e77`  
		Last Modified: Thu, 07 Dec 2017 01:04:56 GMT  
		Size: 577.4 KB (577415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc06056b0a92481743709641ed83bf6e11e0347f43d172b3716eb5c1137eec0`  
		Last Modified: Thu, 07 Dec 2017 01:20:58 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa4814616150539b48899a9e7b8139187cab9db395f7b89ae1506533bdbf3c9`  
		Last Modified: Thu, 07 Dec 2017 01:20:58 GMT  
		Size: 10.8 KB (10828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a38795940e95038f54dc59dc9b61c17e614bdd636e174660c3657d5d630af64`  
		Last Modified: Thu, 07 Dec 2017 01:21:17 GMT  
		Size: 131.9 MB (131920310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54097801af7d2c81d8c3ea3eff332f55b8fbafc1c051697d6ca670eccd44c1f`  
		Last Modified: Fri, 22 Dec 2017 01:07:18 GMT  
		Size: 4.1 KB (4132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ae731b37a493999be04e00e741d4c0c3d49c141c740a6da48d4b9d82ea8c8d`  
		Last Modified: Fri, 22 Dec 2017 01:07:16 GMT  
		Size: 4.1 KB (4138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-alpine` - linux; 386

```console
$ docker pull solr@sha256:ce4626b5339a3304e55fff293dbcf8f48a4eb802847cf7a3f6b7ade40d9e6480
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197613800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de27566d4a105d87460e9ef21ddfae25099d509e75b6a2ce040c69d16216c7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:48:54 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:49:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 07:40:06 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Dec 2017 07:40:06 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Dec 2017 07:40:22 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 07 Dec 2017 07:40:26 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Dec 2017 07:48:53 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Dec 2017 07:48:53 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 07 Dec 2017 07:48:57 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 07 Dec 2017 07:49:13 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 22 Dec 2017 07:54:24 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Fri, 22 Dec 2017 07:54:25 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 22 Dec 2017 07:54:25 GMT
EXPOSE 8983/tcp
# Fri, 22 Dec 2017 07:54:25 GMT
WORKDIR /opt/solr
# Fri, 22 Dec 2017 07:54:26 GMT
USER [solr]
# Fri, 22 Dec 2017 07:54:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 07:54:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a13f30b26486cd97444390397b2837fb87eea601155d93fa6c6062a59a0fc3`  
		Last Modified: Tue, 05 Dec 2017 11:54:03 GMT  
		Size: 55.1 MB (55128267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de55b276c07e6eb6bc2454a5fb2fdf328a389c36d0b6254e141f3874ab48c0a1`  
		Last Modified: Thu, 07 Dec 2017 07:50:49 GMT  
		Size: 7.8 MB (7810601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f743a7a07a6be35fbd26af15dd18211b40097ee5f92550a8b0c0b89a8a7a820a`  
		Last Modified: Thu, 07 Dec 2017 07:50:46 GMT  
		Size: 607.8 KB (607766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9233799fe3855459ec1e153b2d648f1c4453eff08fee7273a13ce490ab68633`  
		Last Modified: Thu, 07 Dec 2017 08:03:12 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46e26c853d556e20b8076c4a68e761f3b246bb3909329b4069e09e7d3dcb5d`  
		Last Modified: Thu, 07 Dec 2017 08:03:12 GMT  
		Size: 10.8 KB (10827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc9f6fcc46f0907433e65ac55b0fde940f24dc689d5b0505f1b623f5bb62aea`  
		Last Modified: Thu, 07 Dec 2017 08:03:25 GMT  
		Size: 131.9 MB (131920200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35605675cca0eb7d86ae3809beb5983d47293dad0057062c5d63a80d9c8c7939`  
		Last Modified: Fri, 22 Dec 2017 08:13:20 GMT  
		Size: 4.1 KB (4128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ce91ed196cf5df5e06df8932221b04ed53d8d1849837a6e91b6574bedfa861`  
		Last Modified: Fri, 22 Dec 2017 08:13:20 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-alpine` - linux; ppc64le

```console
$ docker pull solr@sha256:36290b3cb69c8340e341560986e67b3eba07c3ce5851d08637d7232c997a60c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195539433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec254acce6b53a61447e5a18d9419bf6345d68e80e12ec81c31a8ad2fb5c3d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:47:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:50:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:50:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:50:14 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:50:15 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:50:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 14:58:07 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Dec 2017 14:58:08 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Dec 2017 14:58:19 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 07 Dec 2017 14:58:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Dec 2017 15:13:39 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Dec 2017 15:13:43 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 07 Dec 2017 15:13:49 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 07 Dec 2017 15:15:00 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 22 Dec 2017 15:08:45 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Fri, 22 Dec 2017 15:08:49 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 22 Dec 2017 15:08:50 GMT
EXPOSE 8983/tcp
# Fri, 22 Dec 2017 15:08:51 GMT
WORKDIR /opt/solr
# Fri, 22 Dec 2017 15:08:52 GMT
USER [solr]
# Fri, 22 Dec 2017 15:08:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:08:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80117bba7af560896439d844c0f3998317292d41faacc0a842ce3dd7e14605`  
		Last Modified: Tue, 05 Dec 2017 11:51:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4291fffa1792d7db51ab729de6c46cbdbc6751a1277c001157aa94b9b2323`  
		Last Modified: Tue, 05 Dec 2017 11:53:56 GMT  
		Size: 53.8 MB (53750322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4205931caf7037dfe997877cf9950b8820ce4d48c582b3cb116c84a90b64a7b9`  
		Last Modified: Thu, 07 Dec 2017 15:16:29 GMT  
		Size: 7.2 MB (7177946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b957020e4b02518ba3faced718bf9ba4b72ac779c567421e76c0c350cefad8f1`  
		Last Modified: Thu, 07 Dec 2017 15:16:26 GMT  
		Size: 588.5 KB (588550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc01d3c6a3e20c1145e9f705c1e1971a2abcceabb66d3c20e6bcb1a9cb307f4`  
		Last Modified: Thu, 07 Dec 2017 15:23:30 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956e2faaad7f3b8e141c016a695f9413dcf2efb609a09718fd81fae7cff0a6d1`  
		Last Modified: Thu, 07 Dec 2017 15:23:30 GMT  
		Size: 10.8 KB (10850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35553ea0d8b4fa34a2d832eee048321722980d5b5261a2b9c23a412631ffc8e`  
		Last Modified: Thu, 07 Dec 2017 15:23:43 GMT  
		Size: 131.9 MB (131920309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df5c20aef4901df17115f19f54d8a5ef53542b8fa11868328a88ed84f0dc0a6`  
		Last Modified: Fri, 22 Dec 2017 15:16:21 GMT  
		Size: 4.2 KB (4162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f003eb8014e8c539afd5790147d15811f5c15fa99044bf3a7f3cc9352878c2cf`  
		Last Modified: Fri, 22 Dec 2017 15:16:19 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-alpine` - linux; s390x

```console
$ docker pull solr@sha256:465f0b5b66129c0a133f37337754fd3521d76521e4347f18cfc1c3c7fee9cd1a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195658214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd4de76d63fe4afdf1d6f37c8301db1da2fa9c3a3609d47e2651411b935a903b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 17:54:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 17:54:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 17:57:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 17:57:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 17:57:32 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 17:57:37 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 17:57:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Dec 2017 07:11:49 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Dec 2017 07:11:49 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Dec 2017 07:11:58 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 07 Dec 2017 07:12:01 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Dec 2017 07:16:27 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Dec 2017 07:16:27 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 07 Dec 2017 07:16:30 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 07 Dec 2017 07:16:41 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sun, 07 Jan 2018 09:36:40 GMT
COPY dir:5fd6e310972599026a88a8cba1cf0f73243ea6fab4a0bb77f6483c1dddc64d6e in /opt/docker-solr/scripts 
# Sun, 07 Jan 2018 09:36:40 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sun, 07 Jan 2018 09:36:40 GMT
EXPOSE 8983/tcp
# Sun, 07 Jan 2018 09:36:40 GMT
WORKDIR /opt/solr
# Sun, 07 Jan 2018 09:36:40 GMT
USER [solr]
# Sun, 07 Jan 2018 09:36:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 09:36:41 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320238e3e22d841c8337cb6f2d8b95f9c1ab000f2845efcd5bd977690210f427`  
		Last Modified: Tue, 05 Dec 2017 17:58:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab7f5e8ff77bb713c36a7527b26ce321688ffc83c72a16c9488eef4c2a39327`  
		Last Modified: Tue, 05 Dec 2017 18:00:02 GMT  
		Size: 53.3 MB (53303048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79be0db272f186ba0400ba768c065df117eda8d1001c35f9b61c9a6cfcbb5678`  
		Last Modified: Thu, 07 Dec 2017 07:17:35 GMT  
		Size: 7.6 MB (7624139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ed7e2bfd5927cbac176898fb8699d1b210d56d51bc78bdd6e3d65094922c7b`  
		Last Modified: Thu, 07 Dec 2017 07:17:33 GMT  
		Size: 604.8 KB (604773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86b85ddbdf951d04fa5243977429cecaf664996b51474f43b407f31926df6d8`  
		Last Modified: Thu, 07 Dec 2017 07:23:18 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550017e0857c665629ca6a18b1b23607b1fd0a5e719b169621cec7ed5a68bbd0`  
		Last Modified: Thu, 07 Dec 2017 07:23:17 GMT  
		Size: 10.8 KB (10819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe340143dc3e28d611f96b6a915ea22acd38b06a06579f624add2912fd36259`  
		Last Modified: Thu, 07 Dec 2017 07:23:27 GMT  
		Size: 131.9 MB (131920280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12660b07b8b7651c8cf8a784e2f2be2753a2776050063057475b1661a059a5b4`  
		Last Modified: Sun, 07 Jan 2018 09:44:19 GMT  
		Size: 4.1 KB (4130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e91fa2c143d79aee61316f4655d438b1dd016b81c0227b8ee869e65f8e2e7`  
		Last Modified: Sun, 07 Jan 2018 09:44:19 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
