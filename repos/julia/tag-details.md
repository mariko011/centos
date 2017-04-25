<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `julia`

-	[`julia:0.5.1`](#julia051)
-	[`julia:0.5`](#julia05)
-	[`julia:0`](#julia0)
-	[`julia:latest`](#julialatest)

## `julia:0.5.1`

```console
$ docker pull julia@sha256:f5e4bcc6a338f410bbb4a7b6e7b60ecc228b0bf10e44ac6fa9443e2a5af190e5
```

-	Platforms:
	-	linux; amd64

### `julia:0.5.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125740792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924eae509bc42d293b2c4fea5d71596da5c07a60899f9f6c9915f0098558f341`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:40:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:40:15 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 24 Apr 2017 23:40:16 GMT
ENV JULIA_VERSION=0.5.1
# Mon, 24 Apr 2017 23:40:34 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Mon, 24 Apr 2017 23:40:34 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:40:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da58c7e197f42b4925ab94ce825e7d46a79f276c32204fc0a9e071c739f13588`  
		Last Modified: Tue, 25 Apr 2017 18:30:52 GMT  
		Size: 2.9 MB (2932431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3792ca71e3a6f89ad588c166054ff93a4c002ae03653078e01c547342fac37`  
		Last Modified: Tue, 25 Apr 2017 18:31:06 GMT  
		Size: 70.3 MB (70258085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0.5`

```console
$ docker pull julia@sha256:f5e4bcc6a338f410bbb4a7b6e7b60ecc228b0bf10e44ac6fa9443e2a5af190e5
```

-	Platforms:
	-	linux; amd64

### `julia:0.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125740792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924eae509bc42d293b2c4fea5d71596da5c07a60899f9f6c9915f0098558f341`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:40:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:40:15 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 24 Apr 2017 23:40:16 GMT
ENV JULIA_VERSION=0.5.1
# Mon, 24 Apr 2017 23:40:34 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Mon, 24 Apr 2017 23:40:34 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:40:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da58c7e197f42b4925ab94ce825e7d46a79f276c32204fc0a9e071c739f13588`  
		Last Modified: Tue, 25 Apr 2017 18:30:52 GMT  
		Size: 2.9 MB (2932431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3792ca71e3a6f89ad588c166054ff93a4c002ae03653078e01c547342fac37`  
		Last Modified: Tue, 25 Apr 2017 18:31:06 GMT  
		Size: 70.3 MB (70258085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `julia:0`

```console
$ docker pull julia@sha256:f5e4bcc6a338f410bbb4a7b6e7b60ecc228b0bf10e44ac6fa9443e2a5af190e5
```

-	Platforms:
	-	linux; amd64

### `julia:0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125740792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924eae509bc42d293b2c4fea5d71596da5c07a60899f9f6c9915f0098558f341`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:40:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:40:15 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 24 Apr 2017 23:40:16 GMT
ENV JULIA_VERSION=0.5.1
# Mon, 24 Apr 2017 23:40:34 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang.s3.amazonaws.com/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Mon, 24 Apr 2017 23:40:34 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:40:35 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da58c7e197f42b4925ab94ce825e7d46a79f276c32204fc0a9e071c739f13588`  
		Last Modified: Tue, 25 Apr 2017 18:30:52 GMT  
		Size: 2.9 MB (2932431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3792ca71e3a6f89ad588c166054ff93a4c002ae03653078e01c547342fac37`  
		Last Modified: Tue, 25 Apr 2017 18:31:06 GMT  
		Size: 70.3 MB (70258085 bytes)  
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
