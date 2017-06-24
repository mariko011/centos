## `golang:rc`

```console
$ docker pull golang@sha256:4557e3866afbaa642c4f0729dac1a947135c4d14d241abfc4b676e2f1d150cec
```

-	Platforms:
	-	linux; amd64

### `golang:rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259337857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad2731a86aedca352e4992cd4eb30a6e459750a6a36515e2e71726358ba4842f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 22:35:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 22:36:06 GMT
ENV GOLANG_VERSION=1.9beta1
# Thu, 22 Jun 2017 22:36:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='85719a2c704ad1352052e185c760d7c65b9d8a18b491287a7e5f6775ccc27d3b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='26eb517a72bd0e9b1bc7f24ea52ded1991c72e09cd876c9747641c193c734cdc' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6877ab02d9133a51925861af2db76faabe33146ed87225450fd56c6535088ab' ;; 		i386) goRelArch='linux-386'; goRelSha256='af9fbef65761c03ee101eb23e1d1a673734c82b50546fed95710a6b04fe52995' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8708e49428d493d07ce71f09b31b720ff8c8fe469698cd5e9f44f088c1ef75da' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c16f86dd69bf282ca4bba60a6449130c5c0d988917d0c1f9d62a5e2fd5191a83' ;; 		*) goRelArch='src'; goRelSha256='e42dbd2071aadb28a4d293225b04b6b4215a35a7f04417a0e47ffa38f81d642d'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 22 Jun 2017 22:36:34 GMT
ENV GOPATH=/go
# Thu, 22 Jun 2017 22:36:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Jun 2017 22:36:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 22 Jun 2017 22:37:01 GMT
WORKDIR /go
# Thu, 22 Jun 2017 22:37:03 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d9add01f107cb501fcbae0bbfbff3c879dcf5910a9066077b2cc755c98cc4c`  
		Last Modified: Wed, 21 Jun 2017 00:50:55 GMT  
		Size: 50.9 MB (50943337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d48ec3144d4868469d162e54da451f02edfe6a8b3272c33a61a35813b02482`  
		Last Modified: Sat, 24 Jun 2017 09:30:58 GMT  
		Size: 57.2 MB (57222013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b733f53008b7e08ce0cf04a513cdd122d76cec087ed757e89c6a0a75d31f4e`  
		Last Modified: Sat, 24 Jun 2017 09:31:09 GMT  
		Size: 94.9 MB (94922654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad073116e77afa90bbb55cd7b7d0c61e801a69a304936dfd5151df6419b186b`  
		Last Modified: Sat, 24 Jun 2017 09:30:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1b7031c183db35a848170f71a7284759499b3eacb9320eacabf7a7e66190be`  
		Last Modified: Sat, 24 Jun 2017 09:30:42 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
