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
$ docker pull gazebo@sha256:c5363ecc4678fab7c9b00e9433ffd883d3906c73d73e4eda54c414a6a31f6d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

```console
$ docker pull gazebo@sha256:edb7dbe6262e7fb388769459aaa09a90422709cc0589391b68698e1df0d9d341
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213658818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5870985f3b349833819cd35ea038dca0c0bfc8d6778dc18a8ed544f91cd179e2`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:11:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:11:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:12:40 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:12:41 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:12:41 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:12:41 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:12:41 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8175c22ed727f109e1190bf48ffa848f87f9c6ff59d507116e3b5afb8d39ca3`  
		Last Modified: Tue, 10 Oct 2017 04:45:04 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadf30742e84f473dd8474778bc1f4fc373cede6755a74bf9b51d417032dd316`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e426be25939b8ba03e64b11eb0a91b8d36a009579bf10a1c65ed9acb74dc4bb`  
		Last Modified: Tue, 10 Oct 2017 04:45:30 GMT  
		Size: 146.5 MB (146456347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e79631f993aa905911a8f1e119e018e18b9d36491b8160403d59e2959c1eb2`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5`

```console
$ docker pull gazebo@sha256:fa6fc9c38b688205d599cb4fda7d8fe9996767a8c3821c0b45703a133938f283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5` - linux; amd64

```console
$ docker pull gazebo@sha256:72270ca3d90d9788e766b26a15aca473077fc93916ca8cfff2b6202372e690c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234465312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fee8c3965aa3adbdc0efbcb8a6eacecc8e23b0462d42fda88dfd2ad9e24aa6f`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:11:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:11:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:18:03 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:18:03 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:18:03 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:18:04 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:18:04 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8175c22ed727f109e1190bf48ffa848f87f9c6ff59d507116e3b5afb8d39ca3`  
		Last Modified: Tue, 10 Oct 2017 04:45:04 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadf30742e84f473dd8474778bc1f4fc373cede6755a74bf9b51d417032dd316`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc08fe1ac7083a5fb4722df818f3a7e01d936320f56a9c9c5884af3e11f9c5`  
		Last Modified: Tue, 10 Oct 2017 04:55:06 GMT  
		Size: 167.3 MB (167262840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8616a1b1adf3b114127d0a4d448f89de542f9acf5f0340e43b90832d5e428b7`  
		Last Modified: Tue, 10 Oct 2017 04:54:12 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6`

```console
$ docker pull gazebo@sha256:93a849801198b55077ea81325d83da0c028fb86343378b8ae6da577ed229ab7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6` - linux; amd64

```console
$ docker pull gazebo@sha256:af9508683718320b2341d3c4ee5ee72685c1d15c0d3ccd72f8b0b8cf79857389
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238536442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae5dfb8e4de4ba8670fcba887ea207083bba612f825a36273af8cd25c652cfb`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:11:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:11:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:23:33 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:23:33 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:23:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:23:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:23:34 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8175c22ed727f109e1190bf48ffa848f87f9c6ff59d507116e3b5afb8d39ca3`  
		Last Modified: Tue, 10 Oct 2017 04:45:04 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadf30742e84f473dd8474778bc1f4fc373cede6755a74bf9b51d417032dd316`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d57bedf49d397bb631f468b056aed3342d436fc41a4bbfbba7b5118ffe70b9`  
		Last Modified: Tue, 10 Oct 2017 05:08:36 GMT  
		Size: 171.3 MB (171333969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f312e35068b38430ae02fbd64af52a493a0322b85c759c9ee2dde483d634b203`  
		Last Modified: Tue, 10 Oct 2017 05:07:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7`

```console
$ docker pull gazebo@sha256:b64b0230f03c4e868234f1858e4a9e134e4a9624a5eddb67455fc7df245dd6b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7` - linux; amd64

```console
$ docker pull gazebo@sha256:495f14a2930acea8e5cc123640fb07338b7808a680c3cf1f067429ea151c66a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237528122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a45f87f5dc012415b22b4b3eb9380c3b31800e55bddb813ced3ab82f7249a68`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:27:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:27:27 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:28:52 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:28:52 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:28:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:28:52 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3fd478975253bb81fc95895f307a3af17d01bcf7a7cb9ccace029f0b7c9d52`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 13.1 KB (13120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7750278c3310fd70bfe3b504fdd2b013858b5cedcbd07bbd7fc6387dd8b26f`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bdf123209c1bd3d8ec260be262fff6cd80a24bdc8b34d900c223dc4f47424b`  
		Last Modified: Tue, 10 Oct 2017 05:15:41 GMT  
		Size: 190.0 MB (189975838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd49aa71387dcecc664b061c89284857af3fcf975005e424064459b8b8a6a1e`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8`

```console
$ docker pull gazebo@sha256:e06c79b5d87fb4cb7cfb1c69027c99cfd1022f37def7293ec1a31cc655606966
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8` - linux; amd64

```console
$ docker pull gazebo@sha256:4f9ba0291f26da9d075380ef3539459b881745d302aac158608cbcec221cdc84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266254031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9049846b3a8e9193a5598d4678f16a34d2e8705a5c1967c6298ff04d140633`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:27:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:27:27 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:38:09 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:38:10 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:38:10 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:38:10 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:38:10 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3fd478975253bb81fc95895f307a3af17d01bcf7a7cb9ccace029f0b7c9d52`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 13.1 KB (13120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7750278c3310fd70bfe3b504fdd2b013858b5cedcbd07bbd7fc6387dd8b26f`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cbb6c3221110398381a3625ae995c5ae35edb1fa7b5dedfd6277f797f3d32b`  
		Last Modified: Tue, 10 Oct 2017 05:23:41 GMT  
		Size: 218.7 MB (218701747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5a752e97cfd887e9fac172cc0dc74374a08c9d7f04a1e245834058c80e79cb`  
		Last Modified: Tue, 10 Oct 2017 05:22:39 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:latest`

```console
$ docker pull gazebo@sha256:88fe02665e4abf58a1182b5af954f351a14edf84fcea46a0b74b6d7f41a8d2c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:cde60154197473739e68cc6cbd52ab808a6a64bc53623d5b4806c05b672af81a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.3 MB (500331847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc61480f3d45b4d06e73146c5162743d7c563fd87947210b41dc080a219ef18e`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:27:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:27:27 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:38:09 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:38:10 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:38:10 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:38:10 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:38:10 GMT
CMD ["gzserver"]
# Tue, 10 Oct 2017 04:40:11 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3fd478975253bb81fc95895f307a3af17d01bcf7a7cb9ccace029f0b7c9d52`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 13.1 KB (13120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7750278c3310fd70bfe3b504fdd2b013858b5cedcbd07bbd7fc6387dd8b26f`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cbb6c3221110398381a3625ae995c5ae35edb1fa7b5dedfd6277f797f3d32b`  
		Last Modified: Tue, 10 Oct 2017 05:23:41 GMT  
		Size: 218.7 MB (218701747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5a752e97cfd887e9fac172cc0dc74374a08c9d7f04a1e245834058c80e79cb`  
		Last Modified: Tue, 10 Oct 2017 05:22:39 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f133a5e43ff966d3cfbe58d552a8cd22ebe6661ef57d98163df2992f0b4c2d`  
		Last Modified: Tue, 10 Oct 2017 05:27:59 GMT  
		Size: 234.1 MB (234077816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4`

```console
$ docker pull gazebo@sha256:563da131aa072fed1cf9b7891a1757d51ad4e717e9e61cc3082f8e142e1b8665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4` - linux; amd64

```console
$ docker pull gazebo@sha256:b4a3979e9f95daa3be05f90ebb2c7fd8e3a842e3f6b1f0f1febd8f7f0bcca71c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.4 MB (448358118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96a2d42c69652f357a4744422b00444c8fc713cb83b059e5787607d5ba5507f`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:11:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:11:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:12:40 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:12:41 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:12:41 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:12:41 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:12:41 GMT
CMD ["gzserver"]
# Tue, 10 Oct 2017 04:15:56 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8175c22ed727f109e1190bf48ffa848f87f9c6ff59d507116e3b5afb8d39ca3`  
		Last Modified: Tue, 10 Oct 2017 04:45:04 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadf30742e84f473dd8474778bc1f4fc373cede6755a74bf9b51d417032dd316`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e426be25939b8ba03e64b11eb0a91b8d36a009579bf10a1c65ed9acb74dc4bb`  
		Last Modified: Tue, 10 Oct 2017 04:45:30 GMT  
		Size: 146.5 MB (146456347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e79631f993aa905911a8f1e119e018e18b9d36491b8160403d59e2959c1eb2`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4613eca2f0a237208805cd891f22e57e37ed19f5d8699ea99e2690e4d780e02`  
		Last Modified: Tue, 10 Oct 2017 04:48:42 GMT  
		Size: 234.7 MB (234699300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:b5c547cf7390c73249fbd6d264f8b8c8c1414b482d27fd0f915f6f74d2aeae21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

```console
$ docker pull gazebo@sha256:59356624dc272fe57c02467572833415a5af142cf05cb0a7458a8cae56d38b46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498395574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bd950e09d5010520bf25575b465ec96af88c78a5661ec10867e86ff17ee3ff`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:11:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:11:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:18:03 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:18:03 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:18:03 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:18:04 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:18:04 GMT
CMD ["gzserver"]
# Tue, 10 Oct 2017 04:20:41 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8175c22ed727f109e1190bf48ffa848f87f9c6ff59d507116e3b5afb8d39ca3`  
		Last Modified: Tue, 10 Oct 2017 04:45:04 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadf30742e84f473dd8474778bc1f4fc373cede6755a74bf9b51d417032dd316`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc08fe1ac7083a5fb4722df818f3a7e01d936320f56a9c9c5884af3e11f9c5`  
		Last Modified: Tue, 10 Oct 2017 04:55:06 GMT  
		Size: 167.3 MB (167262840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8616a1b1adf3b114127d0a4d448f89de542f9acf5f0340e43b90832d5e428b7`  
		Last Modified: Tue, 10 Oct 2017 04:54:12 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c176c572c11910fc6e8289baf49642d25e08851261ee18c5a80db2fd41ba793b`  
		Last Modified: Tue, 10 Oct 2017 05:02:12 GMT  
		Size: 263.9 MB (263930262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:8cb82a22951e81bcc2f17df4b8e78f7f0b71e2b021bf5a2a82696a8fd64ffa66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:10fdcf22bc36b28e76f761f7470ecad0e284e04a7520c0100735769943d9b3e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.8 MB (491764724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55fdabebf27d15c50dba71db794f95a8c4e2a628b0f4f90ad05e32ef52721c5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:11:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:11:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:23:33 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:23:33 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:23:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:23:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:23:34 GMT
CMD ["gzserver"]
# Tue, 10 Oct 2017 04:27:05 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8175c22ed727f109e1190bf48ffa848f87f9c6ff59d507116e3b5afb8d39ca3`  
		Last Modified: Tue, 10 Oct 2017 04:45:04 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadf30742e84f473dd8474778bc1f4fc373cede6755a74bf9b51d417032dd316`  
		Last Modified: Tue, 10 Oct 2017 04:45:03 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d57bedf49d397bb631f468b056aed3342d436fc41a4bbfbba7b5118ffe70b9`  
		Last Modified: Tue, 10 Oct 2017 05:08:36 GMT  
		Size: 171.3 MB (171333969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f312e35068b38430ae02fbd64af52a493a0322b85c759c9ee2dde483d634b203`  
		Last Modified: Tue, 10 Oct 2017 05:07:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2711e4052f35d0ab3304b7a2a0d22259b578bafbdf8634a142b5c935e5cba084`  
		Last Modified: Tue, 10 Oct 2017 05:11:50 GMT  
		Size: 253.2 MB (253228282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:5266b8d6df1eecff8abd58ed1f70edf2f1e2d34b5295bb7ec4080bd081eacf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:52ee7e30e5e0b179d5b72bbef61e3a155078b45c9e4077f94ee289f8655f5a91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.3 MB (497276960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6d95afc75b356c43381c998250825c5ed89b22d641efc96104d507b30a77002`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:27:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:27:27 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:28:52 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:28:52 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:28:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:28:52 GMT
CMD ["gzserver"]
# Tue, 10 Oct 2017 04:31:10 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3fd478975253bb81fc95895f307a3af17d01bcf7a7cb9ccace029f0b7c9d52`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 13.1 KB (13120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7750278c3310fd70bfe3b504fdd2b013858b5cedcbd07bbd7fc6387dd8b26f`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bdf123209c1bd3d8ec260be262fff6cd80a24bdc8b34d900c223dc4f47424b`  
		Last Modified: Tue, 10 Oct 2017 05:15:41 GMT  
		Size: 190.0 MB (189975838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd49aa71387dcecc664b061c89284857af3fcf975005e424064459b8b8a6a1e`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9fc40c8a0c6d9f756a3233b79f291850795346eb3f80561cca69f310c860ca`  
		Last Modified: Tue, 10 Oct 2017 05:18:05 GMT  
		Size: 259.7 MB (259748838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:88fe02665e4abf58a1182b5af954f351a14edf84fcea46a0b74b6d7f41a8d2c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:cde60154197473739e68cc6cbd52ab808a6a64bc53623d5b4806c05b672af81a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.3 MB (500331847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc61480f3d45b4d06e73146c5162743d7c563fd87947210b41dc080a219ef18e`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:27:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:27:27 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:38:09 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:38:10 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:38:10 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:38:10 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:38:10 GMT
CMD ["gzserver"]
# Tue, 10 Oct 2017 04:40:11 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3fd478975253bb81fc95895f307a3af17d01bcf7a7cb9ccace029f0b7c9d52`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 13.1 KB (13120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7750278c3310fd70bfe3b504fdd2b013858b5cedcbd07bbd7fc6387dd8b26f`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cbb6c3221110398381a3625ae995c5ae35edb1fa7b5dedfd6277f797f3d32b`  
		Last Modified: Tue, 10 Oct 2017 05:23:41 GMT  
		Size: 218.7 MB (218701747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5a752e97cfd887e9fac172cc0dc74374a08c9d7f04a1e245834058c80e79cb`  
		Last Modified: Tue, 10 Oct 2017 05:22:39 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f133a5e43ff966d3cfbe58d552a8cd22ebe6661ef57d98163df2992f0b4c2d`  
		Last Modified: Tue, 10 Oct 2017 05:27:59 GMT  
		Size: 234.1 MB (234077816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
