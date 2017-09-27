## `debian:experimental-20170907`

```console
$ docker pull debian@sha256:86d58acb18dcb54a22ab1c7c5dac1b62fb02f19e888ae94b41be54a7eac479bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:experimental-20170907` - linux; amd64

```console
$ docker pull debian@sha256:ddc1c87b661e95f275fb6f21d27751a06e6016e1c5cf150b54d54d9d9d800c47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47754076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55315cec08c7e8dbe72117416c4fd6cee5dabf85c2f7b81361a2d404ce772e0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:05 GMT
ADD file:d0270982773408f1cdf0c8b01e5018e290d9610439ed9c7850263b89ab19b137 in / 
# Wed, 13 Sep 2017 08:42:05 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:42:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:86dbe83befc719b90d372002c497e589b86fc712d57c1599c02c19f2a031df58`  
		Last Modified: Wed, 13 Sep 2017 08:43:09 GMT  
		Size: 47.8 MB (47753857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65ddf6e973eaf598468b7c8f8791f3bd62566b1f716132c981de867ff8deea5`  
		Last Modified: Wed, 13 Sep 2017 08:43:02 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20170907` - linux; arm variant v5

```console
$ docker pull debian@sha256:d6e7305e461b57c988e2e4a9b3c9a97feaa7c92554405e799a90a9603ca0dc89
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46234264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad895eb3fbf065b899f4c6c8edb6b0fefe8822f8c90ca7e2c60ab88847c2a157`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:26:52 GMT
ADD file:176342c429b0199f9b874b38b49e97d92931c514bbf34a2bcc22e66f29a1945a in / 
# Wed, 27 Sep 2017 14:26:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:27:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f9c96fd54d6279e757fa052d19f20d37170fe36d5fcf00c5af799e01e6e57176`  
		Last Modified: Wed, 27 Sep 2017 14:32:27 GMT  
		Size: 46.2 MB (46234042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31e5d42352b2f846fca1e6657dca16a135077e6a3cc90cfad514593f93f9095`  
		Last Modified: Wed, 27 Sep 2017 14:33:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20170907` - linux; arm variant v7

```console
$ docker pull debian@sha256:0fa7c4f203cc4cdcffa59eaed46636707903ec14dd2c3a62ae056b8351a0ae13
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44754360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489772afee336302bdb14a1c48e483399b0e9b4934d0701756272a8005a471f9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:30 GMT
ADD file:ac15ac728cd7b6348357ddcd1f1516d233f5ae5510d716befec8a7e56e8bedf5 in / 
# Wed, 27 Sep 2017 04:15:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:16:12 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:43052abdd253cb75b807753ca204402525c81c6b1fa043e950db6ff00d05d0d2`  
		Last Modified: Wed, 27 Sep 2017 04:21:45 GMT  
		Size: 44.8 MB (44754139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0c6a8f6e2dfb722dfd855cd1ce39dd5aad1cbc547d136880a32f2f2f9bfa7b`  
		Last Modified: Wed, 27 Sep 2017 04:22:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20170907` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:256d5644c751b2eeede7b3477aaa40b25af47adcbdb24c1a5f56a66d9237496e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afac025b9f81fc9f7da8d5fedeaf33b001a4c0aa3a0664bc8c57928832594cce`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:30:50 GMT
ADD file:55544d6d9ad0af3f15a008e772de08d631c2b30781d3eb820720ed2b730f89ea in / 
# Fri, 08 Sep 2017 17:30:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:31:34 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:071b309802d1fdaf51edc0a50121ba2dd84a8c37ec191ee824e41b0979436c74`  
		Last Modified: Fri, 08 Sep 2017 17:33:59 GMT  
		Size: 45.5 MB (45455967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018bbf0524b403a36940f99ea1fb5cfb645fbc37ad9cb897fe7886ea837a083b`  
		Last Modified: Fri, 08 Sep 2017 17:33:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20170907` - linux; 386

```console
$ docker pull debian@sha256:45fe44b8fb443c30fa544d6350e028cb6f2471a0a4421d185bb012d69a53277c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48547967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e520cccb68d015464c2cfbd68a11a3b16d327877de6eaf19266a179ac613a2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:29 GMT
ADD file:4cd850abdf684dcb29c330f355e7f5890bf0873dedb6803b9c71d2326b78880f in / 
# Fri, 08 Sep 2017 13:20:29 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:21:03 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:31ad8490bf7dafa0c9b2b3f76499f78389b903ba4835602e3f489fa753528b25`  
		Last Modified: Fri, 08 Sep 2017 13:22:06 GMT  
		Size: 48.5 MB (48547745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d653ac3ad3ebcccc26ca2c8d533c8f07c6112f233111f5e7383257e25f8a61b3`  
		Last Modified: Fri, 08 Sep 2017 13:21:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20170907` - linux; ppc64le

```console
$ docker pull debian@sha256:d18087e61771290e0bec68b8cd5a86e24a6a7099b1037978e8c0a50e6870716c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48412233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d50b7e0a4d61aafe158b3c402d3725f9b4e26d00e017970d74e066bef5c8258`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:56 GMT
ADD file:998e960c3963553db497eb9c0a05cad31636e225a8737b6f8284d5f7aba8a767 in / 
# Fri, 08 Sep 2017 00:34:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:35:10 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3d870f413e16c3071811476c537d1ec0d707956cc02b886e3d401f46d3029d9e`  
		Last Modified: Fri, 08 Sep 2017 00:36:22 GMT  
		Size: 48.4 MB (48412012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108901416a30b6d7ccde34922d644d361cd7aaa162ec4bdefd38599049ed07e2`  
		Last Modified: Fri, 08 Sep 2017 00:36:09 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20170907` - linux; s390x

```console
$ docker pull debian@sha256:3adbc69f7ec77719fe2f293c8bf38a5c9f8416e075efa41cd36b0345e37e7552
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47521352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c1cc3d78901b43e1bf967ed3aee919d2ce39ac03bfd42ad149bc5907c36573`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:23 GMT
ADD file:afb06519dc470a4def7af997f20bd974286fe530ad131350bd3a7c43e0f5f89f in / 
# Fri, 08 Sep 2017 05:23:24 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:23:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:b905c735954a8279a4dad3a6f4574ffea921aac36fa10e405e3a4dbca1465349`  
		Last Modified: Fri, 08 Sep 2017 05:24:26 GMT  
		Size: 47.5 MB (47521131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c210950753da3423576fe6bf185c499a457326bb41d02a8d9aaece3fdbc92`  
		Last Modified: Fri, 08 Sep 2017 05:24:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
