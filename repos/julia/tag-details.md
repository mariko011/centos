<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0.5.0`](#julia050)
-	[`julia:0.5`](#julia05)
-	[`julia:0`](#julia0)
-	[`julia:latest`](#julialatest)

## `julia:0.5.0`

```console
$ docker pull julia@sha256:f9b750fb9d9a1ed1fb71fa77fea54efa23f3f215fbecacb9ef2e6538e3670045
```

-	Platforms:
	-	linux; amd64

### `julia:0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123175599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9a6bdf7363edb7d7a20e49b5104fe8b59cce9eb3ffcea822647ec0dd22121b`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:57:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:57:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 14 Dec 2016 00:57:19 GMT
ENV JULIA_VERSION=0.5.0
# Wed, 14 Dec 2016 00:57:41 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 14 Dec 2016 00:57:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:57:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec8b753bdf95c4a42a39f463306d6058e06c1d6d9b68e4901cae6621ee6919e`  
		Last Modified: Mon, 19 Dec 2016 23:31:00 GMT  
		Size: 2.8 MB (2808473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838fd42f7215366edf75d90388830b52f7bde42ce7c01c156f1c5c0c58ff0580`  
		Last Modified: Mon, 19 Dec 2016 23:31:26 GMT  
		Size: 69.0 MB (69004001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.5`

```console
$ docker pull julia@sha256:f9b750fb9d9a1ed1fb71fa77fea54efa23f3f215fbecacb9ef2e6538e3670045
```

-	Platforms:
	-	linux; amd64

### `julia:0.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123175599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9a6bdf7363edb7d7a20e49b5104fe8b59cce9eb3ffcea822647ec0dd22121b`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:57:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:57:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 14 Dec 2016 00:57:19 GMT
ENV JULIA_VERSION=0.5.0
# Wed, 14 Dec 2016 00:57:41 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 14 Dec 2016 00:57:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:57:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec8b753bdf95c4a42a39f463306d6058e06c1d6d9b68e4901cae6621ee6919e`  
		Last Modified: Mon, 19 Dec 2016 23:31:00 GMT  
		Size: 2.8 MB (2808473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838fd42f7215366edf75d90388830b52f7bde42ce7c01c156f1c5c0c58ff0580`  
		Last Modified: Mon, 19 Dec 2016 23:31:26 GMT  
		Size: 69.0 MB (69004001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0`

```console
$ docker pull julia@sha256:f9b750fb9d9a1ed1fb71fa77fea54efa23f3f215fbecacb9ef2e6538e3670045
```

-	Platforms:
	-	linux; amd64

### `julia:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123175599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9a6bdf7363edb7d7a20e49b5104fe8b59cce9eb3ffcea822647ec0dd22121b`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:57:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 00:57:19 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 14 Dec 2016 00:57:19 GMT
ENV JULIA_VERSION=0.5.0
# Wed, 14 Dec 2016 00:57:41 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 14 Dec 2016 00:57:41 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 00:57:41 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec8b753bdf95c4a42a39f463306d6058e06c1d6d9b68e4901cae6621ee6919e`  
		Last Modified: Mon, 19 Dec 2016 23:31:00 GMT  
		Size: 2.8 MB (2808473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838fd42f7215366edf75d90388830b52f7bde42ce7c01c156f1c5c0c58ff0580`  
		Last Modified: Mon, 19 Dec 2016 23:31:26 GMT  
		Size: 69.0 MB (69004001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:8b13772d6231565a0b7dd384f95313d4e941f4541384eb2ff6abbe5d3be503b3
```

-	Platforms:
	-	linux; amd64

### `julia:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123168910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea16a74feb06c4159f5672da8afd85f4a006e9ed90961e689c7bd75cb7d9cb1`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:20:35 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 08 Nov 2016 20:20:35 GMT
ENV JULIA_VERSION=0.5.0
# Tue, 08 Nov 2016 20:20:55 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 08 Nov 2016 20:20:56 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 20:20:56 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6913890ffabf311e54018e50e916985e9495c4eaa0d40e31abe1057d745014`  
		Last Modified: Tue, 08 Nov 2016 20:21:09 GMT  
		Size: 2.8 MB (2807957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824d6330b2ec053520b16adf4d3904afeec2b2a6456008dfd4b4b01e35a51723`  
		Last Modified: Tue, 08 Nov 2016 20:21:32 GMT  
		Size: 69.0 MB (69003964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
