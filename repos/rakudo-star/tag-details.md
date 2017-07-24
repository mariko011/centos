<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2017.07`](#rakudo-star201707)
-	[`rakudo-star:latest`](#rakudo-starlatest)

## `rakudo-star:2017.07`

```console
$ docker pull rakudo-star@sha256:309ffb63c3d6acbdcaccff5f9cdd46997edd29dc1887101e15c9a5d47c7467d0
```

-	Platforms:
	-	linux; amd64

### `rakudo-star:2017.07` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134629424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8b2290447c532d5a1ad5003131020d965756579339e3d3946436cda98da695`
-	Default Command: `["perl6"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 23:13:23 GMT
MAINTAINER Rob Hoelz
# Mon, 24 Jul 2017 23:13:24 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Mon, 24 Jul 2017 23:13:24 GMT
ENV rakudo_version=2017.07
# Mon, 24 Jul 2017 23:24:08 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 23:24:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Mon, 24 Jul 2017 23:24:10 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8332ccd88980d8694118a17bb6e8b691fc9b9e3f5099298300081bce3a4657a2`  
		Last Modified: Mon, 24 Jul 2017 23:24:16 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189e5e4e04f7c9bd0cee821475044bef2b20343f21f871dc569b19750168abb2`  
		Last Modified: Mon, 24 Jul 2017 23:24:20 GMT  
		Size: 19.5 MB (19532267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:309ffb63c3d6acbdcaccff5f9cdd46997edd29dc1887101e15c9a5d47c7467d0
```

-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134629424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8b2290447c532d5a1ad5003131020d965756579339e3d3946436cda98da695`
-	Default Command: `["perl6"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 23:13:23 GMT
MAINTAINER Rob Hoelz
# Mon, 24 Jul 2017 23:13:24 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Mon, 24 Jul 2017 23:13:24 GMT
ENV rakudo_version=2017.07
# Mon, 24 Jul 2017 23:24:08 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 23:24:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Mon, 24 Jul 2017 23:24:10 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8332ccd88980d8694118a17bb6e8b691fc9b9e3f5099298300081bce3a4657a2`  
		Last Modified: Mon, 24 Jul 2017 23:24:16 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189e5e4e04f7c9bd0cee821475044bef2b20343f21f871dc569b19750168abb2`  
		Last Modified: Mon, 24 Jul 2017 23:24:20 GMT  
		Size: 19.5 MB (19532267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
