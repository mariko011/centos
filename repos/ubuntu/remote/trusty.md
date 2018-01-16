## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:0fa794352ea91b4b7e4b8ffa2da78131c3d45c2a4f022751dd50a1c26b62596c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty` - linux; amd64

```console
$ docker pull ubuntu@sha256:e55e92e7b82dec54fc0f4d0243e2988070bb46bfab55f218d6b30eabfaffbfa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73011032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a63d8b2bfa3c8fac2931b6a95582f3cfcf365c92eadb6331e8bfe11839bfda`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0e763fdb701e350ba37e612391f6050ce215da521bcf4862be0a370c585607e5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66483130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da137c6450acb33b40a5ab1a21ea7c75a7e8af7dd79a6e4d67740de9914a558`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:37 GMT
ADD file:dd1487cabc9f8e2188e6103671470ce7f41c66710ed2696ec8e26bd5047c5b47 in / 
# Fri, 15 Dec 2017 13:51:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:51:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:51:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:51:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:50e2643b13d6ea73d22c1b004246a2bff43a5c025fcfbbc755748127e28c3e78`  
		Last Modified: Fri, 15 Dec 2017 13:53:11 GMT  
		Size: 66.4 MB (66404695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f428909f2234cd44a20cf86c0d66eba3f5c1a55afb113882878461edbad6b7`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443904308a1cee3b77fa8c25a3d53350efdd954e5a5f31baa343d655914e2753`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355edca5c4b0e249be5f4e3014d4e533bb8ff090178d51c0b2b06a42aecf8e76`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378c801492144c7285209c23d67c82b19b651fdb9eb1dfd3fd4c520db719d54d`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:9b56114aa33a0b092819ff1f15073908b4286c477337fc3c3e7bb628677633cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67752689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664216841fbe7eb85e1de34baffd4791fc44a2c69e21b2b9060a67d3ca9d8a09`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:23 GMT
ADD file:8aadbfe4a40536f740963c51b675ab6c8193cd57e3d31c0b1e2b72060663e3eb in / 
# Fri, 15 Dec 2017 15:01:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:01:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:01:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:612f35d0fc5bf2558fece9956f0ae9c8458f302cd8494f4bc8b92075f1cbd7fb`  
		Last Modified: Fri, 15 Dec 2017 15:03:37 GMT  
		Size: 67.7 MB (67691952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71047af42ff6fc2806fe22f4f594a421de10078fd6910731a3c81ef03a59881e`  
		Last Modified: Fri, 15 Dec 2017 15:03:12 GMT  
		Size: 59.1 KB (59096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860c8fbc23f935305c177e6f4dd8ef1c5e824a064a4b4015131511396cb4db9a`  
		Last Modified: Fri, 15 Dec 2017 15:03:11 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a467c39ac31c8f93205e483de34f0192468906a54165c4a6bfa38cf722fe32d`  
		Last Modified: Fri, 15 Dec 2017 15:03:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77056b7ee035853054f607c46c11e386597fc5be9de9c5a9abe3422e297551db`  
		Last Modified: Fri, 15 Dec 2017 15:03:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; 386

```console
$ docker pull ubuntu@sha256:a93ea651aab5cdf399b8a967703c65c8606784841ab630541bcfe3387582185e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70369437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8247cb57f9c6ed774f11be56d722d2485548f153a0cac686e44e342c5599d75f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 05:01:08 GMT
ADD file:98e5416d76ae80d1f2b87b2cb87fedbbfea1f60064b1b993d71317684b0cf54e in / 
# Tue, 16 Jan 2018 05:01:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 05:01:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:01:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 05:01:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 05:01:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5ed64485df98e30aba692d7b7042ca8864a86ca03100f926988f735a9ab8c193`  
		Last Modified: Mon, 15 Jan 2018 14:44:03 GMT  
		Size: 70.3 MB (70302974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a65abe160b228b908d8384abfa1dc62556dadbc032b40feba51ebd687bcfaf`  
		Last Modified: Tue, 16 Jan 2018 05:37:51 GMT  
		Size: 64.9 KB (64854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5511748640f5d19c480d797da4619c8f744be7a773bc3fe3d21796d9c6f9d3a`  
		Last Modified: Tue, 16 Jan 2018 05:37:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6132ab49b5bef00b5cc3ab03f6264f8ad2b5e08df924fd3b7d5013dd18b370`  
		Last Modified: Tue, 16 Jan 2018 05:37:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0434ee06fbe22ca33b0afd1e005b6308c805df1437c3a43ae57998a635991564`  
		Last Modified: Tue, 16 Jan 2018 05:37:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:37e7cd8b1f35660d0fb39b5fb6722a8f7eee0e3ece4d392dffac7a8a32d6f544
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74446816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759ffff1995b5706af36df5c513c64d5af93f078c5103ddc573e8364aa836d78`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 03:40:57 GMT
ADD file:9c2219ef863cfae20210a8f06472251c61f471eb305e0f4da1687ef9a0799df5 in / 
# Tue, 16 Jan 2018 03:41:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:41:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:41:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:41:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:41:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9a7801d94d3a668643f7ffb464f6950c02bf56ef5f553e1934c732058702d2e2`  
		Last Modified: Tue, 16 Jan 2018 03:43:16 GMT  
		Size: 74.4 MB (74381693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9244ad82ba14e77ca1e0e0329748724b5f35ffb94fd623192728a867242f55`  
		Last Modified: Tue, 16 Jan 2018 03:42:57 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c1f1bec3b5b18cd0653231a4f69bc98ca76bd5f8b0e5159a5d294be968b8ff`  
		Last Modified: Tue, 16 Jan 2018 03:42:57 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccadace21601f3fd6cc6e93be449adf7f71decf0666b2028602e5a63bacba78`  
		Last Modified: Tue, 16 Jan 2018 03:42:57 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f741e9b8a9cb81d9373b4ea9bf079a4de284173fb185bdcadb5c4cc51634a0ac`  
		Last Modified: Tue, 16 Jan 2018 03:42:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
