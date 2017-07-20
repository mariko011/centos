## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:4d8ad62527de2f96e294cf717c3827fdc50a442d63bd74d78da1110e8e21e731
```

-	Platforms:
	-	linux; amd64

### `ubuntu:artful` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38897966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cdcb3740f8936745efb30b6ddee3ed11965b25bca9156c71bebf33ea659c28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Jul 2017 17:13:41 GMT
ADD file:ccb8cc1116dd151142af17223e206ab67d45ed86bdb1f3daf6f202f78aa1ceda in / 
# Thu, 20 Jul 2017 17:13:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:13:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:13:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:13:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:13:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:619e287e5b4b0df2b90cea3d6ad56f438e08e48d2a585cd8df806328e8e4c95e`  
		Last Modified: Thu, 20 Jul 2017 17:16:45 GMT  
		Size: 38.9 MB (38895747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e8d291b3785acaaebbbc0dca4acf0cf1ef1b4e83733e8b4f894f2d98bef0b`  
		Last Modified: Thu, 20 Jul 2017 17:16:39 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab1564e1ab0cdfedb15e86f686334eaca6e3a15a7f70d8944cee00862c251bf`  
		Last Modified: Thu, 20 Jul 2017 17:16:40 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a186ea1e4d3838f7f614b0083f1694828a7ce2be4a890b159402247a9a3a0aa`  
		Last Modified: Thu, 20 Jul 2017 17:16:39 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd9f9ae752925cb019e61080ffd902c8bfcc23af9ee3b61d82abee91608ab00`  
		Last Modified: Thu, 20 Jul 2017 17:16:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
