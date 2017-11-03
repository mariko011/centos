## `centos:centos7`

```console
$ docker pull centos@sha256:4565fe2dd7f4770e825d4bd9c761a81b26e49cc9e3c9631c58cfc3188be9505a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `centos:centos7` - linux; amd64

```console
$ docker pull centos@sha256:224d7b12549c04bba833d4626a5c51113290e55bd754d39f72d1a437539b3c68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73386947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d123f4e55e1200156d9cbcf4421ff6d818576e4f1e29320a408c72f022cfd0b1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:32:02 GMT
ADD file:1ed4d1a29d09a636dd6c60c6187679adb26c877b6be6968e14272e75ad240073 in / 
# Fri, 03 Nov 2017 22:32:02 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170911
# Fri, 03 Nov 2017 22:32:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d9aaf4d82f249dc101a6638ff5177fe926cdebfa6c42d874dfa5029533da0e72`  
		Last Modified: Thu, 14 Sep 2017 15:14:02 GMT  
		Size: 73.4 MB (73386947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:98fe5d808db716b54bbee79e7cc9b54e9425d69e737e49b865c34d31cad92df7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73136372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1dbb498d7115269f611cda22e942c5644cfd0b4021a0ac1da0eb0c1ea8bd1e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Sep 2017 17:03:39 GMT
ADD file:82f9d72173244544d53139d0733a05d18453746cef8ee7e1d0229657e256ab83 in / 
# Thu, 14 Sep 2017 17:03:40 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20170912
# Thu, 14 Sep 2017 17:03:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b5e1597e7528cfdae4471cafcd43e5a7c17205ddbc83696536eb85accdfd0fda`  
		Last Modified: Tue, 12 Sep 2017 18:45:12 GMT  
		Size: 73.1 MB (73136372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
