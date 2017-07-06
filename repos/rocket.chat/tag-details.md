<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.57.0`](#rocketchat0570)
-	[`rocket.chat:0.57`](#rocketchat057)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.57.0`

**does not exist** (yet?)

## `rocket.chat:0.57`

**does not exist** (yet?)

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:72ef67d1e02b3cf50c29c20228edf0990930dc22bbc0f20bbea1ffb6acf22a8d
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201350431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36010f45dffc2ae4dc1f3b01a7594ab268486425df6b232bfaf82b758d030c79`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:59:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 23 Jun 2017 00:59:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 23 Jun 2017 00:59:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 23 Jun 2017 01:06:50 GMT
ENV NODE_VERSION=4.8.3
# Fri, 23 Jun 2017 01:07:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Jun 2017 01:07:05 GMT
ENV YARN_VERSION=0.24.4
# Fri, 23 Jun 2017 01:07:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 23 Jun 2017 01:07:10 GMT
CMD ["node"]
# Fri, 23 Jun 2017 05:53:45 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 23 Jun 2017 05:53:47 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Fri, 23 Jun 2017 05:53:48 GMT
VOLUME [/app/uploads]
# Fri, 23 Jun 2017 05:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Fri, 23 Jun 2017 05:53:51 GMT
ENV RC_VERSION=0.56.0
# Fri, 23 Jun 2017 05:53:52 GMT
WORKDIR /app
# Fri, 23 Jun 2017 05:54:56 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Fri, 23 Jun 2017 05:55:00 GMT
USER [rocketchat]
# Fri, 23 Jun 2017 05:55:01 GMT
WORKDIR /app/bundle
# Fri, 23 Jun 2017 05:55:02 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Fri, 23 Jun 2017 05:55:03 GMT
EXPOSE 3000/tcp
# Fri, 23 Jun 2017 05:55:04 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe38782ba6f17ba90e104826d2017f1fd86b7873f12c4632c9ea52cbcd88e1b`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a1d2307e1b2182bc4238e3223c1b03059a05af2a1ebf73db6d30349e490d1`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d328af0cf3b02f233627fe3215495194d40f1f711b5131a5a8e294711677312`  
		Last Modified: Sat, 24 Jun 2017 15:32:35 GMT  
		Size: 12.6 MB (12572594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c973e3df1e1c910e347cd076a91deeb978c8be9e0ca32d56ef2c80289d1506e8`  
		Last Modified: Sat, 24 Jun 2017 15:32:29 GMT  
		Size: 900.6 KB (900593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be7378c51cdac511059982a4619d567328e9e1e767eb1e9d3d26d102731038e`  
		Last Modified: Sat, 24 Jun 2017 21:57:14 GMT  
		Size: 2.2 KB (2153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925b04425c5dce3b47581d13f036bfe646c915c2c2be058f26a13e1d47da4e8c`  
		Last Modified: Sat, 24 Jun 2017 21:57:15 GMT  
		Size: 127.2 KB (127204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4572325e9c39d558ef42277227692b9b190aeb2fd8184c95af7d66e246e8584f`  
		Last Modified: Sat, 24 Jun 2017 21:58:12 GMT  
		Size: 115.7 MB (115745187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:72ef67d1e02b3cf50c29c20228edf0990930dc22bbc0f20bbea1ffb6acf22a8d
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201350431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36010f45dffc2ae4dc1f3b01a7594ab268486425df6b232bfaf82b758d030c79`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:59:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 23 Jun 2017 00:59:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 23 Jun 2017 00:59:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 23 Jun 2017 01:06:50 GMT
ENV NODE_VERSION=4.8.3
# Fri, 23 Jun 2017 01:07:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Jun 2017 01:07:05 GMT
ENV YARN_VERSION=0.24.4
# Fri, 23 Jun 2017 01:07:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 23 Jun 2017 01:07:10 GMT
CMD ["node"]
# Fri, 23 Jun 2017 05:53:45 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 23 Jun 2017 05:53:47 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Fri, 23 Jun 2017 05:53:48 GMT
VOLUME [/app/uploads]
# Fri, 23 Jun 2017 05:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Fri, 23 Jun 2017 05:53:51 GMT
ENV RC_VERSION=0.56.0
# Fri, 23 Jun 2017 05:53:52 GMT
WORKDIR /app
# Fri, 23 Jun 2017 05:54:56 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Fri, 23 Jun 2017 05:55:00 GMT
USER [rocketchat]
# Fri, 23 Jun 2017 05:55:01 GMT
WORKDIR /app/bundle
# Fri, 23 Jun 2017 05:55:02 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Fri, 23 Jun 2017 05:55:03 GMT
EXPOSE 3000/tcp
# Fri, 23 Jun 2017 05:55:04 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe38782ba6f17ba90e104826d2017f1fd86b7873f12c4632c9ea52cbcd88e1b`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a1d2307e1b2182bc4238e3223c1b03059a05af2a1ebf73db6d30349e490d1`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d328af0cf3b02f233627fe3215495194d40f1f711b5131a5a8e294711677312`  
		Last Modified: Sat, 24 Jun 2017 15:32:35 GMT  
		Size: 12.6 MB (12572594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c973e3df1e1c910e347cd076a91deeb978c8be9e0ca32d56ef2c80289d1506e8`  
		Last Modified: Sat, 24 Jun 2017 15:32:29 GMT  
		Size: 900.6 KB (900593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be7378c51cdac511059982a4619d567328e9e1e767eb1e9d3d26d102731038e`  
		Last Modified: Sat, 24 Jun 2017 21:57:14 GMT  
		Size: 2.2 KB (2153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925b04425c5dce3b47581d13f036bfe646c915c2c2be058f26a13e1d47da4e8c`  
		Last Modified: Sat, 24 Jun 2017 21:57:15 GMT  
		Size: 127.2 KB (127204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4572325e9c39d558ef42277227692b9b190aeb2fd8184c95af7d66e246e8584f`  
		Last Modified: Sat, 24 Jun 2017 21:58:12 GMT  
		Size: 115.7 MB (115745187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
