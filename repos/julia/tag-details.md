<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0.5.2`](#julia052)
-	[`julia:0.5`](#julia05)
-	[`julia:0`](#julia0)
-	[`julia:latest`](#julialatest)

## `julia:0.5.2`

```console
$ docker pull julia@sha256:ccf14572694518f6dad6fd028ea89cbad6364bb9f3011f6e4c508e35b8579a71
```

-	Platforms:
	-	linux; amd64

### `julia:0.5.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126078079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ed0647dcb92c8946bb4d2de9b03dd653d1d4aa6a9a40cff58205871a2f4a62`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:21:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:21:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 11 May 2017 17:17:38 GMT
ENV JULIA_VERSION=0.5.2
# Thu, 11 May 2017 17:18:10 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Thu, 11 May 2017 17:18:12 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:18:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03516e9742a07a1122f3677bd03996df8149e50cddd0d42609ca22a36e5cde78`  
		Last Modified: Thu, 11 May 2017 17:18:40 GMT  
		Size: 2.9 MB (2932166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000c3d1edeaf62f2145115f019560372efb3ff908bdb34d053b78172e53bdd8`  
		Last Modified: Thu, 11 May 2017 17:18:53 GMT  
		Size: 70.6 MB (70561897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.5`

```console
$ docker pull julia@sha256:ccf14572694518f6dad6fd028ea89cbad6364bb9f3011f6e4c508e35b8579a71
```

-	Platforms:
	-	linux; amd64

### `julia:0.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126078079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ed0647dcb92c8946bb4d2de9b03dd653d1d4aa6a9a40cff58205871a2f4a62`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:21:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:21:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 11 May 2017 17:17:38 GMT
ENV JULIA_VERSION=0.5.2
# Thu, 11 May 2017 17:18:10 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Thu, 11 May 2017 17:18:12 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:18:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03516e9742a07a1122f3677bd03996df8149e50cddd0d42609ca22a36e5cde78`  
		Last Modified: Thu, 11 May 2017 17:18:40 GMT  
		Size: 2.9 MB (2932166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000c3d1edeaf62f2145115f019560372efb3ff908bdb34d053b78172e53bdd8`  
		Last Modified: Thu, 11 May 2017 17:18:53 GMT  
		Size: 70.6 MB (70561897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0`

```console
$ docker pull julia@sha256:ccf14572694518f6dad6fd028ea89cbad6364bb9f3011f6e4c508e35b8579a71
```

-	Platforms:
	-	linux; amd64

### `julia:0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126078079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ed0647dcb92c8946bb4d2de9b03dd653d1d4aa6a9a40cff58205871a2f4a62`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:21:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:21:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 11 May 2017 17:17:38 GMT
ENV JULIA_VERSION=0.5.2
# Thu, 11 May 2017 17:18:10 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Thu, 11 May 2017 17:18:12 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:18:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03516e9742a07a1122f3677bd03996df8149e50cddd0d42609ca22a36e5cde78`  
		Last Modified: Thu, 11 May 2017 17:18:40 GMT  
		Size: 2.9 MB (2932166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000c3d1edeaf62f2145115f019560372efb3ff908bdb34d053b78172e53bdd8`  
		Last Modified: Thu, 11 May 2017 17:18:53 GMT  
		Size: 70.6 MB (70561897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:ccf14572694518f6dad6fd028ea89cbad6364bb9f3011f6e4c508e35b8579a71
```

-	Platforms:
	-	linux; amd64

### `julia:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126078079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ed0647dcb92c8946bb4d2de9b03dd653d1d4aa6a9a40cff58205871a2f4a62`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:21:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:21:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Thu, 11 May 2017 17:17:38 GMT
ENV JULIA_VERSION=0.5.2
# Thu, 11 May 2017 17:18:10 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Thu, 11 May 2017 17:18:12 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:18:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03516e9742a07a1122f3677bd03996df8149e50cddd0d42609ca22a36e5cde78`  
		Last Modified: Thu, 11 May 2017 17:18:40 GMT  
		Size: 2.9 MB (2932166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000c3d1edeaf62f2145115f019560372efb3ff908bdb34d053b78172e53bdd8`  
		Last Modified: Thu, 11 May 2017 17:18:53 GMT  
		Size: 70.6 MB (70561897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
