## `iojs:slim`

```console
$ docker pull iojs@sha256:93b451ac8e732d03383db32f8ca39efa0c3a3deee299e3620b09c363e323f656
```

-	Platforms:
	-	linux; amd64

### `iojs:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81448358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da7521185d342fb3f4c26d9ec170b98c921455d4aad48d8fda408dc8f0afc89`
-	Default Command: `["iojs"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:46:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"   ; done
# Tue, 17 Jan 2017 00:46:47 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 17 Jan 2017 00:46:56 GMT
ENV IOJS_VERSION=3.3.0
# Tue, 17 Jan 2017 00:47:00 GMT
RUN curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz"   && curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/SHASUMS256.txt.asc"   && gpg --verify SHASUMS256.txt.asc   && grep " iojs-v$IOJS_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c -   && tar -xzf "iojs-v$IOJS_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1   && rm "iojs-v$IOJS_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc
# Tue, 17 Jan 2017 00:47:01 GMT
CMD ["iojs"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f63072937952d6830a06b529c5647bb6ca64a30dd14b34ac379e7edfbe668f`  
		Last Modified: Wed, 18 Jan 2017 04:06:19 GMT  
		Size: 69.4 KB (69383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36615e6fa2e5b0ef97b68a5cc8055b54a1c52044179390ea5a361a752f133702`  
		Last Modified: Wed, 18 Jan 2017 04:11:54 GMT  
		Size: 11.5 MB (11482324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
