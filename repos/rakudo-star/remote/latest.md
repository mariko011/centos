## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:67d61ea797e8bad15fb208c5d8aac3b674a6f693974e84665ab769edc0e30265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:388009ae5ee3e7bbe52b6d967025c9ecf956edbcef853a77e8d12c273cbd117e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130687409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ef2b0ca8a9aa9b0af51a850529babb230740f2a0d14d6721338d675f84413`
-	Default Command: `["perl6"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 15:33:29 GMT
MAINTAINER Rob Hoelz
# Mon, 13 Nov 2017 15:33:30 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Mon, 13 Nov 2017 15:33:31 GMT
ARG rakudo_version=2017.10
# Mon, 13 Nov 2017 15:33:31 GMT
ENV rakudo_version=2017.10
# Mon, 13 Nov 2017 15:45:33 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 15:45:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Mon, 13 Nov 2017 15:45:34 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66eaff3ca46e5e25fb724a4ae7f2cd7d2e1ab620ce6980a1859449f47cc2b25e`  
		Last Modified: Mon, 13 Nov 2017 15:45:46 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414469d5d307cda77a9fbefac20568f5e57953ab5aa61d772f2331cdc65bb31a`  
		Last Modified: Mon, 13 Nov 2017 15:45:49 GMT  
		Size: 20.1 MB (20093230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
