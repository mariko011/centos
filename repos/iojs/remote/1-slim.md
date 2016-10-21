## `iojs:1-slim`

```console
$ docker pull iojs@sha256:d685a18b3ba0150c62304e20aed2ce83989a4b75e949309b4203ecd81a29944d
```

-	Platforms:
	-	linux; amd64

### `iojs:1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78808717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d700f326c6b18429a6a0791ee507cc3db22079d49e2c9dac84f994b3fb863f`
-	Default Command: `["iojs"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 19:57:00 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"   ; done
# Fri, 21 Oct 2016 19:57:00 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 19:57:00 GMT
ENV IOJS_VERSION=1.8.4
# Fri, 21 Oct 2016 19:57:04 GMT
RUN curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz"   && curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/SHASUMS256.txt.asc"   && gpg --verify SHASUMS256.txt.asc   && grep " iojs-v$IOJS_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c -   && tar -xzf "iojs-v$IOJS_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1   && rm "iojs-v$IOJS_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc
# Fri, 21 Oct 2016 19:57:05 GMT
CMD ["iojs"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a04b12cfa747d8011300e1cc2a943a2ae5b611a3f2a5407060e5f1e9b0f00db`  
		Last Modified: Fri, 21 Oct 2016 19:57:15 GMT  
		Size: 69.4 KB (69383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c63d54ea88c5a478dbefbdf43cbf21863b4efffb032c626f8d66dad2018598`  
		Last Modified: Fri, 21 Oct 2016 19:57:18 GMT  
		Size: 8.9 MB (8858078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
