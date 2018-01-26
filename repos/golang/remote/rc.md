## `golang:rc`

```console
$ docker pull golang@sha256:086d7b9d1839e8cae8b64109d9fbe4ccb20fd1d79f106b04f110a8ac3f38e45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	windows version 10.0.14393.2007; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:d91693da34090d9d14224a4e5ed6eb27a0900f05c01f32b3b60f6b88249883c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (288041448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e97307ee2ff7a7a554278b38b7712e6816d6054545373c587f4b8ac4603567`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:21:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 01:59:55 GMT
ENV GOLANG_VERSION=1.10rc1
# Fri, 26 Jan 2018 02:00:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='c10d3cc7760bf3799037bd39027bbffdc568aea21d6fe60fe833373289c7b7c6' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='2c1ed86e3cbf9d9866333b73cee96a0cd0b8c73654f4705088caa64eb5a624d4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a749faf38e80025b832dae250442ddc86d5bc353d752c781ea632e904922ff1' ;; 		i386) goRelArch='linux-386'; goRelSha256='03a98cc12b65dde36ed9561fa23530bcf5fa7ed85596aa74f2380f686fcbe928' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f482c7d6193c23d36657f8f026a74222c82eeb443331c38bbf3493d971144988' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a20d4077c0bb1d58710e48478ba0042950cf282f6ef1593aea4ac6e66265d22c' ;; 		*) goRelArch='src'; goRelSha256='743e97c856067f12fb39f1323d6e9956fb5f3339f0691d8749ecea553548ab03'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 26 Jan 2018 02:00:09 GMT
ENV GOPATH=/go
# Fri, 26 Jan 2018 02:00:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 02:00:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 26 Jan 2018 02:00:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50316693559041b3c6895bce352b10c302f31c074495671a820b689d2ce12baa`  
		Last Modified: Tue, 12 Dec 2017 08:04:27 GMT  
		Size: 50.0 MB (50022829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe52c89597fa1aac51f8ed83c481d0d5b269ab0f59a955168d69e9284ca46a8`  
		Last Modified: Tue, 12 Dec 2017 11:30:45 GMT  
		Size: 57.5 MB (57499152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bef1c9ad4d19d79e6ba6c7dfcc7fc69eee1f32e0f5ad3282989acca155965a`  
		Last Modified: Fri, 26 Jan 2018 02:15:40 GMT  
		Size: 120.0 MB (119954939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48765d3ca254c479beb8eb8920f581e83b0681bffcb5aa4a1e1a7bd46af7cf1b`  
		Last Modified: Fri, 26 Jan 2018 02:15:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; ppc64le

```console
$ docker pull golang@sha256:2fc5562c400b6872d310ca3ef6554948829e81ce8a3bc2ae33ff032156f6f0b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264057827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cdbc478a10a331cc6114b359d22e65612aa735cbc6de47f83e11b339f232e5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:32:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:33:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 03:37:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 09:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 05:08:34 GMT
ENV GOLANG_VERSION=1.10rc1
# Fri, 26 Jan 2018 05:09:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='c10d3cc7760bf3799037bd39027bbffdc568aea21d6fe60fe833373289c7b7c6' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='2c1ed86e3cbf9d9866333b73cee96a0cd0b8c73654f4705088caa64eb5a624d4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='3a749faf38e80025b832dae250442ddc86d5bc353d752c781ea632e904922ff1' ;; 		i386) goRelArch='linux-386'; goRelSha256='03a98cc12b65dde36ed9561fa23530bcf5fa7ed85596aa74f2380f686fcbe928' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f482c7d6193c23d36657f8f026a74222c82eeb443331c38bbf3493d971144988' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a20d4077c0bb1d58710e48478ba0042950cf282f6ef1593aea4ac6e66265d22c' ;; 		*) goRelArch='src'; goRelSha256='743e97c856067f12fb39f1323d6e9956fb5f3339f0691d8749ecea553548ab03'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 26 Jan 2018 05:09:08 GMT
ENV GOPATH=/go
# Fri, 26 Jan 2018 05:09:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 05:09:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 26 Jan 2018 05:09:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378a191e90f6d5b2a6f6d9850e8c81ea101737db5c068add4c764f2be3aced2`  
		Last Modified: Tue, 12 Dec 2017 03:55:34 GMT  
		Size: 10.3 MB (10339336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26b1cf177268cff23511322d11143dadc3f4326448d8aceedad9b759e57fb13`  
		Last Modified: Tue, 12 Dec 2017 03:55:32 GMT  
		Size: 4.3 MB (4289552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90080349eff61f95b053aa65da87029e4c36cbccd1ac1d78002110d52ab56ba7`  
		Last Modified: Tue, 12 Dec 2017 03:56:07 GMT  
		Size: 50.0 MB (50029025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe942a3efef599ac5039d70fdad2f4d596c935116adeebd2024072d4b5f10c0`  
		Last Modified: Tue, 12 Dec 2017 09:34:02 GMT  
		Size: 52.7 MB (52710372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aebc2795423bcabc74937e17c59410e1d77a348aa003680e657d094158b8e5d`  
		Last Modified: Fri, 26 Jan 2018 05:12:40 GMT  
		Size: 101.3 MB (101307032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f96ad63c2248a118944e6a4bf13a04f926add7f86e655d6fe2eefc23095b9`  
		Last Modified: Fri, 26 Jan 2018 05:12:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.14393.2007; amd64

```console
$ docker pull golang@sha256:e43cceb307b37bbf5cf57e4c8608876e3a372759df58563ea697710051e96d3d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5540727968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269cc076669c6f38fc5195980d94de7c496d4874f391f965427e6936b0cd604f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:02:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 18:01:18 GMT
ENV GIT_VERSION=2.11.1
# Mon, 08 Jan 2018 18:01:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Mon, 08 Jan 2018 18:01:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Mon, 08 Jan 2018 18:01:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Mon, 08 Jan 2018 18:03:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 18:03:58 GMT
ENV GOPATH=C:\gopath
# Mon, 08 Jan 2018 18:05:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 26 Jan 2018 03:14:09 GMT
ENV GOLANG_VERSION=1.10rc1
# Fri, 26 Jan 2018 03:28:39 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f3730ee5ff779a2a0862e858b94b40423c613e91142be99e05e47953343326a8'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 26 Jan 2018 03:28:41 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c86d0434e36d69287bea586f96045245d5ee4f04e4e2a5edf6881dbbfdc628c3`  
		Last Modified: Fri, 05 Jan 2018 10:13:30 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb835a765d1adacc5e96f2684f32ef89614ccc4d5a99be32392b6b52c76ef46`  
		Last Modified: Mon, 08 Jan 2018 19:48:22 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f729550b3a7040ef71bf29aa3501c84f3dfb64ad061c41bc8d4a677a35cfdf`  
		Last Modified: Mon, 08 Jan 2018 19:48:21 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5421de1bee383e26bb9d4cab7e7f0991622bf7e7047bf93b7bebb8d8ac3354`  
		Last Modified: Mon, 08 Jan 2018 19:48:19 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680789f514fca4d05e20d2d49441bcb41dca2764a32a068b031fb7c851953342`  
		Last Modified: Mon, 08 Jan 2018 19:48:20 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7cac87c32591a7d201306b0f43d796071ecc6c2b11da97fa7b0a4a98203df9`  
		Last Modified: Mon, 08 Jan 2018 19:48:35 GMT  
		Size: 29.3 MB (29339650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d4b636d0574daf16ae2a105d7b8b006786307281e608588ca203c00384996`  
		Last Modified: Mon, 08 Jan 2018 19:48:16 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d13313d01fe0e86343cdb272e265f9c10515bc522bdd3d8cb816c4b212f8a4`  
		Last Modified: Mon, 08 Jan 2018 19:48:18 GMT  
		Size: 4.9 MB (4874878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2e39d659913a4f63ac896fbb819db9f2ec7413b227e12d8a20176d54436a4b`  
		Last Modified: Fri, 26 Jan 2018 04:00:11 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ba8a614421e5e3f9fdcbb7a0c814369afc25b0b9b69e8fcf382c125c89480d`  
		Last Modified: Fri, 26 Jan 2018 04:01:36 GMT  
		Size: 132.5 MB (132498634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b98e86782cd3d4a1e3e2c1ab76ba8c1d971195b3da184ed5b2e45fa3edc9c5d`  
		Last Modified: Fri, 26 Jan 2018 04:00:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
