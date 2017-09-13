<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hello-seattle`

-	[`hello-seattle:linux`](#hello-seattlelinux)
-	[`hello-seattle:nanoserver`](#hello-seattlenanoserver)

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

## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:6c86cfa1f942ed74171fdef9b4127fa9f426ed058b365a29841035dcdf4313a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.1593; amd64

```console
$ docker pull hello-seattle@sha256:6776d3bc75dbdf8fce8b8d2625b0c0def5a38455dac88bba1cb5a9a6672db3e1
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390045442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9f8bef3d6808f34e621d0e17c5d9631bcc923a97527ad0f65c3cac3bf0b347`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:54:45 GMT
RUN Install update 10.0.14393.1593
# Sun, 13 Aug 2017 21:07:24 GMT
RUN cmd /S /C #(nop) COPY file:73331af5616ef632d0fa354ceef92ad3a5e561c12c4d53320cdd17c39a4e4b3f in C: 
# Sun, 13 Aug 2017 21:07:26 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:38cc73423ca1d089e2e2374a8baf65d25d3792b22a22263c702f22f85bea6d4c`  
		Size: 137.4 MB (137351829 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9530cba5ba3f2afbcee460938017ddb6b9c1b1c6356c3c2134e40bea5eb63e86`  
		Last Modified: Sun, 13 Aug 2017 21:07:31 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8277f1b81792175acd7ec8765cf6e3b605985cb6a3cd44c0f014a62148b958`  
		Last Modified: Sun, 13 Aug 2017 21:07:31 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
