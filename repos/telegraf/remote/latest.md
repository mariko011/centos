## `telegraf:latest`

```console
$ docker pull telegraf@sha256:95590752112afea3c70df2dad8d7eafc20c49a7a07a680c2612ec5ebafb939b1
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83437198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa75506663d4918dc04ad8829944c08b9559e4b3f292b4e6f4e45233046b9f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:05:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:36:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:37:29 GMT
ENV TELEGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:37:33 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_amd64.deb.asc telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_amd64.deb*
# Tue, 16 May 2017 20:37:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 May 2017 20:37:54 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 May 2017 20:37:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:37:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b91e692e7824d309e2aacbfb74b09f492a90064fd976acb7ade04823a585fb`  
		Last Modified: Mon, 15 May 2017 17:51:27 GMT  
		Size: 4.7 MB (4705649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fee5aaad4d5f86c49b58d02c15ac6c944e125779022331c46c2831ba21b6af`  
		Last Modified: Tue, 16 May 2017 20:38:56 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0803fa1bacc219a1f98e351ac89486fb64665ad7a59589e2fdf1b5bba202b9d4`  
		Last Modified: Tue, 16 May 2017 20:41:13 GMT  
		Size: 11.5 MB (11547183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c670644e525459ccaa5ad266423edcb260713d1aba7e5023b5d47eeb9631c6`  
		Last Modified: Tue, 16 May 2017 20:41:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
