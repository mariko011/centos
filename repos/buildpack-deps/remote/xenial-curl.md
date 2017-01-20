## `buildpack-deps:xenial-curl`

```console
$ docker pull buildpack-deps@sha256:03acc9470a08f3e6c4ba48373c6f624531fe3a1d6f09e9d503040093630a494a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57550076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400371bac3667fee61ddaa05ba5e8560ab848edb93425cb6ea1c0149cd21478a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:50:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03764320a0af12543478b581219c36d384124654d3d9c6d65503b33a62bded9`  
		Last Modified: Fri, 20 Jan 2017 23:05:44 GMT  
		Size: 7.2 MB (7239720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
