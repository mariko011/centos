## `telegraf:latest`

```console
$ docker pull telegraf@sha256:5c386bdace70d7afac7ba0415d55756934d5d1c38fff2ba3bdb47a8af9f925cd
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80165102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9be0e41e008f1641aac8764b9c5cbfea7ee3181c6d500814386e6708156f0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:40:44 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 16 Dec 2016 03:40:52 GMT
ENV TELEGRAF_VERSION=1.1.2
# Fri, 16 Dec 2016 03:40:54 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 16 Dec 2016 03:40:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Dec 2016 03:40:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Dec 2016 03:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 03:40:55 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac7afb70f44908c74f2e798fa07e77a8386906697ca147ca8497085206e31be`  
		Last Modified: Thu, 15 Dec 2016 19:41:07 GMT  
		Size: 4.6 MB (4599915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6ea70bc98bcc6045d90a6afeb33e68c5181f92a00e603eceea7654ae0f70d`  
		Last Modified: Wed, 21 Dec 2016 20:25:44 GMT  
		Size: 6.9 KB (6851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4625c0e22744b315ffe00078ba23c0d431643d728bf69ccb95a4bc1baba2e14`  
		Last Modified: Wed, 21 Dec 2016 20:26:28 GMT  
		Size: 9.8 MB (9791194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a16a64e8d981627eb57162e06d4c90a04299f5e045fb433ba4e29fc785ca2b`  
		Last Modified: Wed, 21 Dec 2016 20:26:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
