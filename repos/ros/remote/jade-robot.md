## `ros:jade-robot`

```console
$ docker pull ros@sha256:4a9d82526e9e81612e672bd791886ca4e52e3a1bf58636a66e091bc529196e06
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.5 MB (326511756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d81057f91f1988b857348a64d788c49fee1db332694eeef96ad24e3c19a9e46`
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
# Thu, 13 Apr 2017 17:16:19 GMT
ENV ROS_DISTRO=jade
# Thu, 13 Apr 2017 17:18:38 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:18:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:18:45 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:31:22 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:36:29 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eb9a6d3169eb58d8ea312c168aaa582a09990a0360a363cb280b6bf8d52d087d`  
		Last Modified: Tue, 25 Apr 2017 21:30:16 GMT  
		Size: 152.7 MB (152679693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551f1d007f2f73c437dc43ccc0f045786ddb77fcde9eb009401bd5a780c943b3`  
		Last Modified: Tue, 25 Apr 2017 21:29:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c9f04e06f928579f94ca20ed4b67ac67765303d8de19d1e8299336e5057ff`  
		Last Modified: Tue, 25 Apr 2017 21:31:28 GMT  
		Size: 3.5 MB (3491514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c022b701dc2466ce8765d3a5ac30def64809b128e41a3e0bc7ca1de251e397`  
		Last Modified: Tue, 25 Apr 2017 21:36:06 GMT  
		Size: 69.9 MB (69884586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
