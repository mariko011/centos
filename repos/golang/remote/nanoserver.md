## `golang:nanoserver`

```console
$ docker pull golang@sha256:3ca553edca226a1f0465ef41b020ee849423a955dd06bc1eb9e15ae563fb8f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.14393.1944; amd64

### `golang:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull golang@sha256:3695aadf3c2f2e3f3a64ee989cba25e8c05ac9428f06155c59e5c00e90acee05
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.2 MB (600221738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73e7c6ae265100d3b41be802a8f1283246ce4d9524e72f178f769fab32d366e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 01:18:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 01:18:45 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 01:19:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 14 Dec 2017 01:19:52 GMT
ENV GOLANG_VERSION=1.10beta1
# Thu, 14 Dec 2017 01:27:23 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ff2789b7baf33f87111d30bac81ac1ae19dcc16bdd75553f9b5aceda14733a40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:27:25 GMT
WORKDIR C:\gopath
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
	-	`sha256:a60e8bffbe40bfe08d89397474add53072023b6b9ed318db036dd0b8d0c5ff16`  
		Last Modified: Thu, 14 Dec 2017 02:06:00 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790dd7636ad5f40635dc2d101ad76a613a9d87e453bd33e130610afc3dc4ad74`  
		Last Modified: Thu, 14 Dec 2017 02:05:56 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46622a39a737717895806efee92e02f8dab84f6724681f8d91f8500906684fe`  
		Last Modified: Thu, 14 Dec 2017 02:05:57 GMT  
		Size: 837.9 KB (837859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a415227071c7864b3f65a9a2f237bde022e14c76e45c23bfd16e8c2bc8827bc`  
		Last Modified: Thu, 14 Dec 2017 02:05:56 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9cf36cb83ee72282a8a6a376460e454f26111cd265ab462b28f121eaab5e59`  
		Last Modified: Thu, 14 Dec 2017 02:08:51 GMT  
		Size: 200.7 MB (200665285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1853230174425ba6ffa244d9fac4c76c7feeb4e559cbaeb08c8b84f9b20e7a5`  
		Last Modified: Thu, 14 Dec 2017 02:05:56 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull golang@sha256:508f474e3e7bd48ec079fcb3dda5c872493c480ef7d7524fd22ef3c18f410f06
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **505.8 MB (505801828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2cbf503109ced366497e40af0c41d5d7f57969872540b1d36f502c295a8105`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 01:18:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 01:18:45 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 01:19:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 14 Dec 2017 01:39:30 GMT
ENV GOLANG_VERSION=1.9.2
# Thu, 14 Dec 2017 01:43:49 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '682ec3626a9c45b657c2456e35cadad119057408d37f334c6c24d88389c2164c'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:43:51 GMT
WORKDIR C:\gopath
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
	-	`sha256:a60e8bffbe40bfe08d89397474add53072023b6b9ed318db036dd0b8d0c5ff16`  
		Last Modified: Thu, 14 Dec 2017 02:06:00 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790dd7636ad5f40635dc2d101ad76a613a9d87e453bd33e130610afc3dc4ad74`  
		Last Modified: Thu, 14 Dec 2017 02:05:56 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46622a39a737717895806efee92e02f8dab84f6724681f8d91f8500906684fe`  
		Last Modified: Thu, 14 Dec 2017 02:05:57 GMT  
		Size: 837.9 KB (837859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa4594787403cd0d314421d441c12ac5469acda210b701e027a243b462e602`  
		Last Modified: Thu, 14 Dec 2017 02:11:08 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819920a60a156a7f681257a1a8cfbd974e9b57e81c232ee7ec6bf0d917a29ce`  
		Last Modified: Thu, 14 Dec 2017 02:11:31 GMT  
		Size: 106.2 MB (106245364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041ab7e30d16387dfd85a4dd9e8a8831edafa11421cc924a8c8a0955061c5c58`  
		Last Modified: Thu, 14 Dec 2017 02:11:10 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull golang@sha256:33a9eec74fc0e59ac87f6f399d433d5bb69b9bc5d80b3699b10e5fde8a6f53ca
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.7 MB (500670033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d223a941de4124ba3fe3607ac6dc17777f7c0a6cb85c74fefc2457585521b99e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Thu, 14 Dec 2017 01:18:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 14 Dec 2017 01:18:45 GMT
ENV GOPATH=C:\gopath
# Thu, 14 Dec 2017 01:19:51 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 14 Dec 2017 01:54:10 GMT
ENV GOLANG_VERSION=1.8.5
# Thu, 14 Dec 2017 01:58:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '137827cabff27cc36cbe13018f629a6418c2a6af85adde1b1bfb8d000c9fc1ae'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 14 Dec 2017 01:58:24 GMT
WORKDIR C:\gopath
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
	-	`sha256:a60e8bffbe40bfe08d89397474add53072023b6b9ed318db036dd0b8d0c5ff16`  
		Last Modified: Thu, 14 Dec 2017 02:06:00 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790dd7636ad5f40635dc2d101ad76a613a9d87e453bd33e130610afc3dc4ad74`  
		Last Modified: Thu, 14 Dec 2017 02:05:56 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46622a39a737717895806efee92e02f8dab84f6724681f8d91f8500906684fe`  
		Last Modified: Thu, 14 Dec 2017 02:05:57 GMT  
		Size: 837.9 KB (837859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f326687d1fb561a2f7ece39b1395b1d39b8d15d8c036be1a30e74a7c334e075a`  
		Last Modified: Thu, 14 Dec 2017 02:12:56 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c528f55c8670e7c25de3cbf6fb1b620796c9fb13c47a708622c1c2fa8151fc7`  
		Last Modified: Thu, 14 Dec 2017 02:13:17 GMT  
		Size: 101.1 MB (101113558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48aad1ebccdd727a1571b52e5f14958d0d9652dd4ae50be4ff527f89683a845f`  
		Last Modified: Thu, 14 Dec 2017 02:12:55 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
