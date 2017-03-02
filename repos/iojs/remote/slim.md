## `iojs:slim`

```console
$ docker pull iojs@sha256:3c4d4073c70e0b4d3b363cd50dad59882e075ed335c99c52e7f09a7a74d21458
```

-	Platforms:
	-	linux; amd64

### `iojs:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81451066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24188444bb5b9d97e0e0661a49f92392039f521ffcab629f4486b9afe5d8bbc2`
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
# Tue, 28 Feb 2017 03:38:13 GMT
ENV IOJS_VERSION=3.3.0
# Tue, 28 Feb 2017 03:38:17 GMT
RUN curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz"   && curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/SHASUMS256.txt.asc"   && gpg --verify SHASUMS256.txt.asc   && grep " iojs-v$IOJS_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c -   && tar -xzf "iojs-v$IOJS_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1   && rm "iojs-v$IOJS_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc
# Tue, 28 Feb 2017 03:38:17 GMT
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
	-	`sha256:ae40380d782974885effe234a2fbcbdf12642a924814fbcdbe07154f086015cf`  
		Last Modified: Thu, 02 Mar 2017 01:06:49 GMT  
		Size: 11.5 MB (11482316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
