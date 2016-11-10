## `rails:onbuild`

```console
$ docker pull rails@sha256:27451fef72dea996e0b235d5f58ce678270f2b60d7c4e1e0f3d7f72315d0d1aa
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294809285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4380adcbd946cae5871c6d6c2cb00ef6de1e1ca0390666c1fac00a7e03704a`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:56:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_MAJOR=2.3
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_VERSION=2.3.1
# Thu, 10 Nov 2016 08:56:56 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Thu, 10 Nov 2016 08:56:57 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Thu, 10 Nov 2016 08:59:22 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 10 Nov 2016 08:59:22 GMT
ENV BUNDLER_VERSION=1.13.6
# Thu, 10 Nov 2016 08:59:24 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 10 Nov 2016 08:59:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 10 Nov 2016 08:59:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 Nov 2016 08:59:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 10 Nov 2016 08:59:26 GMT
CMD ["irb"]
# Thu, 10 Nov 2016 09:00:40 GMT
RUN bundle config --global frozen 1
# Thu, 10 Nov 2016 09:00:41 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 09:00:42 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 09:00:42 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 10 Nov 2016 09:00:43 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 10 Nov 2016 09:00:43 GMT
ONBUILD RUN bundle install
# Thu, 10 Nov 2016 09:00:43 GMT
ONBUILD COPY . /usr/src/app
# Thu, 10 Nov 2016 09:16:56 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 09:17:05 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 09:17:05 GMT
EXPOSE 3000/tcp
# Thu, 10 Nov 2016 09:17:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741de17843a5a3121190bd9e414fea1ca05c79ee4c390b7ceef1fb6af6b2e9ec`  
		Last Modified: Thu, 10 Nov 2016 08:59:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91d9bcfd6e990de47ad1735b97845e2f20df3058bfaf13b01ec2d822af49b4`  
		Last Modified: Thu, 10 Nov 2016 08:59:51 GMT  
		Size: 35.4 MB (35393202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4906808c869eaf9a86223e220a2a2680ecdf3e639b330deabb6aaf7f739eed8`  
		Last Modified: Thu, 10 Nov 2016 08:59:40 GMT  
		Size: 612.6 KB (612599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9976164e43fac829993149ea4093681aeaa44f041188ade30dca2b3cf8ebdec`  
		Last Modified: Thu, 10 Nov 2016 08:59:41 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed97717b24f9324b11bdd92e3e771b1f3baf287aa7e498fa51a72e89515655d`  
		Last Modified: Thu, 10 Nov 2016 09:00:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ca0266ae40ec1eef7968b0c6a300db2c6a4b0479fab73da2ed3559e34c1ad4`  
		Last Modified: Thu, 10 Nov 2016 09:00:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c2d1b0e663f25d5f5f9f8762048557c730d6565b07fab3c3077d568e4d5e64`  
		Last Modified: Thu, 10 Nov 2016 09:17:19 GMT  
		Size: 2.9 MB (2879664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79c1fc26b86f1255dc9907fe8bd3506eb164291bba26c550ad81a1360c89506`  
		Last Modified: Thu, 10 Nov 2016 09:17:22 GMT  
		Size: 13.7 MB (13730660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
