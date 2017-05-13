## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:0e6c0e032660fabe9ca679d683348183aba6313d87fcfc1a751ad5acdd2cceb1
```

-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128412296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118af315b797fb7411714b14502d60f7541cad9acfd590814a14d75d0001a8b7`
-	Default Command: `["perl6"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:33:31 GMT
MAINTAINER Rob Hoelz
# Wed, 10 May 2017 15:33:33 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Wed, 10 May 2017 15:33:34 GMT
ENV rakudo_version=2017.04
# Wed, 10 May 2017 15:41:23 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:41:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Wed, 10 May 2017 15:41:24 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ac7af4f941c4480bc49b2524f32b219e761f8b68119134aea1d0faeceea820`  
		Last Modified: Sat, 13 May 2017 18:13:43 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5efa010fb70c60aa7ff9aee136bff86789eb785c0b88e6e5a93eeb3bfb9df9`  
		Last Modified: Sat, 13 May 2017 18:13:48 GMT  
		Size: 13.3 MB (13327871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
