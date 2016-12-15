## `buildpack-deps:yakkety-curl`

```console
$ docker pull buildpack-deps@sha256:ce1f0eaf999fd3ae6a65d1c9d0b6472c8bcea21131d1561472433f397e913044
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81c71bdb9f52045cb5548a53d73e5f68f388deb165d11f6f1e168e6a7d3e6e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:42 GMT
ADD file:ff4f3a76739749954953d154cef97ec1066cdbe3d69d871e35b26d22921a8766 in / 
# Thu, 15 Dec 2016 17:45:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:47 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:08:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a694de2ff4f905c590b2499cb72beb52543535412fd0208919241fa3854e51e3`  
		Last Modified: Thu, 15 Dec 2016 17:50:47 GMT  
		Size: 40.8 MB (40767865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83592e4393780d3ec9c48df950b72bfc1601ca304ccb0c8ffb9daa7519ea716`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c987dfa597e6778266cbc4a308f7b0b59bbeafb45afa65b70db8f76007d8d84f`  
		Last Modified: Thu, 15 Dec 2016 17:50:32 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f2d4cb80ea00b5ae57ba227733a315d7900612b6189f9634965527cb1f6d7f`  
		Last Modified: Thu, 15 Dec 2016 17:50:34 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bc31a5976cb3a5279e0244cba618193fbaa46d19fa1b52fbce001abc5a963c`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e5f184982c4a321a225221d682a98419ad2161c391478b3d8974b9a99b1e`  
		Last Modified: Thu, 15 Dec 2016 19:46:46 GMT  
		Size: 6.9 MB (6866211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
