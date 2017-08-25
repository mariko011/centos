## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:2a9a8533056f8e92188a5698d043ec982128292b7e3e666cebd3a28eec9e3e9a
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.2 MB (151212803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14289d0134e3fde9f04911431b221f7527fba626b517a0280dc0b2562e571e6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:07:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:07:59 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:08:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:08:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:08:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Aug 2017 22:24:44 GMT
ENV JAVA_VERSION=7u151
# Fri, 25 Aug 2017 22:24:44 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 25 Aug 2017 22:25:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a5213ead46fbbca985d1a667fe69703f950eac400d2aee63cb00444da6f12a`  
		Last Modified: Mon, 24 Jul 2017 18:20:50 GMT  
		Size: 568.6 KB (568589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de34ca31efd0c459d0140521bcd4aa29d5a82cdc10d57efaaaefeb04cab42a0`  
		Last Modified: Mon, 24 Jul 2017 18:20:49 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b22e57d98bb51e4596beffee00f8c04708d447262e5108f5964234e3396d196`  
		Last Modified: Mon, 24 Jul 2017 18:20:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dd63e3229d33cc6eb17a8f0764db054c40335a60b872687d5e6f7668075ccc`  
		Last Modified: Fri, 25 Aug 2017 22:30:32 GMT  
		Size: 78.8 MB (78774890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
