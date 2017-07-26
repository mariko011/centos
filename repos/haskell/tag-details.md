<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haskell`

-	[`haskell:8.0.2`](#haskell802)
-	[`haskell:8.0`](#haskell80)
-	[`haskell:8`](#haskell8)
-	[`haskell:latest`](#haskelllatest)

## `haskell:8.0.2`

```console
$ docker pull haskell@sha256:d1858ea0f29bc530f37ed6930c6b75843e64c5e38929a30c76d6ebf9b73224d3
```

-	Platforms:
	-	linux; amd64

### `haskell:8.0.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251102588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2a25b093f33fe8a8ef6d129e34be7d9e881c1fecd57629cfe8cd800ebfc514`
-	Default Command: `["ghci"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 05:34:56 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 05:36:24 GMT
RUN echo 'deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286 &&     apt-get update &&     apt-get install -y --no-install-recommends cabal-install-1.24 ghc-8.0.2 happy-1.19.5 alex-3.1.7             zlib1g-dev libtinfo-dev libsqlite3-0 libsqlite3-dev ca-certificates g++ git curl &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 26 Jul 2017 05:36:24 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.2/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:36:24 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddd0100c9bd9e57a2fd62b64cfa99fbf733b543e5a55e9087058faad2151746`  
		Last Modified: Wed, 26 Jul 2017 05:37:06 GMT  
		Size: 198.5 MB (198496956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.0`

```console
$ docker pull haskell@sha256:d1858ea0f29bc530f37ed6930c6b75843e64c5e38929a30c76d6ebf9b73224d3
```

-	Platforms:
	-	linux; amd64

### `haskell:8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251102588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2a25b093f33fe8a8ef6d129e34be7d9e881c1fecd57629cfe8cd800ebfc514`
-	Default Command: `["ghci"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 05:34:56 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 05:36:24 GMT
RUN echo 'deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286 &&     apt-get update &&     apt-get install -y --no-install-recommends cabal-install-1.24 ghc-8.0.2 happy-1.19.5 alex-3.1.7             zlib1g-dev libtinfo-dev libsqlite3-0 libsqlite3-dev ca-certificates g++ git curl &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 26 Jul 2017 05:36:24 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.2/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:36:24 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddd0100c9bd9e57a2fd62b64cfa99fbf733b543e5a55e9087058faad2151746`  
		Last Modified: Wed, 26 Jul 2017 05:37:06 GMT  
		Size: 198.5 MB (198496956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8`

```console
$ docker pull haskell@sha256:d1858ea0f29bc530f37ed6930c6b75843e64c5e38929a30c76d6ebf9b73224d3
```

-	Platforms:
	-	linux; amd64

### `haskell:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251102588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2a25b093f33fe8a8ef6d129e34be7d9e881c1fecd57629cfe8cd800ebfc514`
-	Default Command: `["ghci"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 05:34:56 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 05:36:24 GMT
RUN echo 'deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286 &&     apt-get update &&     apt-get install -y --no-install-recommends cabal-install-1.24 ghc-8.0.2 happy-1.19.5 alex-3.1.7             zlib1g-dev libtinfo-dev libsqlite3-0 libsqlite3-dev ca-certificates g++ git curl &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 26 Jul 2017 05:36:24 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.2/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:36:24 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddd0100c9bd9e57a2fd62b64cfa99fbf733b543e5a55e9087058faad2151746`  
		Last Modified: Wed, 26 Jul 2017 05:37:06 GMT  
		Size: 198.5 MB (198496956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:latest`

```console
$ docker pull haskell@sha256:d1858ea0f29bc530f37ed6930c6b75843e64c5e38929a30c76d6ebf9b73224d3
```

-	Platforms:
	-	linux; amd64

### `haskell:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251102588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2a25b093f33fe8a8ef6d129e34be7d9e881c1fecd57629cfe8cd800ebfc514`
-	Default Command: `["ghci"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 05:34:56 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 05:36:24 GMT
RUN echo 'deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286 &&     apt-get update &&     apt-get install -y --no-install-recommends cabal-install-1.24 ghc-8.0.2 happy-1.19.5 alex-3.1.7             zlib1g-dev libtinfo-dev libsqlite3-0 libsqlite3-dev ca-certificates g++ git curl &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 26 Jul 2017 05:36:24 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.2/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 05:36:24 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddd0100c9bd9e57a2fd62b64cfa99fbf733b543e5a55e9087058faad2151746`  
		Last Modified: Wed, 26 Jul 2017 05:37:06 GMT  
		Size: 198.5 MB (198496956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
