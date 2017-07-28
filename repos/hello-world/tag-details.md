<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hello-world`

-	[`hello-world:latest`](#hello-worldlatest)
-	[`hello-world:nanoserver`](#hello-worldnanoserver)

## `hello-world:latest`

```console
$ docker pull hello-world@sha256:f3b3b28a45160805bb16542c9531888519430e9e6d6ffc09d72261b0d26ff74f
```

-	Platforms:
	-	linux; amd64

### `hello-world:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **972.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1815c82652c03bfd8644afda26fb184f2ed891d921b20a0703b46768f9755c57`
-	Default Command: `["\/hello"]`

```dockerfile
# Wed, 14 Jun 2017 19:28:14 GMT
COPY file:b65349dad8105cbef74456e9c0c9da5d001e9eb2ade4b3c21e107909aee5b25a in / 
# Wed, 14 Jun 2017 19:29:01 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:b04784fba78d739b526e27edc02a5a8cd07b1052e9283f5fc155828f4b614c28`  
		Last Modified: Wed, 14 Jun 2017 19:30:11 GMT  
		Size: 972.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:36dbfeca7e5feed424efd0a92dfe29f073bebe92e8aaaf0a49d0a58868b5ed00
```

-	Platforms:
	-	windows; amd64

### `hello-world:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.9 MB (382850830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82cd661f5da1a3c09636d5116735dfcd10bfc80f79c5acc92e97caafdcd382b1`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:12 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:35 GMT
RUN cmd /S /C #(nop) COPY file:a5052dbb0d93d3999b3ee937f847dbf9005dbd46508351d1f4316fe2f9adef71 in C: 
# Fri, 28 Jul 2017 18:55:37 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:baa0507b781fcbf25230671393ddd64a7028872f57c375e758e9d11335cdc4ab`  
		Size: 130.2 MB (130157229 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87b9648c93f5c084e8e2c0b913cc7a354da97a9201a2debeb7534744f59c1b38`  
		Last Modified: Fri, 28 Jul 2017 18:55:40 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc2f3a7373d1ce31d6569eb25d5ab149c8df3b267947dae5be2e3256428824`  
		Last Modified: Fri, 28 Jul 2017 18:55:41 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
