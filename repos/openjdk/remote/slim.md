## `openjdk:slim`

```console
$ docker pull openjdk@sha256:7741eb0a28edabbc03d39cd2d90c2c5c451b45671c6dc27e7bb556557176ac0d
```

-	Platforms:
	-	linux; amd64

### `openjdk:slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90913143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa64c09df92fa972e77630f2305704050fa385f31ce5bd396d997def88156f6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 21 Jul 2017 22:11:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 22:11:12 GMT
ENV LANG=C.UTF-8
# Fri, 21 Jul 2017 22:11:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Jul 2017 22:11:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 21 Jul 2017 22:11:30 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 21 Jul 2017 22:11:31 GMT
ENV JAVA_VERSION=8u131
# Fri, 21 Jul 2017 22:11:34 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Fri, 21 Jul 2017 22:11:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5e2c7f785b895315b978a93ea7652a8dd7a5d0f818a09189d0bad2f9c38239`  
		Last Modified: Fri, 21 Jul 2017 22:30:36 GMT  
		Size: 266.5 KB (266490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b0a1f886519c1047044932113e8c131319c42863b520df49f9dafe239f48e0`  
		Last Modified: Fri, 21 Jul 2017 22:30:35 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e420ec45c8fcf38b8000d60732ee31d48a71ac9f46ccad6f3aad990bf9c4de90`  
		Last Modified: Fri, 21 Jul 2017 22:30:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c1d5975a5ac629e67cfa43acf1ccafb1a7352efed83d2f5796b39dbbc930d`  
		Last Modified: Fri, 21 Jul 2017 22:30:53 GMT  
		Size: 67.9 MB (67873072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24346a8dda3c88df4804b5ed8777d6aca12cddc6585b6dd07ada63c29280994`  
		Last Modified: Fri, 21 Jul 2017 22:30:36 GMT  
		Size: 272.0 KB (272027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
