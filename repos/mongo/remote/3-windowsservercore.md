## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:90d80c5fdc534118c476edf158ce1d814325b2e6300a8573d7e1c2c2a8ad8b4a
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5050080913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce615778458a1fc587ba51e920671cbacf7368a70d6104d549d8988fb1790070`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:38:07 GMT
ENV MONGO_VERSION=3.4.1
# Wed, 01 Feb 2017 19:38:11 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Wed, 01 Feb 2017 19:38:14 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Wed, 01 Feb 2017 19:39:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:39:20 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:39:25 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:39:29 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb40b5653725df89a50de47b1181f20f363d95e5012e4f8ee7033fdcba94db`  
		Last Modified: Wed, 01 Feb 2017 19:40:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd302c5a9befab7bc71e4a6f5ea68e115f2f90b46a67120b83d88f32655ca2d8`  
		Last Modified: Wed, 01 Feb 2017 19:40:38 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7727ae324d45b653fe1327e9664eccae3f308ba105278c5e36f5af820eaae3c1`  
		Last Modified: Wed, 01 Feb 2017 19:40:32 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc790f6d18c6514292b9f5d1ff0dfc70a77273a4e5531ac89077f49748114b7`  
		Last Modified: Wed, 01 Feb 2017 19:40:45 GMT  
		Size: 66.9 MB (66941388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed22695a264e27b9ca99ea637a535f7593e8a18b59505e9e45450c2008e2fbc`  
		Last Modified: Wed, 01 Feb 2017 19:40:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0e773c199fee9064b9481355c51d6304640a9d95f2da5e2ec7beef22c36c47`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadec33a31905ad4a88806b0c6cda7cb4eb6f749494b91281a8438c9aab48e87`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
