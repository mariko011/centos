## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:a772f60bd094f84c9a4f0edb64afe3c9355bbf967e1d3ecb3eee116fd4c36d02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:3d26fdb2abfe0e53f3ebca6409a11b188e9e18f16e94871b92526786c32bd10a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413665968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1eab5ab730d47ac62efa275a7b42e817fb2c289440cab90740a510e6815ca7`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 27 Oct 2017 01:37:35 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 27 Oct 2017 01:37:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Fri, 27 Oct 2017 01:37:41 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Fri, 27 Oct 2017 01:40:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 27 Oct 2017 01:40:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 27 Oct 2017 01:40:12 GMT
EXPOSE 27017/tcp
# Fri, 27 Oct 2017 01:40:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363a0207415d2c2404433d9cdc8ea48f24ca57d637a659805440ab4e13a400bf`  
		Last Modified: Fri, 27 Oct 2017 01:40:41 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cb19607767249b786241380e00ef902ee85a5d0e900769e57fad8006ce7fff`  
		Last Modified: Fri, 27 Oct 2017 01:40:40 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d31e73275940245c1c1a54c4c6ea840a259567390ddf50658ef10a39f19ad0a`  
		Last Modified: Fri, 27 Oct 2017 01:40:32 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188bc1450fe1781136708eae71677c9355f1eac59f241dc04f8c48b65656c704`  
		Last Modified: Fri, 27 Oct 2017 01:40:44 GMT  
		Size: 63.2 MB (63150261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548451c9e16905e17b062ca10a8b53b73f1713d96cfd0ad659fab1682cc6c96`  
		Last Modified: Fri, 27 Oct 2017 01:40:32 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f570c18e9e2ef1b13c04985e00efd5e25bc3a6245f65e637e26340a4dad6e7`  
		Last Modified: Fri, 27 Oct 2017 01:40:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a30245e987c31832fe7dd0e0005d88d23342f2b455720ff9706286c4b0ffa9`  
		Last Modified: Fri, 27 Oct 2017 01:40:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
