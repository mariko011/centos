## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:b22c7a670a81093fec9c53963c8f2284213a16afbc8c785c09a0fcf8b431e2aa
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253262689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c3659f2818a88a44cdfa18332faffb69cb851c55f58c955099829724cf373b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:56:05 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 22:56:05 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 22:56:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 22:56:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 22:56:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:57:07 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 22:58:38 GMT
ENV ROS_DISTRO=jade
# Tue, 28 Feb 2017 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:00:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:00:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:00:08 GMT
CMD ["bash"]
# Wed, 01 Mar 2017 18:13:55 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521da8c15ffa3b1dd9d69f66b2dd0288e7d0e845b6154c2ee7c3db4ca78891f4`  
		Last Modified: Thu, 02 Mar 2017 03:47:16 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bdf6eb1ca542e03df3d1bf0f0a09b9497195040bf475e35dbaaaecf87e57d2`  
		Last Modified: Thu, 02 Mar 2017 03:47:16 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f63520063b78458be4dc9c93e3876e06b29d9c4bae5247da7607e2cd9a686d`  
		Last Modified: Thu, 02 Mar 2017 03:47:13 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639353f6de7b5444e110d9c67d8187e7f8eddca102e39232356c64c6a2da9a55`  
		Last Modified: Thu, 02 Mar 2017 03:47:32 GMT  
		Size: 32.9 MB (32888110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cca8d2707adc82e90c73ddd8993001aba2d674a83c151af03e53533798d551a`  
		Last Modified: Thu, 02 Mar 2017 03:47:15 GMT  
		Size: 725.1 KB (725057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6c621aa523287045a643e4722c090f53580abd254132317d9068a872b34307`  
		Last Modified: Thu, 02 Mar 2017 03:49:30 GMT  
		Size: 150.1 MB (150097383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cda03a5b92c108cdb158ccf86e01489390889066c1a14857b1201645e5adbbb`  
		Last Modified: Thu, 02 Mar 2017 03:48:37 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121b46061386e3a2fbd644a100af11b5215bea71f1de852fa1d04e16fe3757f4`  
		Last Modified: Thu, 02 Mar 2017 03:52:17 GMT  
		Size: 3.4 MB (3443074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
