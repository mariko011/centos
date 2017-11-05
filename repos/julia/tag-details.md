<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0`](#julia0)
-	[`julia:0.6`](#julia06)
-	[`julia:0.6.1`](#julia061)
-	[`julia:latest`](#julialatest)

## `julia:0`

```console
$ docker pull julia@sha256:8e675377e98f2d901949f9fcc394521c25c02a57a0d16e5d7660bd7fa8c5d836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0` - linux; amd64

```console
$ docker pull julia@sha256:c3554e59b8e1e38b40b5dceaeb86f2bd780b45668aed87bc91104e3e003ce28c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128284557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b37f4ac56fe4701f9bd960d207ac1edd01913c22440a5a32c8aad52a7a0298b`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 09:03:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 09:03:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a80ada407af48a5ee2553d2cc15013d018ab85a1fd5fa3a018a7720485a4f7`  
		Last Modified: Sat, 04 Nov 2017 09:04:06 GMT  
		Size: 6.7 MB (6728158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4b2a40dad01cbd7f931ede1e1cd08b30c467ecd0007aad5b1dd257e36fa53e`  
		Last Modified: Sat, 04 Nov 2017 09:04:18 GMT  
		Size: 69.0 MB (68961275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; arm variant v7

```console
$ docker pull julia@sha256:9b0aa5af2b776f78e368f61b14f8820169c7fecd2b68aea7af968e76e88160ac
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116045026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ec8007442d9489d891610b7cbac7280a112926a7dce9d9d8411d7c91d768e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:36:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 10:33:31 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 10:33:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 10:33:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:33:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ca66856d7f3efb473fc88ce814781ddc0855257be91546bcd96ce2c910c962`  
		Last Modified: Mon, 09 Oct 2017 22:37:20 GMT  
		Size: 6.1 MB (6075120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac5a7a7b3c2fd42bf8871adcc1bb8ded7a8679262df6633797f8ac06ab9d431`  
		Last Modified: Sat, 04 Nov 2017 10:34:35 GMT  
		Size: 61.3 MB (61283595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:d8fa0d4aa7d8c961a7f05e696721e5386ecc2ca26eac0e00995087fff29fc3be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115645396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3bdee5296557ea65bc5a5cfcc5f3e5d783d78f5b12f8a9d7406cdcf9e1f51`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Sun, 05 Nov 2017 16:39:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sun, 05 Nov 2017 16:39:29 GMT
ENV JULIA_PATH=/usr/local/julia
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_VERSION=0.6.1
# Sun, 05 Nov 2017 16:39:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sun, 05 Nov 2017 16:39:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Nov 2017 16:39:53 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a55bd573544caf63ae2986703048bb114fc933a0801de6765e78ce4ff7fed5`  
		Last Modified: Sun, 05 Nov 2017 16:40:23 GMT  
		Size: 6.2 MB (6232947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150b6c56f0cb672f73f953e6401ba6c6fe70c18fa68876250cafe8e4edea337`  
		Last Modified: Sun, 05 Nov 2017 16:40:45 GMT  
		Size: 59.5 MB (59483139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0` - linux; 386

```console
$ docker pull julia@sha256:a7468e1ef2fa470e064cdd720b864a328129264a75ca27695357bf480092fe0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128930551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0788e50639decbd8cfc20187a36fe96b5c66bd7bd8f079d23df430a4819ee7e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 04:14:07 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 04:14:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 04:14:27 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 04:14:27 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13936a71f01e883b8950ef81ab20fb2a3101ef2b48cc5534552dbbebd7abd87c`  
		Last Modified: Mon, 09 Oct 2017 23:55:56 GMT  
		Size: 8.9 MB (8933176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699f103f956ad41aaeb8c4dc0d380145cf739193d28b9ae1441aef38b834625b`  
		Last Modified: Sat, 04 Nov 2017 04:15:04 GMT  
		Size: 67.2 MB (67223527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6`

```console
$ docker pull julia@sha256:8e675377e98f2d901949f9fcc394521c25c02a57a0d16e5d7660bd7fa8c5d836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6` - linux; amd64

```console
$ docker pull julia@sha256:c3554e59b8e1e38b40b5dceaeb86f2bd780b45668aed87bc91104e3e003ce28c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128284557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b37f4ac56fe4701f9bd960d207ac1edd01913c22440a5a32c8aad52a7a0298b`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 09:03:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 09:03:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a80ada407af48a5ee2553d2cc15013d018ab85a1fd5fa3a018a7720485a4f7`  
		Last Modified: Sat, 04 Nov 2017 09:04:06 GMT  
		Size: 6.7 MB (6728158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4b2a40dad01cbd7f931ede1e1cd08b30c467ecd0007aad5b1dd257e36fa53e`  
		Last Modified: Sat, 04 Nov 2017 09:04:18 GMT  
		Size: 69.0 MB (68961275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; arm variant v7

```console
$ docker pull julia@sha256:9b0aa5af2b776f78e368f61b14f8820169c7fecd2b68aea7af968e76e88160ac
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116045026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ec8007442d9489d891610b7cbac7280a112926a7dce9d9d8411d7c91d768e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:36:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 10:33:31 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 10:33:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 10:33:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:33:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ca66856d7f3efb473fc88ce814781ddc0855257be91546bcd96ce2c910c962`  
		Last Modified: Mon, 09 Oct 2017 22:37:20 GMT  
		Size: 6.1 MB (6075120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac5a7a7b3c2fd42bf8871adcc1bb8ded7a8679262df6633797f8ac06ab9d431`  
		Last Modified: Sat, 04 Nov 2017 10:34:35 GMT  
		Size: 61.3 MB (61283595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:d8fa0d4aa7d8c961a7f05e696721e5386ecc2ca26eac0e00995087fff29fc3be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115645396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3bdee5296557ea65bc5a5cfcc5f3e5d783d78f5b12f8a9d7406cdcf9e1f51`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Sun, 05 Nov 2017 16:39:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sun, 05 Nov 2017 16:39:29 GMT
ENV JULIA_PATH=/usr/local/julia
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_VERSION=0.6.1
# Sun, 05 Nov 2017 16:39:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sun, 05 Nov 2017 16:39:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Nov 2017 16:39:53 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a55bd573544caf63ae2986703048bb114fc933a0801de6765e78ce4ff7fed5`  
		Last Modified: Sun, 05 Nov 2017 16:40:23 GMT  
		Size: 6.2 MB (6232947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150b6c56f0cb672f73f953e6401ba6c6fe70c18fa68876250cafe8e4edea337`  
		Last Modified: Sun, 05 Nov 2017 16:40:45 GMT  
		Size: 59.5 MB (59483139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6` - linux; 386

```console
$ docker pull julia@sha256:a7468e1ef2fa470e064cdd720b864a328129264a75ca27695357bf480092fe0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128930551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0788e50639decbd8cfc20187a36fe96b5c66bd7bd8f079d23df430a4819ee7e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 04:14:07 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 04:14:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 04:14:27 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 04:14:27 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13936a71f01e883b8950ef81ab20fb2a3101ef2b48cc5534552dbbebd7abd87c`  
		Last Modified: Mon, 09 Oct 2017 23:55:56 GMT  
		Size: 8.9 MB (8933176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699f103f956ad41aaeb8c4dc0d380145cf739193d28b9ae1441aef38b834625b`  
		Last Modified: Sat, 04 Nov 2017 04:15:04 GMT  
		Size: 67.2 MB (67223527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6.1`

```console
$ docker pull julia@sha256:8e675377e98f2d901949f9fcc394521c25c02a57a0d16e5d7660bd7fa8c5d836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:0.6.1` - linux; amd64

```console
$ docker pull julia@sha256:c3554e59b8e1e38b40b5dceaeb86f2bd780b45668aed87bc91104e3e003ce28c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128284557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b37f4ac56fe4701f9bd960d207ac1edd01913c22440a5a32c8aad52a7a0298b`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 09:03:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 09:03:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a80ada407af48a5ee2553d2cc15013d018ab85a1fd5fa3a018a7720485a4f7`  
		Last Modified: Sat, 04 Nov 2017 09:04:06 GMT  
		Size: 6.7 MB (6728158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4b2a40dad01cbd7f931ede1e1cd08b30c467ecd0007aad5b1dd257e36fa53e`  
		Last Modified: Sat, 04 Nov 2017 09:04:18 GMT  
		Size: 69.0 MB (68961275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.1` - linux; arm variant v7

```console
$ docker pull julia@sha256:9b0aa5af2b776f78e368f61b14f8820169c7fecd2b68aea7af968e76e88160ac
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116045026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ec8007442d9489d891610b7cbac7280a112926a7dce9d9d8411d7c91d768e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:36:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 10:33:31 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 10:33:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 10:33:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:33:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ca66856d7f3efb473fc88ce814781ddc0855257be91546bcd96ce2c910c962`  
		Last Modified: Mon, 09 Oct 2017 22:37:20 GMT  
		Size: 6.1 MB (6075120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac5a7a7b3c2fd42bf8871adcc1bb8ded7a8679262df6633797f8ac06ab9d431`  
		Last Modified: Sat, 04 Nov 2017 10:34:35 GMT  
		Size: 61.3 MB (61283595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.1` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:d8fa0d4aa7d8c961a7f05e696721e5386ecc2ca26eac0e00995087fff29fc3be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115645396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3bdee5296557ea65bc5a5cfcc5f3e5d783d78f5b12f8a9d7406cdcf9e1f51`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Sun, 05 Nov 2017 16:39:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sun, 05 Nov 2017 16:39:29 GMT
ENV JULIA_PATH=/usr/local/julia
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_VERSION=0.6.1
# Sun, 05 Nov 2017 16:39:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sun, 05 Nov 2017 16:39:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Nov 2017 16:39:53 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a55bd573544caf63ae2986703048bb114fc933a0801de6765e78ce4ff7fed5`  
		Last Modified: Sun, 05 Nov 2017 16:40:23 GMT  
		Size: 6.2 MB (6232947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150b6c56f0cb672f73f953e6401ba6c6fe70c18fa68876250cafe8e4edea337`  
		Last Modified: Sun, 05 Nov 2017 16:40:45 GMT  
		Size: 59.5 MB (59483139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:0.6.1` - linux; 386

```console
$ docker pull julia@sha256:a7468e1ef2fa470e064cdd720b864a328129264a75ca27695357bf480092fe0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128930551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0788e50639decbd8cfc20187a36fe96b5c66bd7bd8f079d23df430a4819ee7e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 04:14:07 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 04:14:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 04:14:27 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 04:14:27 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13936a71f01e883b8950ef81ab20fb2a3101ef2b48cc5534552dbbebd7abd87c`  
		Last Modified: Mon, 09 Oct 2017 23:55:56 GMT  
		Size: 8.9 MB (8933176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699f103f956ad41aaeb8c4dc0d380145cf739193d28b9ae1441aef38b834625b`  
		Last Modified: Sat, 04 Nov 2017 04:15:04 GMT  
		Size: 67.2 MB (67223527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:8e675377e98f2d901949f9fcc394521c25c02a57a0d16e5d7660bd7fa8c5d836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `julia:latest` - linux; amd64

```console
$ docker pull julia@sha256:c3554e59b8e1e38b40b5dceaeb86f2bd780b45668aed87bc91104e3e003ce28c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128284557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b37f4ac56fe4701f9bd960d207ac1edd01913c22440a5a32c8aad52a7a0298b`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 09:03:47 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 09:03:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 09:03:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:03:57 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a80ada407af48a5ee2553d2cc15013d018ab85a1fd5fa3a018a7720485a4f7`  
		Last Modified: Sat, 04 Nov 2017 09:04:06 GMT  
		Size: 6.7 MB (6728158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4b2a40dad01cbd7f931ede1e1cd08b30c467ecd0007aad5b1dd257e36fa53e`  
		Last Modified: Sat, 04 Nov 2017 09:04:18 GMT  
		Size: 69.0 MB (68961275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm variant v7

```console
$ docker pull julia@sha256:9b0aa5af2b776f78e368f61b14f8820169c7fecd2b68aea7af968e76e88160ac
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116045026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ec8007442d9489d891610b7cbac7280a112926a7dce9d9d8411d7c91d768e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:36:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 22:36:52 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 10:33:31 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 10:33:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 10:33:48 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:33:48 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ca66856d7f3efb473fc88ce814781ddc0855257be91546bcd96ce2c910c962`  
		Last Modified: Mon, 09 Oct 2017 22:37:20 GMT  
		Size: 6.1 MB (6075120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac5a7a7b3c2fd42bf8871adcc1bb8ded7a8679262df6633797f8ac06ab9d431`  
		Last Modified: Sat, 04 Nov 2017 10:34:35 GMT  
		Size: 61.3 MB (61283595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; arm64 variant v8

```console
$ docker pull julia@sha256:d8fa0d4aa7d8c961a7f05e696721e5386ecc2ca26eac0e00995087fff29fc3be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115645396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3bdee5296557ea65bc5a5cfcc5f3e5d783d78f5b12f8a9d7406cdcf9e1f51`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Sun, 05 Nov 2017 16:39:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Sun, 05 Nov 2017 16:39:29 GMT
ENV JULIA_PATH=/usr/local/julia
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sun, 05 Nov 2017 16:39:30 GMT
ENV JULIA_VERSION=0.6.1
# Sun, 05 Nov 2017 16:39:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sun, 05 Nov 2017 16:39:52 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 05 Nov 2017 16:39:53 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a55bd573544caf63ae2986703048bb114fc933a0801de6765e78ce4ff7fed5`  
		Last Modified: Sun, 05 Nov 2017 16:40:23 GMT  
		Size: 6.2 MB (6232947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150b6c56f0cb672f73f953e6401ba6c6fe70c18fa68876250cafe8e4edea337`  
		Last Modified: Sun, 05 Nov 2017 16:40:45 GMT  
		Size: 59.5 MB (59483139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:latest` - linux; 386

```console
$ docker pull julia@sha256:a7468e1ef2fa470e064cdd720b864a328129264a75ca27695357bf480092fe0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128930551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0788e50639decbd8cfc20187a36fe96b5c66bd7bd8f079d23df430a4819ee7e2`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:54:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Oct 2017 23:54:46 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Sat, 04 Nov 2017 04:14:07 GMT
ENV JULIA_VERSION=0.6.1
# Sat, 04 Nov 2017 04:14:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) tarArch='x86_64'; dirArch='x64'; sha256='d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323' ;; 		armhf) tarArch='armv7l'; dirArch='armv7l'; sha256='ee2cea5a6e5763fb2ef38b585560000c7fb2cee9a7e2330d4eae278beed4d7e6' ;; 		arm64) tarArch='aarch64'; dirArch='aarch64'; sha256='945c1657ca4a8d76b7136829cf06dddbd5343dfdfa6b20d2308ae0dc08c5ca79' ;; 		i386) tarArch='i686'; dirArch='x86'; sha256='88cf40e45558958f9a23540d52209fd050d82512bbbe8dec03db7d0976cc645a' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding Julia binary release"; exit 1 ;; 	esac; 		curl -fL -o julia.tar.gz     "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz"; 	curl -fL -o julia.tar.gz.asc "https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc"; 		echo "${sha256} *julia.tar.gz" | sha256sum -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz
# Sat, 04 Nov 2017 04:14:27 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 04:14:27 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13936a71f01e883b8950ef81ab20fb2a3101ef2b48cc5534552dbbebd7abd87c`  
		Last Modified: Mon, 09 Oct 2017 23:55:56 GMT  
		Size: 8.9 MB (8933176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699f103f956ad41aaeb8c4dc0d380145cf739193d28b9ae1441aef38b834625b`  
		Last Modified: Sat, 04 Nov 2017 04:15:04 GMT  
		Size: 67.2 MB (67223527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
