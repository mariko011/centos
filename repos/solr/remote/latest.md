## `solr:latest`

```console
$ docker pull solr@sha256:af7722ad969ecdc489eb7bb57f5b0de74f12b4b7babdfdf6b234477b14c69adf
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262820168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68402affbd7533f21d11f04cefaeb82619b1ad5408151b0a29ce8aa47dc1e8fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:19:54 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 27 Jul 2017 20:19:55 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 27 Jul 2017 20:20:03 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:20:03 GMT
ENV SOLR_USER=solr
# Thu, 27 Jul 2017 20:20:03 GMT
ENV SOLR_UID=8983
# Thu, 27 Jul 2017 20:20:04 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 27 Jul 2017 20:21:49 GMT
ENV SOLR_VERSION=6.6.0
# Thu, 27 Jul 2017 20:21:50 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Thu, 27 Jul 2017 20:21:50 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Thu, 27 Jul 2017 20:21:50 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Thu, 27 Jul 2017 20:21:53 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 27 Jul 2017 20:22:08 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 27 Jul 2017 20:22:08 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 27 Jul 2017 20:22:09 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 27 Jul 2017 20:22:09 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:22:09 GMT
EXPOSE 8983/tcp
# Thu, 27 Jul 2017 20:22:10 GMT
WORKDIR /opt/solr
# Thu, 27 Jul 2017 20:22:10 GMT
USER [solr]
# Thu, 27 Jul 2017 20:22:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 20:22:10 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07983cba3dd92c11aa44f6daf71bd8493cdce86977ea737f74d1f3badb17933c`  
		Last Modified: Thu, 27 Jul 2017 20:22:19 GMT  
		Size: 1.1 MB (1125165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05fc58399f2463be0cdb9c2335e2d1a60c53ceda2b8304846992eda97c80aef0`  
		Last Modified: Thu, 27 Jul 2017 20:22:19 GMT  
		Size: 4.3 KB (4291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6554d7d122807268c44caf72e024961c5af1446d205e6b830856ae992bc735`  
		Last Modified: Thu, 27 Jul 2017 20:25:27 GMT  
		Size: 7.1 KB (7148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2232bc319c9a8ddfb84c7f2d5edd9fe30f4f2093b77513fca2a15eedc06a3f2`  
		Last Modified: Thu, 27 Jul 2017 20:25:42 GMT  
		Size: 145.5 MB (145509572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fe7147e1a431894719c43a6386880db1d880cb1551a34dde5da275cd89d744`  
		Last Modified: Thu, 27 Jul 2017 20:25:27 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a67aba78bc9fba2c39ea4fc2dd5518e4c9c19269498d0cf6b5700014275a8`  
		Last Modified: Thu, 27 Jul 2017 20:25:27 GMT  
		Size: 3.0 KB (3021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
