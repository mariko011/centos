<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0`](#julia0)
-	[`julia:0.6`](#julia06)
-	[`julia:0.6.0`](#julia060)
-	[`julia:latest`](#julialatest)

## `julia:0`

```console
$ docker pull julia@sha256:4587fd97b9a7a7592515f961d0ec4dbf2745d0653f2e9bb8d8cb1f11b8cff500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:0` - linux; amd64

```console
$ docker pull julia@sha256:71058c5f6334679b2eaee521118e64aba22ce046629829650a69623b9dc351c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126899515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c19df8b1204a80d273c36a414c0361ba75b13baa980e139e28bf6d2f7d08b8`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:58:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_VERSION=0.6.0
# Tue, 19 Sep 2017 05:58:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Tue, 19 Sep 2017 05:58:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 05:58:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea4d84d6e292f38644f499981090a7fa7427d1fec31421931c414cf739fb84`  
		Last Modified: Tue, 19 Sep 2017 05:58:23 GMT  
		Size: 6.7 MB (6727930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba0b7eb441cf314ebd9813de03b2115506086a6d10372fe70c099af9fc6261a`  
		Last Modified: Tue, 19 Sep 2017 05:58:36 GMT  
		Size: 67.6 MB (67576038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; arm variant v7

```console
$ docker pull julia@sha256:b944c7265c5be47ce381aabd3e7cbe5418d82ed35b2294a412c0717063d6069f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107889969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254238030f0263fada22d8748f72fa7f9c2bdd3b18cacf2b40d4587fe936bb6`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:07:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_VERSION=0.6.0
# Wed, 27 Sep 2017 05:08:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 27 Sep 2017 05:08:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 05:08:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95e984d321f148ff92bad936ecb948448a0732f7dd361be3315ccc3afd2bf53`  
		Last Modified: Wed, 27 Sep 2017 05:08:26 GMT  
		Size: 6.1 MB (6074780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23f05df462e2b1d9291801c26c442294ecadf9fcb38834f82f7b78eb8b1c850`  
		Last Modified: Wed, 27 Sep 2017 05:08:46 GMT  
		Size: 53.1 MB (53128645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; 386

```console
$ docker pull julia@sha256:65d567da151730351ae54a435f87690e199471b8878877d5a9fdd3dc1dac1572
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127357783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4bfe407e5ab155477c5f94b7114fa5a293c3f20563641d46c36902158824b1`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:50:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:50:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_VERSION=0.6.0
# Fri, 08 Sep 2017 14:50:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Fri, 08 Sep 2017 14:50:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:50:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be222e9674a8165a21a9229dca106919267dc9e85b0574099dc6e8078b4f6d2`  
		Last Modified: Fri, 08 Sep 2017 14:53:45 GMT  
		Size: 8.9 MB (8932971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff487d4f7e0598658abe77293388f00121e53a4adbf0b23778e6c5cfbfce99`  
		Last Modified: Fri, 08 Sep 2017 14:53:59 GMT  
		Size: 65.7 MB (65651686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6`

```console
$ docker pull julia@sha256:4587fd97b9a7a7592515f961d0ec4dbf2745d0653f2e9bb8d8cb1f11b8cff500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:0.6` - linux; amd64

```console
$ docker pull julia@sha256:71058c5f6334679b2eaee521118e64aba22ce046629829650a69623b9dc351c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126899515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c19df8b1204a80d273c36a414c0361ba75b13baa980e139e28bf6d2f7d08b8`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:58:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_VERSION=0.6.0
# Tue, 19 Sep 2017 05:58:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Tue, 19 Sep 2017 05:58:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 05:58:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea4d84d6e292f38644f499981090a7fa7427d1fec31421931c414cf739fb84`  
		Last Modified: Tue, 19 Sep 2017 05:58:23 GMT  
		Size: 6.7 MB (6727930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba0b7eb441cf314ebd9813de03b2115506086a6d10372fe70c099af9fc6261a`  
		Last Modified: Tue, 19 Sep 2017 05:58:36 GMT  
		Size: 67.6 MB (67576038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; arm variant v7

```console
$ docker pull julia@sha256:b944c7265c5be47ce381aabd3e7cbe5418d82ed35b2294a412c0717063d6069f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107889969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254238030f0263fada22d8748f72fa7f9c2bdd3b18cacf2b40d4587fe936bb6`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:07:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_VERSION=0.6.0
# Wed, 27 Sep 2017 05:08:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 27 Sep 2017 05:08:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 05:08:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95e984d321f148ff92bad936ecb948448a0732f7dd361be3315ccc3afd2bf53`  
		Last Modified: Wed, 27 Sep 2017 05:08:26 GMT  
		Size: 6.1 MB (6074780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23f05df462e2b1d9291801c26c442294ecadf9fcb38834f82f7b78eb8b1c850`  
		Last Modified: Wed, 27 Sep 2017 05:08:46 GMT  
		Size: 53.1 MB (53128645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; 386

```console
$ docker pull julia@sha256:65d567da151730351ae54a435f87690e199471b8878877d5a9fdd3dc1dac1572
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127357783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4bfe407e5ab155477c5f94b7114fa5a293c3f20563641d46c36902158824b1`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:50:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:50:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_VERSION=0.6.0
# Fri, 08 Sep 2017 14:50:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Fri, 08 Sep 2017 14:50:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:50:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be222e9674a8165a21a9229dca106919267dc9e85b0574099dc6e8078b4f6d2`  
		Last Modified: Fri, 08 Sep 2017 14:53:45 GMT  
		Size: 8.9 MB (8932971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff487d4f7e0598658abe77293388f00121e53a4adbf0b23778e6c5cfbfce99`  
		Last Modified: Fri, 08 Sep 2017 14:53:59 GMT  
		Size: 65.7 MB (65651686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.0`

```console
$ docker pull julia@sha256:4587fd97b9a7a7592515f961d0ec4dbf2745d0653f2e9bb8d8cb1f11b8cff500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:0.6.0` - linux; amd64

```console
$ docker pull julia@sha256:71058c5f6334679b2eaee521118e64aba22ce046629829650a69623b9dc351c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126899515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c19df8b1204a80d273c36a414c0361ba75b13baa980e139e28bf6d2f7d08b8`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:58:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_VERSION=0.6.0
# Tue, 19 Sep 2017 05:58:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Tue, 19 Sep 2017 05:58:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 05:58:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea4d84d6e292f38644f499981090a7fa7427d1fec31421931c414cf739fb84`  
		Last Modified: Tue, 19 Sep 2017 05:58:23 GMT  
		Size: 6.7 MB (6727930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba0b7eb441cf314ebd9813de03b2115506086a6d10372fe70c099af9fc6261a`  
		Last Modified: Tue, 19 Sep 2017 05:58:36 GMT  
		Size: 67.6 MB (67576038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.0` - linux; arm variant v7

```console
$ docker pull julia@sha256:b944c7265c5be47ce381aabd3e7cbe5418d82ed35b2294a412c0717063d6069f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107889969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254238030f0263fada22d8748f72fa7f9c2bdd3b18cacf2b40d4587fe936bb6`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:07:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_VERSION=0.6.0
# Wed, 27 Sep 2017 05:08:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 27 Sep 2017 05:08:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 05:08:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95e984d321f148ff92bad936ecb948448a0732f7dd361be3315ccc3afd2bf53`  
		Last Modified: Wed, 27 Sep 2017 05:08:26 GMT  
		Size: 6.1 MB (6074780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23f05df462e2b1d9291801c26c442294ecadf9fcb38834f82f7b78eb8b1c850`  
		Last Modified: Wed, 27 Sep 2017 05:08:46 GMT  
		Size: 53.1 MB (53128645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.0` - linux; 386

```console
$ docker pull julia@sha256:65d567da151730351ae54a435f87690e199471b8878877d5a9fdd3dc1dac1572
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127357783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4bfe407e5ab155477c5f94b7114fa5a293c3f20563641d46c36902158824b1`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:50:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:50:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_VERSION=0.6.0
# Fri, 08 Sep 2017 14:50:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Fri, 08 Sep 2017 14:50:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:50:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be222e9674a8165a21a9229dca106919267dc9e85b0574099dc6e8078b4f6d2`  
		Last Modified: Fri, 08 Sep 2017 14:53:45 GMT  
		Size: 8.9 MB (8932971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff487d4f7e0598658abe77293388f00121e53a4adbf0b23778e6c5cfbfce99`  
		Last Modified: Fri, 08 Sep 2017 14:53:59 GMT  
		Size: 65.7 MB (65651686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:4587fd97b9a7a7592515f961d0ec4dbf2745d0653f2e9bb8d8cb1f11b8cff500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:71058c5f6334679b2eaee521118e64aba22ce046629829650a69623b9dc351c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126899515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c19df8b1204a80d273c36a414c0361ba75b13baa980e139e28bf6d2f7d08b8`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:58:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Tue, 19 Sep 2017 05:58:02 GMT
ENV JULIA_VERSION=0.6.0
# Tue, 19 Sep 2017 05:58:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Tue, 19 Sep 2017 05:58:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 05:58:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea4d84d6e292f38644f499981090a7fa7427d1fec31421931c414cf739fb84`  
		Last Modified: Tue, 19 Sep 2017 05:58:23 GMT  
		Size: 6.7 MB (6727930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba0b7eb441cf314ebd9813de03b2115506086a6d10372fe70c099af9fc6261a`  
		Last Modified: Tue, 19 Sep 2017 05:58:36 GMT  
		Size: 67.6 MB (67576038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm variant v7

```console
$ docker pull julia@sha256:b944c7265c5be47ce381aabd3e7cbe5418d82ed35b2294a412c0717063d6069f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107889969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2254238030f0263fada22d8748f72fa7f9c2bdd3b18cacf2b40d4587fe936bb6`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:21 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Wed, 27 Sep 2017 04:12:22 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:07:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Wed, 27 Sep 2017 05:07:56 GMT
ENV JULIA_VERSION=0.6.0
# Wed, 27 Sep 2017 05:08:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Wed, 27 Sep 2017 05:08:10 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 05:08:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8c7b63aa62f92f5be1e93e5129c5c99dac397c6d3b5f6c6452bfd0905f6f20be`  
		Last Modified: Wed, 27 Sep 2017 04:17:18 GMT  
		Size: 48.7 MB (48686544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95e984d321f148ff92bad936ecb948448a0732f7dd361be3315ccc3afd2bf53`  
		Last Modified: Wed, 27 Sep 2017 05:08:26 GMT  
		Size: 6.1 MB (6074780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23f05df462e2b1d9291801c26c442294ecadf9fcb38834f82f7b78eb8b1c850`  
		Last Modified: Wed, 27 Sep 2017 05:08:46 GMT  
		Size: 53.1 MB (53128645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:65d567da151730351ae54a435f87690e199471b8878877d5a9fdd3dc1dac1572
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127357783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4bfe407e5ab155477c5f94b7114fa5a293c3f20563641d46c36902158824b1`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:50:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:50:03 GMT
ENV JULIA_PATH=/usr/local/julia
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 08 Sep 2017 14:50:04 GMT
ENV JULIA_VERSION=0.6.0
# Fri, 08 Sep 2017 14:50:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;; 		armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Fri, 08 Sep 2017 14:50:18 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 14:50:18 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be222e9674a8165a21a9229dca106919267dc9e85b0574099dc6e8078b4f6d2`  
		Last Modified: Fri, 08 Sep 2017 14:53:45 GMT  
		Size: 8.9 MB (8932971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff487d4f7e0598658abe77293388f00121e53a4adbf0b23778e6c5cfbfce99`  
		Last Modified: Fri, 08 Sep 2017 14:53:59 GMT  
		Size: 65.7 MB (65651686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
