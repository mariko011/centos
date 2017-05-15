## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:2c935ced8a4ebecab443216ee4dd9e11dc1c85f81a04f07277f99567238f00d9
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42597184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4c9ae219d01e7338adf9b955679f75dc1b3b399fd2acf0022f9a88ae84c73d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:44:25 GMT
ADD file:9e2eabb7b05f940d68140837f1ece7fc6850820bd4122716910cff0bf68f0aeb in / 
# Mon, 15 May 2017 16:44:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:44:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:44:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:44:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:44:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:869d7e479fb806bc6dd4a699dbabbe1195e8aaaf0d93db34cd95d6ed99f1e72c`  
		Last Modified: Mon, 15 May 2017 16:50:49 GMT  
		Size: 42.6 MB (42594839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde8cc75da46cf424a03c821ce9873ab3a54263c9d5dcfab87e95993650e820`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d18efd03befb8d6d68e2ea3d2008c5bb827a9f322d8b8c4540a05c003d992f`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ed9114795ec37d3e3bb7184f91d295a16cafaef52eb4209e8e49e1519717b0`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec97b2b19c22d93ec61e470d48209e569f0fb1d56335da1edc08c4b0257e5c`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
