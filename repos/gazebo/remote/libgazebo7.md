## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:34cd22869f32caaad0de70c33bf8c1ab7c15687118e8e4df8298a95a5632ec9f
```

-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.1 MB (472140810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7be6ad690a65978f5b4a39b515b0643a5fef8dd11b7abc87355514af1262975`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:12:27 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Thu, 13 Oct 2016 23:12:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 13 Oct 2016 23:12:30 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 13 Oct 2016 23:27:11 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.4.0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 23:27:52 GMT
EXPOSE 11345/tcp
# Thu, 13 Oct 2016 23:27:53 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 13 Oct 2016 23:27:53 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 13 Oct 2016 23:27:53 GMT
CMD ["gzserver"]
# Thu, 13 Oct 2016 23:27:54 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Thu, 13 Oct 2016 23:30:50 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.4.0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b726c2f9bda2ba796bc3d4df533c8dcc31f64e8bc2b66d0557a21f795703d9`  
		Last Modified: Thu, 13 Oct 2016 23:31:01 GMT  
		Size: 13.1 KB (13103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966872b650b159f9ef5c396b8901e9fe3d9db7f3d7d83259846a34ad9ebd30f0`  
		Last Modified: Thu, 13 Oct 2016 23:31:02 GMT  
		Size: 258.1 KB (258126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e57bf87411cfad48233c8cac67ddaadd0218c21439e31e77d08eda0a489ce5d`  
		Last Modified: Thu, 13 Oct 2016 23:41:06 GMT  
		Size: 176.4 MB (176384419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb369f2115f005a90cd696176ad8a21825776c7966a8a9a5e3289173896c51`  
		Last Modified: Thu, 13 Oct 2016 23:40:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9e3d5b86ee0a5603eb2f6465d81fd8274f5b268f61d30b64a5a8adeb76fd9e`  
		Last Modified: Thu, 13 Oct 2016 23:42:54 GMT  
		Size: 229.7 MB (229709209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
