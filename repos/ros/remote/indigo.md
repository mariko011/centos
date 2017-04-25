## `ros:indigo`

```console
$ docker pull ros@sha256:e1ef202e254cfb4b4f6f753de49979cb733b4b8b3716895301a6b43ab2046e74
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256504932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fdd8d2a619af06a88d02bf40e93b893abb2bbd91cdb92ed556558d8963d609`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:13:28 GMT
ENV ROS_DISTRO=indigo
# Thu, 13 Apr 2017 17:15:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:15:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:15:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:15:59 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:24:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d15684f285d87afeae80d22624d250fbf3f9a6ab6bf68600f4ae0cde12247a`  
		Last Modified: Tue, 25 Apr 2017 21:29:12 GMT  
		Size: 152.6 MB (152575422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e28cedb68c77bbbfa5f40718788a8102d52dbea3e170d5bb28d7cfa6da0e7`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8524564f5d53e1ed3c0a52a55dc1279d2da4d92f609f157d80428c90c99dab`  
		Last Modified: Tue, 25 Apr 2017 21:30:44 GMT  
		Size: 3.5 MB (3473548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
