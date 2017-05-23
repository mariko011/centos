## `golang:1-stretch`

```console
$ docker pull golang@sha256:d9c04d8878d9e086dbd18ae460300ae158ee8dcb393e1b62802bc809c956b10a
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254315972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b8782ecaf24e5dcd19c63e83759585e25dd83adb75b113f6821ab7c1320bc9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 May 2017 22:21:10 GMT
ENV GOLANG_VERSION=1.8.2
# Tue, 23 May 2017 22:21:28 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='031035eab11903237e02007fc69c085bd4769ff2e2aa5e9af427ddaed3d37e2b' ;; 		i386) goRelArch='linux-386'; goRelSha256='00bc94606610bf25c660d6106fa8e61cca6a276c046f3ceb9091053e99ceebe9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='f091afb86501191270e14a653a056e8e7635e18a72e43cfbd13093b2482ca7a8' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='a1942b2833e7d2685d7dbb7ac81c66125c351f24c7f006e8ae4a4283905257d1' ;; 		amd64) goRelArch='linux-amd64'; goRelSha256='5477d6c9a4f96fa120847fafa88319d7b56b5d5068e41c3587eebe248b939be7' ;; 		*) goRelArch='src'; goRelSha256='e10401faaa8ae29dbe87349c1814b07b1903d453f822215d7b274bbc335cbf79'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 23 May 2017 22:21:29 GMT
ENV GOPATH=/go
# Tue, 23 May 2017 22:21:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 May 2017 22:21:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 23 May 2017 22:21:32 GMT
WORKDIR /go
# Tue, 23 May 2017 22:21:33 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c70ba758df82f559b006465f9f8df0eaaef21c60458c3ce0765940ebc7e589`  
		Last Modified: Sat, 13 May 2017 06:11:50 GMT  
		Size: 57.2 MB (57176613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbc4f680882c6f07f0c6f738d6d7433ffa5518b14e9bf4519a7d166e4b9e403`  
		Last Modified: Tue, 23 May 2017 22:33:22 GMT  
		Size: 90.0 MB (89990868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbda7e486a9abd205ce248e2490f348e12639550aec738884967436fee371da`  
		Last Modified: Tue, 23 May 2017 22:33:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2ae379b4af9dabdcf6ecb24181e512a18a0a5268918281398490e34b5e5401`  
		Last Modified: Tue, 23 May 2017 22:33:01 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
