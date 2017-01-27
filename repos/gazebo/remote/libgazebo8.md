## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:1019dab9cee97de3fe14eadd2d7878f3b0d43f7d5bddbfb75c13e2b73c692d13
```

-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.2 MB (499212223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d275d722ca5e3e3324c76b0f74754b7c06e0d3178de8d4afcaed5099318cac98`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Fri, 27 Jan 2017 21:10:21 GMT
RUN apt-get update && apt-get install -q -y     lsb-release    && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 21:10:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 27 Jan 2017 21:10:24 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 27 Jan 2017 21:11:49 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.0.0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 21:11:49 GMT
EXPOSE 11345/tcp
# Fri, 27 Jan 2017 21:11:50 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 27 Jan 2017 21:11:50 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 27 Jan 2017 21:11:51 GMT
CMD ["gzserver"]
# Fri, 27 Jan 2017 21:13:41 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.0.0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d881d95cf2daa326f4614cb8ce189b7cb9ebd908d2629156adcc87ffdd16639b`  
		Last Modified: Fri, 27 Jan 2017 21:57:30 GMT  
		Size: 11.8 MB (11758625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c280d5d5b8afed11a48162f35b7d6bc2c7bfd6398634ad3554d7e2f4eb8aa7`  
		Last Modified: Fri, 27 Jan 2017 21:57:22 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5354e755877617c6b9733b7e22c4c1a59497a2bb7fd841d850ce76b64e689d35`  
		Last Modified: Fri, 27 Jan 2017 21:57:22 GMT  
		Size: 5.5 KB (5462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5637af8208a7f4a20eaaa911425ad05f70adbbec557e4fdfff934dc0f6e1854f`  
		Last Modified: Fri, 27 Jan 2017 21:58:17 GMT  
		Size: 206.9 MB (206935505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8145e5e2b3f058db58f2287719a55788b83513a1d66e11fa4d5ba5aa8dfdb8ef`  
		Last Modified: Fri, 27 Jan 2017 21:57:23 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee17db303ea59fcab07c475de6f5257b8650dc84b4ee6ccb2636aa19e39d85d2`  
		Last Modified: Fri, 27 Jan 2017 21:59:57 GMT  
		Size: 230.2 MB (230188975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
