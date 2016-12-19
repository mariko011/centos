## `gazebo:latest`

```console
$ docker pull gazebo@sha256:6c8c383cc444a48ec048faee103df2e4fe423e9afcb8983776983bc4e41f3ff3
```

-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.2 MB (472157185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07179a712e3cd0e5a48dbd188928b6caafe36056c1105f73f476e3c8d0779a89`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:12:05 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Thu, 15 Dec 2016 18:12:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 15 Dec 2016 18:12:07 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 15 Dec 2016 18:19:09 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.4.0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:19:09 GMT
EXPOSE 11345/tcp
# Thu, 15 Dec 2016 18:19:10 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 15 Dec 2016 18:19:10 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 15 Dec 2016 18:19:11 GMT
CMD ["gzserver"]
# Thu, 15 Dec 2016 18:19:11 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Thu, 15 Dec 2016 18:22:16 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.4.0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648c27c0322d547ea1eebf309afd0258d8b87a957793bfaacf2c29eb4fdd9446`  
		Last Modified: Mon, 19 Dec 2016 18:51:19 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec201aa1f2c3976351e6d51276e290450faea5d0aebfca0dee08bc32631b5d`  
		Last Modified: Mon, 19 Dec 2016 18:51:20 GMT  
		Size: 258.1 KB (258145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923d61bd7e9f3fccc3ff4e3b4769ac9111eb182a9ec7de9d812bb668e3b944f4`  
		Last Modified: Mon, 19 Dec 2016 18:55:25 GMT  
		Size: 176.4 MB (176391165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd9448da857b2635929443ba4036b46e8928c5f55b1da0fecc479c7647c0d33`  
		Last Modified: Mon, 19 Dec 2016 18:54:38 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef9011b4a346d0dd38e2c61fcd38686f8834d80115b1451cf35103aa86cba4d`  
		Last Modified: Mon, 19 Dec 2016 19:03:00 GMT  
		Size: 229.7 MB (229727620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
