## `ros:latest`

```console
$ docker pull ros@sha256:7f77d68741cc415df4b27bb7c4d143278cfe40c8e1b37f4a295203615e527198
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303296174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af847bfdb7573953c20c587267c33f5eb0fc52021128680c5e4bd11dbc8dc59f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Fri, 27 Jan 2017 20:16:50 GMT
RUN locale-gen en_US.UTF-8
# Fri, 27 Jan 2017 20:16:51 GMT
ENV LANG=en_US.UTF-8
# Fri, 27 Jan 2017 20:16:53 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jan 2017 20:16:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jan 2017 20:17:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 20:17:36 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jan 2017 20:17:37 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jan 2017 20:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 20:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jan 2017 20:19:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jan 2017 20:19:10 GMT
CMD ["bash"]
# Fri, 27 Jan 2017 20:19:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6469fe334b128900cdac4cb0215c9f4a1ee88aece8c84f9bb774f779c28cd776`  
		Last Modified: Fri, 27 Jan 2017 20:52:01 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a12d16883e868c3378a9bc166a4f41923f503732dcdbf4f7dd90eb2a4bd8e`  
		Last Modified: Fri, 27 Jan 2017 20:52:01 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ecdb764b9c33b13e7482c1b424af405ca347aadbec8eefb85925ac5285b1ac`  
		Last Modified: Fri, 27 Jan 2017 20:51:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98af96e19cdc3d3d1d6221d35bab668b902f135719d1e51e5d2ece5c136c9b39`  
		Last Modified: Fri, 27 Jan 2017 20:52:25 GMT  
		Size: 57.6 MB (57648898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5fbd3f1b9811cbf0d4d0150445dff55a2e398b4d71e364e5fee29e1f7a1727`  
		Last Modified: Fri, 27 Jan 2017 20:51:59 GMT  
		Size: 703.2 KB (703154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd76e509a97c970f2100fa670d9ddb67b918975838bd5277c686f42142d388b8`  
		Last Modified: Fri, 27 Jan 2017 20:53:21 GMT  
		Size: 189.6 MB (189636291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5ed1648add6cee9ed96968bc6c51c311101ca4dad36e7e1600cd9c075cd2ad`  
		Last Modified: Fri, 27 Jan 2017 20:51:58 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d357d2c1c25e9db3d61bb43d2f1c198ae48ac588606769603c62a0ac08e56`  
		Last Modified: Fri, 27 Jan 2017 20:53:45 GMT  
		Size: 4.6 MB (4644573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
