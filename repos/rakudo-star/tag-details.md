<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2017.10`](#rakudo-star201710)
-	[`rakudo-star:latest`](#rakudo-starlatest)

## `rakudo-star:2017.10`

**does not exist** (yet?)

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:1b348bbd07f3ee9b0693cf3517221c298249309e7bdfb96b12246b808e38ed3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:d049bdda8506e9e1aeee57e018b21c21ce1bc3e2c30be687c2c9fa8e22b6a4b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134876349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130a607aa0a052e63acebc96261075b0caa088b869918da89deab6966f21e10c`
-	Default Command: `["perl6"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 16:36:50 GMT
MAINTAINER Rob Hoelz
# Sat, 04 Nov 2017 16:36:50 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Sat, 04 Nov 2017 16:36:51 GMT
ENV rakudo_version=2017.07
# Sat, 04 Nov 2017 16:47:51 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 16:47:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Sat, 04 Nov 2017 16:47:52 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c49d1661cefa84896c9f6be9b15f96c99855dfb9d2cb84c2343673586ed070`  
		Last Modified: Sat, 04 Nov 2017 16:48:03 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c0c4547f7fe35c4238715966f30f786dcf6312db7c11eb49f6d7b0264bf59`  
		Last Modified: Sat, 04 Nov 2017 16:48:07 GMT  
		Size: 19.8 MB (19786236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
