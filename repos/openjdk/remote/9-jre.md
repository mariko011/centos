## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:748d449d751ed7b7ab57039415f81985ce66b62c3868e8ba1a5c96f8b8a37fc9
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212953689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bbde932fbd06f85d645d4417a720d1800dac1ffdcd54c17f6745082a168050`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:28:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:28:39 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:28:40 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:29:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1389576b7193915c15c29271f9e614a8da310670b515796a56b4dc5f73a57f`  
		Last Modified: Wed, 14 Jun 2017 11:42:02 GMT  
		Size: 623.5 KB (623548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9c827a79040e1264c21d4f01788313bc596b05f40466f50754ed64a74a3373`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6039bebe6401b48d530b498bf1d9e24485236ec158062c3f1c5ddb911e00825`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d54515e9bf8bcf2a1f5a6b07a9cc3cc87465fd0abbfb6980654e4e0c362aa9`  
		Last Modified: Wed, 14 Jun 2017 11:41:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2555bf9eff93f9c80bd6bc7c571ada990a825c7dd82598a6452c31b9b002ba`  
		Last Modified: Wed, 14 Jun 2017 11:42:18 GMT  
		Size: 155.8 MB (155783370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
