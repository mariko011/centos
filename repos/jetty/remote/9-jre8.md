## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:0f3ddbd9a614343eaecf95e9939cb18d28a5f80c90830e8187c3d1b502643a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:7196fa311eeae70ec81bc43e36857c702d6d8f1f1b95e1f2cbdf23bbfe5f9ef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.0 MB (236006095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5969b088c21697674299307349aaf5860f7ed5b19ba9628f966660f1993888`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 05:30:54 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 13 Sep 2017 05:30:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 13 Sep 2017 05:30:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 05:30:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 13 Sep 2017 05:30:55 GMT
WORKDIR /usr/local/jetty
# Wed, 13 Sep 2017 05:30:56 GMT
ENV JETTY_VERSION=9.4.6.v20170531
# Wed, 13 Sep 2017 05:30:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.6.v20170531/jetty-home-9.4.6.v20170531.tar.gz
# Wed, 13 Sep 2017 05:30:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 13 Sep 2017 05:31:13 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 13 Sep 2017 05:31:13 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 13 Sep 2017 05:31:14 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 13 Sep 2017 05:31:14 GMT
WORKDIR /var/lib/jetty
# Wed, 13 Sep 2017 05:31:21 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 13 Sep 2017 05:31:21 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 13 Sep 2017 05:31:22 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 13 Sep 2017 05:31:22 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 13 Sep 2017 05:31:22 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 05:31:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 05:31:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22ef7c3b44985b09f104fecf4686a1bec15dc94b3f7239e4172eede52510a9a`  
		Last Modified: Wed, 13 Sep 2017 05:33:12 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcd631d33845e21921af259d991aa86567eb9a261277e2f0c7cf67e2497deb0`  
		Last Modified: Wed, 13 Sep 2017 05:33:12 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9a89799fe572026dd8666d23bc9a812bc1e6e333469fc98f2d88b37e641dcc`  
		Last Modified: Wed, 13 Sep 2017 05:33:11 GMT  
		Size: 8.1 MB (8065318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe972ba853a72618b93d5671942b1d5c0181266240c5e6151dc041cfb94d1729`  
		Last Modified: Wed, 13 Sep 2017 05:33:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8e94898c315398ba7ef7d7fb1c20c09de8e180983a0a8926cbe18844b611a`  
		Last Modified: Wed, 13 Sep 2017 05:33:10 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3439a989e93987a4df9532074c235d0b775d8ac84d561396718b6a8005667fa4`  
		Last Modified: Wed, 13 Sep 2017 05:33:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe5698ccc70c2a072766b039edf99a11af5c2fb48bd72bc11574c140f67f9de`  
		Last Modified: Wed, 13 Sep 2017 05:33:10 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
