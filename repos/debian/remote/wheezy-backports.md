## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:43164e74e7752a2c5236e8cd7bdfc66ce3651dbcc47366fcffbe33c9daac7c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:a7f0b8db3c658e818ac2bfbbab75dcfd84ed5cf17ed20b93ef9442e1a2ec9ecc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38110051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac409e5e5d523c17e46c1b1d6429741fb66976089574e122a41e85db5a1cc54`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:04 GMT
ADD file:281b987b09ac9b71793de5201331461636a08ec23af27a9e11a14484018993dd in / 
# Tue, 12 Dec 2017 01:46:04 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:46:13 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:762ae076e9a326e4eac3b3db9e3afe4b6dc930ec52dbb2aa27a300d1323a52b6`  
		Last Modified: Tue, 12 Dec 2017 01:59:44 GMT  
		Size: 38.1 MB (38109825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e748540136a3141b35832c1333c2290f5ebafb6aa79b7f35646ce81d4586c0`  
		Last Modified: Tue, 12 Dec 2017 02:00:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:168032547dedff2e794d28eadae054f6c2def265df0126da6ac5d84a72d3cf97
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36942975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1ecd25be24bac89f57c0ace93496d82868ad6ae7ccd3151ea570feadaddfb4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:49 GMT
ADD file:7caba2e8ca559f2c483f4cd0a58fb948ca56548d0ce9ae218c7c407e1fc02eb5 in / 
# Mon, 09 Oct 2017 21:45:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:45:54 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9e1de2c5739e65047ff13389bd7f41bab4fb8e2a7728dd670046879169bc1203`  
		Last Modified: Mon, 09 Oct 2017 21:52:21 GMT  
		Size: 36.9 MB (36942751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85f5d9dd6930bcf20b025a01f6e6fbd9baf31700df65f1f18e48d7b20afd5f9`  
		Last Modified: Mon, 09 Oct 2017 21:52:34 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:f768451737792179807878de7d93b3869e128edd43a5400f9f19244477c50604
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35656634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ffbf2ce102d4c764f8f02160c6947feff5f2fd35c33c5826e04b2423004569d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:47:10 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518bd1c3aff9e10859d45b63ab184283b74acde80880aa35f775d7b4b4726878`  
		Last Modified: Mon, 09 Oct 2017 21:56:22 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:d1f63a4829f8ec2fa69ddc6998cdfdcfab602ad055d17eca9a6c257f77555801
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37433473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551710c0a7f4f2df62ecb99ebe77639f1698213cdd781bb49427e3c819a12651`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:46:39 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c96585ab5277eb9095fa8037880acc62d0acba582224796a1128e60d78fdd1`  
		Last Modified: Mon, 09 Oct 2017 22:01:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
