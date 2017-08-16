## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:6c8d19e622214a4cdd9c5065040280793a35dafb8a08066b641f298efa31bc3f
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.2 MB (384159735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a34d09eb62ad0dd72d73f44de883176bcbd48d8141c97f06ca3eb8fc4232b78`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:24:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 01:24:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 01:24:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:24:42 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 01:24:42 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 01:24:53 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:24:53 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:25:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:25:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:25:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:25:47 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:27:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945bbc5aabb50a33770eadc32a9761dcdaeeb5d48734e3f81b2e7f5df64d2c09`  
		Last Modified: Wed, 16 Aug 2017 01:58:16 GMT  
		Size: 7.0 MB (7029472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a341ea22883a7f9d96a03fc234a19ab344c0d2446dbd1966b751acd759b934`  
		Last Modified: Wed, 16 Aug 2017 01:58:12 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3775a922bad010cc4f08d787019eb974cafffbb68e03543ba5f08410fb147757`  
		Last Modified: Wed, 16 Aug 2017 01:58:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83230b550357305e33f0b05e49f51571ce39a7063ba7eb106278bb0fa729da62`  
		Last Modified: Wed, 16 Aug 2017 01:58:38 GMT  
		Size: 64.7 MB (64668347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f584565feb2bade898d8c5173e5b4f8685da023314944f0d0c7dea70ddaaa6`  
		Last Modified: Wed, 16 Aug 2017 01:58:12 GMT  
		Size: 754.6 KB (754601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56f7665f7b0ef259236f4d740f5594e8d3f2b94ff49b20f25ae4042abb79ac`  
		Last Modified: Wed, 16 Aug 2017 01:59:14 GMT  
		Size: 251.7 MB (251728839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd0849757eb8ec878e2146c17cd4417ba92137b8368808a55bc20befe59bf21`  
		Last Modified: Wed, 16 Aug 2017 01:58:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab571442dc1302c47090a23423d90332235806a26cf68c42e81b796d26c06b4`  
		Last Modified: Wed, 16 Aug 2017 01:59:31 GMT  
		Size: 14.8 MB (14833755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
