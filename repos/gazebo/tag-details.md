<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gazebo`

-	[`gazebo:gzserver4`](#gazebogzserver4)
-	[`gazebo:gzserver5`](#gazebogzserver5)
-	[`gazebo:gzserver6`](#gazebogzserver6)
-	[`gazebo:gzserver7`](#gazebogzserver7)
-	[`gazebo:gzserver8`](#gazebogzserver8)
-	[`gazebo:latest`](#gazebolatest)
-	[`gazebo:libgazebo4`](#gazebolibgazebo4)
-	[`gazebo:libgazebo5`](#gazebolibgazebo5)
-	[`gazebo:libgazebo6`](#gazebolibgazebo6)
-	[`gazebo:libgazebo7`](#gazebolibgazebo7)
-	[`gazebo:libgazebo8`](#gazebolibgazebo8)

## `gazebo:gzserver4`

```console
$ docker pull gazebo@sha256:ad4932522a401c4786bb1fb450d550d0f0d91ec5a9082a9fc2ebac81dcaca9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

```console
$ docker pull gazebo@sha256:44327327e8bc95d53599cb2b9bf5e24457af7c24c06122bb416bbcaa63a5ad51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219434654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0252a96251850d0ecb96b0d2ad53da2be969a93deb544f189b3585e6157b07c5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 22:06:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 14 Dec 2017 22:06:02 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 14 Dec 2017 22:07:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 22:07:15 GMT
EXPOSE 11345/tcp
# Thu, 14 Dec 2017 22:07:15 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 14 Dec 2017 22:07:16 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 14 Dec 2017 22:07:16 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027d532a4a2a7083302fcee31e2830f0dbd96c3fa60d7ee25a6e07e533265d18`  
		Last Modified: Thu, 14 Dec 2017 22:36:43 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15671228dabc4a37d5143c5688defb2667cab8568fe06e2749f15cd96fdc05d4`  
		Last Modified: Thu, 14 Dec 2017 22:36:43 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffaacfd2e8927c40428a53203dc382d22ad4e0bef7c2704bae372529003cbc3`  
		Last Modified: Thu, 14 Dec 2017 22:37:07 GMT  
		Size: 146.5 MB (146458072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301143fbcbf7b06ea5b7fe2baf61b3896040e6a67f5165a6282463c4b6fde0d7`  
		Last Modified: Thu, 14 Dec 2017 22:36:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5`

```console
$ docker pull gazebo@sha256:e5666cbf0c65a368ea361ca03a7f7862659a93f02ae93d808f612824538cf45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5` - linux; amd64

```console
$ docker pull gazebo@sha256:02dd7b1c2bd816e5ac22dc6922f5acdba1a6a791ae9ef961727bb89e7beb1ca3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240172799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6647846001c3979f09bfa5c53085cc5a25dddafed3f752c48edc3f6075908e80`
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
# Fri, 17 Nov 2017 23:45:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:45:24 GMT
EXPOSE 11345/tcp
# Fri, 17 Nov 2017 23:45:25 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 17 Nov 2017 23:45:25 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 17 Nov 2017 23:45:25 GMT
CMD ["gzserver"]
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
	-	`sha256:7e6a360b1604eb5bb4ab511b46abbcc6a6d91a8f22fed0eb0c2b2e0046642504`  
		Last Modified: Sat, 18 Nov 2017 00:20:54 GMT  
		Size: 167.3 MB (167259906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5e6ea3ddb1bfb36e423e46523ec8991c3bdef0f94de918190d5672d7de9894`  
		Last Modified: Sat, 18 Nov 2017 00:20:25 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6`

```console
$ docker pull gazebo@sha256:cdb8d778657670cedfee666963103515c061daa34f717dcb6b3a9e985ab2c768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6` - linux; amd64

```console
$ docker pull gazebo@sha256:9cd4861591d429b230bf4702eb256a331dc091446ecf0e015142740b6bf7a07e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244247960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7305cba93c690ea6405627b79e1226220e936f5089e6f687016916ac50ef953f`
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
# Fri, 17 Nov 2017 23:51:33 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:51:33 GMT
EXPOSE 11345/tcp
# Fri, 17 Nov 2017 23:51:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 17 Nov 2017 23:51:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 17 Nov 2017 23:51:34 GMT
CMD ["gzserver"]
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
	-	`sha256:eed3f23125cca2ed2d5cd1430aa00f2d8f254dc200a49cc17ed8590f116c7285`  
		Last Modified: Sat, 18 Nov 2017 00:27:21 GMT  
		Size: 171.3 MB (171335066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3002e0f84128ecc0aade3fb893e3d08acbd9fc30b52e92c2778dffecfd60251b`  
		Last Modified: Sat, 18 Nov 2017 00:26:53 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7`

```console
$ docker pull gazebo@sha256:859c4a70d871e7a491d179588ca55b5dcc5e0c06b195b77d1cb533e31fe8efd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7` - linux; amd64

```console
$ docker pull gazebo@sha256:5331d4d41e9d9cab38de70257ef911926e0b6ea6fafe3c396af8f55c8239b93e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237206516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c80faf19e4898c294eb376bac1c9ca76af106e74f1c678ff99fcdd1c1d4dd0e`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:02:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 18 Nov 2017 00:02:49 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 18 Nov 2017 00:04:04 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:04:04 GMT
EXPOSE 11345/tcp
# Sat, 18 Nov 2017 00:04:04 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sat, 18 Nov 2017 00:04:05 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 18 Nov 2017 00:04:05 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf7157bdde763783ef3bc5fe808ce47a2e8b5a0273da24aa038593f2750881a`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c53117b9c692833b1c4b128aa0f4040d6bea1bb571d4b92dfa9cf3952aeb96f`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db696334f0a9a653abc1dadfd534ab793e3d7a549624e3ed74efbdadf91ec88`  
		Last Modified: Sat, 18 Nov 2017 00:29:56 GMT  
		Size: 189.4 MB (189430766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929609c848274237f1a69d2186d97e0ea0bb22c53f0c408f5c42fdf725c261f8`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8`

```console
$ docker pull gazebo@sha256:2e011495afb3e9631d03cdd5593a17a49dd662bf6d959fe0402be536f73afe5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8` - linux; amd64

```console
$ docker pull gazebo@sha256:013341033d079b04921246642ee9efa88df710768f77f1c27fb813b6e53cde00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265917932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211b3dcbd2b3c4dded229fe543205f7bb841914bffc06a66d57456e07a953658`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:02:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 18 Nov 2017 00:02:49 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 18 Nov 2017 00:11:41 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:12:04 GMT
EXPOSE 11345/tcp
# Sat, 18 Nov 2017 00:12:04 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sat, 18 Nov 2017 00:12:05 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 18 Nov 2017 00:12:05 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf7157bdde763783ef3bc5fe808ce47a2e8b5a0273da24aa038593f2750881a`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c53117b9c692833b1c4b128aa0f4040d6bea1bb571d4b92dfa9cf3952aeb96f`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bf620d49c18a37b4715fca47e6fbcf1a4d3dadc09fd708cc658f1e86bc8ba4`  
		Last Modified: Sat, 18 Nov 2017 00:34:32 GMT  
		Size: 218.1 MB (218142181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f08cce8ab3ca63e0409fe7040ceb091391709e0b9596d3c45e73c28e79b2aa4`  
		Last Modified: Sat, 18 Nov 2017 00:33:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:latest`

```console
$ docker pull gazebo@sha256:464d06d69b766b410622e5448c08389be22551263c8a25cd0d775a1ac349f62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:2d0818bf5c51430d37cd50d920f578377877f1d39e6db6b5c144e2bc6d174f97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.0 MB (500014784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c459180e4ccea0fbfbb174fabf05eee566b11484f68e2805043286e711f6d8ba`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:02:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 18 Nov 2017 00:02:49 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 18 Nov 2017 00:11:41 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:12:04 GMT
EXPOSE 11345/tcp
# Sat, 18 Nov 2017 00:12:04 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sat, 18 Nov 2017 00:12:05 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 18 Nov 2017 00:12:05 GMT
CMD ["gzserver"]
# Sat, 18 Nov 2017 00:14:20 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf7157bdde763783ef3bc5fe808ce47a2e8b5a0273da24aa038593f2750881a`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c53117b9c692833b1c4b128aa0f4040d6bea1bb571d4b92dfa9cf3952aeb96f`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bf620d49c18a37b4715fca47e6fbcf1a4d3dadc09fd708cc658f1e86bc8ba4`  
		Last Modified: Sat, 18 Nov 2017 00:34:32 GMT  
		Size: 218.1 MB (218142181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f08cce8ab3ca63e0409fe7040ceb091391709e0b9596d3c45e73c28e79b2aa4`  
		Last Modified: Sat, 18 Nov 2017 00:33:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf74a2074a5f82311db1a346a7f36911ce14ff66e42453b268362adce1e806d`  
		Last Modified: Sat, 18 Nov 2017 00:35:52 GMT  
		Size: 234.1 MB (234096852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:b3452799930fb9e991cd851d6e3c4bf37beefb6122ae2dd7e75a3d5e7ac307a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

```console
$ docker pull gazebo@sha256:13bf474e6b402a61acbf012d7bc019e7b2cc7735faa0e15d1111ca40e3c32028
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.1 MB (504118211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594c66374aac5b46014158107646613bcd6d9baf476d98d2d9f4d63768c336e2`
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
# Fri, 17 Nov 2017 23:45:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:45:24 GMT
EXPOSE 11345/tcp
# Fri, 17 Nov 2017 23:45:25 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 17 Nov 2017 23:45:25 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 17 Nov 2017 23:45:25 GMT
CMD ["gzserver"]
# Fri, 17 Nov 2017 23:48:53 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7e6a360b1604eb5bb4ab511b46abbcc6a6d91a8f22fed0eb0c2b2e0046642504`  
		Last Modified: Sat, 18 Nov 2017 00:20:54 GMT  
		Size: 167.3 MB (167259906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5e6ea3ddb1bfb36e423e46523ec8991c3bdef0f94de918190d5672d7de9894`  
		Last Modified: Sat, 18 Nov 2017 00:20:25 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07795b0dff9e500e9f36fa58d12e41c804e2edcd5d2567b9eecfba3b274650e9`  
		Last Modified: Sat, 18 Nov 2017 00:26:40 GMT  
		Size: 263.9 MB (263945412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:d99d51757bc30ab697cceae994ad4772c81e82e0f299691bdc46f84bc6cb35d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:33f9064fb7bc0100822c117d1d423dd3e50cc04a93c9ce5c9d8c4198e79a1e69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.5 MB (497492641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0375bc4d87b990975a03f3eb57d5b6616d334569bb6e6fd550981deedfb8aeb`
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
# Fri, 17 Nov 2017 23:51:33 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:51:33 GMT
EXPOSE 11345/tcp
# Fri, 17 Nov 2017 23:51:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 17 Nov 2017 23:51:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 17 Nov 2017 23:51:34 GMT
CMD ["gzserver"]
# Fri, 17 Nov 2017 23:58:47 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eed3f23125cca2ed2d5cd1430aa00f2d8f254dc200a49cc17ed8590f116c7285`  
		Last Modified: Sat, 18 Nov 2017 00:27:21 GMT  
		Size: 171.3 MB (171335066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3002e0f84128ecc0aade3fb893e3d08acbd9fc30b52e92c2778dffecfd60251b`  
		Last Modified: Sat, 18 Nov 2017 00:26:53 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c465cb0a3512716ecf3bad9e1782ad34b4ef97f47955b83bcf63ab8abe33c9`  
		Last Modified: Sat, 18 Nov 2017 00:28:42 GMT  
		Size: 253.2 MB (253244681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:17b6bfc140609e99c74c708cd3e9cc5ee0c0ac28c3e25387677643bbd4819ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:970c891cebf1fd693fdd69f832f4c3ccb0a3625d1c05a70bee517d176d15cccf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.0 MB (496976221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac5fef230d1afbfcf9f923a90d2f65a63c981f4fca20a6f68d213c78be59a74`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:02:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 18 Nov 2017 00:02:49 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 18 Nov 2017 00:04:04 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:04:04 GMT
EXPOSE 11345/tcp
# Sat, 18 Nov 2017 00:04:04 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sat, 18 Nov 2017 00:04:05 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 18 Nov 2017 00:04:05 GMT
CMD ["gzserver"]
# Sat, 18 Nov 2017 00:06:14 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf7157bdde763783ef3bc5fe808ce47a2e8b5a0273da24aa038593f2750881a`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c53117b9c692833b1c4b128aa0f4040d6bea1bb571d4b92dfa9cf3952aeb96f`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db696334f0a9a653abc1dadfd534ab793e3d7a549624e3ed74efbdadf91ec88`  
		Last Modified: Sat, 18 Nov 2017 00:29:56 GMT  
		Size: 189.4 MB (189430766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929609c848274237f1a69d2186d97e0ea0bb22c53f0c408f5c42fdf725c261f8`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e12bbc363ead64335514a91ec4ae022df5df43079708e9777cbe4ee8d1cf37f`  
		Last Modified: Sat, 18 Nov 2017 00:33:19 GMT  
		Size: 259.8 MB (259769705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:464d06d69b766b410622e5448c08389be22551263c8a25cd0d775a1ac349f62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:2d0818bf5c51430d37cd50d920f578377877f1d39e6db6b5c144e2bc6d174f97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.0 MB (500014784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c459180e4ccea0fbfbb174fabf05eee566b11484f68e2805043286e711f6d8ba`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:02:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 18 Nov 2017 00:02:49 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 18 Nov 2017 00:11:41 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:12:04 GMT
EXPOSE 11345/tcp
# Sat, 18 Nov 2017 00:12:04 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sat, 18 Nov 2017 00:12:05 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 18 Nov 2017 00:12:05 GMT
CMD ["gzserver"]
# Sat, 18 Nov 2017 00:14:20 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf7157bdde763783ef3bc5fe808ce47a2e8b5a0273da24aa038593f2750881a`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c53117b9c692833b1c4b128aa0f4040d6bea1bb571d4b92dfa9cf3952aeb96f`  
		Last Modified: Sat, 18 Nov 2017 00:29:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bf620d49c18a37b4715fca47e6fbcf1a4d3dadc09fd708cc658f1e86bc8ba4`  
		Last Modified: Sat, 18 Nov 2017 00:34:32 GMT  
		Size: 218.1 MB (218142181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f08cce8ab3ca63e0409fe7040ceb091391709e0b9596d3c45e73c28e79b2aa4`  
		Last Modified: Sat, 18 Nov 2017 00:33:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf74a2074a5f82311db1a346a7f36911ce14ff66e42453b268362adce1e806d`  
		Last Modified: Sat, 18 Nov 2017 00:35:52 GMT  
		Size: 234.1 MB (234096852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
