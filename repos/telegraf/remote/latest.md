## `telegraf:latest`

```console
$ docker pull telegraf@sha256:8ee94f78aa9922bd937181d1ba7275494c1ad49da5adc4a9ec33f538b5a3765c
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83445440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:616f2c4c4d1e5e816374d6ec3fd86c037a0631e40d92bbf6e07c88d056b11c58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:07:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 04:59:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Jun 2017 16:38:00 GMT
ENV TELEGRAF_VERSION=1.3.2
# Thu, 15 Jun 2017 16:38:06 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_amd64.deb*
# Thu, 15 Jun 2017 16:38:07 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 15 Jun 2017 16:38:08 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 15 Jun 2017 16:38:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Jun 2017 16:38:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5e13aa4be9211a1b0511b6920b59ea9f46d7c0689e7d23d966e2fa3959ef24`  
		Last Modified: Fri, 02 Jun 2017 17:30:38 GMT  
		Size: 4.7 MB (4705680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec76e021997cff53c7c748e501851968bb34d36c7755514396a414ce0277d800`  
		Last Modified: Sat, 03 Jun 2017 05:00:40 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d961b3a70af6576f786643f8d44a5c8efbb647a30c82f870889e6bc115bc9a0a`  
		Last Modified: Thu, 15 Jun 2017 16:41:02 GMT  
		Size: 11.5 MB (11548682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b677cdf12625fefa2e67331c2ab8efa9c4cff27008b1a17703340aa3e3bd9c3e`  
		Last Modified: Thu, 15 Jun 2017 16:40:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
