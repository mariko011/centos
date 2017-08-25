## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:2724a7522b52d902dcf7c24bfe60075e2c7b3bbb49e9731088b3b7abf64f7e58
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244590752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c39aad19af3d678c5c570df6a43fdec2c7dfab25c017435484ee56a1ec2bc9f`
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
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:02:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:02:50 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:02:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:02:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:02:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 22:21:59 GMT
ENV JAVA_VERSION=7u151
# Fri, 25 Aug 2017 22:21:59 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 25 Aug 2017 22:23:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22647b986541ca7e9f1271c4c7afb32a46afe3a506c1edb57c5a90557ca2c126`  
		Last Modified: Mon, 24 Jul 2017 18:17:59 GMT  
		Size: 594.5 KB (594462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2645a6d2e3aed5d8305133ac9e76a646f36df197aa87db5b20c4ebb42a9147ea`  
		Last Modified: Mon, 24 Jul 2017 18:17:59 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a1ae2d5bd77173182d286cb7c3ebdb157f550fe8f569a28474c135c4f07cd9`  
		Last Modified: Mon, 24 Jul 2017 18:17:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9b032495d1b3ce8eba27340b3d9b723f110c9a3548fc1579ddf593f287af76`  
		Last Modified: Fri, 25 Aug 2017 22:28:42 GMT  
		Size: 128.9 MB (128900836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
