## `nats:windowsservercore`

```console
$ docker pull nats@sha256:3986f90fa9eef3d838fbbb405bddba487b508d305ea5ccb6cec65b11f1dc8b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `nats:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull nats@sha256:ce30e78eca8365c51418eaa0a74f5438461cab7d35c21062ac1d09f7c1a3bb15
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5352997683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6355793d291a62b9d21b34f91f4d680e1af217c174f4045e2b252b6edb9a9a`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Tue, 10 Oct 2017 23:34:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 10 Oct 2017 23:34:47 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 10 Oct 2017 23:34:51 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Tue, 10 Oct 2017 23:34:54 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 10 Oct 2017 23:34:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 10 Oct 2017 23:35:00 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 10 Oct 2017 23:35:03 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1b81c984f5c532aac6553185533b3b8aedb0c8096ea7477fb86499780ccc30f4`  
		Last Modified: Tue, 10 Oct 2017 23:35:27 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97e8b52ae90a558ea169024bb1c3b5bc6ae9eb794d7f634cc7cab12c0d06dc5`  
		Last Modified: Tue, 10 Oct 2017 23:35:26 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfbfb3366a7f16b1beabc40aa997fb2f519c65dddbea54450e547cfc1ab9f53`  
		Last Modified: Tue, 10 Oct 2017 23:35:25 GMT  
		Size: 2.5 MB (2482380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805fdfc38d7ab2a16b8bf8d2e29db81e019f151e334dba14f2b25bc1b9685849`  
		Last Modified: Tue, 10 Oct 2017 23:35:24 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd0a88af4f5b59f51384eea1ff2d1abff2944fdff1416104ab6e9e9f50ae77`  
		Last Modified: Tue, 10 Oct 2017 23:35:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f55fb556e18713773fe31dcddb471e1d2c256634eefa6f90a93d7f65d776c3a`  
		Last Modified: Tue, 10 Oct 2017 23:35:24 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b76446c7afcf34f45bbe0e82e4177b9c3e4737bca95151bc4b9e91c11cf827`  
		Last Modified: Tue, 10 Oct 2017 23:35:24 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
