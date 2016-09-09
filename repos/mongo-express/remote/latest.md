## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:7b4aeda659f67b75f9ea11a65787746ddd3178b49b70189a188f941eaac72c0e
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98818693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a956e6e42e0ce714dd7682395bcfd61c84bac54a6eb83858158d5caa50a692f2`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 30 Aug 2016 22:02:24 GMT
ENV NODE_VERSION=5.12.0
# Tue, 30 Aug 2016 22:02:34 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:02:34 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:21:39 GMT
ENV TINI_VERSION=0.9.0
# Tue, 30 Aug 2016 23:21:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:21:51 GMT
EXPOSE 8081/tcp
# Tue, 30 Aug 2016 23:21:51 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Tue, 30 Aug 2016 23:21:51 GMT
ENV MONGO_EXPRESS=0.31.0
# Tue, 30 Aug 2016 23:22:12 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Tue, 30 Aug 2016 23:22:13 GMT
WORKDIR /node_modules/mongo-express
# Tue, 30 Aug 2016 23:22:14 GMT
RUN cp config.default.js config.js
# Tue, 30 Aug 2016 23:22:14 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdd70dd3d068b712dd4be73707b15f87256688299a7e59e07104e55153b71d4`  
		Last Modified: Tue, 30 Aug 2016 23:15:37 GMT  
		Size: 12.4 MB (12404934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a789e2df959d4ccc4aaf312dcafb34cf92bdae474277bf46dc1797ae87e9d7`  
		Last Modified: Tue, 30 Aug 2016 23:22:20 GMT  
		Size: 458.9 KB (458862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8359b5126f03d76d3327af1dc28a6ebab1935b1ebc50a5c04f9a1e478b0ab2`  
		Last Modified: Tue, 30 Aug 2016 23:22:25 GMT  
		Size: 16.0 MB (15985939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a676688106045bd052ec24dc64217597b6d4c38a25f3b235846ad36c593d96a0`  
		Last Modified: Tue, 30 Aug 2016 23:22:19 GMT  
		Size: 2.6 KB (2578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
