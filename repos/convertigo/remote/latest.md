## `convertigo:latest`

```console
$ docker pull convertigo@sha256:a4c0ded763db68d6fc7b7cf7225b0c7e003a2fc3dc7d67e6016013c4dbe6170c
```

-	Platforms:
	-	linux; amd64

### `convertigo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206049520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165e6cb4f407c70ea865055b9db95a53c3767ebedbe1790716c48edccd1cda02`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

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
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 19:53:17 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 24 Jul 2017 19:53:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 24 Jul 2017 19:53:18 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 24 Jul 2017 19:53:19 GMT
WORKDIR /usr/local/tomcat
# Mon, 24 Jul 2017 19:53:23 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:53:31 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 24 Jul 2017 19:53:32 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 24 Jul 2017 19:53:32 GMT
ENV TOMCAT_MAJOR=7
# Mon, 24 Jul 2017 19:53:33 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 24 Jul 2017 19:53:33 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 24 Jul 2017 19:53:33 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 24 Jul 2017 19:53:42 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 24 Jul 2017 19:53:42 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Mon, 24 Jul 2017 19:53:42 GMT
ENV CONVERTIGO_REVISION=43404
# Mon, 24 Jul 2017 19:53:43 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux64.war
# Mon, 24 Jul 2017 19:53:43 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 24 Jul 2017 19:54:02 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 24 Jul 2017 19:54:03 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Mon, 24 Jul 2017 19:54:03 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Mon, 24 Jul 2017 19:54:03 GMT
WORKDIR /workspace
# Mon, 24 Jul 2017 19:54:04 GMT
VOLUME [/workspace]
# Mon, 24 Jul 2017 19:54:04 GMT
EXPOSE 28080/tcp
# Mon, 24 Jul 2017 19:54:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 19:54:05 GMT
CMD ["convertigo"]
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
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac562320950b2b87558ab83d15c5193ccfe86ae1e3831828003076c278dc8c3a`  
		Last Modified: Mon, 24 Jul 2017 19:54:12 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fbed10b82d7ec709ed947580103010f7a2a39fded1e64d03e5c2e49fcd07c4`  
		Last Modified: Mon, 24 Jul 2017 19:54:12 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9281fa36e8d82523cdfed20526b03eba6bc7bb186e5c576e192c4ab047419e5a`  
		Last Modified: Mon, 24 Jul 2017 19:54:10 GMT  
		Size: 826.1 KB (826126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd48a8004e45fd50164676b8f2394c46652af5c4c3ddf954e3b6ba544fa2fc9`  
		Last Modified: Mon, 24 Jul 2017 19:54:10 GMT  
		Size: 4.3 KB (4261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06753921e39e650da881a7549e77b8e0bf21a0ff7b8c0e6aa261ee95685e5e10`  
		Last Modified: Mon, 24 Jul 2017 19:54:11 GMT  
		Size: 7.5 MB (7473753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587b383d3ac066b627b370d3beaf1df2698ec59c617744b7649b015f48863356`  
		Last Modified: Mon, 24 Jul 2017 19:54:17 GMT  
		Size: 81.8 MB (81759555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3baf3433b55afea9956fd65a6c5584e1352b2bc5ca01fdb77a39d781629c0d01`  
		Last Modified: Mon, 24 Jul 2017 19:54:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6abbdfad09d200ab0bf6c4bdce114702ca4d9333373f24420f7dd6fc33628`  
		Last Modified: Mon, 24 Jul 2017 19:54:10 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
