## `golang:onbuild`

```console
$ docker pull golang@sha256:c0ec19d49014d604e4f62266afd490016b11ceec103f0b7ef44875801ef93f36
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265778272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d82e356477f55c857e52b672d244e4d72f065c81cdd5010efdad6eb26ea5088`
-	Default Command: `["go-wrapper","run"]`

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
# Wed, 26 Jul 2017 05:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 05:14:02 GMT
ENV GOLANG_VERSION=1.8.3
# Wed, 26 Jul 2017 05:14:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c30a3e24736ca776fc6314e5092fb8584bd3a4a2c2fa7307ae779ba2735e668' ;; 		i386) goRelArch='linux-386'; goRelSha256='ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e5fb00adfc7291e657f1f3d31c09e74890b5328e6f991a3f395ca72a8c4dc0b3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e2ec3e7c293701b57ca1f32b37977ac9968f57b3df034f2cc2d531e80671e6c8' ;; 		*) goRelArch='src'; goRelSha256='5f5dea2447e7dcfdc50fa6b94c512e58bfba5673c039259fd843f68829d99fa6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 26 Jul 2017 05:14:10 GMT
ENV GOPATH=/go
# Wed, 26 Jul 2017 05:14:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:14:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 26 Jul 2017 05:14:11 GMT
WORKDIR /go
# Wed, 26 Jul 2017 05:14:12 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 26 Jul 2017 05:14:16 GMT
RUN mkdir -p /go/src/app
# Wed, 26 Jul 2017 05:14:16 GMT
WORKDIR /go/src/app
# Wed, 26 Jul 2017 05:14:16 GMT
CMD ["go-wrapper" "run"]
# Wed, 26 Jul 2017 05:14:17 GMT
ONBUILD COPY . /go/src/app
# Wed, 26 Jul 2017 05:14:17 GMT
ONBUILD RUN go-wrapper download
# Wed, 26 Jul 2017 05:14:17 GMT
ONBUILD RUN go-wrapper install
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
	-	`sha256:25d9840c55bc35c89681af78d0ba3814cf499f3370465778397f8497189bde25`  
		Last Modified: Wed, 26 Jul 2017 05:17:42 GMT  
		Size: 60.6 MB (60642742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d792ec7d64a3f09ed0d71a18d6282de0d9038953b016a1481b3351d05daa6789`  
		Last Modified: Wed, 26 Jul 2017 05:17:47 GMT  
		Size: 90.0 MB (90038836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be556a93c22ed04da635b66e3bec85a3a165dc1e5b403041017f2fb3bf59a252`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5fce283a1e6ca320e5bd4c1adcf2c9dd55de000c096c35d44074ac22dd694d`  
		Last Modified: Wed, 26 Jul 2017 05:17:30 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0621865a0c2ea73859be739de365560aa6753804e27d83e2043dc2a1d2d48d74`  
		Last Modified: Wed, 26 Jul 2017 05:19:21 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
