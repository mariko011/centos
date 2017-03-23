## `redmine:latest`

```console
$ docker pull redmine@sha256:d47607e018d899d61b20365dc3403d7fa64b1bbf8fb30adabd02aed11cb63a1e
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247343462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bfeef7b6e59a2360ddbe3d6ac9363fb863430dc8c7692bfff5505193ec4fd1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 16:53:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 16:53:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 22 Mar 2017 16:59:09 GMT
ENV RUBY_MAJOR=2.2
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 22 Mar 2017 16:59:10 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Wed, 22 Mar 2017 17:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 22 Mar 2017 17:01:43 GMT
ENV BUNDLER_VERSION=1.14.6
# Wed, 22 Mar 2017 17:01:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 22 Mar 2017 17:01:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 22 Mar 2017 17:01:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:01:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 22 Mar 2017 17:01:47 GMT
CMD ["irb"]
# Wed, 22 Mar 2017 22:58:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 22 Mar 2017 22:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:58:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 22:58:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 22:58:21 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 22 Mar 2017 22:58:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 22 Mar 2017 23:00:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 23:00:15 GMT
ENV RAILS_ENV=production
# Wed, 22 Mar 2017 23:00:15 GMT
WORKDIR /usr/src/redmine
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_VERSION=3.3.2
# Wed, 22 Mar 2017 23:00:16 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Wed, 22 Mar 2017 23:00:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 22 Mar 2017 23:02:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 23:02:25 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 22 Mar 2017 23:02:26 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Wed, 22 Mar 2017 23:02:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 23:02:27 GMT
EXPOSE 3000/tcp
# Wed, 22 Mar 2017 23:02:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd750008fb608071512b7b8224d407a95699f6ab6e9fce97e1b2acdfcf4b7d7`  
		Last Modified: Thu, 23 Mar 2017 00:41:12 GMT  
		Size: 10.1 MB (10066874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe65b384f96c463d5b4e497b15da48c0250d5b3ef867a0a227317f6f2ef575a`  
		Last Modified: Thu, 23 Mar 2017 00:41:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73324bb16888ba0115ad0054d148dc1f5402805d5b2ef109c63b0a84bca57a6c`  
		Last Modified: Thu, 23 Mar 2017 00:46:06 GMT  
		Size: 33.4 MB (33403301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4670ef015aead73923b0203b9de72e824dc5eeefbf06bf6375a78479935005`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 638.1 KB (638111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6fc8f21e444f195067da7e8bdbb8195db0e65b7cb65f00217bc73810cec116`  
		Last Modified: Thu, 23 Mar 2017 00:45:51 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f165cfc7cbe9d0cfcc21ed2be6b16fd26d854815515a1d2191f099f0865da3`  
		Last Modified: Thu, 23 Mar 2017 02:32:30 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f696acb940bfc691e18bfb8be3260e3d17097895ace92d5c12db4090f621a`  
		Last Modified: Thu, 23 Mar 2017 02:32:36 GMT  
		Size: 13.9 MB (13863957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fae5f4bb9e8ad2cdcde2f8976101d90611cf413bb786e775f388585f574ee57`  
		Last Modified: Thu, 23 Mar 2017 02:32:28 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e650402b0ac8910268f5b2bd26dbf3f47eb5baa202796e061c31f77adf6124`  
		Last Modified: Thu, 23 Mar 2017 02:32:27 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9c5a98f381a7694a42db30d44d7d6affec1b14f82935cc13364ee3e6c4d996`  
		Last Modified: Thu, 23 Mar 2017 02:32:53 GMT  
		Size: 58.3 MB (58285793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350b00371d2a712bcbf9db99fa1795c48d287a597a4767f89626ce6f2d47d2`  
		Last Modified: Thu, 23 Mar 2017 02:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ac73585bfe6f0410fd5fc0b98fa576488246c3ec9db9c07cc0d885e03dfbf6`  
		Last Modified: Thu, 23 Mar 2017 02:37:21 GMT  
		Size: 2.4 MB (2376994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755284c99ac0cab8410c10b5efefd4cae0764c3572610df2b42a1d1f98bbf5aa`  
		Last Modified: Thu, 23 Mar 2017 02:37:38 GMT  
		Size: 76.5 MB (76450838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf78d038761f7b6f1c7c213ee406b1a45a5034ef2a372b663a5374c642022e7`  
		Last Modified: Thu, 23 Mar 2017 02:37:18 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
