## `ros:jade`

```console
$ docker pull ros@sha256:71b567fc8c3bc519052eb3e983b99480c0e1b6ab8a24836d37d7e36e3a87f749
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257598138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acc7029bf3af21ca66137c70ad5b5e4f1d62c06164933442b940340708609ae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:25:12 GMT
ENV ROS_DISTRO=jade
# Sat, 03 Jun 2017 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:26:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:26:43 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 01:27:23 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660b10c14dad8b6b73c2441f1eef4967a010141efdf117e3412c483d46ee509`  
		Last Modified: Sat, 03 Jun 2017 03:25:06 GMT  
		Size: 152.7 MB (152679287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d23bba3f4adfae41d5ae2161489c960587177db71d977963d004b33d613152`  
		Last Modified: Sat, 03 Jun 2017 03:24:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59508485f741cb83207a658f0467286f8b31c245b112072fd6b1bc6f0404a013`  
		Last Modified: Sat, 03 Jun 2017 03:25:39 GMT  
		Size: 3.5 MB (3497630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
