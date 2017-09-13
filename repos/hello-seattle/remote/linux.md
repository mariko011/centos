## `hello-seattle:linux`

```console
$ docker pull hello-seattle@sha256:3d2a97fdd93b998f73c08d10bc6537991397bca63fd0c7ab03864500d95188b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `hello-seattle:linux` - linux; amd64

```console
$ docker pull hello-seattle@sha256:ee5e4d63ab32fea7cb7b419ee2fb631a26e0a504f010f007c26ab64b19a83470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **990.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c64108f30a9038397781239a7394b4d2c95e6a0c3a7aa08d045f9c6b103ee40`
-	Default Command: `["\/hello"]`

```dockerfile
# Wed, 13 Sep 2017 02:49:15 GMT
COPY file:758e9f3fd367544b4fb39e144027a3e9224260f5a1f326c8a2394b386afd2d98 in / 
# Wed, 13 Sep 2017 02:49:15 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:e793023fd1a11d73ceea3262aa5a7f7a700f8610be029f602d1cd4f166b67397`  
		Last Modified: Wed, 13 Sep 2017 02:49:21 GMT  
		Size: 990.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-seattle:linux` - linux; arm variant v7

```console
$ docker pull hello-seattle@sha256:d3155b7e965112bb439b8731b764cd693bdbba48be9a88c67e48f41e38e9399b
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10241f378ece7162760863807818c4d81db4a70235f6c26308c4d853c2bcba04`
-	Default Command: `["\/hello"]`

```dockerfile
# Thu, 10 Aug 2017 20:23:44 GMT
COPY file:0894ce06f70fc2843e2493f92007b4aed56ddfb0a253ecbdfafbfd76f95227f1 in / 
# Thu, 10 Aug 2017 20:23:45 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:783e570845c0e3113e86f5a2da7c73db4d96e2c911d1d1179ea93f935088d8f1`  
		Last Modified: Thu, 10 Aug 2017 20:23:52 GMT  
		Size: 996.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
