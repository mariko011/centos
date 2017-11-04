<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:a2f0cf0e1951d2971926b67f27abd3c03095aba5eb2941b72ee2e6c972f4c6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

```console
$ docker pull bonita@sha256:8115343966a1d6cf2fe4bbeb38e0587ca76f80e864e3b4f70c14b4f555aad892
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219051768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70dd8b203b042e10643b4acbf97b07f1b42d2f6c0f1a2e00de665681472f2b9a`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 08:55:00 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 04 Nov 2017 08:55:45 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:55:45 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 04 Nov 2017 08:55:46 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 04 Nov 2017 08:55:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 04 Nov 2017 08:55:51 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 04 Nov 2017 08:55:51 GMT
ARG BONITA_VERSION
# Sat, 04 Nov 2017 08:55:52 GMT
ARG TOMCAT_VERSION
# Sat, 04 Nov 2017 08:55:52 GMT
ARG BONITA_SHA256
# Sat, 04 Nov 2017 08:55:52 GMT
ARG BONITA_URL
# Sat, 04 Nov 2017 08:55:52 GMT
ENV BONITA_VERSION=7.4.3
# Sat, 04 Nov 2017 08:55:52 GMT
ENV TOMCAT_VERSION=7.0.67
# Sat, 04 Nov 2017 08:55:53 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Sat, 04 Nov 2017 08:55:53 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Sat, 04 Nov 2017 08:56:04 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 04 Nov 2017 08:56:06 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 04 Nov 2017 08:56:07 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 04 Nov 2017 08:56:07 GMT
VOLUME [/opt/bonita]
# Sat, 04 Nov 2017 08:56:07 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Sat, 04 Nov 2017 08:56:07 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Sat, 04 Nov 2017 08:56:07 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 08:56:08 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f44e40ac0c6857c26c58fbc5109ea9a30541c7d214f580ead70e9d521a306`  
		Last Modified: Sat, 04 Nov 2017 08:57:48 GMT  
		Size: 65.7 MB (65683640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb14c8dc84093725811d726fc9ca136b51a50490b587f9ce9624fb8613b6223`  
		Last Modified: Sat, 04 Nov 2017 08:57:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8347e977657de33565624539cfa7adf2c00a2acbf01a3dd7a0170fb0cbbf3ee`  
		Last Modified: Sat, 04 Nov 2017 08:57:39 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d27db3a2adf2168e5e673a8cdd0328c75e593e38efa66d2199f7e6d4449f422`  
		Last Modified: Sat, 04 Nov 2017 08:57:37 GMT  
		Size: 133.2 KB (133172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3d75f7b2e5766e59c3d52ef27426c1cf605ebeeca6b51829a8576a9ea47516`  
		Last Modified: Sat, 04 Nov 2017 08:57:37 GMT  
		Size: 818.6 KB (818575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccf81264f415117dd57981245f0b46b09bea51944eb0dc36f2669558501e005`  
		Last Modified: Sat, 04 Nov 2017 08:57:44 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa955f3427afe0b160597a75bd8ad77aee3cf4c9d978c24dd5c94039ed314d08`  
		Last Modified: Sat, 04 Nov 2017 08:57:38 GMT  
		Size: 6.0 KB (6041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c4671ab5c44436367800c430b99e0bd672260214b86d6c453e525899d16a9`  
		Last Modified: Sat, 04 Nov 2017 08:57:36 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:a8dddf6dbb15308ed4ac0ec3841fddb3aa523698979b59dfa4ecf022a756d0b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:5bb7bb99cd4c36fd0ef65fd19969ca4e8861d62be7e6f9891618844d656b2164
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218732400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c390251a07ae59570245794197227929d22ecd91c9d10c74354d543a7873b91f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 08:56:23 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 04 Nov 2017 08:56:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:56:58 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 04 Nov 2017 08:56:59 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 04 Nov 2017 08:57:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 04 Nov 2017 08:57:05 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 04 Nov 2017 08:57:06 GMT
ARG BONITA_VERSION
# Sat, 04 Nov 2017 08:57:07 GMT
ARG TOMCAT_VERSION
# Sat, 04 Nov 2017 08:57:07 GMT
ARG BONITA_SHA256
# Sat, 04 Nov 2017 08:57:07 GMT
ARG BONITA_URL
# Sat, 04 Nov 2017 08:57:07 GMT
ENV BONITA_VERSION=7.5.4
# Sat, 04 Nov 2017 08:57:07 GMT
ENV TOMCAT_VERSION=7.0.76
# Sat, 04 Nov 2017 08:57:08 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Sat, 04 Nov 2017 08:57:08 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Sat, 04 Nov 2017 08:57:19 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 04 Nov 2017 08:57:20 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 04 Nov 2017 08:57:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 04 Nov 2017 08:57:21 GMT
VOLUME [/opt/bonita]
# Sat, 04 Nov 2017 08:57:22 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Sat, 04 Nov 2017 08:57:22 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Sat, 04 Nov 2017 08:57:22 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 08:57:22 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62bd224bdfdaefe810f1c8f1b6180664f2a97b2d99fb4ecc61a3dd3bf8580d40`  
		Last Modified: Sat, 04 Nov 2017 08:58:12 GMT  
		Size: 82.6 MB (82647233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b121f211cf7d64ed7d6ed106763bb41bf6290945b85cb77079c7c122eb4a157`  
		Last Modified: Sat, 04 Nov 2017 08:57:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c0ee193630dea50cfa5d69909a38964e0cb7871a8da0535b3cf99efd737977`  
		Last Modified: Sat, 04 Nov 2017 08:57:58 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a26e31608df9ad1d1d6ac1ace3767b2381be7aef7a8df0f4c0df08b0c834a69`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 133.2 KB (133180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9416a4df027e57508378d75758abff6db1b4c96a25a5aee9073161527cd69071`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 818.6 KB (818565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfdaaea0968ad67b182cfc70fa103d7da9f80303f0e785bac6db9b31bc6a145`  
		Last Modified: Sat, 04 Nov 2017 08:58:02 GMT  
		Size: 87.5 MB (87503861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5802d66b9d8ae3b1ad2fbfc8e4bdbdb39348ebb19d8d5b461d76d171ae16e37`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 6.2 KB (6168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134d7511f40a7313dc124fbd46f62104f783b0980072a75b47d2764a0b489af7`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:a8dddf6dbb15308ed4ac0ec3841fddb3aa523698979b59dfa4ecf022a756d0b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:5bb7bb99cd4c36fd0ef65fd19969ca4e8861d62be7e6f9891618844d656b2164
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218732400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c390251a07ae59570245794197227929d22ecd91c9d10c74354d543a7873b91f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 08:56:23 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 04 Nov 2017 08:56:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:56:58 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 04 Nov 2017 08:56:59 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 04 Nov 2017 08:57:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 04 Nov 2017 08:57:05 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 04 Nov 2017 08:57:06 GMT
ARG BONITA_VERSION
# Sat, 04 Nov 2017 08:57:07 GMT
ARG TOMCAT_VERSION
# Sat, 04 Nov 2017 08:57:07 GMT
ARG BONITA_SHA256
# Sat, 04 Nov 2017 08:57:07 GMT
ARG BONITA_URL
# Sat, 04 Nov 2017 08:57:07 GMT
ENV BONITA_VERSION=7.5.4
# Sat, 04 Nov 2017 08:57:07 GMT
ENV TOMCAT_VERSION=7.0.76
# Sat, 04 Nov 2017 08:57:08 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Sat, 04 Nov 2017 08:57:08 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Sat, 04 Nov 2017 08:57:19 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 04 Nov 2017 08:57:20 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 04 Nov 2017 08:57:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 04 Nov 2017 08:57:21 GMT
VOLUME [/opt/bonita]
# Sat, 04 Nov 2017 08:57:22 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Sat, 04 Nov 2017 08:57:22 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Sat, 04 Nov 2017 08:57:22 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 08:57:22 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62bd224bdfdaefe810f1c8f1b6180664f2a97b2d99fb4ecc61a3dd3bf8580d40`  
		Last Modified: Sat, 04 Nov 2017 08:58:12 GMT  
		Size: 82.6 MB (82647233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b121f211cf7d64ed7d6ed106763bb41bf6290945b85cb77079c7c122eb4a157`  
		Last Modified: Sat, 04 Nov 2017 08:57:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c0ee193630dea50cfa5d69909a38964e0cb7871a8da0535b3cf99efd737977`  
		Last Modified: Sat, 04 Nov 2017 08:57:58 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a26e31608df9ad1d1d6ac1ace3767b2381be7aef7a8df0f4c0df08b0c834a69`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 133.2 KB (133180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9416a4df027e57508378d75758abff6db1b4c96a25a5aee9073161527cd69071`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 818.6 KB (818565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfdaaea0968ad67b182cfc70fa103d7da9f80303f0e785bac6db9b31bc6a145`  
		Last Modified: Sat, 04 Nov 2017 08:58:02 GMT  
		Size: 87.5 MB (87503861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5802d66b9d8ae3b1ad2fbfc8e4bdbdb39348ebb19d8d5b461d76d171ae16e37`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 6.2 KB (6168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134d7511f40a7313dc124fbd46f62104f783b0980072a75b47d2764a0b489af7`  
		Last Modified: Sat, 04 Nov 2017 08:57:56 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
