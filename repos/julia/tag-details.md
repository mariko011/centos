<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0.5.0`](#julia050)
-	[`julia:0.5`](#julia05)
-	[`julia:0`](#julia0)
-	[`julia:latest`](#julialatest)

## `julia:0.5.0`

```console
$ docker pull julia@sha256:e59e31443b4849e23978b83dda514be7ddd2e25a62a46e11662f22fe70eef899
```

-	Platforms:
	-	linux; amd64

### `julia:0.5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123164991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed321747647121bd431cb11924457284fcca11c71bb25d93b2c2f3b8396ce79c`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Wed, 28 Sep 2016 20:53:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_VERSION=0.5.0
# Wed, 28 Sep 2016 20:54:18 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 28 Sep 2016 20:54:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:54:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a050ed9b021aef2728833f988bd1970d95a0f9efcf7a0b5a9e15975ca2a5251`  
		Last Modified: Wed, 28 Sep 2016 20:54:29 GMT  
		Size: 2.8 MB (2807940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ee0eb02d2c717a7d57bcecab6c14407680ac21be2e74328304f304ed274829`  
		Last Modified: Wed, 28 Sep 2016 20:54:52 GMT  
		Size: 69.0 MB (69002687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.5`

```console
$ docker pull julia@sha256:e59e31443b4849e23978b83dda514be7ddd2e25a62a46e11662f22fe70eef899
```

-	Platforms:
	-	linux; amd64

### `julia:0.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123164991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed321747647121bd431cb11924457284fcca11c71bb25d93b2c2f3b8396ce79c`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Wed, 28 Sep 2016 20:53:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_VERSION=0.5.0
# Wed, 28 Sep 2016 20:54:18 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 28 Sep 2016 20:54:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:54:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a050ed9b021aef2728833f988bd1970d95a0f9efcf7a0b5a9e15975ca2a5251`  
		Last Modified: Wed, 28 Sep 2016 20:54:29 GMT  
		Size: 2.8 MB (2807940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ee0eb02d2c717a7d57bcecab6c14407680ac21be2e74328304f304ed274829`  
		Last Modified: Wed, 28 Sep 2016 20:54:52 GMT  
		Size: 69.0 MB (69002687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0`

```console
$ docker pull julia@sha256:e59e31443b4849e23978b83dda514be7ddd2e25a62a46e11662f22fe70eef899
```

-	Platforms:
	-	linux; amd64

### `julia:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123164991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed321747647121bd431cb11924457284fcca11c71bb25d93b2c2f3b8396ce79c`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Wed, 28 Sep 2016 20:53:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_VERSION=0.5.0
# Wed, 28 Sep 2016 20:54:18 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 28 Sep 2016 20:54:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:54:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a050ed9b021aef2728833f988bd1970d95a0f9efcf7a0b5a9e15975ca2a5251`  
		Last Modified: Wed, 28 Sep 2016 20:54:29 GMT  
		Size: 2.8 MB (2807940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ee0eb02d2c717a7d57bcecab6c14407680ac21be2e74328304f304ed274829`  
		Last Modified: Wed, 28 Sep 2016 20:54:52 GMT  
		Size: 69.0 MB (69002687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:e59e31443b4849e23978b83dda514be7ddd2e25a62a46e11662f22fe70eef899
```

-	Platforms:
	-	linux; amd64

### `julia:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123164991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed321747647121bd431cb11924457284fcca11c71bb25d93b2c2f3b8396ce79c`
-	Default Command: `["julia"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Wed, 28 Sep 2016 20:53:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 28 Sep 2016 20:53:58 GMT
ENV JULIA_VERSION=0.5.0
# Wed, 28 Sep 2016 20:54:18 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 28 Sep 2016 20:54:19 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:54:20 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a050ed9b021aef2728833f988bd1970d95a0f9efcf7a0b5a9e15975ca2a5251`  
		Last Modified: Wed, 28 Sep 2016 20:54:29 GMT  
		Size: 2.8 MB (2807940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ee0eb02d2c717a7d57bcecab6c14407680ac21be2e74328304f304ed274829`  
		Last Modified: Wed, 28 Sep 2016 20:54:52 GMT  
		Size: 69.0 MB (69002687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
