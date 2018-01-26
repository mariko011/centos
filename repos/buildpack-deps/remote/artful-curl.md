## `buildpack-deps:artful-curl`

```console
$ docker pull buildpack-deps@sha256:5f5b6a219fac9f4ee24961213b0b29fb1bc69b5bde17ca985b480ceb286c14e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9594b81a94221a74e6f00a219b75fcc30638a19d5b6cee72d0d1fd6800267b0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46035084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949b932a118361c72a8877596d75f102515aa3c71fb859c11d1fd9d3faa38a49`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:03:48 GMT
ADD file:ec58ed9c4227aa7839c3472e7f02851c76b81bd0c3e6b946871f919de8a6af99 in / 
# Thu, 25 Jan 2018 18:03:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:03:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:03:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:03:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:03:52 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 22:47:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 22:47:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:18c8f805be45ea0f336b99a253692a8c974b07369f94f769feaa663e74d62881`  
		Last Modified: Thu, 25 Jan 2018 18:24:28 GMT  
		Size: 40.0 MB (39976211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7869fb3b98c44f3394fd0386abc807b877b34b2b2ba918707fa2729748d45d6`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75000414ffb1e6f1b193b08d62d1367e9dff9290dd758f507f4ce88d655af8d`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27c5092058d85ad4e9c133a1ce883777890baae684f6f43c8de9cc5650b066c`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add65c7404ea79525338412ae724d5b866d1c53cd3ce592cbaac85cef6093f61`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077d47163a8169582edd522db971ed5c21ba4b192240f0272cc39b370f3934e1`  
		Last Modified: Thu, 25 Jan 2018 23:37:10 GMT  
		Size: 6.1 MB (6056396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:227cedc46faf9e74e1956e75fcc3d3e8e0d97d07b550993a07ca991265d09b54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40887389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74acbdc390660d2a72c6cce8cc2460c02843f30bb56e49b1ecf02889dc7db17b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:50:36 GMT
ADD file:16c5fbf097c774c1aeef960ef6ab8c4ad71fff4f1af49a15c70d17ce943cc9e2 in / 
# Fri, 26 Jan 2018 13:50:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:50:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:50:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:50:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:50:40 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:11:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:11:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:add171a4aa5d25515d1d289e1042587a541dbe262ff9a116c9384f4022b6b47d`  
		Last Modified: Fri, 26 Jan 2018 13:52:24 GMT  
		Size: 35.8 MB (35785933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d044d57ca34ebbb756fbe9976fc39f04f306c5a1b9398ff9380f76357b38bf45`  
		Last Modified: Fri, 26 Jan 2018 13:52:15 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5494025075f7dfebcd3582394f74075ec0f49fc54741dd727d0a80e1d7a20`  
		Last Modified: Fri, 26 Jan 2018 13:52:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d418e86e1953e34729085053d7de7a8ee0c5b8243cefe81e23fedcc982a0a606`  
		Last Modified: Fri, 26 Jan 2018 13:52:15 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b58f4939abe46aee4804244663ba60b559b870a54bca8f2bf79dc0681a14c`  
		Last Modified: Fri, 26 Jan 2018 13:52:17 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8223c328ec4de3db1788c3b73043c145f0a63dd9b93165af5aa908bcf151590`  
		Last Modified: Fri, 26 Jan 2018 14:32:20 GMT  
		Size: 5.1 MB (5098961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:856581241e6350e80d1c2278c5192377d3bc148d5189f18104583a2c36ed80df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42202548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63dce64ebd14db0c23b80c3f1def39964e37c35b40debf17f50fa6746743964`
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
# Tue, 16 Jan 2018 15:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:24:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:4eb38ec2f4ed06383c60d487e485c4cb7faee16cb63676c900e421c9eb2a6867`  
		Last Modified: Tue, 16 Jan 2018 16:18:21 GMT  
		Size: 5.3 MB (5332512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:28ef24c1d0b98a5ad0ba54dd9bca93afffe3b721a69b5fb98272d4b2a85c0bf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46901710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee06235511b16f1875f9049b0558453e326dbcaf42ac157b1c017243ddc631c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 04:46:02 GMT
ADD file:8df5954491d410ef706a7ee9777a43b2b4eb537dab6624991120fffa50dbd4a9 in / 
# Fri, 26 Jan 2018 04:46:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 04:46:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:46:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 04:46:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 04:46:05 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 07:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 07:58:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c72cd87dc0a80e71756a6b7d061f860dc89b03038145ead07a9e1c3297480f23`  
		Last Modified: Fri, 26 Jan 2018 05:38:34 GMT  
		Size: 40.8 MB (40788939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaf237fa8472491aded309190fd4d39a17ce8528e910286b3f528238973f0f`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584e47ac45bfb7676978cd82b88996d676c04fef450d81664b62d1bdd10d612f`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88369684dc1e966d2dc8cb45a4207262fff1d61be73eeb1a73149f074aeb59a`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d229cb8cf5afa9f212ad5d1af159d811a970e31cb77022568695fa08f529df8`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0158c216dafbcda46b9fc6bc5dffdf3cb34345951bb6c960e91ea67d21541957`  
		Last Modified: Fri, 26 Jan 2018 09:39:02 GMT  
		Size: 6.1 MB (6110342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f48423b0d081c504c0e86b811c33390375c5016fe03f41abc8ac89b096c22746
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d49cfd4aedd1839009688777dfa067fca3dece23541099b4973c140486b2d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 03:39:26 GMT
ADD file:dbc41942f2c0a1878986d510a8b356aba5b8c6a2d6bae0382fa95147e158ed91 in / 
# Fri, 26 Jan 2018 03:39:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 03:39:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 03:39:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 03:39:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 03:39:45 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 04:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:01:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2e46125f5e240ed2ce4b5fc53006238d7841a1ab2302fc8849590378691af042`  
		Last Modified: Fri, 26 Jan 2018 03:41:59 GMT  
		Size: 43.2 MB (43178612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167aa3fa99c6922d4aea0a6f9ffbb37d26c54a83cd1321d1645392f5af1cf269`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964fc38588591a61e53b9d7417e2995fff64f41c3503321dcffaf32eb1aaf4b5`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca94695917e8f7cc8d237ec1b13915c27342ae8054d33d20a46cf74dee0ffd3`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0402bff2b28216dec30e75567ad2177e38571adf301bb746c717b15d353fbaaa`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80ea885fbfefc5a5ca3c6ca06ee93c292243618c83e5911fc86a89c61449831`  
		Last Modified: Fri, 26 Jan 2018 04:47:01 GMT  
		Size: 6.1 MB (6129664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:724e97b58300b253ea80eed3eebc8f104b7aceb458310e74cf910e43eaa7874f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44442325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebae5405a7d89016dde934023659a0fac6bc31af64b0b4f3c426f8e5bc45af69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 14:15:25 GMT
ADD file:ce2fc343ce9ce59bf14e4d01df5ec72b6954323b0e74bab3d608dc7d9aa89494 in / 
# Fri, 26 Jan 2018 14:15:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 14:15:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:15:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 14:15:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 14:15:27 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:32:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:32:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e14223442e09c33da04a729961b6efe41dc6c0559a31acc3780a9527b38c288d`  
		Last Modified: Fri, 26 Jan 2018 14:16:07 GMT  
		Size: 38.7 MB (38697775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f0163c96ad8a32651efe3d24296c37e9ac1dacff4f111e16756c1f992d2704`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf7eff8d6a6b663f50952f04ebaea184f771a69286fa798355ee3efcc9a7707`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223950c60c9c54933018b1dae8b27a2f01f5ff95d286450ac8705e9ef76fe5ff`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5e8977386f8286e8ea57d55cf2d68e4593895a741535ae77908b9ec1dcb9d3`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a708f96c30c9dfbd1155ffc8e5baa159554c88c62425421945809b25c3a035b2`  
		Last Modified: Fri, 26 Jan 2018 14:37:49 GMT  
		Size: 5.7 MB (5742152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
