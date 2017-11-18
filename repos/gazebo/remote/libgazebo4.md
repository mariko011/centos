## `gazebo:libgazebo4`

```console
$ docker pull gazebo@sha256:a5d524462fb4d0a611c54df165cc7fe27334bac4fe0c24345fc7ad5bacfdc9a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4` - linux; amd64

```console
$ docker pull gazebo@sha256:2c87bdf97a3edfc56e8ac8c7a38fe6f1b1cf524af77aa91e2155679a840d0735
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.1 MB (454085526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae03f4db263e6afb9e429634ad2f58f64c139918e62d227e7da7b653b9a3ad30`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:32:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 17 Nov 2017 23:32:52 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 17 Nov 2017 23:34:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:34:10 GMT
EXPOSE 11345/tcp
# Fri, 17 Nov 2017 23:34:10 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 17 Nov 2017 23:34:11 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 17 Nov 2017 23:34:11 GMT
CMD ["gzserver"]
# Fri, 17 Nov 2017 23:40:13 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea85e9fc902219865a45daa01a9a8cae6c9cef5ecfd05b3e1365c7bf98cc277a`  
		Last Modified: Sat, 18 Nov 2017 00:18:20 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059ee1f1aa4a0e795815c29af9a0b02b9cb31aef59dea3af419e7c5f235db78f`  
		Last Modified: Sat, 18 Nov 2017 00:18:20 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4788395d68f97e57e2933fe245e462aa278262bccfbba26fb172b7cf12e29df`  
		Last Modified: Sat, 18 Nov 2017 00:18:50 GMT  
		Size: 146.5 MB (146457292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a39d1d1562ce75cddef61c25545b32c67a9f3ba73175aa2c044fb3fb2f46706`  
		Last Modified: Sat, 18 Nov 2017 00:18:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c730306098f20cc16db1a195ada7ff3dc5deb573b001a0ed561395367195bd0f`  
		Last Modified: Sat, 18 Nov 2017 00:19:58 GMT  
		Size: 234.7 MB (234715341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
