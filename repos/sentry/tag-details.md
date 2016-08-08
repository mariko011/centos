<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `sentry`

-	[`sentry:8.6.0`](#sentry860)
-	[`sentry:8.6`](#sentry86)
-	[`sentry:8.6.0-onbuild`](#sentry860-onbuild)
-	[`sentry:8.6-onbuild`](#sentry86-onbuild)
-	[`sentry:8.7.0`](#sentry870)
-	[`sentry:8.7`](#sentry87)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.7.0-onbuild`](#sentry870-onbuild)
-	[`sentry:8.7-onbuild`](#sentry87-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8.6.0`

```console
$ docker pull sentry@sha256:eca7581ba0cbb57b8e9e40ba6dfaaf6cbd53c3cd5a652912b1a8fde3f1ddb469
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168851954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3dd0f26d47834aef38e0764d7d5d4cc7c49f44423952f5be974bec59d9a52f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:02:44 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 22:05:16 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:05:18 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:05:19 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:05:20 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:05:21 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:05:22 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 22:05:23 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:05:24 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:05:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:05:25 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:2637d5bfc87e9e54d2637262a403f17859f8cd67174c89a720a1247b083f27a1`  
		Last Modified: Mon, 08 Aug 2016 22:05:49 GMT  
		Size: 32.8 MB (32812460 bytes)
	-	`sha256:5e5129bcd937ad8537ad8b7eedc640c3719ab7da060f35ecce84fe4a9bcdb614`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 173.0 B
	-	`sha256:28bd85ce8249f97fb64c702833c17a226aa90613fd877fb2b37f30f9665647bc`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 3.3 KB (3316 bytes)
	-	`sha256:892077ad4601e2902125b5764bef6cd7e7eb0cf58a014edf77c895142d55d3db`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 919.0 B
	-	`sha256:fb787baa92850c7fae4cceb66247572dab74e51dd5a1f40b7f0f2e5b8a786a11`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 420.0 B

## `sentry:8.6`

```console
$ docker pull sentry@sha256:eca7581ba0cbb57b8e9e40ba6dfaaf6cbd53c3cd5a652912b1a8fde3f1ddb469
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168851954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3dd0f26d47834aef38e0764d7d5d4cc7c49f44423952f5be974bec59d9a52f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:02:44 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 22:05:16 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:05:18 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:05:19 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:05:20 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:05:21 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:05:22 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 22:05:23 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:05:24 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:05:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:05:25 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:2637d5bfc87e9e54d2637262a403f17859f8cd67174c89a720a1247b083f27a1`  
		Last Modified: Mon, 08 Aug 2016 22:05:49 GMT  
		Size: 32.8 MB (32812460 bytes)
	-	`sha256:5e5129bcd937ad8537ad8b7eedc640c3719ab7da060f35ecce84fe4a9bcdb614`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 173.0 B
	-	`sha256:28bd85ce8249f97fb64c702833c17a226aa90613fd877fb2b37f30f9665647bc`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 3.3 KB (3316 bytes)
	-	`sha256:892077ad4601e2902125b5764bef6cd7e7eb0cf58a014edf77c895142d55d3db`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 919.0 B
	-	`sha256:fb787baa92850c7fae4cceb66247572dab74e51dd5a1f40b7f0f2e5b8a786a11`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 420.0 B

## `sentry:8.6.0-onbuild`

```console
$ docker pull sentry@sha256:8a29878e4bd91cb756c39b6e98b5afb67784d647402243897b30c7222a167ac9
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168852084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca4b540199e6a1539471eab42fa74dec43ae9e8835f68a17cc01e8cba143379`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:02:44 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 22:05:16 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:05:18 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:05:19 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:05:20 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:05:21 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:05:22 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 22:05:23 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:05:24 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:05:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:05:25 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 22:10:54 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 22:10:55 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 22:10:56 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 22:10:57 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 22:10:57 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 22:10:58 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:2637d5bfc87e9e54d2637262a403f17859f8cd67174c89a720a1247b083f27a1`  
		Last Modified: Mon, 08 Aug 2016 22:05:49 GMT  
		Size: 32.8 MB (32812460 bytes)
	-	`sha256:5e5129bcd937ad8537ad8b7eedc640c3719ab7da060f35ecce84fe4a9bcdb614`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 173.0 B
	-	`sha256:28bd85ce8249f97fb64c702833c17a226aa90613fd877fb2b37f30f9665647bc`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 3.3 KB (3316 bytes)
	-	`sha256:892077ad4601e2902125b5764bef6cd7e7eb0cf58a014edf77c895142d55d3db`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 919.0 B
	-	`sha256:fb787baa92850c7fae4cceb66247572dab74e51dd5a1f40b7f0f2e5b8a786a11`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 420.0 B
	-	`sha256:f944b2ad306a4dbc922061449363520275f0a1848e9092ff45949b3fc14f8a88`  
		Last Modified: Mon, 08 Aug 2016 22:11:08 GMT  
		Size: 130.0 B

## `sentry:8.6-onbuild`

```console
$ docker pull sentry@sha256:8a29878e4bd91cb756c39b6e98b5afb67784d647402243897b30c7222a167ac9
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168852084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca4b540199e6a1539471eab42fa74dec43ae9e8835f68a17cc01e8cba143379`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:02:44 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 22:05:16 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:05:18 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:05:19 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:05:20 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:05:21 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:05:22 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 22:05:23 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:05:24 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:05:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:05:25 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 22:10:54 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 22:10:55 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 22:10:56 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 22:10:57 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 22:10:57 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 22:10:58 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:2637d5bfc87e9e54d2637262a403f17859f8cd67174c89a720a1247b083f27a1`  
		Last Modified: Mon, 08 Aug 2016 22:05:49 GMT  
		Size: 32.8 MB (32812460 bytes)
	-	`sha256:5e5129bcd937ad8537ad8b7eedc640c3719ab7da060f35ecce84fe4a9bcdb614`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 173.0 B
	-	`sha256:28bd85ce8249f97fb64c702833c17a226aa90613fd877fb2b37f30f9665647bc`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 3.3 KB (3316 bytes)
	-	`sha256:892077ad4601e2902125b5764bef6cd7e7eb0cf58a014edf77c895142d55d3db`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 919.0 B
	-	`sha256:fb787baa92850c7fae4cceb66247572dab74e51dd5a1f40b7f0f2e5b8a786a11`  
		Last Modified: Mon, 08 Aug 2016 22:05:35 GMT  
		Size: 420.0 B
	-	`sha256:f944b2ad306a4dbc922061449363520275f0a1848e9092ff45949b3fc14f8a88`  
		Last Modified: Mon, 08 Aug 2016 22:11:08 GMT  
		Size: 130.0 B

## `sentry:8.7.0`

```console
$ docker pull sentry@sha256:9c40c83fc289125e0e68c569793ede6e2405c08f9d5b4951cb35193584d176ae
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f31d4108b07e5ad6eeaf0cf98414aca8428052779258b5189b1c068406265f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B

## `sentry:8.7`

```console
$ docker pull sentry@sha256:9c40c83fc289125e0e68c569793ede6e2405c08f9d5b4951cb35193584d176ae
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f31d4108b07e5ad6eeaf0cf98414aca8428052779258b5189b1c068406265f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B

## `sentry:8`

```console
$ docker pull sentry@sha256:9c40c83fc289125e0e68c569793ede6e2405c08f9d5b4951cb35193584d176ae
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f31d4108b07e5ad6eeaf0cf98414aca8428052779258b5189b1c068406265f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B

## `sentry:latest`

```console
$ docker pull sentry@sha256:9c40c83fc289125e0e68c569793ede6e2405c08f9d5b4951cb35193584d176ae
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f31d4108b07e5ad6eeaf0cf98414aca8428052779258b5189b1c068406265f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B

## `sentry:8.7.0-onbuild`

```console
$ docker pull sentry@sha256:172b54229a8585c0927f5aff372874f67579653589dae2dc2b4a0e26858a104f
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8981356b7fd4d484fe4640b894560d15d548c2b558184f753b4ab38c67b4010`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 22:10:01 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 22:10:02 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 22:10:03 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 22:10:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B
	-	`sha256:4edcf86596218f001b992c7db13b996e7a5ae7533bc80cabc755987faf9633d1`  
		Last Modified: Mon, 08 Aug 2016 22:10:15 GMT  
		Size: 131.0 B

## `sentry:8.7-onbuild`

```console
$ docker pull sentry@sha256:172b54229a8585c0927f5aff372874f67579653589dae2dc2b4a0e26858a104f
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8981356b7fd4d484fe4640b894560d15d548c2b558184f753b4ab38c67b4010`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 22:10:01 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 22:10:02 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 22:10:03 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 22:10:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B
	-	`sha256:4edcf86596218f001b992c7db13b996e7a5ae7533bc80cabc755987faf9633d1`  
		Last Modified: Mon, 08 Aug 2016 22:10:15 GMT  
		Size: 131.0 B

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:172b54229a8585c0927f5aff372874f67579653589dae2dc2b4a0e26858a104f
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8981356b7fd4d484fe4640b894560d15d548c2b558184f753b4ab38c67b4010`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 22:10:01 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 22:10:02 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 22:10:03 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 22:10:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B
	-	`sha256:4edcf86596218f001b992c7db13b996e7a5ae7533bc80cabc755987faf9633d1`  
		Last Modified: Mon, 08 Aug 2016 22:10:15 GMT  
		Size: 131.0 B

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:172b54229a8585c0927f5aff372874f67579653589dae2dc2b4a0e26858a104f
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8981356b7fd4d484fe4640b894560d15d548c2b558184f753b4ab38c67b4010`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:58:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 21:59:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:59:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 21:59:59 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 21:59:59 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 22:01:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:01:26 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 22:02:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 22:02:43 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 22:06:17 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 22:08:50 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 22:08:51 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 22:08:53 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 22:08:54 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 22:08:55 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 22:08:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 22:08:56 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 22:08:57 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 22:08:58 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 22:08:58 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 22:10:01 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 22:10:02 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 22:10:03 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 22:10:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 22:10:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:51e6ae891dc4b4402853176d63eb4a0b8bd719b77e89c4bba8ca13ba6f4cefe1`  
		Last Modified: Mon, 08 Aug 2016 22:05:41 GMT  
		Size: 4.4 KB (4353 bytes)
	-	`sha256:e774308301f9f0a09397ac2c891677a8f2f81afbd94ad072bf042219497091cc`  
		Last Modified: Mon, 08 Aug 2016 22:05:57 GMT  
		Size: 60.5 MB (60548645 bytes)
	-	`sha256:e0c589a451a1f6e951f6a71a39542c321ab73085780d506f7ddd4604d82d7e00`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 698.7 KB (698709 bytes)
	-	`sha256:40ee14ce94e523e576852f1af8c38a73833a14c92798dbbe5e78a31c0fa7c2b9`  
		Last Modified: Mon, 08 Aug 2016 22:05:38 GMT  
		Size: 129.4 KB (129377 bytes)
	-	`sha256:cf32b8f8dd33a8ed30649220c43c8741cce6f0a28bfca6f4ab94814efd0b2552`  
		Last Modified: Mon, 08 Aug 2016 22:05:39 GMT  
		Size: 1.9 MB (1899403 bytes)
	-	`sha256:3a0dd2910af1277792b44246da7145d359ad2208cfaa00b253af010cec890321`  
		Last Modified: Mon, 08 Aug 2016 22:09:20 GMT  
		Size: 33.2 MB (33241864 bytes)
	-	`sha256:2331a607511b24c83f2b212369c268871d9ad8986515d5482368b1d1ed521222`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 174.0 B
	-	`sha256:b24143c10e8caf7839afc2dbf614d2d6a17dd0cef05379beaf763784761dd667`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:a4f6734e52e0550609e7f2871b8a79bc0ef68095d4ff65e3a124fe891d7b2606`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 919.0 B
	-	`sha256:ec6dca1a65467bc7a8146064a984451531b41055869f990229177e802149560f`  
		Last Modified: Mon, 08 Aug 2016 22:09:08 GMT  
		Size: 421.0 B
	-	`sha256:4edcf86596218f001b992c7db13b996e7a5ae7533bc80cabc755987faf9633d1`  
		Last Modified: Mon, 08 Aug 2016 22:10:15 GMT  
		Size: 131.0 B
