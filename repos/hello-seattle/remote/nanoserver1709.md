## `hello-seattle:nanoserver1709`

```console
$ docker pull hello-seattle@sha256:aa6b4eafe96389087f9576771c113a8832847cabf14733442d1edd46485e1d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.19; amd64

### `hello-seattle:nanoserver1709` - windows version 10.0.16299.19; amd64

```console
$ docker pull hello-seattle@sha256:3e15a7f28cdf76956096bce3cca69f0ca986a7d0980031b486f968a23abb6d93
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93176697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06afbcb2e561408730f0b6d5be520b8ec1f9bc60384fe52d1bf3bb59c486bdae`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Install update 10.0.16299.19
# Wed, 01 Nov 2017 23:50:09 GMT
RUN cmd /S /C #(nop) COPY file:a4d78d9e836b5b6546d702c20894a99a4a0a1e8ca838ba1335d3f265635ed0a6 in C: 
# Wed, 01 Nov 2017 23:50:10 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ad09b0550b6c41c96a80f476f16b2ad5160d9c10545a05a73b8eece84b5d9d49`  
		Last Modified: Tue, 17 Oct 2017 17:20:51 GMT  
		Size: 12.1 MB (12134341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6770a821579e74cec0235808f927c093f0a0e73fd13a8f6f6f62e6d9453def08`  
		Last Modified: Wed, 01 Nov 2017 23:50:18 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a5dad979ccbbb4064c3fed71ee0c26a1d36f7b94effd76ba621d119c4ca258`  
		Last Modified: Wed, 01 Nov 2017 23:50:19 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
