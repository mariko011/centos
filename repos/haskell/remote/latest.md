## `haskell:latest`

```console
$ docker pull haskell@sha256:940797bb5340e232e59fab5df1387c4ea8006b982daba2cbdd85c8d0828cabe1
```

-	Platforms:
	-	linux; amd64

### `haskell:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251077099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e4325aee3bd8628143c705835643f0ad872f4bf99b6de1f564896babce0ea5`
-	Default Command: `["ghci"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 16:59:43 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:03:54 GMT
RUN echo 'deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286 &&     apt-get update &&     apt-get install -y --no-install-recommends cabal-install-1.24 ghc-8.0.2 happy-1.19.5 alex-3.1.7             zlib1g-dev libtinfo-dev libsqlite3-0 libsqlite3-dev ca-certificates g++ git curl &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.3.2/stack-1.3.2-linux-x86_64-static.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Tue, 09 May 2017 17:03:55 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.2/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:03:55 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881a61e0e537b7be49e7c3aa45540112514c585825592a66f3a0a75a53d2088`  
		Last Modified: Sat, 13 May 2017 06:22:37 GMT  
		Size: 198.5 MB (198493083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
