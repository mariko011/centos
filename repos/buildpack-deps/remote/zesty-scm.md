## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:97c405a125c372416d1a0bbada6d59bc26caa4b57866738920567e3730cdf653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:zesty-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:abb9e697fd7b83c2ec95246bfecc74279d0e80ca72358f2ff45089f6d0def67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89583480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e564898b9a7d60b296ad5ccdd9b04e91b9a158272a86d63aa5e77dc596127e24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:54 GMT
ADD file:3edb19aa369fdf4f85f1977a7c3e40263def7b35c0172f9927406c161f22bccf in / 
# Wed, 13 Sep 2017 03:58:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:57 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 12:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:47:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:47:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e8a74323e913fcdecf4b97eaf9cdfe319efecd6e1cd30c1ff055bef20fbf0970`  
		Last Modified: Mon, 10 Jul 2017 14:40:06 GMT  
		Size: 38.1 MB (38051374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd66af11e1267218f818b7adb428cc44e0cee0d436fa816df072b0046f5b41a2`  
		Last Modified: Wed, 13 Sep 2017 03:59:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c26cd848cbc1a6e5b5c07a60a08764528b376923d2dfa67a9006cedf73def7`  
		Last Modified: Wed, 13 Sep 2017 03:59:54 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db78426db158bf34b235199301229152bd29a156f8555da3a468c327be1dd51b`  
		Last Modified: Wed, 13 Sep 2017 03:59:52 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe5e514192d5a9309ed10a73f5297552c04b654bf061892418368572186e820`  
		Last Modified: Wed, 13 Sep 2017 03:59:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becb6fdc01e4864efd95ca32f18479daff2c54777f964bb09942a29ea19d8408`  
		Last Modified: Wed, 13 Sep 2017 13:02:38 GMT  
		Size: 7.6 MB (7573770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6284a2c213ae4d5b9ab39efb08b089af77ac73df8d2b13db2d84b0c4fe59f3`  
		Last Modified: Wed, 13 Sep 2017 13:03:00 GMT  
		Size: 44.0 MB (43955910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:433438e20daeefe94775d32181ebb3602c26c9b64c3a493ef57b14398875baee
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80147188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b501571dbad07493a512cfa20fa1a69fb9d83e0d868008fe01c52eca613c8d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 13:56:39 GMT
ADD file:c533c8838895abd08a8db97d9a7692f9af97a1d89b1300d6ee54c58604762049 in / 
# Fri, 21 Jul 2017 13:56:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 13:56:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:56:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 13:56:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 13:56:51 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 18:32:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:32:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 18:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:66dabed00d6e902c488f72c17cdb93bed861860cdfaac065004fb04f4f2d0f46`  
		Last Modified: Fri, 21 Jul 2017 14:00:37 GMT  
		Size: 34.1 MB (34101919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac516f9258e4c050467739830d1d071ae9105eafa6b23125146358166aed32`  
		Last Modified: Fri, 21 Jul 2017 14:00:15 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b962c29187c105f0dccfe3129fc48ed4c1add5ec1a61e203c1583826d003079`  
		Last Modified: Fri, 21 Jul 2017 14:00:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853607c23a1ae0781a098f3dd40786037bb2c95287650b457a60cc67e6118426`  
		Last Modified: Fri, 21 Jul 2017 14:00:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6105f4b106de7e861b41815358a8b829950ca18721daf17c1976cb9deb75311`  
		Last Modified: Fri, 21 Jul 2017 14:00:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e15ea11e607bd76fe613326d525acf4816304dfc33923c15698a11513fdb7a6`  
		Last Modified: Fri, 11 Aug 2017 19:04:53 GMT  
		Size: 6.5 MB (6491222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c95c09e640476b696755ffdd95a076aff96b177121fd57df8da5c95b6077a90`  
		Last Modified: Fri, 11 Aug 2017 19:05:32 GMT  
		Size: 39.6 MB (39551563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:003c0b1aa575fd437c9c20fbd17fcfda37bcab02f519e31c04529c1438378337
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83583382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dfb3777b3327f976f46ba392136db5033ffe3e76b3dcf1e9fb7202ec401dc8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 14:51:58 GMT
ADD file:5ae6deb1b4d662ef63a39a2e9506cfaf00cf6f5963ce493b8201ff03f0b78c48 in / 
# Fri, 21 Jul 2017 14:52:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 14:52:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 14:52:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 14:52:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 14:52:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 16:38:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:38:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 16:40:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b32a7f52ce86452f6c6df5c37b4f125c3fc057a6bfc3167072ae433c5d80a945`  
		Last Modified: Fri, 21 Jul 2017 14:55:24 GMT  
		Size: 35.3 MB (35253889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79a1bd986d80254bede923020dedc294ff6bdf0cbd3e428913eff0e14ce669f`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf217302f4e67b32ad1ab3d30ee2ec4254ef0f2271a10ecf3bb8f19d0f28d139`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c527d1367ee515cf4ac25f73a3a51282af26dd8bba15c1fd09015f38286ca26`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75877cfab08ad8ddb1a4253c0f28bbc4178782e8f935bcf973ed04d9ffad7334`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60faf617a755fd39632bb5fbee88cc3a4ad3e8aa6fabe1c105a8973997943b05`  
		Last Modified: Fri, 21 Jul 2017 16:59:08 GMT  
		Size: 6.7 MB (6681844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723e9e324af6823863539612945394a1a73ca460441c66f136fad4aaba4e26b9`  
		Last Modified: Fri, 21 Jul 2017 16:59:52 GMT  
		Size: 41.6 MB (41645241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3c1d43aa81c5e3194dc2d26d3384ba7b0b02095de87fc1407b067316c6fa38eb
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90704472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee5088d2ebc992fab891185be4f81068027ab51c4682dcee06e27057d4b09cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 03:36:42 GMT
ADD file:8da2b31b73794d5915cfdab7a4f2b4d022d945d8c218173f49957e3a6fec5cde in / 
# Fri, 21 Jul 2017 03:36:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 03:36:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:36:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 03:36:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 03:36:45 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 04:01:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 04:01:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 04:02:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b2dceab5f18109d7f70120ac88d5a5df729c8d971aea46b965e3b78210fb643`  
		Last Modified: Mon, 10 Jul 2017 14:42:03 GMT  
		Size: 38.4 MB (38446497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2030f202ff863ee9d8fe743201871e3840b363fda5f9e7455611c311e24e1e8e`  
		Last Modified: Fri, 21 Jul 2017 03:38:10 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e9dae2fb40df1d572a2592462e2e9fe08636455fd9c3e414e0659f216be351`  
		Last Modified: Fri, 21 Jul 2017 03:38:10 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73377aa2c5f2d7eead52d220a90fad5a062d7fc3bc0ec18940273f9247529a7d`  
		Last Modified: Fri, 21 Jul 2017 03:38:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdfec211ba8871cabaa0870173ac7ddb74febb277aac763ad873c50ed59389d`  
		Last Modified: Fri, 21 Jul 2017 03:38:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f36ba663a06ff9b486ed188dea9853e9b95cfe11b3d4be7cd33c0f67772057b`  
		Last Modified: Fri, 21 Jul 2017 04:08:57 GMT  
		Size: 7.7 MB (7710686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b207db6fad9fd305440cbefe6e28e794938e82a6fffd0b204c5c86e00dde87da`  
		Last Modified: Fri, 21 Jul 2017 04:09:20 GMT  
		Size: 44.5 MB (44544919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a79626ebb98f61c9ad23324470572489f56adac1ff73cac60d81da05302c478a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94905646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d0788656e6f14246b2165c50f6c2e57ce6ffef592e373b8a3758050b5f0c23`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 02:40:01 GMT
ADD file:0a8332254eb6b28cbc3d2f733d8a6dc3827b45ae870225150c1b38b08229ecb5 in / 
# Fri, 21 Jul 2017 02:40:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 02:40:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 02:40:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 02:40:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 02:40:04 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 03:18:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:18:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 03:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:80cd303c7ef2b80532a9b48243e89d7db3000ade0f278e3299712d07c35bc7fe`  
		Last Modified: Fri, 21 Jul 2017 02:41:51 GMT  
		Size: 40.1 MB (40078675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d5a3bd418822478d20cdf8de1357c0b066c08af3daf25e6dd12960deef546`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c083a6fbd522ac327a54dcaf344423ab3117a10662ab11dbf4b4fd99bf199e`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc88fc0cf9423be54ceccb7daa7bc7c69a59f0223322482331794038810ad46e`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23457918976fe195f4230a828c66a10234d0ba8b76992db9259701fc94deb2b2`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a45b697a2d9e9a5c2d6dc8acb6ded891712aa2cd9a0308b080b7cb248625dde`  
		Last Modified: Fri, 21 Jul 2017 03:31:47 GMT  
		Size: 7.4 MB (7443753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2832fe401e5e58aafdab1212b46bf53dee527df6b8894363283a79e087fc5e51`  
		Last Modified: Fri, 21 Jul 2017 03:32:08 GMT  
		Size: 47.4 MB (47380768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1ab93d580474081d7a04d0ce4319083348a624514b6c12143e469547f44b0ce2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88609210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d25af9bee43992ef1d82286cf7f79355d1a6a10937652960216a8681341690`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 13:15:34 GMT
ADD file:18272ca1692995d38449b72e79d5fd7c4fd484991f943ae719fab42b6a671bd1 in / 
# Fri, 21 Jul 2017 13:15:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 13:15:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:15:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 13:15:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 13:15:37 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 13:42:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:42:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 13:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b5b9a94edfec370a82db5f08d68c1f3cfcd230cfdb34f486630066093d464db1`  
		Last Modified: Fri, 21 Jul 2017 13:16:15 GMT  
		Size: 37.2 MB (37236157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50b06872d1dcb3266b8706f3aad2fe135c36ed2d22c2f8cb7339ff2434fed0c`  
		Last Modified: Fri, 21 Jul 2017 13:16:08 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7982d33826e30c1f27f4b7657cf45f3c3541cae7cb1f942e977f9f86097b5448`  
		Last Modified: Fri, 21 Jul 2017 13:16:08 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b81ae7ded9a5c4995619390892f2f008c12518b715332fb7345892a759a37ea`  
		Last Modified: Fri, 21 Jul 2017 13:16:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b218f748f6a261c34a8fbacb1ae330d9c03b26c4acbe0dc5fd80b6ef1ca96c`  
		Last Modified: Fri, 21 Jul 2017 13:16:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2d119b7a05ef67b263cbf065fce9abca20e22288a6aab22001596a7359b02b`  
		Last Modified: Fri, 21 Jul 2017 13:49:26 GMT  
		Size: 7.3 MB (7257793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb1f7c5200ff6bc1a3f99870e19b7aa06c77c5782d96825417de25cfe0766ec`  
		Last Modified: Fri, 21 Jul 2017 13:49:38 GMT  
		Size: 44.1 MB (44112863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
