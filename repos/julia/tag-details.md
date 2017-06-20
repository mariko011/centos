<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0.6.0`](#julia060)
-	[`julia:0.6`](#julia06)
-	[`julia:0`](#julia0)
-	[`julia:latest`](#julialatest)

## `julia:0.6.0`

```console
$ docker pull julia@sha256:b7f552dffe68f58ade9cdae22124a21f29a8c3f8bfb290c2281f671a4af217ee
```

-	Platforms:
	-	linux; amd64

### `julia:0.6.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129695604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917f09dffe3ad35570060699c50e1ce57fb14d29eb5a6d2a713ac8f772d4d284`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:16:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:16:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 20 Jun 2017 18:22:58 GMT
ENV JULIA_VERSION=0.6.0
# Tue, 20 Jun 2017 18:23:22 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 20 Jun 2017 18:23:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:23:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a6503c5f16f3940c869815906be3d25f0e38e2450633da2d691b03226f0976`  
		Last Modified: Wed, 14 Jun 2017 04:13:44 GMT  
		Size: 2.9 MB (2927275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69945800e168e0b14f440728bb9794f79aa7b3bcbe328902586b0990f72fec`  
		Last Modified: Tue, 20 Jun 2017 18:24:13 GMT  
		Size: 74.2 MB (74200060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.6`

```console
$ docker pull julia@sha256:b7f552dffe68f58ade9cdae22124a21f29a8c3f8bfb290c2281f671a4af217ee
```

-	Platforms:
	-	linux; amd64

### `julia:0.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129695604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917f09dffe3ad35570060699c50e1ce57fb14d29eb5a6d2a713ac8f772d4d284`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:16:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:16:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 20 Jun 2017 18:22:58 GMT
ENV JULIA_VERSION=0.6.0
# Tue, 20 Jun 2017 18:23:22 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 20 Jun 2017 18:23:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:23:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a6503c5f16f3940c869815906be3d25f0e38e2450633da2d691b03226f0976`  
		Last Modified: Wed, 14 Jun 2017 04:13:44 GMT  
		Size: 2.9 MB (2927275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69945800e168e0b14f440728bb9794f79aa7b3bcbe328902586b0990f72fec`  
		Last Modified: Tue, 20 Jun 2017 18:24:13 GMT  
		Size: 74.2 MB (74200060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0`

```console
$ docker pull julia@sha256:b7f552dffe68f58ade9cdae22124a21f29a8c3f8bfb290c2281f671a4af217ee
```

-	Platforms:
	-	linux; amd64

### `julia:0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129695604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917f09dffe3ad35570060699c50e1ce57fb14d29eb5a6d2a713ac8f772d4d284`
-	Default Command: `["julia"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:16:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:16:22 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 20 Jun 2017 18:22:58 GMT
ENV JULIA_VERSION=0.6.0
# Tue, 20 Jun 2017 18:23:22 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 20 Jun 2017 18:23:23 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:23:24 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a6503c5f16f3940c869815906be3d25f0e38e2450633da2d691b03226f0976`  
		Last Modified: Wed, 14 Jun 2017 04:13:44 GMT  
		Size: 2.9 MB (2927275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69945800e168e0b14f440728bb9794f79aa7b3bcbe328902586b0990f72fec`  
		Last Modified: Tue, 20 Jun 2017 18:24:13 GMT  
		Size: 74.2 MB (74200060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:7def9bd0be3e28058dfc96f1b91a1df385a5ff581943ce3ddad9ea49569bb7e5
```

-	Platforms:
	-	linux; amd64

### `julia:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126078317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f988666c0ef7542ce87a69aafc7c22926464670052cf18bb1c67d06d0b6aa428`
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
# Tue, 30 May 2017 17:20:52 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 30 May 2017 17:20:59 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:21:00 GMT
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
	-	`sha256:cf543823786c8a67b1d9c251a5c465bfa6f1b4bf10638f4a4465407646688e17`  
		Last Modified: Tue, 30 May 2017 17:21:56 GMT  
		Size: 70.6 MB (70562135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
