## `iojs:1-slim`

```console
$ docker pull iojs@sha256:563306eda16aa6e31703a7daa53acc15e5883eb45c7ad007f77c35fb4dada41b
```

-	Platforms:
	-	linux; amd64

### `iojs:1-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78826828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e5ba32a3284643105ddf3ebfd214aa244681e2be3dd1dbef175efa53a2775c`
-	Default Command: `["iojs"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:37:47 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"   ; done
# Tue, 28 Feb 2017 03:37:47 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 03:37:47 GMT
ENV IOJS_VERSION=1.8.4
# Tue, 28 Feb 2017 03:37:51 GMT
RUN curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz"   && curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/SHASUMS256.txt.asc"   && gpg --verify SHASUMS256.txt.asc   && grep " iojs-v$IOJS_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c -   && tar -xzf "iojs-v$IOJS_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1   && rm "iojs-v$IOJS_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc
# Tue, 28 Feb 2017 03:37:51 GMT
CMD ["iojs"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a5496483d971c7a9d4abb35ead4b795b9ccebbb81fe5252e8d7539364b8e63`  
		Last Modified: Thu, 02 Mar 2017 01:00:09 GMT  
		Size: 69.4 KB (69381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd0524608fbeef07c239ee5d915de4f969d53678ff21831af64a9cb6d4f5800`  
		Last Modified: Thu, 02 Mar 2017 01:00:13 GMT  
		Size: 8.9 MB (8858078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
