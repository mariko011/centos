## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:4e698120fe7fd1a1b1024c33dd69d95ba4d87c824567e76c67003d0c1e933dee
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295358253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0e0a460e6b77853bf9942e2e9b970f9d0282fa344b1952ca2c6a937983cc8c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:40:10 GMT
ENV MONGO_VERSION=3.5.7
# Tue, 23 May 2017 22:40:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.7-signed.msi
# Tue, 23 May 2017 22:40:17 GMT
ENV MONGO_DOWNLOAD_SHA256=667106ca906321e72fc62b0cdb8283c4d9c59812c5cba1e990b21803e63f13ac
# Tue, 23 May 2017 22:41:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:41:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:41:30 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:41:33 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10aed785eaa7ab2dca27913a82844bb1ba12c9ea3afb2cedf07eee8afe7b516`  
		Last Modified: Tue, 23 May 2017 22:42:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ad82ec603c9bf4126eb7c95a90658eb32d07bf9f4766b179699e20699ebff3`  
		Last Modified: Tue, 23 May 2017 22:42:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee03d736e00d3f418f76c5c303d54133e3ce9a34190061ab66d391814eadfde`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a9ab8ac6e4839ef509bdf7ab65630dc7e6713b4cc5165240f43ce48550b1a3`  
		Last Modified: Tue, 23 May 2017 22:42:28 GMT  
		Size: 63.5 MB (63461799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6c9d9c3428094c94acae48fa4817f4d6afb0d8bb677cf0d3255c29b95112fd`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce8a4871048e1974dadae2f3f1d68104e1432743570cc5de5d58415ef90d343`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d5aecc7f190a7ee3733c53b5b1b8276d407e11e9778ed17ca56030a7b0b485`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
