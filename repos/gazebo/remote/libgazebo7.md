## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:5266b8d6df1eecff8abd58ed1f70edf2f1e2d34b5295bb7ec4080bd081eacf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:52ee7e30e5e0b179d5b72bbef61e3a155078b45c9e4077f94ee289f8655f5a91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.3 MB (497276960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6d95afc75b356c43381c998250825c5ed89b22d641efc96104d507b30a77002`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 04:27:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 10 Oct 2017 04:27:27 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 10 Oct 2017 04:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:28:52 GMT
EXPOSE 11345/tcp
# Tue, 10 Oct 2017 04:28:52 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 10 Oct 2017 04:28:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 10 Oct 2017 04:28:52 GMT
CMD ["gzserver"]
# Tue, 10 Oct 2017 04:31:10 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3fd478975253bb81fc95895f307a3af17d01bcf7a7cb9ccace029f0b7c9d52`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 13.1 KB (13120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7750278c3310fd70bfe3b504fdd2b013858b5cedcbd07bbd7fc6387dd8b26f`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bdf123209c1bd3d8ec260be262fff6cd80a24bdc8b34d900c223dc4f47424b`  
		Last Modified: Tue, 10 Oct 2017 05:15:41 GMT  
		Size: 190.0 MB (189975838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd49aa71387dcecc664b061c89284857af3fcf975005e424064459b8b8a6a1e`  
		Last Modified: Tue, 10 Oct 2017 05:14:50 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9fc40c8a0c6d9f756a3233b79f291850795346eb3f80561cca69f310c860ca`  
		Last Modified: Tue, 10 Oct 2017 05:18:05 GMT  
		Size: 259.7 MB (259748838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
