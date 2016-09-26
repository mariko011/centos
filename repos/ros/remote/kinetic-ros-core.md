## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:634f6764d15af3cb15f42d23fd3d17304e3d1076ce3125986e92a943b5898fda
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298053185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5a304ded548c02f499f3fa04979c1167cb2a122169a6194a92b0cfa765d0e4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 16:59:39 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 16:59:42 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 16:59:42 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 16:59:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 16:59:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 17:00:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:00:44 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 17:00:44 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 17:02:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:02:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 17:02:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 17:02:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9ddd09768a3452296f8e3a4eb72a698eba051ca5e972303922eba6cc8dbb92`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbc0b5ef50f5d8cac8678e04eb2e7543664fd68c90e0c4717ba3cdad6e7f97`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5514181fc1bb9bf62820b29a5f50505af75c2aad2bb521f51ae4191fb0ac4348`  
		Last Modified: Mon, 26 Sep 2016 17:17:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e80b63d56136c0a2e35422eb09782aeb8fd54232c67d4a9282f8e9564a070f`  
		Last Modified: Mon, 26 Sep 2016 17:17:48 GMT  
		Size: 57.6 MB (57630277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe176ee64192be0c934df770d8fad60f16f09d0d7c8cc1467b8a9651f8a94b7`  
		Last Modified: Mon, 26 Sep 2016 17:17:22 GMT  
		Size: 664.1 KB (664126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af726799272f5ee90aed0c31bf5122331b4a5c05e68e0523f95fa6de2e36c870`  
		Last Modified: Mon, 26 Sep 2016 17:18:26 GMT  
		Size: 189.6 MB (189608941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d428051a2dce5c22b25b416ec147537e4a09f2568568dbb880221f359f1e49e5`  
		Last Modified: Mon, 26 Sep 2016 17:17:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
