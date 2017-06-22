## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:ba285117a08e6c189cd98a6d19e585d10eb4004405ed313c24b124618294756f
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5301470343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3ad91ef5f410c2ee64ad8a1bea0accef0b055efae75b013a00e186f0ed99e8`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 22 Jun 2017 18:16:13 GMT
ENV MONGO_VERSION=3.5.9
# Thu, 22 Jun 2017 18:16:16 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.9-signed.msi
# Thu, 22 Jun 2017 18:16:19 GMT
ENV MONGO_DOWNLOAD_SHA256=df474b0bfef73a252c029c738d5125eb24be80cc454844384247f0d796e860f4
# Thu, 22 Jun 2017 18:17:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 22 Jun 2017 18:18:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 22 Jun 2017 18:18:06 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 18:18:10 GMT
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
	-	`sha256:107955967c68313a41408a73b640b2a805ddbd0686d5313e835128f6796fd58d`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0244551af03ed49a43804c5e0ce26a673d1069373e289273120a9e15ad44d519`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c73ea76dcc38fb3ad8e2d5676d2ff67af89182b48daa95a4bcac997cd62f040`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46312a3e5066024d6e01a15ce924ea62c7f0871a77d156995cf4e666dc5b5e43`  
		Last Modified: Thu, 22 Jun 2017 18:18:56 GMT  
		Size: 69.6 MB (69573883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6e1499ae0f9cc4fd93849d2cb53ded3746a8c4e02281ddef4d2db2f00f6e5`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd019eadcd3fe2d18e3196ac35bf556bda921fbcc257ee62d0985adf91c9f5a4`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08bb32c7451f78297ea86f395b872d416524b4e822877b3ac89a4e630cbf177`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
