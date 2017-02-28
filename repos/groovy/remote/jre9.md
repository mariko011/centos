## `groovy:jre9`

```console
$ docker pull groovy@sha256:bb6934dcb6d9cf3a0ca56cf61dc35f5162c15e5460decd6293b6526f09ec4986
```

-	Platforms:
	-	linux; amd64

### `groovy:jre9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257295234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229958a08b2fd4120a3d85a554f65e2c241a845489035fe98a65fb97684b8a31`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:26:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:26:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:26:30 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:26:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:26:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 28 Feb 2017 15:26:31 GMT
ENV JAVA_VERSION=9~b158
# Tue, 28 Feb 2017 15:26:31 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Tue, 28 Feb 2017 15:26:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 18:29:14 GMT
CMD ["groovysh"]
# Tue, 28 Feb 2017 18:29:15 GMT
WORKDIR /opt
# Tue, 28 Feb 2017 18:29:15 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 28 Feb 2017 18:29:15 GMT
ENV PATH=/opt/groovy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 18:29:16 GMT
ENV GROOVY_VERSION=2.4.8
# Tue, 28 Feb 2017 18:29:31 GMT
RUN set -eu 	&& echo "Downloading Groovy" 	&& wget -nv -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	&& rm -r /var/lib/apt/lists/* 		&& echo "Checking download signature" 	&& wget -nv -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -rf "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove -y --purge 		 dirmngr 		 gnupg 	&& apt-get autoremove -y --purge 		&& groovy --version
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e0553b285628a266ebb4d38e7623c65244465467ff8604f7f64366042e3039`  
		Last Modified: Tue, 28 Feb 2017 22:12:11 GMT  
		Size: 627.4 KB (627359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cce74783347f4d67fe262681d92e193267109a2efe84e770286dc7fbaba966`  
		Last Modified: Tue, 28 Feb 2017 22:12:09 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8a4ee143079447c017ac3a2dfecc28661c48d79827a87d5051d34be06d6dba`  
		Last Modified: Tue, 28 Feb 2017 22:12:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff117d94ad6065f5f1edc1304103a8b829258c00a9e44e7c34d7fe795afbadc6`  
		Last Modified: Tue, 28 Feb 2017 22:12:47 GMT  
		Size: 154.8 MB (154775867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb801474f3a92edaa02ed762e9152bb4cac0dbc0d2d8b03e0d6e08359a10d1`  
		Last Modified: Tue, 28 Feb 2017 22:12:16 GMT  
		Size: 36.5 MB (36493890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
