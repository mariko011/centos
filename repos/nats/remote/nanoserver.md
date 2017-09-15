## `nats:nanoserver`

```console
$ docker pull nats@sha256:4737aeeb74d35030550bef5676ccb2b527601470d34b8ba484d0411e2420c652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `nats:nanoserver` - windows version 10.0.14393.1715; amd64

```console
$ docker pull nats@sha256:a7e3f314b976cdf26de5f8ab4a3cdd9fe4b0e91e48a463cb8bfce95f354c78cf
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395279958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1efbf5d3022fe7336283f35e3771dcaad4fa6fc43c59f85c3dd1ba6b290c28e`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:14 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 23:53:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 14 Sep 2017 23:53:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Thu, 14 Sep 2017 23:53:35 GMT
RUN cmd /S /C #(nop) COPY file:af5c8dcfdefca52dc8554bf8d71fa681363602b0e9ce7082275f43a8a56aab5a in gnatsd.exe 
# Thu, 14 Sep 2017 23:53:37 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Thu, 14 Sep 2017 23:53:39 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Thu, 14 Sep 2017 23:53:41 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Thu, 14 Sep 2017 23:53:42 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5cd49617cf500abea7b9f47d82b70455d816ae6b497cabc1fc86a9522d19a828`  
		Size: 140.5 MB (140451190 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5a21de8b6a4157b2ce0c824ffadc7540a632e6820dc451fccbdfd83ad9cf26aa`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc9d9dab6ac959723444514c7f92fd81f36d493fb9a1df9acd342fa4efac436`  
		Last Modified: Thu, 14 Sep 2017 23:54:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcfccd3b8edea836dfad425edfb391292302450bad111767ebb7f8ac18a9308`  
		Last Modified: Thu, 14 Sep 2017 23:54:31 GMT  
		Size: 2.1 MB (2131058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9cdcbe027d88a356a1308357306de55462e4a40a681a9ff41773c53635284a`  
		Last Modified: Thu, 14 Sep 2017 23:54:30 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc4a7027f096d170c1766831e47fb9a2d22878cce26f461c29143a339c4e465`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7450eb4e63847244c5d3db25c7389584dd8094f04b752faac0fc934be6e3ee08`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f6ddc1450e1bfdb83fe5ce492263f2262b07e4f8053a82e030969ab3e5b4b3`  
		Last Modified: Thu, 14 Sep 2017 23:54:29 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
