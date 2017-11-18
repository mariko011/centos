## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:279734f28030a93f7cebcf3abe1a435d82e1333ebf35930967be0a925e8a63a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:zesty-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:417e49ce2e0abe78beb3ea0197438fb5b1e9ab200a659fc7e36669af7dbf7b19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45961785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd01a8f520a78f6122f55b9b1d82b55f7d27fce7fbf24390b13fcd1887b16394`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4751e7142ff74186cf19be27a53293ed27e1eaa43eddaadf479be40a8513f78f`  
		Last Modified: Sat, 04 Nov 2017 15:53:21 GMT  
		Size: 7.5 MB (7521461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:59af27350a512f4ad1caa2dd586aba02ec45ed467d1f82f2a3ac49936599dcb1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41009636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d995b180de7ff9febbc0ceb91d5c328aceaf93a2be11e5c56fc26679b3ebd384`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:22:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76450412846489ed6aad7c756d579d848fb954dd3d5140f4a42c217108dc708`  
		Last Modified: Wed, 27 Sep 2017 05:03:49 GMT  
		Size: 6.5 MB (6493282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:943c2079e8d01891028f5a4f57abfc927e005c3699fc1c9a3811cab517777fdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42302504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b041f9e31b35e45f362c62b5813646922e2ee820644106571d297e7b441ca38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:21:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:31:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304bb63ea9a4f470e122bf53ef4ef5012283341708383a25d5c01d24d3380573`  
		Last Modified: Tue, 19 Sep 2017 00:36:19 GMT  
		Size: 6.7 MB (6683536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3cb14c02ba565ec7ac24583ecb79fa2a3ab8f1928d1351b08117366165213e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46538919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77fb090e984ca00fad43904cac729d6096f7e4ad17ac316b821d12ee4f7f0b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:13:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:58:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324fc9f61234c05a96870c9346ec2961e2393278b82dcb5b00c9b5fc4dc5b91c`  
		Last Modified: Tue, 19 Sep 2017 00:23:37 GMT  
		Size: 7.7 MB (7711318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:cfe4dbeaf62d7d845c7dbeed35366ac292f08fd32768bb8273213718d749deca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47891591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d888eb8bcf0600ccbc41f28642a86d7f3197c8d3db4be889ae091708d246d930`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 01:01:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:27:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cd428c391210932c1faf3e1814c6daef1b88d7626a6b418d0dcdff2b3f5611`  
		Last Modified: Tue, 19 Sep 2017 01:18:24 GMT  
		Size: 7.4 MB (7445205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1c15c4972b734d7ba0852fa28498590ed320d48539bb65bc2112dad448c99ea6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44955394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a560886f62f80e309b2a162477acab561fc21c2544ce19100d2a2ed6c411507`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:19 GMT
ADD file:bd0530ffe05e5b8895b429294bfa8215d5c68d05a86bb9f6baf49cf9356d7a35 in / 
# Fri, 17 Nov 2017 22:08:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:22 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:32:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:32:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ac8ad71fbdcfb2be3d4e77a4f61bf0f64b7aaa3ff6389efa86c9da3be16d12d6`  
		Last Modified: Fri, 17 Nov 2017 22:10:03 GMT  
		Size: 37.7 MB (37748431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa13fb5549772378f13240dc36709d10c193f96a611317f32cc00dfc546215d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5974a03854806c29abad29d7b50b6244bd4a732b39d55fcbc89738143b2cbac0`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c435cc189750f739a3f77db25246ab02d23f86f3c2803cd98a8daf211de4d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb198739e5e34c35735375fae5b00c549f17b0b6c75aa22950030bb7cf64dce`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645edcec4a656407e332bb4432859e2b02896cb07ec510043c44d089834ac648`  
		Last Modified: Fri, 17 Nov 2017 22:36:17 GMT  
		Size: 7.2 MB (7204561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
