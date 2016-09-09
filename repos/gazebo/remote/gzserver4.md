## `gazebo:gzserver4`

```console
$ docker pull gazebo@sha256:392787ff894265945f89f33a7850388efc3e6fafaaacde7e9ad09e0fa93dff2e
```

-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.0 MB (209967443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cbce53d235a17cebd98f16243812763f5202efb184ad89c3eef58c1b4f8a84`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 24 Jun 2016 17:29:06 GMT
ADD file:b6ff401cf2a7a08c11d2bdfbfec31c7ec105fd7ab29c529fb90025762b077e2c in /
# Fri, 24 Jun 2016 17:29:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes
# Fri, 24 Jun 2016 17:29:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 24 Jun 2016 17:29:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 24 Jun 2016 17:29:14 GMT
CMD ["/bin/bash"]
# Fri, 24 Jun 2016 18:33:26 GMT
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# Fri, 24 Jun 2016 18:33:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 24 Jun 2016 18:33:45 GMT
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 24 Jun 2016 18:35:47 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3*     && rm -rf /var/lib/apt/lists/*
# Fri, 24 Jun 2016 18:35:49 GMT
EXPOSE 11345/tcp
# Fri, 24 Jun 2016 18:35:51 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in /
# Fri, 24 Jun 2016 18:35:52 GMT
ENTRYPOINT &{["/gzserver_entrypoint.sh"]}
# Fri, 24 Jun 2016 18:35:52 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:56eb14001cebec19f2255d95e125c9f5199c9e1d97dd708e1f3ebda3d32e5da7`  
		Last Modified: Fri, 24 Jun 2016 17:30:48 GMT  
		Size: 65.7 MB (65699368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff49c327d838cf14f7db33fa44f6057b7209298e9c03369257485a085e231df`  
		Last Modified: Fri, 24 Jun 2016 17:30:29 GMT  
		Size: 101.4 KB (101415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e532f87f96dd5821006d02e65e7d4729a4e6957a34c3f4ec72046e221eb7c52`  
		Last Modified: Fri, 24 Jun 2016 17:30:29 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce63537e70c2c250fbc41b5f04bfb31f445be4034effc4b4c513bf8899dfa0a`  
		Last Modified: Fri, 24 Jun 2016 17:30:29 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654eb25264349aa69f086eddbab0eab960282d006ef74541469de64b125f8304`  
		Last Modified: Fri, 24 Jun 2016 18:35:59 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8d3681a6e347340e978761403c316aae3fe8a221f0a4eecb7882d8bc891ba6`  
		Last Modified: Fri, 24 Jun 2016 18:36:00 GMT  
		Size: 258.2 KB (258156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b23616c88b7026065b2a03a8f4cdd96b6d20294fb16edde7cd4c455e86cf04`  
		Last Modified: Fri, 24 Jun 2016 18:36:34 GMT  
		Size: 143.9 MB (143894160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f87d95a220a2bba62b3fd7769e261672746f5b0dbe8f010882a18d1889c166`  
		Last Modified: Fri, 24 Jun 2016 18:35:59 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
