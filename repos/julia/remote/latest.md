## `julia:latest`

```console
$ docker pull julia@sha256:8a46aaa8e8dc893d10388bd5ed929a03ee606116ae8170365d4dee700cef82db
```

-	Platforms:
	-	linux; amd64

### `julia:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129733680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63367277333333f3ac3fd91f53309277b71a38c9c2c1229ef002551695a38b44`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:03:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:03:40 GMT
ENV JULIA_PATH=/usr/local/julia
# Wed, 26 Jul 2017 06:03:40 GMT
ENV JULIA_VERSION=0.6.0
# Wed, 26 Jul 2017 06:04:04 GMT
RUN mkdir $JULIA_PATH 	&& apt-get update && apt-get install -y curl 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz" -o julia.tar.gz 	&& curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" -o julia.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3673DF529D9049477F76B37566E3C7DC03D6E495 	&& gpg --batch --verify julia.tar.gz.asc julia.tar.gz 	&& rm -r "$GNUPGHOME" julia.tar.gz.asc 	&& tar -xzf julia.tar.gz -C $JULIA_PATH --strip-components 1 	&& rm -rf /var/lib/apt/lists/* julia.tar.gz*
# Wed, 26 Jul 2017 06:04:05 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 06:04:05 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9ac903263c1779b1d1eb73415aeaeea6925ccb1c085c533807a5630a498134`  
		Last Modified: Wed, 26 Jul 2017 06:04:12 GMT  
		Size: 2.9 MB (2927470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7d52ead3ceb98f17ceaed569636db03092fdc9879496a4fb3899213d9c6b20`  
		Last Modified: Wed, 26 Jul 2017 06:04:25 GMT  
		Size: 74.2 MB (74200578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
