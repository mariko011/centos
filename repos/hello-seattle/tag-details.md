<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hello-seattle`

-	[`hello-seattle:latest`](#hello-seattlelatest)
-	[`hello-seattle:nanoserver`](#hello-seattlenanoserver)

## `hello-seattle:latest`

```console
$ docker pull hello-seattle@sha256:44baef1bed1876b64330f2ee2d07744ab42bb5956e5a9485af3529002ee5fa22
```

-	Platforms:
	-	linux; amd64

### `hello-seattle:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **988.0 B**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efb561213a47b571d0372c27a405aee009794aadf88269ded8be6041dd4408f`
-	Default Command: `["\/hello"]`

```dockerfile
# Fri, 13 Jan 2017 22:50:24 GMT
COPY file:be55604606357b8814d84efc418e8584c8862d86bf46e030829d7f8b6fbb2f91 in / 
# Fri, 13 Jan 2017 22:50:24 GMT
CMD ["/hello"]
```

-	Layers:
	-	`sha256:35e9e6fa02d988189f2b27a2468c79374b20c0e926a11479cd7d97d58f9dea99`  
		Last Modified: Fri, 13 Jan 2017 22:50:39 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:6b83b5e7646587012bb67a15cabdbd0b2eb2d865494fd4ef4bf0ade45708fece
```

-	Platforms:
	-	windows; amd64

### `hello-seattle:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.3 MB (333311321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3ab2be67fdc3af559dcba614c35815c254bddabcc95690f65857af257c7bac`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 14 Jan 2017 00:12:50 GMT
RUN cmd /S /C #(nop) COPY file:73331af5616ef632d0fa354ceef92ad3a5e561c12c4d53320cdd17c39a4e4b3f in C: 
# Sat, 14 Jan 2017 00:12:51 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:368140448b83809af08064fc07135d0405e39e678d50faf3ca2ea84993575093`  
		Last Modified: Sat, 14 Jan 2017 00:12:56 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de816f991b32d74c2430748ea8869278b22ea4607b2ecfb13fbb5041db5f1bf`  
		Last Modified: Sat, 14 Jan 2017 00:12:56 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
