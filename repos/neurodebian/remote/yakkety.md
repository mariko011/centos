## `neurodebian:yakkety`

```console
$ docker pull neurodebian@sha256:eb14bb8a28860b9a1791cd16dda8c4d541d5f0b4e2755214c338462a8ada1760
```

-	Platforms:
	-	linux; amd64

### `neurodebian:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46006310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de73b8decef213b62ff0b6bdaf1516c132837574dacdb93f99a5dbd72c9c5a5f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:19:57 GMT
ADD file:e4c6632231dabc7399cf6466d1c4c9e89d78b731101eb1fd29d23e21fddc5acb in / 
# Tue, 20 Jun 2017 23:20:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:20:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:20:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:20:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:21:10 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:50:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:50:31 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:a55d728810805fb84bc7c40f0621ae3ea4869203e0a6bce5456d125c17e56520`  
		Last Modified: Tue, 20 Jun 2017 23:33:21 GMT  
		Size: 42.8 MB (42754848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af1ccb9c1ebcf1385563d3b4764f0b829970c547b02c938325dd3acd5f0588`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1e1a31b68748a5372a572e748107e11ef2ddb49bc6fac5ebdd43af45a0c64`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79f1c2fa96ca331ffd7d43919af5fc94ffc7e7cebd1e93d5327808d1e56860e`  
		Last Modified: Tue, 20 Jun 2017 23:33:10 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c290e5b582d7528f4b96cd8347b9a6cdf52db4c3fa5d2780aeb9a20212e94e82`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75612bb4049f3c728340ffe1a2313db8b9d8d58d66c34925837a5d2580d2ceef`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 3.2 MB (3245737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adce3656ed4a33678dae4fec5770c6acd8fb4f692352dcf348ccddb93222baf`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f80722602bf2c99ce2bce1d2f9982b28cfdca901a4d8c86e8a62e63dc250a`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
