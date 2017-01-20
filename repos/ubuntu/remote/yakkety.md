## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:609c1726180221d95a66ce3ed1e898f4a543c5be9ff3dbb1f10180a6cb2a6fdc
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40847739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31005225a74578ec48fbe5a833ef39a3e41ebcbf0714ad3867070405b3efd81e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:44:28 GMT
ADD file:eef57983bd66e3a118b47ebd754411714df861fd12aa9f292e26583747593d02 in / 
# Fri, 20 Jan 2017 21:44:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:44:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:45:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3a635c0fcefb5e1b7ea3963fb6e6b1124194e5914e7402937308ed44f7758700`  
		Last Modified: Fri, 20 Jan 2017 21:52:24 GMT  
		Size: 40.8 MB (40845445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3f7e9b4869ed2f872ffed29cc28109f5e789b37cc2714eed877fbf22ce65fa`  
		Last Modified: Fri, 20 Jan 2017 21:52:12 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad323864e1f85d17700ba6cdd9dfb704129f2bad61ae64c90de31a932ab95293`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d3fc870200efe46f0279de5d616e596980e49ff35ad023e07928fdff7f6d5f`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69d6ff0e5688af3aeefc9af3b6365eaeed61d00ffcc9f5bbef9e998a1440db`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
