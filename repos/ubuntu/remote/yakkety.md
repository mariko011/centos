## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:a4587ff7d0feacbac5d585baf3ec5e62b1ae931d92da0172837b781ddd02eae8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40611285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f419f600ef29503e88382e7030d614dae8e9a97a114975304abe614840c0b52`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:51 GMT
ADD file:77267db1a2bb96473690078902161cec29093c61eb5fc81bc3257fbc5b3bf29c in / 
# Tue, 29 Nov 2016 20:04:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:56 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:97ad77101e35e988a8977420f2590d5ea7a1178a4b262a5f547cb7fa2264fd4b`  
		Last Modified: Tue, 29 Nov 2016 20:09:44 GMT  
		Size: 40.6 MB (40608988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782edfa648e788016ca402d1a69816c399b004767c9b665c3a908d3169e29391`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 826.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851dc20194f2d960480b24a826047467bcb3176940c15be88f9327c603c77183`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58de67b64a248820b221a561d7920c04fc1775249cf0523f771849d5a132c11a`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d65e14203f573f153b8ec91879d75519b046cb855883c299076735191c074b`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
