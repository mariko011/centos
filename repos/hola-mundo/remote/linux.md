## `hola-mundo:linux`

```console
$ docker pull hola-mundo@sha256:dbbc169509745be419e337d997b8ac4d646a10bf33517190bff2b84e2fd7be85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v7
	-	linux; ppc64le

### `hola-mundo:linux` - linux; arm variant v7

```console
$ docker pull hola-mundo@sha256:7094df34350111b4ec5cefe88c78e06ddeba55ed0b747c31111a54d5cbb47571
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 KB (1001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e4595103a6cba0f6fbf1e2869794ce9ddf0289a3d1e92b86ca3f651f3151d0`
-	Default Command: `["\/hello"]`

```dockerfile
# Thu, 10 Aug 2017 20:29:26 GMT
COPY file:f0bc664377dd289a8845d1482a6f499cc939c235b2c85ba4b039219c3623bf22 in / 
# Thu, 10 Aug 2017 20:29:27 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:1d69a72d83c49b6c1e649661b18acc0b5611253872c470d995ddd7862dc4029c`  
		Last Modified: Thu, 10 Aug 2017 20:29:33 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hola-mundo:linux` - linux; ppc64le

```console
$ docker pull hola-mundo@sha256:4195ddb335d77ea647c59dc4587b86b42dccee8078e07b85898b86b26f1dcdf5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 KB (1310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2610e8bd8b7dfc281b3fbfafea4c0ff9216b8fe5d02aaa337d438b0d3031b467`
-	Default Command: `["\/hello"]`

```dockerfile
# Tue, 25 Jul 2017 05:27:34 GMT
COPY file:8ee923a6da407d85966b51a93602e68a94a0969041345d14a35373bb249dd947 in / 
# Tue, 25 Jul 2017 05:27:35 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:4c92afa369147a040926c726d3a960d6cd4f760d3581cad9b54279e28bf71779`  
		Last Modified: Tue, 25 Jul 2017 05:27:43 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
