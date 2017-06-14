## `neurodebian:yakkety`

```console
$ docker pull neurodebian@sha256:0afad76f9b2468a14bf514c523731f86631d8b0c9c84fd86e89a66d691bbf045
```

-	Platforms:
	-	linux; amd64

### `neurodebian:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45875101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a3826b73baf1f62fe2100bbddcaaea7743e91dad0e44b4218022417493ff93`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:17:26 GMT
ADD file:0ef16a3f41673e08936332e3fc6e0f274347d10b1dd46b5327df0ee18f02e8b3 in / 
# Fri, 02 Jun 2017 16:17:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:17:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:17:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:17:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:17:33 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:06:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:30:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Jun 2017 18:30:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:62f959364870c00a62465c8fd1e66042521cfd1295a3b9e4b974c68f6571753d`  
		Last Modified: Fri, 02 Jun 2017 16:25:47 GMT  
		Size: 42.6 MB (42623555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f405834a6531db41aa7575e05311f67686fd194eea885e606027f1bd35ed0`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10a21395fd67fa485eafbf5d01e8432a0b2e17ea882a7144744730ea42d6f3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1614b55dc6cf1538d3ae1cd59beef15056db1e2a92c4e1364835dcbe10fff3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613c15d05cfae809241c607929dcbe2329e8beac970b9991d10eed5987ddbd88`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774f18b37f940ce340c29718583bf1e59d811257d5016defc5b2625c3327a8bd`  
		Last Modified: Sat, 03 Jun 2017 00:11:26 GMT  
		Size: 3.2 MB (3245820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420db848235b302f85edfd2bf5ee38c052c6a26fa3dfad1ec840a1f0f8315e8`  
		Last Modified: Wed, 14 Jun 2017 19:15:14 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35229a2fccde258a03b5a27072f1ae1d874bd77d92cf4ecf30e72834f586ec68`  
		Last Modified: Wed, 14 Jun 2017 19:15:13 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
