## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:b1198d3bd64b95a376eeded7dfa1ed4ba96f022e8e269f04c81efb290f9d382a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:artful` - linux; amd64

```console
$ docker pull ubuntu@sha256:f439d1adabf9d25c36fd97d8e1396c0bfb728ad35ab320d637b9e7e13a96b543
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39906192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d147d2310fedf27c763dcb3e22d719922aa215db1ecf3849a211a6511e10ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 Jan 2018 20:58:35 GMT
ADD file:2c8e2bd2e3d2a37f9678092a250bd13e4264925882cd4310be53da65fb802713 in / 
# Mon, 15 Jan 2018 20:58:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 20:58:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 20:59:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 20:59:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 20:59:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4e70ca06cf3af88c4edb0edb3fa4d316159bce37b6c3b2c933686378900aff51`  
		Last Modified: Mon, 15 Jan 2018 14:39:36 GMT  
		Size: 39.9 MB (39903725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6926ea13ba88d0e2996062ae642dd60b90049517b13b503f2c2056027d9400e8`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857aa4a73a76526d2e4d6935b018564cc0ebaca761e37245561d39c8965729e7`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60160af846d1eaf1878305fa499f3ce6b7541f66f056739853c2a783de4e9a9`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e64367655132b4ee03113e6388928b97c4cb03df040fee19754995ad9accff2`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:7773cc8299d4d05c93397bc053c20ba73cd92035c51488d55a5a9df3681a9268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35720069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec4457382a7c9ffdc6bf8d856022a4d7b38368717b32eb18ecf86480e0a778f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:50:32 GMT
ADD file:c5beaffa0f8613a1f83aa1ba65843c4ee3878d714400ccad34076ca0bae38a2e in / 
# Tue, 16 Jan 2018 13:50:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:50:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:50:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:50:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:50:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:59d0942824a3f95ac83a3720a830d74a8d632efc296137d8d6c2e4c980108783`  
		Last Modified: Tue, 16 Jan 2018 13:52:14 GMT  
		Size: 35.7 MB (35717577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b889835c18c3ab602f32d6327b681fb60195fb276ec34873b8edfc2321f3e6`  
		Last Modified: Tue, 16 Jan 2018 13:52:03 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315138478326f22234d1f0d1e9b11003d88b672078303aadef26aa3f4d2997c3`  
		Last Modified: Tue, 16 Jan 2018 13:52:04 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f0160eb4e4775f4eccf5752f7b0c6cb07c1995beaf33f5a967d6d9c7ac3939`  
		Last Modified: Tue, 16 Jan 2018 13:52:04 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38adcb113de0501d0892b538de1bfdd0993f227f1eeac047aa0945ea30c5e33f`  
		Last Modified: Tue, 16 Jan 2018 13:52:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3a83221c69ad61def9e9e385755f24ee9057cea90692586dc153525426e481cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36870036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ba6e5c35fd1c6cd08d943ba4c60c4757811a031e918b8060aabbd904ef327b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:00:39 GMT
ADD file:264a9c75a8f3b0d589f56198def6c118f4342e1e3ebceb5fc7414c2cc9a5636a in / 
# Tue, 16 Jan 2018 15:00:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:00:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:00:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:00:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:00:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e3b4cb52ecb7af5532afedb2b77f0543885ad2fd1300306143ccb38bd9d147a6`  
		Last Modified: Mon, 15 Jan 2018 14:39:55 GMT  
		Size: 36.9 MB (36867642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93861abd7bd66e61ec24dfc51775e7c8898b1dada75e3dd32f08265164347781`  
		Last Modified: Tue, 16 Jan 2018 15:02:47 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76edc039c0ad4f6f153daf2b46dd4d20d22870bacb67177fbd6f91a3c0b138d6`  
		Last Modified: Tue, 16 Jan 2018 15:02:49 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a8c096a71591750e3239c97777b798ccc0f76b79cdabaead40a2a6cc3387b`  
		Last Modified: Tue, 16 Jan 2018 15:02:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed39cef3c0a630a7cda94353999f0027c341d334a5297750bf32e7fc1caab7a`  
		Last Modified: Tue, 16 Jan 2018 15:02:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; 386

```console
$ docker pull ubuntu@sha256:0cf00db7075f1d8f2d8a9961461934b283e3d588e57f2652d31c2890791725d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40717353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5593955568a23ad3c6e62b7a5e794105212ed42520e770ae2e40407548e1a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 04:48:33 GMT
ADD file:f1983e069027dd850a9d1b80c41749c67ee3e817aea107ab7c456046b051e96b in / 
# Tue, 16 Jan 2018 04:48:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 04:48:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:48:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 04:48:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 04:48:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d87f02d6ad887cdbec94b5f6c6ed9ae059676689dc8be223de4b134757d56f50`  
		Last Modified: Mon, 15 Jan 2018 14:40:51 GMT  
		Size: 40.7 MB (40714912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0e7ac020a5b5bfe700458d5879108017463cf7c00dd5d6f01c39ec72c2e04`  
		Last Modified: Tue, 16 Jan 2018 05:14:41 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e2a73736eb5cb0216ebf9fb038bb9c8e8c98d5d900d364cfb0c838f5d8979e`  
		Last Modified: Tue, 16 Jan 2018 05:14:40 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2184b88c8f394ccbba072e69441d3d5070ed973cf56c3d68713b372987d0d7e7`  
		Last Modified: Tue, 16 Jan 2018 05:14:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197d820b2667548ef44e5efe7013dc485774f3ed52b4d151b63df64459566c98`  
		Last Modified: Tue, 16 Jan 2018 05:14:41 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:7f8c928ed867d9b199b6646d3cc32867f23076d211825e22d829f0ef5d9eb806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43113233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c17d2b8d91da9508da1a3508a97dfaa9442468d66be05c375e36b8fb8900127`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 03:39:49 GMT
ADD file:7f1ff391adc6dbb769b56d7b9b75a63f84f9a76735cbbc8299cbb2bae42130be in / 
# Tue, 16 Jan 2018 03:39:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:39:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:40:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:40:06 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:02565bbc68811a7de1b822a7ab953a27caa044ff14c7eec44c9a3b329c1a0c58`  
		Last Modified: Tue, 16 Jan 2018 03:42:09 GMT  
		Size: 43.1 MB (43110761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853d1596174fe102b2761a886f595e2240cbb03378c35d483cc832c722667a00`  
		Last Modified: Tue, 16 Jan 2018 03:41:56 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2856880f1a15c2676a111356e8fbe949826d43bb84aebb40e012f8b64b06b0`  
		Last Modified: Tue, 16 Jan 2018 03:41:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05b8faaf796b6ac10a1b6441a84f3fc8e9f16c837e2c9598344f4ddc8336ad0`  
		Last Modified: Tue, 16 Jan 2018 03:41:56 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701405981892860b2325e471f757ffb1f21402329905b310110048605ef16057`  
		Last Modified: Tue, 16 Jan 2018 03:41:57 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; s390x

```console
$ docker pull ubuntu@sha256:2b1ec6fd04f9f3f1b6d95167aeb3ea924c5ee6f655080d695710e07dd3f0939c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38631187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e40d21e8adb147c16f6dc4703ec878823f33a2aa70361ebdab063d08891a249`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 14:15:23 GMT
ADD file:6b23cf38d92af568eded35cd71d74d6a597bb9defbfdab40135080ad7f742ec4 in / 
# Tue, 16 Jan 2018 14:15:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 14:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:15:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 14:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 14:15:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:913125fff93cfca68d679e4493de58ee8b8877d42f671e18607a38a881e573ac`  
		Last Modified: Tue, 16 Jan 2018 14:16:01 GMT  
		Size: 38.6 MB (38628802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e48511596bc05ad1167bac7febc8afb4087a73e747274a1b383e4396925eb`  
		Last Modified: Tue, 16 Jan 2018 14:15:52 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de22121f5bfe6d49b52fb4adcf128db5b622bbd3e7dbb12c0eebf2b51eedeef8`  
		Last Modified: Tue, 16 Jan 2018 14:15:52 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcfee87314d0e333ce0650ca65c604f0cc9a7fea7087ce6f78d186bbb626bac`  
		Last Modified: Tue, 16 Jan 2018 14:15:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6de74f66ba9dcdfdb9e897eea5d047f1383f7060d7d248b233ab6af9c9e6fc`  
		Last Modified: Tue, 16 Jan 2018 14:15:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
