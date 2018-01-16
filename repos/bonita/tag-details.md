<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:7.6.1`](#bonita761)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:6a3198387de97e8c8876873390e2951875ef8d6985276ab52b9c67ed90d29c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:72369353b290bae470a5b92f31a7785bd49afa10b2dc042a48d40042fb7c6730
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213963999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a00fbbc571b7791630043c20f70ae80417931f56f6ea1096a88cd159d62e3ce`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:17:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 16 Jan 2018 04:18:32 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:18:33 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 16 Jan 2018 04:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 16 Jan 2018 04:18:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 16 Jan 2018 04:18:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 16 Jan 2018 04:18:40 GMT
ARG BONITA_VERSION
# Tue, 16 Jan 2018 04:18:41 GMT
ARG TOMCAT_VERSION
# Tue, 16 Jan 2018 04:18:41 GMT
ARG BONITA_SHA256
# Tue, 16 Jan 2018 04:18:41 GMT
ARG BONITA_URL
# Tue, 16 Jan 2018 04:18:41 GMT
ENV BONITA_VERSION=7.5.4
# Tue, 16 Jan 2018 04:18:42 GMT
ENV TOMCAT_VERSION=7.0.76
# Tue, 16 Jan 2018 04:18:42 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Tue, 16 Jan 2018 04:18:42 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Tue, 16 Jan 2018 04:18:54 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 16 Jan 2018 04:18:55 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 16 Jan 2018 04:18:56 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 16 Jan 2018 04:18:57 GMT
VOLUME [/opt/bonita]
# Tue, 16 Jan 2018 04:18:57 GMT
COPY dir:67158d50f6a23f242c6ece683aa22b62bf43e8403082c8a4b4c012ca3a3a0ac5 in /opt/files 
# Tue, 16 Jan 2018 04:18:57 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Tue, 16 Jan 2018 04:18:58 GMT
EXPOSE 8080/tcp
# Tue, 16 Jan 2018 04:18:58 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f613426f6c6d55d582da066e847eb883fc0418b9906468dbfd445ac0b043bd8`  
		Last Modified: Tue, 16 Jan 2018 04:30:32 GMT  
		Size: 82.7 MB (82653613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dda936f358bb6a4fa6422593cb7393551e4e3e113bd2236db857484004a26cf`  
		Last Modified: Tue, 16 Jan 2018 04:30:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b752437d03fec2b5494baaeacf5db65f422042d52684de39ed669ad15f3dca`  
		Last Modified: Tue, 16 Jan 2018 04:30:06 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b029fa4e7107786ede8c62b4a6d3927e065733cf845176c26ea088bf04997b8`  
		Last Modified: Tue, 16 Jan 2018 04:30:04 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11723ac83359d8034a664c0d7f7c061d7fc5c9ad6d8303f6e6f85978ff6ab3`  
		Last Modified: Tue, 16 Jan 2018 04:30:05 GMT  
		Size: 818.6 KB (818556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2115989253bf7e0212c35b21546f23df3ba9f7b6156ee9d241dfadc25ad2b2`  
		Last Modified: Tue, 16 Jan 2018 04:30:16 GMT  
		Size: 87.5 MB (87503860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382e5d3039834a353b63fde1d7238f3a50ec39bea56ae296165043e89a499208`  
		Last Modified: Tue, 16 Jan 2018 04:30:04 GMT  
		Size: 6.2 KB (6174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6619d07b570fe64171af0257f1d94acbab8693f8247d679e7d640d11cf4296d`  
		Last Modified: Tue, 16 Jan 2018 04:30:04 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.6.1`

```console
$ docker pull bonita@sha256:f45182473f20effdc9413da89352e384c6affe6d98328f928b91874e5233d7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.6.1` - linux; amd64

```console
$ docker pull bonita@sha256:4a4e1d28b5710ac7546b86375e3688c1aba280872a34fc562531cd0ce54f58c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214776268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97240fa922e7a2e3d4f10668031cbd2299ba19a6b4d570a74be3a3d6979bfb69`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:17:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 16 Jan 2018 04:18:32 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:18:33 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 16 Jan 2018 04:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 16 Jan 2018 04:18:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 16 Jan 2018 04:18:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 16 Jan 2018 04:18:40 GMT
ARG BONITA_VERSION
# Tue, 16 Jan 2018 04:18:41 GMT
ARG TOMCAT_VERSION
# Tue, 16 Jan 2018 04:18:41 GMT
ARG BONITA_SHA256
# Tue, 16 Jan 2018 04:18:41 GMT
ARG BONITA_URL
# Tue, 16 Jan 2018 04:25:45 GMT
ENV BONITA_VERSION=7.6.1
# Tue, 16 Jan 2018 04:25:45 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 16 Jan 2018 04:25:46 GMT
ENV BONITA_SHA256=a35359dbaf4ea4bebeb520a22d733d93625281080f4cbad581b0ff7581b94785
# Tue, 16 Jan 2018 04:25:46 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.1-Tomcat-8.5.23.zip
# Tue, 16 Jan 2018 04:26:00 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 16 Jan 2018 04:29:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 16 Jan 2018 04:29:42 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 16 Jan 2018 04:29:42 GMT
VOLUME [/opt/bonita]
# Tue, 16 Jan 2018 04:29:43 GMT
COPY dir:922ea6ebf17819d868d6aee25bb5f7606ee9d4422a9d433bf71ce223d52a3f98 in /opt/files 
# Tue, 16 Jan 2018 04:29:43 GMT
COPY dir:8ca85ca324e0aeed811c4bd64a86bf6cebd3e105fb39fa3cf3c232fd56be7323 in /opt/templates 
# Tue, 16 Jan 2018 04:29:43 GMT
EXPOSE 8080/tcp
# Tue, 16 Jan 2018 04:29:44 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f613426f6c6d55d582da066e847eb883fc0418b9906468dbfd445ac0b043bd8`  
		Last Modified: Tue, 16 Jan 2018 04:30:32 GMT  
		Size: 82.7 MB (82653613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dda936f358bb6a4fa6422593cb7393551e4e3e113bd2236db857484004a26cf`  
		Last Modified: Tue, 16 Jan 2018 04:30:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b752437d03fec2b5494baaeacf5db65f422042d52684de39ed669ad15f3dca`  
		Last Modified: Tue, 16 Jan 2018 04:30:06 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b029fa4e7107786ede8c62b4a6d3927e065733cf845176c26ea088bf04997b8`  
		Last Modified: Tue, 16 Jan 2018 04:30:04 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11723ac83359d8034a664c0d7f7c061d7fc5c9ad6d8303f6e6f85978ff6ab3`  
		Last Modified: Tue, 16 Jan 2018 04:30:05 GMT  
		Size: 818.6 KB (818556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540a4006ea4d44460f9f548be002af3951917290a42cb15e7cbad7697c9db13`  
		Last Modified: Tue, 16 Jan 2018 04:31:01 GMT  
		Size: 88.3 MB (88315873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18514142eadd8e3dca82ba5d4f3c1ded6d864e4a03eafcd70b16387534c71`  
		Last Modified: Tue, 16 Jan 2018 04:30:53 GMT  
		Size: 6.4 KB (6382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3995bd82ecaac972284d29162c2dfca72844ed18989f3f4e7209932da51eeb07`  
		Last Modified: Tue, 16 Jan 2018 04:30:52 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:f45182473f20effdc9413da89352e384c6affe6d98328f928b91874e5233d7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:4a4e1d28b5710ac7546b86375e3688c1aba280872a34fc562531cd0ce54f58c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214776268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97240fa922e7a2e3d4f10668031cbd2299ba19a6b4d570a74be3a3d6979bfb69`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:17:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 16 Jan 2018 04:18:32 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:18:33 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 16 Jan 2018 04:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 16 Jan 2018 04:18:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 16 Jan 2018 04:18:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 16 Jan 2018 04:18:40 GMT
ARG BONITA_VERSION
# Tue, 16 Jan 2018 04:18:41 GMT
ARG TOMCAT_VERSION
# Tue, 16 Jan 2018 04:18:41 GMT
ARG BONITA_SHA256
# Tue, 16 Jan 2018 04:18:41 GMT
ARG BONITA_URL
# Tue, 16 Jan 2018 04:25:45 GMT
ENV BONITA_VERSION=7.6.1
# Tue, 16 Jan 2018 04:25:45 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 16 Jan 2018 04:25:46 GMT
ENV BONITA_SHA256=a35359dbaf4ea4bebeb520a22d733d93625281080f4cbad581b0ff7581b94785
# Tue, 16 Jan 2018 04:25:46 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.1-Tomcat-8.5.23.zip
# Tue, 16 Jan 2018 04:26:00 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 16 Jan 2018 04:29:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 16 Jan 2018 04:29:42 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 16 Jan 2018 04:29:42 GMT
VOLUME [/opt/bonita]
# Tue, 16 Jan 2018 04:29:43 GMT
COPY dir:922ea6ebf17819d868d6aee25bb5f7606ee9d4422a9d433bf71ce223d52a3f98 in /opt/files 
# Tue, 16 Jan 2018 04:29:43 GMT
COPY dir:8ca85ca324e0aeed811c4bd64a86bf6cebd3e105fb39fa3cf3c232fd56be7323 in /opt/templates 
# Tue, 16 Jan 2018 04:29:43 GMT
EXPOSE 8080/tcp
# Tue, 16 Jan 2018 04:29:44 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f613426f6c6d55d582da066e847eb883fc0418b9906468dbfd445ac0b043bd8`  
		Last Modified: Tue, 16 Jan 2018 04:30:32 GMT  
		Size: 82.7 MB (82653613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dda936f358bb6a4fa6422593cb7393551e4e3e113bd2236db857484004a26cf`  
		Last Modified: Tue, 16 Jan 2018 04:30:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b752437d03fec2b5494baaeacf5db65f422042d52684de39ed669ad15f3dca`  
		Last Modified: Tue, 16 Jan 2018 04:30:06 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b029fa4e7107786ede8c62b4a6d3927e065733cf845176c26ea088bf04997b8`  
		Last Modified: Tue, 16 Jan 2018 04:30:04 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11723ac83359d8034a664c0d7f7c061d7fc5c9ad6d8303f6e6f85978ff6ab3`  
		Last Modified: Tue, 16 Jan 2018 04:30:05 GMT  
		Size: 818.6 KB (818556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540a4006ea4d44460f9f548be002af3951917290a42cb15e7cbad7697c9db13`  
		Last Modified: Tue, 16 Jan 2018 04:31:01 GMT  
		Size: 88.3 MB (88315873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df18514142eadd8e3dca82ba5d4f3c1ded6d864e4a03eafcd70b16387534c71`  
		Last Modified: Tue, 16 Jan 2018 04:30:53 GMT  
		Size: 6.4 KB (6382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3995bd82ecaac972284d29162c2dfca72844ed18989f3f4e7209932da51eeb07`  
		Last Modified: Tue, 16 Jan 2018 04:30:52 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
