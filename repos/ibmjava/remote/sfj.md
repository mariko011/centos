## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:6dfa557ee30d6ee1b6cfa3ac3f7f019b8c8fbb85afa5dd1cefb03a14c89f9a3f
```

-	Platforms:
	-	linux; amd64

### `ibmjava:sfj` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112786055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbcb1ce5b4610820bbc53b4433666c449b4b2b17e91248679899855168ad7ec2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:56:22 GMT
ENV JAVA_VERSION=1.8.0_sr3fp12
# Thu, 13 Oct 2016 22:00:05 GMT
RUN ESUM="064e553d4bce75553d987ebd58e0331f24852d3f4e6b3da7fbeb670b057780b8"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="sfj/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 13 Oct 2016 22:00:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fb517ebfe36d2f57ef486425f59e0f26fe64a1f63087381bba5b135024343c`  
		Last Modified: Thu, 13 Oct 2016 22:00:22 GMT  
		Size: 59.8 MB (59842149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
