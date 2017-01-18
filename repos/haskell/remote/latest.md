## `haskell:latest`

```console
$ docker pull haskell@sha256:1d89da8a79caa905a99ae81a5d9dd5c1964ec3fe32c4f2c2cf7a28a7c433ece7
```

-	Platforms:
	-	linux; amd64

### `haskell:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255532485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc5a5260db00ef1c1538dd8a9b5bd0ae569c18b1f1c32c0a69469081c1e9882`
-	Default Command: `["ghci"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:44:50 GMT
MAINTAINER Chris Biscardi <chris@christopherbiscardi.com>
# Tue, 17 Jan 2017 00:44:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:46:17 GMT
RUN echo 'deb http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' > /etc/apt/sources.list.d/ghc.list &&     echo 'deb http://download.fpcomplete.com/debian/jessie stable main'| tee /etc/apt/sources.list.d/fpco.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286 &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     apt-get update &&     apt-get install -y --no-install-recommends cabal-install-1.24 ghc-8.0.1 happy-1.19.5 alex-3.1.7             stack zlib1g-dev libtinfo-dev libsqlite3-0 libsqlite3-dev ca-certificates g++ git &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:46:18 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.1/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:46:18 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5f380bbf7c7705489d99b69ad9ce521053e9f02adf2887f409c6f1bf9083d4`  
		Last Modified: Wed, 18 Jan 2017 03:58:44 GMT  
		Size: 204.2 MB (204171275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
