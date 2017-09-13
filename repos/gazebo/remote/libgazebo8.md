## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:3f04e572df50ba709d8f72020a867464cee0b8bf59b6f18d13b4ec5cb263dce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:3492566cdcb6e8b2d9c3ee9f6973f0d5dc7b2242c93e964ebb3a8184d2d6a5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.5 MB (499473800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8d9a0cde1a5827dcd2331e59f8cdf820841d31afc42dc42e6f27363732b6c5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:32:29 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:32:30 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:33:54 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:33:54 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:33:54 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:33:54 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:33:54 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:36:23 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f639af40b75e4315151b894baf5027e8c61b527a39b99b24e8e22574dcb78333`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31615eb66001ec74fd12220ecf550a757b6cd380c9747f9c4398ad580f495580`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17543613393e85e72c07d0ba27c1f86bb06efd95d9071dda17756fdc21a2b80`  
		Last Modified: Wed, 13 Sep 2017 18:48:31 GMT  
		Size: 218.2 MB (218176322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3425e37944fa4f23129721e8fc8cd1b0aef5e370d777543f8597e455aed5e7f0`  
		Last Modified: Wed, 13 Sep 2017 18:47:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fdae9a4cda6a4c630be925080a0e1877a07d13cf36dba7ead74e23a23548a5`  
		Last Modified: Wed, 13 Sep 2017 18:49:41 GMT  
		Size: 234.0 MB (234022740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
