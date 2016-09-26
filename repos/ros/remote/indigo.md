## `ros:indigo`

```console
$ docker pull ros@sha256:434774b81e9514e145ce827f076ec772fdaa7ded1f1485b10a245b0c58b845fb
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253027512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7028c43354b429b215161cc77d597d6a41f7c4d355a9b96698e7dd4684d4aab3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:29:16 GMT
ENV ROS_DISTRO=indigo
# Mon, 26 Sep 2016 22:30:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:30:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:30:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:30:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:03:21 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:03:41 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5df6c375299c68bb272e619586ab65295b7012c66b9c31c9d5c9317022246d`  
		Last Modified: Mon, 26 Sep 2016 22:31:36 GMT  
		Size: 150.0 MB (149959369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f787cd59750830f7bd6762ff3fd5ce06d74cf668c896699101f1f07e765d4`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209bea4677f05a9c13c761707a341e2e6af9b35cf158421d647060cc089f8790`  
		Last Modified: Mon, 26 Sep 2016 23:03:51 GMT  
		Size: 3.4 MB (3418950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
