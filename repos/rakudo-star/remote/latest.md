## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:f2be1da6b3033cf6049e2c239e1ac2a136faecc62e4192977a2cb2591dadac06
```

-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123157726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24ea0a3a5e478b200f85cdf2e283a048a224c38b8d29c43de35972c4c6aabe9`
-	Default Command: `["perl6"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:52:20 GMT
MAINTAINER Rob Hoelz
# Wed, 09 Nov 2016 00:52:22 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Tue, 29 Nov 2016 18:20:10 GMT
ENV rakudo_version=2016.11
# Tue, 29 Nov 2016 18:28:36 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Tue, 29 Nov 2016 18:28:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Tue, 29 Nov 2016 18:29:00 GMT
CMD ["perl6"]
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
	-	`sha256:af6beeda3116ecdb34f7be9d9f323b5338c1144987e33e5dfd7f8de040793f84`  
		Last Modified: Wed, 09 Nov 2016 01:00:25 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c19e8c9f56b3137c94311b00f8abfb7b5f155cce1261ebc4e69682892da24f`  
		Last Modified: Tue, 29 Nov 2016 18:29:22 GMT  
		Size: 10.8 MB (10771966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
