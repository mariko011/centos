## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:d541f6e57d4b61e373bd8c075cc53051f80a9b665fa0e4803cf1b53697fd45f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:e3e04867e49082d886de8d80cd720269d18d255d300b130dacf496a086bad460
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420158004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a46ad64dfe086054d548efa9fdb4b7f64e784fef669cbd1cd8f8505f24c2133`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:50:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 15 Nov 2017 02:50:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 15 Nov 2017 02:50:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 15 Nov 2017 02:59:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:59:24 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:59:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5b8fb4ccc4797cb8251fb992cdf52c68069e00220e3dea756e1646bfe8b129`  
		Last Modified: Wed, 15 Nov 2017 03:03:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab6ae1adec590a6b58454e46b57f2c74f3ba56af46f8cbc6b6dda80269a573e`  
		Last Modified: Wed, 15 Nov 2017 03:03:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06350f97d3f86b8ff94bce9c71c9fd7714c93e7d8380500d9571dfc2434a291c`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197ffb7b254a8e7fd80e3da6b13c2d9eff9ac1617e67d16e085f3a0b75dd9dae`  
		Last Modified: Wed, 15 Nov 2017 03:03:27 GMT  
		Size: 63.2 MB (63170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f2fab9ee2f27b24631dc6b794c8b7f73f8c773bdfc422bbd723425242d40a0`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4ef7f10df9df3533330f265c83ddeee30744a787837ce69fe1f833f0fabae`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401a3eb64dfa0989a94160821b5379cda74a9221b8d658a113e5f4b7cad05fe`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
