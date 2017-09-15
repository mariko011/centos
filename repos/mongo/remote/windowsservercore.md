## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:8e911de194abbbdb4018191f5a98c93d051379c63bfda996d42f4b2d9642e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
