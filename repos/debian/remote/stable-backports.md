## `debian:stable-backports`

```console
$ docker pull debian@sha256:fb1dccb3f42cb011c62d83ec216046b1912fb68b4189162dc85ea0717bea38ff
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:a85782aea2e51532fcc7b809a3dc7c99c283fc3b0e8bf279a12c439dc93aac60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45121832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9085f652faa2e3e91ab7546c18f9ccd9a3363e37a9d253618f5247d57fd6eb2c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:41 GMT
ADD file:08051eff494813afb00f37964ce8100e9c52320950c53b00b5cea1d6a79d05e0 in / 
# Tue, 12 Dec 2017 01:43:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:43:50 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8ccb8cd716bb00562a5439fef860001282f68b7da4bbeca6b861ddfba551e8b3`  
		Last Modified: Tue, 12 Dec 2017 01:52:20 GMT  
		Size: 45.1 MB (45121610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838dc1d265c4383dd521fbb962373e68f096efee9c6ef829497c277ccd25d826`  
		Last Modified: Tue, 12 Dec 2017 01:52:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5680eda7f3ec0f361d89cd7c93abd1d688e902ff36f6bb9b783105f3c09c9b6f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43816165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca0e45b6d11ac485731a827c8461c1b16b4ac14e04dea8fa07ebd89346b0ec5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:02 GMT
ADD file:ebbed3581e180784992edf6709c2ebd2be8f049e56da323fcbd56fd23e3ca926 in / 
# Mon, 09 Oct 2017 21:44:03 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:44:08 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:434a1fb9cf80184855391e7cd0ecd5274b2a90fe92af909b8be104f033da248e`  
		Last Modified: Mon, 09 Oct 2017 21:49:53 GMT  
		Size: 43.8 MB (43815944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a5143343a8a1462b37146133a2403ebddf9bdc1457e9087d246a359a1a4e65`  
		Last Modified: Mon, 09 Oct 2017 21:50:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ceea7d1266fb2f7830d46a4f8285100acd0ab3a41926aeb78ac07fab8730c8bd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41842148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d87a2d10361775bf9937714c813747646fc2dfb4bf80f7a0248f5dbd9d2c757`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:46 GMT
ADD file:84a6e3dbff48f3718dd21abcb465aa401befde0b1150da065c0e26f4b92c2db3 in / 
# Mon, 09 Oct 2017 21:44:47 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:44:53 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:752d128f28f94f898790f57b01a841ad8c0bf617a80b9b6546f896a37dffaaae`  
		Last Modified: Mon, 09 Oct 2017 21:51:32 GMT  
		Size: 41.8 MB (41841924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a30226069ae831bdc5891b7bd4a5e0c425c55e5f212e6ceca2da16cf574cd8`  
		Last Modified: Mon, 09 Oct 2017 21:51:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:82fa352315cd517738319f8086f80cde598546822d83cf18de9c08b3a6ddb172
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42911944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93cc48779da95ab93b90d3ed4e17aa0e10b5934556d9e585cd3805d526f86029`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:17 GMT
ADD file:648b167ccbeeafa95be27c3ace8c90f7f246296dbdfd6dc8be2c08c6cb23d105 in / 
# Mon, 09 Oct 2017 21:46:18 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:46:29 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:71014ef2ec6f6701b70ebc9e576f09914f72b3bee701901d75c4f76a5be89b4d`  
		Last Modified: Mon, 09 Oct 2017 21:59:34 GMT  
		Size: 42.9 MB (42911722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9fba512c458a595dbc1f2b4f6d07d879a4eed963c9a53e8257246887a92d0`  
		Last Modified: Mon, 09 Oct 2017 22:00:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:04fd8df972ffd0e8a9569f2f9989141c693d74e515d39c4b332af91da658a4ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45833954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1078cbea67d9153f906480d62c9383d25506487b57e7289533e43be4de59625d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:54 GMT
ADD file:b8d4c504c3e5cc4dfe6832353ee9f32e2954eee25fd4f4b6d32f87026ded0a96 in / 
# Mon, 09 Oct 2017 21:44:54 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:44:59 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5adc4d8e64ae77c7c4ed9f6d290a904eb0917a3161fb2dacbcdd798ffb992682`  
		Last Modified: Mon, 09 Oct 2017 21:51:44 GMT  
		Size: 45.8 MB (45833733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0e483cfc1020458044a555d0d3e56b723b359d973120a8d1b8c0faaeacaf5e`  
		Last Modified: Mon, 09 Oct 2017 21:52:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e0c63a158107a2cbe0213876e733c9ff57c8d52092469e9d93a6e35751646bb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45382623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce99171857dafe0bbf210892412aaa3e0bdadfdbcb823b3722ded0359c47615f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:34:47 GMT
ADD file:26af3dd6b366e16616984cd6f53e82d1cf84d55a0c43ec360ab7b0fd5c3ab25e in / 
# Tue, 12 Dec 2017 01:34:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:34:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:91b591032bfd7bedd9cd9e1a997b1d9a50a87810e0ea8cf66aa643c9b8320bce`  
		Last Modified: Tue, 12 Dec 2017 01:41:15 GMT  
		Size: 45.4 MB (45382398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33aab3c18e7e9f53bf775230ade8927b3cc5408707fc83059dfccd5e0aae80b`  
		Last Modified: Tue, 12 Dec 2017 01:41:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:b48ee25324af6954d2676b61794bcef0014c3a534ae7f8ef22c7e07760d691df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44973016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:286e48c3fabd0710a041a84ca116c8d513f169351b1f7d8ace03b468d831654f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:f85375e44b52f1a5f0b55b5f648577928f5ebef215ab35bb6e3de9e7d6073b3f in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:de087bba99820ce1bc1365089ad3b0a888c760bb39ff3b2e1c98e62c3e5b7caa`  
		Last Modified: Mon, 09 Oct 2017 21:48:08 GMT  
		Size: 45.0 MB (44972795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3261ee72ea48e1df2dd9e283b7193af9d1ed813ba1ee997df856bba29fc8b5`  
		Last Modified: Mon, 09 Oct 2017 21:48:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
