## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:fe1aa55ef4f08c49a07fa608d691a0688db0dc96847fa449455794c060188b2e
```

-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124054936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c3d8cafb94fe8264b5cd91d40aceae139cb207e201453a87308f46ab47ed8a`
-	Default Command: `["perl6"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:31 GMT
MAINTAINER Rob Hoelz
# Tue, 17 Jan 2017 19:57:32 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Mon, 06 Feb 2017 17:23:25 GMT
ENV rakudo_version=2017.01
# Mon, 06 Feb 2017 17:30:51 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Mon, 06 Feb 2017 17:30:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Mon, 06 Feb 2017 17:30:51 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff662fd91848c3254ec417eb7ad8d711d963f53e3bfe68199c66dc2cb9ca66b`  
		Last Modified: Wed, 18 Jan 2017 07:12:59 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2ae69ad44da13804b46cc48c618ca60aad2e67385bb2423d5b447177ca003c`  
		Last Modified: Mon, 06 Feb 2017 17:31:14 GMT  
		Size: 11.7 MB (11653829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
