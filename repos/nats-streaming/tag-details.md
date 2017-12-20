<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats-streaming`

-	[`nats-streaming:0.7.0`](#nats-streaming070)
-	[`nats-streaming:0.7.0-linux`](#nats-streaming070-linux)
-	[`nats-streaming:0.7.0-nanoserver`](#nats-streaming070-nanoserver)
-	[`nats-streaming:0.7.0-windowsservercore`](#nats-streaming070-windowsservercore)
-	[`nats-streaming:latest`](#nats-streaminglatest)
-	[`nats-streaming:linux`](#nats-streaminglinux)
-	[`nats-streaming:nanoserver`](#nats-streamingnanoserver)
-	[`nats-streaming:windowsservercore`](#nats-streamingwindowsservercore)

## `nats-streaming:0.7.0`

```console
$ docker pull nats-streaming@sha256:2ab4b55f5d35e59d9c91c4f62a4dd0114db4d540c0c3c462b889720d070634b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:0.7.0` - linux; amd64

```console
$ docker pull nats-streaming@sha256:05ded20d349a0b42e121c31fb15a7826b41678cd72475ee8d7ef30e90dcdc282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3408359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8eafe26d51758993e4a64dc14e04b8682ad1a92824fb20b4dcbca70cecf9d0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 19 Dec 2017 18:59:56 GMT
COPY file:0eb5f0998e5218da31d53f7e49b5b4aae6e2b715282ddb388dc5236127def4df in /nats-streaming-server 
# Tue, 19 Dec 2017 18:59:56 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 18:59:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 19 Dec 2017 18:59:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:fc1eced9799119b6b7e9e9c0cb15273eb1d5cec6f9f4ba8599a8886b7ba979e9`  
		Last Modified: Tue, 19 Dec 2017 19:00:10 GMT  
		Size: 3.4 MB (3408359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.7.0` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:abc76051637063548d4bf5c8be4a2e892f33c98252f046d2fa61ce73e0074df4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.2 MB (402170705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5148af5deaa4178cc4b6362a73fe55525aa9671d0748b8ae6c1afb30592885b`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:29:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 19 Dec 2017 23:20:05 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:07 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:7ffdeb52d1d9a81b52afe50aed5444de9bbe059e24e2fd279c8e8709a61609cb`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64a258b789d666ed3af6a4a7e9ea6b02c98c3349921f5dfb6b1dd6e8a8624bc`  
		Last Modified: Tue, 19 Dec 2017 23:20:25 GMT  
		Size: 3.5 MB (3452086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d02d67a3a5f495cdec69fb1ed9f47e76f8de1a352b868c3e28ccaa6073874a`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf44c4ea453a9042e7caccb8a2c3fe2847441ceb5f1279b5a97833e9fa610c`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.7.0-linux`

```console
$ docker pull nats-streaming@sha256:f164c6c4e65586c05238428102617b2477852ebc3dbb92aec2e9acafca64342e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:0.7.0-linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:05ded20d349a0b42e121c31fb15a7826b41678cd72475ee8d7ef30e90dcdc282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3408359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8eafe26d51758993e4a64dc14e04b8682ad1a92824fb20b4dcbca70cecf9d0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 19 Dec 2017 18:59:56 GMT
COPY file:0eb5f0998e5218da31d53f7e49b5b4aae6e2b715282ddb388dc5236127def4df in /nats-streaming-server 
# Tue, 19 Dec 2017 18:59:56 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 18:59:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 19 Dec 2017 18:59:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:fc1eced9799119b6b7e9e9c0cb15273eb1d5cec6f9f4ba8599a8886b7ba979e9`  
		Last Modified: Tue, 19 Dec 2017 19:00:10 GMT  
		Size: 3.4 MB (3408359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.7.0-nanoserver`

```console
$ docker pull nats-streaming@sha256:98ec9d2f31f664ba9c81e57d4141592e33f44595c59a717c05b5f2e6844c65a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:0.7.0-nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:abc76051637063548d4bf5c8be4a2e892f33c98252f046d2fa61ce73e0074df4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.2 MB (402170705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5148af5deaa4178cc4b6362a73fe55525aa9671d0748b8ae6c1afb30592885b`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:29:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 19 Dec 2017 23:20:05 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:07 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:7ffdeb52d1d9a81b52afe50aed5444de9bbe059e24e2fd279c8e8709a61609cb`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64a258b789d666ed3af6a4a7e9ea6b02c98c3349921f5dfb6b1dd6e8a8624bc`  
		Last Modified: Tue, 19 Dec 2017 23:20:25 GMT  
		Size: 3.5 MB (3452086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d02d67a3a5f495cdec69fb1ed9f47e76f8de1a352b868c3e28ccaa6073874a`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf44c4ea453a9042e7caccb8a2c3fe2847441ceb5f1279b5a97833e9fa610c`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.7.0-windowsservercore`

```console
$ docker pull nats-streaming@sha256:91463c9cfd67684e886935bae6a64206a101786e52d4520fe9aa4437a3e16dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:0.7.0-windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:47a9d00148828292b085f132049c1956ea5dc7da71d79452956dab21152b73a5
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5365272237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279f9c4fc0d12eef257201b9fb8441f2e1bdfd4f9309631cdfff606d5d25c907`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:30:05 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:30:06 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 19 Dec 2017 23:20:12 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:14 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f003d10ec430dbd4cbb310f041110a49399acb839a58bbf90e01385955ddab9`  
		Last Modified: Tue, 12 Dec 2017 23:30:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03a62127fe41e7255d5308664da342a200a03ceef2fe76f64243ab91aaa5f5c`  
		Last Modified: Tue, 12 Dec 2017 23:30:31 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7b73cded8fb91d4caf949f454586b7fcb709333e30cfea2f8418d9a2f991cc`  
		Last Modified: Tue, 19 Dec 2017 23:20:35 GMT  
		Size: 3.5 MB (3452206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c454c6ca23eb882275164919a755215271df9c0117be3b04d4d4ab5b5eefa8`  
		Last Modified: Tue, 19 Dec 2017 23:20:34 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41cf6bb6274a36681336595542e0154621c0ced610b15bf6646312a68cd02e4`  
		Last Modified: Tue, 19 Dec 2017 23:20:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:2ab4b55f5d35e59d9c91c4f62a4dd0114db4d540c0c3c462b889720d070634b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:05ded20d349a0b42e121c31fb15a7826b41678cd72475ee8d7ef30e90dcdc282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3408359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8eafe26d51758993e4a64dc14e04b8682ad1a92824fb20b4dcbca70cecf9d0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 19 Dec 2017 18:59:56 GMT
COPY file:0eb5f0998e5218da31d53f7e49b5b4aae6e2b715282ddb388dc5236127def4df in /nats-streaming-server 
# Tue, 19 Dec 2017 18:59:56 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 18:59:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 19 Dec 2017 18:59:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:fc1eced9799119b6b7e9e9c0cb15273eb1d5cec6f9f4ba8599a8886b7ba979e9`  
		Last Modified: Tue, 19 Dec 2017 19:00:10 GMT  
		Size: 3.4 MB (3408359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:abc76051637063548d4bf5c8be4a2e892f33c98252f046d2fa61ce73e0074df4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.2 MB (402170705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5148af5deaa4178cc4b6362a73fe55525aa9671d0748b8ae6c1afb30592885b`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:29:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 19 Dec 2017 23:20:05 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:07 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:7ffdeb52d1d9a81b52afe50aed5444de9bbe059e24e2fd279c8e8709a61609cb`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64a258b789d666ed3af6a4a7e9ea6b02c98c3349921f5dfb6b1dd6e8a8624bc`  
		Last Modified: Tue, 19 Dec 2017 23:20:25 GMT  
		Size: 3.5 MB (3452086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d02d67a3a5f495cdec69fb1ed9f47e76f8de1a352b868c3e28ccaa6073874a`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf44c4ea453a9042e7caccb8a2c3fe2847441ceb5f1279b5a97833e9fa610c`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:f164c6c4e65586c05238428102617b2477852ebc3dbb92aec2e9acafca64342e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:05ded20d349a0b42e121c31fb15a7826b41678cd72475ee8d7ef30e90dcdc282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3408359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8eafe26d51758993e4a64dc14e04b8682ad1a92824fb20b4dcbca70cecf9d0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 19 Dec 2017 18:59:56 GMT
COPY file:0eb5f0998e5218da31d53f7e49b5b4aae6e2b715282ddb388dc5236127def4df in /nats-streaming-server 
# Tue, 19 Dec 2017 18:59:56 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 18:59:56 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 19 Dec 2017 18:59:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:fc1eced9799119b6b7e9e9c0cb15273eb1d5cec6f9f4ba8599a8886b7ba979e9`  
		Last Modified: Tue, 19 Dec 2017 19:00:10 GMT  
		Size: 3.4 MB (3408359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:98ec9d2f31f664ba9c81e57d4141592e33f44595c59a717c05b5f2e6844c65a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:abc76051637063548d4bf5c8be4a2e892f33c98252f046d2fa61ce73e0074df4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.2 MB (402170705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5148af5deaa4178cc4b6362a73fe55525aa9671d0748b8ae6c1afb30592885b`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:29:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 19 Dec 2017 23:20:05 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:07 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:7ffdeb52d1d9a81b52afe50aed5444de9bbe059e24e2fd279c8e8709a61609cb`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64a258b789d666ed3af6a4a7e9ea6b02c98c3349921f5dfb6b1dd6e8a8624bc`  
		Last Modified: Tue, 19 Dec 2017 23:20:25 GMT  
		Size: 3.5 MB (3452086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d02d67a3a5f495cdec69fb1ed9f47e76f8de1a352b868c3e28ccaa6073874a`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf44c4ea453a9042e7caccb8a2c3fe2847441ceb5f1279b5a97833e9fa610c`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:91463c9cfd67684e886935bae6a64206a101786e52d4520fe9aa4437a3e16dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:47a9d00148828292b085f132049c1956ea5dc7da71d79452956dab21152b73a5
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5365272237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279f9c4fc0d12eef257201b9fb8441f2e1bdfd4f9309631cdfff606d5d25c907`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:30:05 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:30:06 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 19 Dec 2017 23:20:12 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:14 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f003d10ec430dbd4cbb310f041110a49399acb839a58bbf90e01385955ddab9`  
		Last Modified: Tue, 12 Dec 2017 23:30:32 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03a62127fe41e7255d5308664da342a200a03ceef2fe76f64243ab91aaa5f5c`  
		Last Modified: Tue, 12 Dec 2017 23:30:31 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7b73cded8fb91d4caf949f454586b7fcb709333e30cfea2f8418d9a2f991cc`  
		Last Modified: Tue, 19 Dec 2017 23:20:35 GMT  
		Size: 3.5 MB (3452206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c454c6ca23eb882275164919a755215271df9c0117be3b04d4d4ab5b5eefa8`  
		Last Modified: Tue, 19 Dec 2017 23:20:34 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41cf6bb6274a36681336595542e0154621c0ced610b15bf6646312a68cd02e4`  
		Last Modified: Tue, 19 Dec 2017 23:20:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
