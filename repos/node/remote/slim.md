## `node:slim`

```console
$ docker pull node@sha256:00b8f8169b752c1fd9b585873e00804fc407a295d5e0e2528e64025c64452d87
```

-	Platforms:
	-	linux; amd64

### `node:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85458719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa40340bdaa8ab5c178a3ba151cfe3b6c3cf6718daa940e4a86f4d1496675514`
-	Default Command: `["node"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:45:04 GMT
RUN groupadd -r node && useradd -r -g node node
# Tue, 08 Nov 2016 22:45:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 08 Nov 2016 22:47:23 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 10 Nov 2016 02:20:54 GMT
ENV NODE_VERSION=7.1.0
# Thu, 10 Nov 2016 02:21:04 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 10 Nov 2016 02:21:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60721b40a88024b354485a2aab8916faa195b40c4fdba227e92f60c609f01156`  
		Last Modified: Tue, 08 Nov 2016 22:45:51 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3739ddf6315c5e18b3e9b8b61629bf3ce0a4f5c41e495a001023d86a46ef0d52`  
		Last Modified: Tue, 08 Nov 2016 22:45:52 GMT  
		Size: 97.2 KB (97211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0275d5074259fa3ffc794ba0b559c8a2728a7110731c703dcafb08ec12ee4ff`  
		Last Modified: Thu, 10 Nov 2016 02:24:40 GMT  
		Size: 15.5 MB (15474001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
