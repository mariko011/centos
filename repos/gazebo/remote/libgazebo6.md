## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:0cad76d054d5caf8e35db151ddcd74240644df83bd04f3174e97bc717b81606b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:e4c1f5856f9bf842671e3c3703979ffe9a73fdbd8706b9e3df1690e2d6e88ad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.8 MB (491818384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003ccd47e77668a14b9f2ad1acd8e396c5606579b9ae9888ff65126f03ad5648`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:22:05 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:22:05 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:22:05 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:22:06 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:22:06 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:24:52 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a6b18bd760a012513038630607e6847f025a4bfebca28075f9572eb60757e5`  
		Last Modified: Wed, 13 Sep 2017 18:42:39 GMT  
		Size: 171.4 MB (171382867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5263b97e08838b8a3348f8ebcfe35353af0db1f1de48a197a57c920ed9d017da`  
		Last Modified: Wed, 13 Sep 2017 18:42:12 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87b9d9acce8472a1bb0ff05278465b99c2e31949413dd1a0e695bac5b93ea43`  
		Last Modified: Wed, 13 Sep 2017 18:44:13 GMT  
		Size: 253.2 MB (253232363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
