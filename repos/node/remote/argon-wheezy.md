## `node:argon-wheezy`

```console
$ docker pull node@sha256:ddfb8c55682768f235e31560cf1ab7ab256397984e13b70f13a3fa7296a58b1d
```

-	Platforms:
	-	linux; amd64

### `node:argon-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190130121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e93e393f02de5d25c3dd836511c0ae1ce1f3546d88e059a9833a7e53f23561`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:16:09 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:41 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:46 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828942863ae92b1e539ad189908373a7454aafdc7d3d154dd5c2516f15ad3957`  
		Last Modified: Wed, 01 Mar 2017 17:55:51 GMT  
		Size: 12.2 MB (12195200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b062595ab3a769f2d148497c7d34c25594882802a3181db1b8d727a4b8e7574`  
		Last Modified: Wed, 01 Mar 2017 17:55:44 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
