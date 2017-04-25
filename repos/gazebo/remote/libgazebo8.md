## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:6c7ea72b2fd51633215cb6997ad68bbb2b6cc62fbc7fe49c4182854f02e37b70
```

-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.6 MB (503554390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4adf0f836b83875bf2db93a537a313fdba1c3a2e8d6d2aaafee3d30516c27d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 24 Apr 2017 22:56:51 GMT
ADD file:141408db9037263a47322d1d78006be6a93927ac912bf14cd85100aa91da0421 in / 
# Mon, 24 Apr 2017 22:57:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:10 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:59:05 GMT
RUN apt-get update && apt-get install -q -y     lsb-release    && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:59:17 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 24 Apr 2017 23:59:18 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Apr 2017 00:01:16 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.0.0*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:01:18 GMT
EXPOSE 11345/tcp
# Tue, 25 Apr 2017 00:01:19 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 25 Apr 2017 00:01:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Apr 2017 00:01:20 GMT
CMD ["gzserver"]
# Tue, 25 Apr 2017 00:05:18 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.0.0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aafe6b5e13de557451e1781fe7276620275625f970015cbd10036ab7d8ae27c0`  
		Last Modified: Thu, 20 Apr 2017 10:34:07 GMT  
		Size: 46.8 MB (46792902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2b43a726608d3835aa027bbe181624789130c212eb191baa481f1d788a0676`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bdd1e546d21240bd4c3e4e29032a38f18102d780a78686508d40fe01c60158`  
		Last Modified: Mon, 24 Apr 2017 23:02:16 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198342c3e05101bb56b0a585dc34e39346ece39ee5d39287cda24b1fb445fed`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56970a44fd409805e3872cac236d29f5eed1a45e189bb765bcd2163c915f384`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a5704e9c42f639ec3a7bbb23ab406efbcf7131a59e920882c43ef7d63f4c6e`  
		Last Modified: Tue, 25 Apr 2017 17:35:23 GMT  
		Size: 11.9 MB (11913722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f023d66b511d98ce06936062634b985f9c6bbfe5548e46c45440146d0cc29aac`  
		Last Modified: Tue, 25 Apr 2017 17:35:19 GMT  
		Size: 13.1 KB (13114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fe639341c6c1b021f5172010a358b149e9de6f258725a0e3d65ffff705f749`  
		Last Modified: Tue, 25 Apr 2017 17:35:19 GMT  
		Size: 5.5 KB (5492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d103aebe9d6ed579f9fdc5708720aca265edc6f6d0c32cab0c7bb58886c6dc5c`  
		Last Modified: Tue, 25 Apr 2017 17:35:53 GMT  
		Size: 210.9 MB (210946279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6202817e3e7f30fc11c8074dc882fdb34fab0ac2990406c73aa4bb362a7b117a`  
		Last Modified: Tue, 25 Apr 2017 17:35:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d1f88a5217fd7cb81b9c5b0686d6d3fc7119ea69f14ec153d36a31f8b2e6de`  
		Last Modified: Tue, 25 Apr 2017 17:42:10 GMT  
		Size: 233.9 MB (233880354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
