## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:eb0b4c75f638ec3b9431495492709127e4ad08027c7e45d1bf3c4addf24c8cb9
```

-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 MB (490470963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8eb9a17de78d7c499a0b2a4d8814e0093a95960ab9a6aeb3d76e9f1ddc9cfb`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 27 Jan 2017 20:53:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 27 Jan 2017 20:53:25 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 27 Jan 2017 20:59:11 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 20:59:12 GMT
EXPOSE 11345/tcp
# Fri, 27 Jan 2017 20:59:12 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 27 Jan 2017 20:59:13 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 27 Jan 2017 20:59:13 GMT
CMD ["gzserver"]
# Fri, 27 Jan 2017 21:02:21 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e6b5b3c39fa58ddf39d38f9547ad7cc6a7af6e5727c2e89591f2189c999344`  
		Last Modified: Fri, 27 Jan 2017 21:42:19 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d52707fe968ad25ed30aa37785c06fbaef3b16013f018bc5b32ca0091bc4c7b`  
		Last Modified: Fri, 27 Jan 2017 21:42:19 GMT  
		Size: 258.2 KB (258154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ece78df882d5881a57030c9aa8d8364bd6c3e5a7342118fa694f8a65838be5f`  
		Last Modified: Fri, 27 Jan 2017 21:46:19 GMT  
		Size: 164.5 MB (164509898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7738106720423b5f4c8b1cec171403b8ad54ee3ad2271006efc505097ada9b80`  
		Last Modified: Fri, 27 Jan 2017 21:45:32 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4140ab9cf329f62f65b25377adaebf8a8fa2b4ce5c8ac91aa66747d037ade8`  
		Last Modified: Fri, 27 Jan 2017 21:48:29 GMT  
		Size: 259.9 MB (259923008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
