<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0.5.1`](#julia051)
-	[`julia:0.5`](#julia05)
-	[`julia:0`](#julia0)
-	[`julia:latest`](#julialatest)

## `julia:0.5.1`

```console
$ docker pull julia@sha256:c7d69cfd126674f5843cd371a06434a218ac40fd0e31d21813bd15e52a0ce88f
```

-	Platforms:
	-	linux; amd64

### `julia:0.5.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123335931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae1365f8a62f61d7d44fd439c80e4f830f35c7d65d387028905d2252fc00be9`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:54:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_VERSION=0.5.1
# Tue, 21 Mar 2017 20:55:12 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 21 Mar 2017 20:55:13 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:55:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ff39e290716834c2e661a2873321c8a1454fa171a169880f9d16fa1da7700`  
		Last Modified: Thu, 23 Mar 2017 21:49:38 GMT  
		Size: 2.9 MB (2886862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71daeba128682f4590527dd29659f4060d7bb96d58788365fa834a377f0bd87f`  
		Last Modified: Thu, 23 Mar 2017 21:50:02 GMT  
		Size: 69.0 MB (69010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.5`

```console
$ docker pull julia@sha256:c7d69cfd126674f5843cd371a06434a218ac40fd0e31d21813bd15e52a0ce88f
```

-	Platforms:
	-	linux; amd64

### `julia:0.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123335931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae1365f8a62f61d7d44fd439c80e4f830f35c7d65d387028905d2252fc00be9`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:54:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_VERSION=0.5.1
# Tue, 21 Mar 2017 20:55:12 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 21 Mar 2017 20:55:13 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:55:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ff39e290716834c2e661a2873321c8a1454fa171a169880f9d16fa1da7700`  
		Last Modified: Thu, 23 Mar 2017 21:49:38 GMT  
		Size: 2.9 MB (2886862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71daeba128682f4590527dd29659f4060d7bb96d58788365fa834a377f0bd87f`  
		Last Modified: Thu, 23 Mar 2017 21:50:02 GMT  
		Size: 69.0 MB (69010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0`

```console
$ docker pull julia@sha256:c7d69cfd126674f5843cd371a06434a218ac40fd0e31d21813bd15e52a0ce88f
```

-	Platforms:
	-	linux; amd64

### `julia:0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123335931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae1365f8a62f61d7d44fd439c80e4f830f35c7d65d387028905d2252fc00be9`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:54:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_VERSION=0.5.1
# Tue, 21 Mar 2017 20:55:12 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 21 Mar 2017 20:55:13 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:55:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ff39e290716834c2e661a2873321c8a1454fa171a169880f9d16fa1da7700`  
		Last Modified: Thu, 23 Mar 2017 21:49:38 GMT  
		Size: 2.9 MB (2886862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71daeba128682f4590527dd29659f4060d7bb96d58788365fa834a377f0bd87f`  
		Last Modified: Thu, 23 Mar 2017 21:50:02 GMT  
		Size: 69.0 MB (69010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:latest`

```console
$ docker pull julia@sha256:c7d69cfd126674f5843cd371a06434a218ac40fd0e31d21813bd15e52a0ce88f
```

-	Platforms:
	-	linux; amd64

### `julia:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123335931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae1365f8a62f61d7d44fd439c80e4f830f35c7d65d387028905d2252fc00be9`
-	Default Command: `["julia"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:54:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_PATH=/usr/local/julia
# Tue, 21 Mar 2017 20:54:53 GMT
ENV JULIA_VERSION=0.5.1
# Tue, 21 Mar 2017 20:55:12 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Tue, 21 Mar 2017 20:55:13 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:55:13 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ff39e290716834c2e661a2873321c8a1454fa171a169880f9d16fa1da7700`  
		Last Modified: Thu, 23 Mar 2017 21:49:38 GMT  
		Size: 2.9 MB (2886862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71daeba128682f4590527dd29659f4060d7bb96d58788365fa834a377f0bd87f`  
		Last Modified: Thu, 23 Mar 2017 21:50:02 GMT  
		Size: 69.0 MB (69010593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
