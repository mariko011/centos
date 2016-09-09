## `telegraf:latest`

```console
$ docker pull telegraf@sha256:ef3ed6102cd47038bf2c9cc88313748efd7307e11a03464e8d4b8ecb9a36644f
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81047735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e00a444cd6e1e1f9b694bbe121abdae3a2f26c497584b7d175a70a5bf4663c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:58 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in / 
# Tue, 30 Aug 2016 17:47:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:01 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:29:46 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Wed, 07 Sep 2016 21:54:27 GMT
ENV TELEGRAF_VERSION=1.0.0
# Wed, 07 Sep 2016 21:54:33 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Wed, 07 Sep 2016 21:54:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 07 Sep 2016 21:54:34 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:54:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:54:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623aaf4140d62e6096882bf6762ea6b4baeea37eb933471f87a67fdff142b3`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9274a13e26ac0f1c49ec236e6a74098e54f9622a12636f6dac9ba6b5dac33b2a`  
		Last Modified: Tue, 30 Aug 2016 23:30:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab185c837bea98a42b032bdf4621b6d8eb9ee617d1405f4110f38865ffc334e2`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55122420e5f51a86b316465bd5217ffc5a49292282b6d409753682c526cd82ff`  
		Last Modified: Tue, 30 Aug 2016 23:30:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780fea09bec239cbbbe6ec9230d4e2de137e371a7f77617d0b0c4d74e184a8e6`  
		Last Modified: Tue, 30 Aug 2016 23:30:34 GMT  
		Size: 4.6 MB (4599342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e44502973fc89bfb7573c44ec7d4a2202d8a27b98d0bcab3491d0f351d80b`  
		Last Modified: Tue, 30 Aug 2016 23:30:31 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24bba3516fd7f92de30662e698ca82263d99f8a2d9439ec2eb4407051263196`  
		Last Modified: Wed, 07 Sep 2016 21:55:26 GMT  
		Size: 10.7 MB (10667660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567bbac3553f1d0c2a9400b871a04bc2a497824d62e088c21493757a9c48579e`  
		Last Modified: Wed, 07 Sep 2016 21:55:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
