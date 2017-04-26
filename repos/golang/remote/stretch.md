## `golang:stretch`

```console
$ docker pull golang@sha256:41c3c6d656f8dd0a92b08e00d2560806f3240d886deb306d79899024b4c56270
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255611184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2463f7e100294b0420b2bd59ab1638079df1f508fd3288d0fc7a234705506f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:28 GMT
ENV GOLANG_VERSION=1.8.1
# Wed, 26 Apr 2017 20:00:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b7b47572a2676449716865a66901090c057f6f1d8dfb1e19528fcd0372e5ce74' ;; 		i386) goRelArch='linux-386'; goRelSha256='cb3f4527112075a8b045d708f793aeee2709d2f5ddd320973a1413db06fddb50' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0a59f4034a27fc51431989da520fd244d5261f364888134cab737e5bc2158cb2' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e8a8326913640409028ef95c2107773f989b1b2a6e11ceb463c77c42887381da' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994' ;; 		*) goRelArch='src'; goRelSha256='33daf4c03f86120fdfdc66bddf6bfff4661c7ca11c5da473e537f4d69b470e57'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Apr 2017 20:00:18 GMT
ENV GOPATH=/go
# Wed, 26 Apr 2017 20:00:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:00:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Apr 2017 20:00:22 GMT
WORKDIR /go
# Wed, 26 Apr 2017 20:00:23 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b2b4cb1112aa4b1f554654fab8920cdc99e01f8dd292fc323d727ae9a5f4ea`  
		Last Modified: Tue, 25 Apr 2017 17:57:41 GMT  
		Size: 57.2 MB (57185523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587820d67c72d4af98d0f16d4e1773655d3071b6550bb6ea6723b05d578da5bc`  
		Last Modified: Wed, 26 Apr 2017 20:12:52 GMT  
		Size: 91.3 MB (91278481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955b5875dad40e91e6fd2c2d3d2dcc6498f9971ef8e3cd606c07fc773e2fec1`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fddf93e112ad87ca7edf18df7604cc2aca0d4a2e6db1cd08daff00b4d628a32`  
		Last Modified: Wed, 26 Apr 2017 20:12:18 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
