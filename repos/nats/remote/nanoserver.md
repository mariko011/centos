## `nats:nanoserver`

```console
$ docker pull nats@sha256:0e0ea79f6ca157865fb24083dc80015b4692854b06f4009c9383fd5b3d046b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats:nanoserver` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:0adcaf519d6018c632f5c014651231395e6c383b8226431c5208314800abd8a5
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.9 MB (396937925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c942ab8a6afa908cd5d1251483996c037bc1ca127e1c99265be8235ca8552d3`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:15 GMT
RUN Install update 10.0.14393.1770
# Tue, 10 Oct 2017 23:34:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 10 Oct 2017 23:34:25 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 10 Oct 2017 23:34:28 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Tue, 10 Oct 2017 23:34:31 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 10 Oct 2017 23:34:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 10 Oct 2017 23:34:35 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 10 Oct 2017 23:34:37 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0b5e40cb939a7befa4e01212d6f65f30022bbd04b5f15985b45ce9cfd3fcabc`  
		Size: 141.8 MB (141758132 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0c298e0d90d212bef2886ad3f661e0abcaffe81f9f80d461f8e77ed1cdfe68f`  
		Last Modified: Tue, 10 Oct 2017 23:35:14 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad4cdaa53aecd328c4c39f8af9c41660f0a18e041a9dacc1e9ffcd0d171e890`  
		Last Modified: Tue, 10 Oct 2017 23:35:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330499cb29cdc400207ac61bae9ba1103d7ab1b372e07733ccdaab4c54e943bb`  
		Last Modified: Tue, 10 Oct 2017 23:35:11 GMT  
		Size: 2.5 MB (2482110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1b7d61f8cbf3f47b03aacc8c2f1b89bc548af9e02e33bfa1d1775b74a4c7fc`  
		Last Modified: Tue, 10 Oct 2017 23:35:10 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0558a7951ce3afe2c20cd1286aa6b1bd6ef9ae8a6b20e540859534bc7a7b447`  
		Last Modified: Tue, 10 Oct 2017 23:35:11 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727de4871b7d650e54659bde3ce43dc213fc1e45f7524998a0dc40c2a1ff6df`  
		Last Modified: Tue, 10 Oct 2017 23:35:10 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247bce3ea60f22658c626fd07cce72bea02796498bafd9362e2e837f34662733`  
		Last Modified: Tue, 10 Oct 2017 23:35:11 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
