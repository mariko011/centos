## `debian:stable-backports`

```console
$ docker pull debian@sha256:7c16a0764f3d7d7960f795be914505063d45278b6efd046d3afea7b5ad600e61
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
$ docker pull debian@sha256:a5d608d35490812b97f6a0dba2f5217a08db26b7227cc1eafa7bb3df7ec3494b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45129317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c880caba89b1aa08d8919aef58439cc582a4fa8bd42c6ff53e3e68f94494478c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:24 GMT
ADD file:4d64cdbd451795c07ae9de1c159fb88fe1eb5bb7c91a1ea7840929ac52849ad2 in / 
# Sat, 04 Nov 2017 05:26:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:26:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:28f860a8714a885e4b5ed527903efa876221167bdd891e9de690e141a53784e4`  
		Last Modified: Mon, 09 Oct 2017 21:40:43 GMT  
		Size: 45.1 MB (45129093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07556fdc5ec510d017a40e62ae9c12aee35c867ef090b2c0a40cef774894b576`  
		Last Modified: Sat, 04 Nov 2017 05:31:01 GMT  
		Size: 224.0 B  
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
$ docker pull debian@sha256:922972f13967668fdb48e18ffa000d73ddab470a44dbb02c1204bbdb086c014d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45378626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3b91e94aa55563eaad3ae768b5040394ba2ac5238f2c52fc90b55623a89a14`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:52 GMT
ADD file:ca40d5b9d4b58d8f94db38c1ce9039c2c0a997af523d70e46547c288efc1b7ce in / 
# Mon, 09 Oct 2017 21:44:55 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:45:04 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:797fd3cb0e540c0c6349d90acc60bdd5734c1a81e50537e062e7f729347b1b56`  
		Last Modified: Mon, 09 Oct 2017 21:51:26 GMT  
		Size: 45.4 MB (45378403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5d11fde70669a588feea73033a1cbb7300701cb57d240d26137ecfad1d7551`  
		Last Modified: Mon, 09 Oct 2017 21:51:39 GMT  
		Size: 223.0 B  
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
