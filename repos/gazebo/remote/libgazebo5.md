## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:8b4b5623f0ef20ca95ff7bf8c16da817a6ca442eba8a333fe6a5047836c9e335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

```console
$ docker pull gazebo@sha256:edc7912c6e916edbf6bc2a83b2c80bab6d8f380c57800d2044490120c09dbe8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498406070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ad35294fa269e81d06e50924038f036de035aa9db4017774ba900865cf4d6b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 13:13:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 04 Nov 2017 13:13:01 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 04 Nov 2017 13:23:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 13:23:23 GMT
EXPOSE 11345/tcp
# Sat, 04 Nov 2017 13:23:23 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sat, 04 Nov 2017 13:23:23 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 04 Nov 2017 13:23:23 GMT
CMD ["gzserver"]
# Sat, 04 Nov 2017 13:26:49 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25258b1f988056174e714e8e6ba56e4d8af9b580d9c652700df1c46695e0e13`  
		Last Modified: Sat, 04 Nov 2017 13:48:58 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600bdee4a081079c643f261d2bf7b4c5d05b62f36b9ecb113dd5fc373bf7209c`  
		Last Modified: Sat, 04 Nov 2017 13:48:58 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f4f1d1eb1dc8db0f6db72d987a1f3a8ba2d50d8caece236eca9b6b39496f8b`  
		Last Modified: Sat, 04 Nov 2017 13:51:16 GMT  
		Size: 167.3 MB (167258878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c940cc08c2c2fe3e22319fa1737f2dd4c4585bc36466b8e09f7f5c3bc72209`  
		Last Modified: Sat, 04 Nov 2017 13:50:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034969498aff125bfb2b283f06fcd25c1a05f8d16677810ec3925f9a5d099cfe`  
		Last Modified: Sat, 04 Nov 2017 13:52:32 GMT  
		Size: 263.9 MB (263944718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
