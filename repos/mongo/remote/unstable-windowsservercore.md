## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:a2edfd70d3c075b9e05a7801b704b9f7e9b1a435cde8db0bf1b3c09a9cefbfc6
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683214665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f23925fb29dc4fc2fe175ab2cf1484a205c443fe6c04aba659a0f08559cd12`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:36:21 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 15 Nov 2016 00:36:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Tue, 15 Nov 2016 00:36:29 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Tue, 15 Nov 2016 00:37:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:37:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 15 Nov 2016 00:37:51 GMT
EXPOSE 27017/tcp
# Tue, 15 Nov 2016 00:37:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1800a34094d7e01314e6de429cec6a0bd702dc065449aafbedd688031c44a2`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85a8f6aa5cb5844c29a8295541102c5fcf3c45ecb564ea828fd00326578f613`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4340cb6c53cb6ade50cd523cd2b2b838c777a1577e603aa90f7dd328242ad375`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257ff9a4c4ee00b3485f7843aa7053c973646c0d2fd17aef310a4579b69d5547`  
		Last Modified: Tue, 15 Nov 2016 00:38:15 GMT  
		Size: 66.5 MB (66529692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6289189cdb5bac746fd7fd87c319fa6c93df398be6e11c46603e6dabb53a06`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0629f4acb35a826e158f173c7af16a61c1869781f6a6a6ba15e7d63ee7abe31`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f44c6128038b8b0c1791834505eb6a9d01ef7c187911c322813624d3f921ee`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
