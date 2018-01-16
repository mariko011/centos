## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:3d37bf057b35749e02fe0a123e882897a73d303f57f2d38837a7e27ed7fdf345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:xenial` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:54ed2f10a696c38158650ea91b15bb602c0ec70aa2476e4748d9133d7760dc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232178192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d24cdf680d0eca5a30ff6ce726659ac1295d8f2266933e12e1807a4fd9d6b17`
-	Default Command: `["\/bin\/bash"]`

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
# Tue, 16 Jan 2018 02:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 02:19:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 02:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 02:30:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:cda2b5ffc3f84523c53d8073be0d6efada220576e950bd3268609bc7f05e86b4`  
		Last Modified: Tue, 16 Jan 2018 03:26:09 GMT  
		Size: 7.3 MB (7316208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b766c564f683b2089c161152f00e0766160ea3bbf7bde319c45ffe2a08e6a7`  
		Last Modified: Tue, 16 Jan 2018 03:26:54 GMT  
		Size: 41.8 MB (41818478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a018147b9967ae5037e9ed53481db65a614f37d1d352a3b05c943592738f0d12`  
		Last Modified: Tue, 16 Jan 2018 03:27:44 GMT  
		Size: 140.2 MB (140198661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:62ca0e5aaa983c183c4862ec4a92a44844669266392fa71a6fcb7e6c462217b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199639632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e238987694903af6c3607e8ac92d5d4b900ffa84facc990ecaaa523d9d412b5f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:29:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:29:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 14:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:31:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10baae0d74beb03ae998758ae81587927a0cb475760ba71f5187f3d78c0c140`  
		Last Modified: Tue, 16 Jan 2018 14:35:31 GMT  
		Size: 6.2 MB (6163346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aec9f6c57d45150b398f7049513782643c27cbabca28d4c19a73b9a163d006`  
		Last Modified: Tue, 16 Jan 2018 14:35:57 GMT  
		Size: 38.1 MB (38147847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d22578e89347d34933ec0004196b186716f258afc8e8af76e182a7473be1a87`  
		Last Modified: Tue, 16 Jan 2018 14:36:37 GMT  
		Size: 117.4 MB (117355459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e4990cca91c283bc500ae93242b1236d61ebc0f9c38cfbd7698ce9bd1d5ec867
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207400296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036245a5a560d25da55eb067051682ac1642d6877444bf19b26638758454c8be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 16:05:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 16:05:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 16:07:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 16:17:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aecc59d68efbe20783dc75d4e12530ade824326b7bea7cf317b847786bcf0b`  
		Last Modified: Tue, 16 Jan 2018 16:23:51 GMT  
		Size: 6.4 MB (6371510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c374cea55349c7e213ae6bdfe5091e179778f61bfa63ca4fd33a7b4b1066d6e7`  
		Last Modified: Tue, 16 Jan 2018 16:24:19 GMT  
		Size: 39.7 MB (39703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131678174f677050d1ea920c2fd4537944464228a25cf018bcc0f48da2da370f`  
		Last Modified: Tue, 16 Jan 2018 16:25:13 GMT  
		Size: 122.3 MB (122252028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3b4ebfe47dde1596ad31c4bfd6bda1d86fae6ac637bc6c5a64ac39d5ee4ba173
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233473651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92bcd1ab229c9dfe808dad86317842b29a5cbcf4c35c5ba0d0429c390927c4ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 05:11:31 GMT
ADD file:df10e819b9716197dc5e750b5584d563a145ec09d017b0234a56e459be7e0be8 in / 
# Tue, 16 Jan 2018 05:11:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 05:11:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:11:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 05:11:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 05:11:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 08:08:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 08:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 08:37:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e70160f4fa61966fa69c241da9f8107af2c8962479771c219db7b3436247ea36`  
		Last Modified: Mon, 15 Jan 2018 14:45:32 GMT  
		Size: 43.2 MB (43171534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942f28116bd0740eb362e3369ed6497c4f4adfa30b314868833d4bbaf146038a`  
		Last Modified: Tue, 16 Jan 2018 05:48:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8188f1ca382dc8eeb7d61f6079c3b693f70461bae546c48ce07b6035ff00f441`  
		Last Modified: Tue, 16 Jan 2018 05:48:56 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b93d929ec938c6ef5d0321395d1d4ab1911e1711c9dd9775242d55d59c48167`  
		Last Modified: Tue, 16 Jan 2018 05:48:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23d87ded722d7e72329f4eef7debf29662f5ac33807c30fdfbe11e51023ba49`  
		Last Modified: Tue, 16 Jan 2018 05:48:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e3f308864cd89074540cda8d9f0a5cc4c03fda1eb26f3b7b23b1b706e20a7`  
		Last Modified: Tue, 16 Jan 2018 09:39:28 GMT  
		Size: 7.5 MB (7456895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c8eebd3cf1e0f18c9c434bb9d76ccd356d3b6128a6dc3242a18d0f846e07fa`  
		Last Modified: Tue, 16 Jan 2018 09:44:55 GMT  
		Size: 42.9 MB (42863514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09b997ade13277c72d96bc18dbcf9f8c7217110f4440aef2e85955d15313f71`  
		Last Modified: Tue, 16 Jan 2018 09:58:14 GMT  
		Size: 140.0 MB (139979259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ff5619ef60a3bb8828891a8eaabf3af97958830d627517880b7006d4e94b55cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242900232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4ff968bc3553a07462859c91e60b7c59422632ebbf977164489e1bcdecb32c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 03:41:26 GMT
ADD file:428d6c211d39abb55269a867b80ea9baa241605171d1caf44af05b1a799c39f1 in / 
# Tue, 16 Jan 2018 03:41:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:41:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:41:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:41:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:41:42 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:45:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 04:47:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:55:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d4a70e2296fafb78b369961815a69711acf05e939053c953bcba46e4db15f61`  
		Last Modified: Tue, 16 Jan 2018 03:43:42 GMT  
		Size: 45.3 MB (45272971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c1ddbc9791ceb8d81c3a206b334f5e2c12a5980b51dcfcf81a9695fa67c33`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d80d5b608f011672db438138da93404f73f97e2b67a8587cec29a7e55cdc9e`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 649.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0061f3d18553c084eba4b2ab560a988b9e5071a3e2b3410665e32fd3351d76ed`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f843f0a152e7ff1e816674e1e670d611ef85f517888ded98998e4fb7439d8`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2f38c5c9ef30b2df03f9ff367a66cec784f6c5975c3a222cd0d486977c34e1`  
		Last Modified: Tue, 16 Jan 2018 05:00:11 GMT  
		Size: 7.2 MB (7217980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90b26a5e8b5592852dfdd7671bb04467a2485957fbc1306de329decc358faaa`  
		Last Modified: Tue, 16 Jan 2018 05:00:33 GMT  
		Size: 45.1 MB (45103931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2064a41c670f100ee61d8847165f28ec04a297f98f32d4f3913a476231999693`  
		Last Modified: Tue, 16 Jan 2018 05:01:16 GMT  
		Size: 145.3 MB (145302827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0b0eabf2cec76c4bcc82bebe5675a44af176ecef942c0031831b8ab42ad34c1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218213024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aebe4fcf2924bcb7768cda13ab17164b2d86f1a724cb7c09be37d4168133f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 14:15:42 GMT
ADD file:eb54587dae2601f015535da1845a3c71027dc1106e23926d56de34d894bab1a5 in / 
# Tue, 16 Jan 2018 14:15:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 14:15:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:15:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 14:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 14:15:44 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:36:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:36:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 14:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:37:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e1d2d19b3d250223ff28c57a8e4d47ab9e0792d49c5059d491a43ce072c3f6b2`  
		Last Modified: Tue, 16 Jan 2018 14:16:37 GMT  
		Size: 41.9 MB (41939461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6172ea68f95263549e8b4cc220767c6a7a01c1c2ebe0dbcea2146840674d36`  
		Last Modified: Tue, 16 Jan 2018 14:16:30 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eba87cef942a44e304c712541a1fd712a210840c26384df7de23a74f5ad0a80`  
		Last Modified: Tue, 16 Jan 2018 14:16:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e412096589b7a40ad29217023f54ef8f73ae230005b0b75ec9dbb162b358757`  
		Last Modified: Tue, 16 Jan 2018 14:16:30 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6662e74c0fb77d8af99843d5a75296c0778717195abaac2ef96f7d38ee8b83a4`  
		Last Modified: Tue, 16 Jan 2018 14:16:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12f2db72a5326652f6746209c7ce2b21175acf7bae7f7b66d5cf577b323d8d6`  
		Last Modified: Tue, 16 Jan 2018 14:39:57 GMT  
		Size: 7.1 MB (7051790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249b2e382b2f9297b1a040ba9be6e635555bbc1e46557567f643c84e67f3e498`  
		Last Modified: Tue, 16 Jan 2018 14:40:12 GMT  
		Size: 42.6 MB (42586297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d94869549423f46ebc35e80e5b339d969c48ee7b318589b5aaf453efd7b3cb`  
		Last Modified: Tue, 16 Jan 2018 14:40:39 GMT  
		Size: 126.6 MB (126632991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
