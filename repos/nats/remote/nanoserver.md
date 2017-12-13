## `nats:nanoserver`

```console
$ docker pull nats@sha256:96e8ff622c2328951e215c18e332ca8203bce8cf30159ddf7e2aca0869e33cb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats@sha256:1508d4c3be06bf8efc4ae27fdcb9d5792e1193fe1f129bde0867bb2e1813717a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.2 MB (401203320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a24ffe0f651fd1f2dbd9510044ea090a31fb8d046696dd9e9dd92ae18a0231b`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 13 Dec 2017 00:25:28 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 13 Dec 2017 00:25:30 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 13 Dec 2017 00:25:31 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 13 Dec 2017 00:25:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 13 Dec 2017 00:25:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 13 Dec 2017 00:25:34 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2735b5da9778b2ec6c898da8d2a6d18ea0847d7829b0dfeb84c4984ff081b6b2`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5a770da952530b8cf459eb92abf45386051025458e4aa2e35735d568c2b63a`  
		Last Modified: Wed, 13 Dec 2017 00:25:57 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda44e6e21b2c8db683aee15d6b5a2b817625d55f4c493d750d0924d92aa03`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 2.5 MB (2482070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6309656ff58879b80114413cd5827e7b32087417d5cd2071a41c7083cd0d924e`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7aa0937c05897e60155c6cd04cb89de1f59e947e579f78e6f2e53dcbdb373a`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31eae37ef312d505257ca2310fee79f3bce22b337f32e2af828c6217bd8fe8c4`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a437f06e46fe0bd18433f5a5e18f8644fa74a576a3aaa24271394e3c6128819`  
		Last Modified: Wed, 13 Dec 2017 00:25:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
