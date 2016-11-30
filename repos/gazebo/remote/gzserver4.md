## `gazebo:gzserver4`

```console
$ docker pull gazebo@sha256:eaae47509e888b64e7f7aeedd47e81727c5ebf4156cd21b2e6249230a5920149
```

-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.9 MB (209937533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2e927294596959f2a98e0db528a1b5da8e968fafd64b1a62fe5f86bf5d4641`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Tue, 29 Nov 2016 22:50:17 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Tue, 29 Nov 2016 22:50:19 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 29 Nov 2016 22:50:21 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 29 Nov 2016 22:52:57 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 22:52:58 GMT
EXPOSE 11345/tcp
# Tue, 29 Nov 2016 22:52:58 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 29 Nov 2016 22:52:59 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 29 Nov 2016 22:52:59 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946e2fe1ba9307f6bc92a30ada5a29a90b266d66ffcbb4e2e54dede07ec76cc`  
		Last Modified: Tue, 29 Nov 2016 23:29:44 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0bbbd82b5433f322b8a5290c7d640e866d9f4fd8cee5204eb6b8fca9181832`  
		Last Modified: Tue, 29 Nov 2016 23:29:46 GMT  
		Size: 258.1 KB (258140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630bd0e341270528f6a33203ed239c47f922202ef885ff46413dff664c21564b`  
		Last Modified: Tue, 29 Nov 2016 23:30:23 GMT  
		Size: 143.9 MB (143893872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3adad2d9f2b941296409f04f8c0b270103f0bbadcd27ad1ca22868eaa198f8`  
		Last Modified: Tue, 29 Nov 2016 23:29:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
