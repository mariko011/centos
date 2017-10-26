<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.5`](#registry25)
-	[`registry:2.5.2`](#registry252)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.2`](#registry262)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:0694e05b6d0b5fed892ddc60358758bd8341c9a6497ac185f93fc4c93c689810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

```console
$ docker pull registry@sha256:e7f8a05ca8ae087dea9a66bec6262fdcc58205d178165b12a671cd0a5cea6f34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10677976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba7189700c85d74be0a5dbff0a4acd5e0787dcae9776a5575b54c8c86b7302c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:10:07 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 26 Oct 2017 03:10:08 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Thu, 26 Oct 2017 03:10:09 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 26 Oct 2017 03:10:09 GMT
VOLUME [/var/lib/registry]
# Thu, 26 Oct 2017 03:10:09 GMT
EXPOSE 5000/tcp
# Thu, 26 Oct 2017 03:10:10 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 26 Oct 2017 03:10:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:10:11 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638c4c5f80c0766bd3b34ad11be5379b4b5a923d40bb2bf2cfba182c5aa909bb`  
		Last Modified: Thu, 26 Oct 2017 03:10:35 GMT  
		Size: 2.0 MB (2027001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9df08ef46d99710c8b6bb65740c2da3133e6c243d2de7edfe4d209c527f6`  
		Last Modified: Thu, 26 Oct 2017 03:10:36 GMT  
		Size: 6.3 MB (6265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7e568878e68d6ecfb14909e543e88f7354c6f8b4f9ca3b4351a30946aa150e`  
		Last Modified: Thu, 26 Oct 2017 03:10:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386d4eddd8337d7aa0749fcff0dbdcfcc09c7a9baef0413f7ee2eafc63a9d056`  
		Last Modified: Thu, 26 Oct 2017 03:10:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:9dec8e9b5ba5315ac1c4c9cdc3f12f4922b71f1d4fb82c4a139dbaf64d237a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

```console
$ docker pull registry@sha256:5b2c6bca447455129b73abdaaea10ff5b3a621cc4d4a8bca664e1fa7859ecb68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11204279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558aed5e561f7dd27bf78e79f9a38bc3d19c96bda6b3d18d35fcd8cdf2dbecc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:10:07 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 26 Oct 2017 03:10:21 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Thu, 26 Oct 2017 03:10:21 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 26 Oct 2017 03:10:21 GMT
VOLUME [/var/lib/registry]
# Thu, 26 Oct 2017 03:10:22 GMT
EXPOSE 5000/tcp
# Thu, 26 Oct 2017 03:10:22 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 26 Oct 2017 03:10:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:10:22 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638c4c5f80c0766bd3b34ad11be5379b4b5a923d40bb2bf2cfba182c5aa909bb`  
		Last Modified: Thu, 26 Oct 2017 03:10:35 GMT  
		Size: 2.0 MB (2027001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ce8a20f6e3559fe599b87d6ce30145060fc07c7db371283d5c6492ee2c0d3a`  
		Last Modified: Thu, 26 Oct 2017 03:11:13 GMT  
		Size: 6.8 MB (6791683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0616049d032646060eb5da2ac6e5f79d1ebd6190e4b99538048e497a25d104`  
		Last Modified: Thu, 26 Oct 2017 03:11:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa0b482d0a2ee0a6098392ebc89d92791f2b66fe64d94024c631e39ec644a30`  
		Last Modified: Thu, 26 Oct 2017 03:11:13 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:9dec8e9b5ba5315ac1c4c9cdc3f12f4922b71f1d4fb82c4a139dbaf64d237a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

```console
$ docker pull registry@sha256:5b2c6bca447455129b73abdaaea10ff5b3a621cc4d4a8bca664e1fa7859ecb68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11204279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558aed5e561f7dd27bf78e79f9a38bc3d19c96bda6b3d18d35fcd8cdf2dbecc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:10:07 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 26 Oct 2017 03:10:21 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Thu, 26 Oct 2017 03:10:21 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 26 Oct 2017 03:10:21 GMT
VOLUME [/var/lib/registry]
# Thu, 26 Oct 2017 03:10:22 GMT
EXPOSE 5000/tcp
# Thu, 26 Oct 2017 03:10:22 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 26 Oct 2017 03:10:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:10:22 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638c4c5f80c0766bd3b34ad11be5379b4b5a923d40bb2bf2cfba182c5aa909bb`  
		Last Modified: Thu, 26 Oct 2017 03:10:35 GMT  
		Size: 2.0 MB (2027001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ce8a20f6e3559fe599b87d6ce30145060fc07c7db371283d5c6492ee2c0d3a`  
		Last Modified: Thu, 26 Oct 2017 03:11:13 GMT  
		Size: 6.8 MB (6791683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0616049d032646060eb5da2ac6e5f79d1ebd6190e4b99538048e497a25d104`  
		Last Modified: Thu, 26 Oct 2017 03:11:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa0b482d0a2ee0a6098392ebc89d92791f2b66fe64d94024c631e39ec644a30`  
		Last Modified: Thu, 26 Oct 2017 03:11:13 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:0694e05b6d0b5fed892ddc60358758bd8341c9a6497ac185f93fc4c93c689810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

```console
$ docker pull registry@sha256:e7f8a05ca8ae087dea9a66bec6262fdcc58205d178165b12a671cd0a5cea6f34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10677976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba7189700c85d74be0a5dbff0a4acd5e0787dcae9776a5575b54c8c86b7302c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:10:07 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 26 Oct 2017 03:10:08 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Thu, 26 Oct 2017 03:10:09 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 26 Oct 2017 03:10:09 GMT
VOLUME [/var/lib/registry]
# Thu, 26 Oct 2017 03:10:09 GMT
EXPOSE 5000/tcp
# Thu, 26 Oct 2017 03:10:10 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 26 Oct 2017 03:10:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:10:11 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638c4c5f80c0766bd3b34ad11be5379b4b5a923d40bb2bf2cfba182c5aa909bb`  
		Last Modified: Thu, 26 Oct 2017 03:10:35 GMT  
		Size: 2.0 MB (2027001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9df08ef46d99710c8b6bb65740c2da3133e6c243d2de7edfe4d209c527f6`  
		Last Modified: Thu, 26 Oct 2017 03:10:36 GMT  
		Size: 6.3 MB (6265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7e568878e68d6ecfb14909e543e88f7354c6f8b4f9ca3b4351a30946aa150e`  
		Last Modified: Thu, 26 Oct 2017 03:10:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386d4eddd8337d7aa0749fcff0dbdcfcc09c7a9baef0413f7ee2eafc63a9d056`  
		Last Modified: Thu, 26 Oct 2017 03:10:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.2`

```console
$ docker pull registry@sha256:0694e05b6d0b5fed892ddc60358758bd8341c9a6497ac185f93fc4c93c689810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6.2` - linux; amd64

```console
$ docker pull registry@sha256:e7f8a05ca8ae087dea9a66bec6262fdcc58205d178165b12a671cd0a5cea6f34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10677976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba7189700c85d74be0a5dbff0a4acd5e0787dcae9776a5575b54c8c86b7302c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:10:07 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 26 Oct 2017 03:10:08 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Thu, 26 Oct 2017 03:10:09 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 26 Oct 2017 03:10:09 GMT
VOLUME [/var/lib/registry]
# Thu, 26 Oct 2017 03:10:09 GMT
EXPOSE 5000/tcp
# Thu, 26 Oct 2017 03:10:10 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 26 Oct 2017 03:10:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:10:11 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638c4c5f80c0766bd3b34ad11be5379b4b5a923d40bb2bf2cfba182c5aa909bb`  
		Last Modified: Thu, 26 Oct 2017 03:10:35 GMT  
		Size: 2.0 MB (2027001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9df08ef46d99710c8b6bb65740c2da3133e6c243d2de7edfe4d209c527f6`  
		Last Modified: Thu, 26 Oct 2017 03:10:36 GMT  
		Size: 6.3 MB (6265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7e568878e68d6ecfb14909e543e88f7354c6f8b4f9ca3b4351a30946aa150e`  
		Last Modified: Thu, 26 Oct 2017 03:10:34 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386d4eddd8337d7aa0749fcff0dbdcfcc09c7a9baef0413f7ee2eafc63a9d056`  
		Last Modified: Thu, 26 Oct 2017 03:10:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:0f8fe61fa337b8ef02217702ba979b47a7d68717d4628f31592ebff85915f3ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:b5d514924c67e0c3e74bc79758e8ef099a293c8f0740b87043d0c348f1c09397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10659516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28525f9a6e46bd6a033b3a3e5f5f64b28d93698b0a23cdb8d66b43b8d8e6b7c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:15 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Wed, 13 Sep 2017 14:32:15 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 07:25:41 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Tue, 19 Sep 2017 07:25:41 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Tue, 19 Sep 2017 07:25:42 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Tue, 19 Sep 2017 07:25:42 GMT
VOLUME [/var/lib/registry]
# Tue, 19 Sep 2017 07:25:42 GMT
EXPOSE 5000/tcp
# Tue, 19 Sep 2017 07:25:42 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Tue, 19 Sep 2017 07:25:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 07:25:43 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e11d7b4f5e8e125dd203edcc6d7ba0d42e090b29584ba55a882e1cf4ddf4a1`  
		Last Modified: Tue, 19 Sep 2017 07:25:58 GMT  
		Size: 2.0 MB (2008548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f032f3c8932b01f4b7231e43f17dbd4bed7d6fcc5567959ae1aebcff675c904`  
		Last Modified: Tue, 19 Sep 2017 07:26:00 GMT  
		Size: 6.3 MB (6265373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425585e7aedb57b8e7a9974bd8995e7d91ee5beaf596c8eb46c28384fe14a5d8`  
		Last Modified: Tue, 19 Sep 2017 07:25:58 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45f535a83d27374934dcde157f5916195bdde43519d9c4e027d696b1f8742cd`  
		Last Modified: Tue, 19 Sep 2017 07:25:58 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
