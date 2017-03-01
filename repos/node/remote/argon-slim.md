## `node:argon-slim`

```console
$ docker pull node@sha256:385543730b9d96a64d726a070418c05feec68d226ef0b0933383afb8221c9540
```

-	Platforms:
	-	linux; amd64

### `node:argon-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83150699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f43af8f75bc60f5461e3d78d684453657bda31493e76a367399ee6d3999bc1`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:36 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:40 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:40 GMT
CMD ["node"]
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
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf59480dfaf997cf6e3cba6cf88b6c970abe08ef0414942d1e5234ff81a095`  
		Last Modified: Wed, 01 Mar 2017 17:54:26 GMT  
		Size: 12.3 MB (12274043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f29fdb690c501584018c910284b79516166b445d02be7baf42bfcafcc46d3`  
		Last Modified: Wed, 01 Mar 2017 17:54:20 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
