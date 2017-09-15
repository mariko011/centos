## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:1033743f8f7c0e02f276f87b4e13e0defae66c0281d77b64717849f6c513d7a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:f0357668b9f54b410725bf7e8ad8dc637e129148704cca36516a79a7aeedacf4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5401200191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41effbcae4b6890bf3c00fe1c75f12a7eed207b953b53308ced3afb2ea054e75`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:43:26 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 15 Sep 2017 16:43:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Fri, 15 Sep 2017 16:43:33 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Fri, 15 Sep 2017 16:44:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:44:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:44:59 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:45:02 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:2cfd03c5cfa9bec29ee87107535b3fa06a4e6f2910f6b9a6d1fbbb4ad7d2800d`  
		Last Modified: Fri, 15 Sep 2017 16:47:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660ca8731bc285eedce6e4c1aca917116cc2eeff32f2a697c98fcdc97c92bf3`  
		Last Modified: Fri, 15 Sep 2017 16:47:03 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e87123633634fc8910bb51c7c11e3bac50e0ba9d33f61545b84ec6c69a4cae`  
		Last Modified: Fri, 15 Sep 2017 16:46:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eae1a79ebddd320387c05708266ae1b232badbfb4fc091cd64e654bcc61fa8`  
		Last Modified: Fri, 15 Sep 2017 16:47:09 GMT  
		Size: 65.4 MB (65383199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d2dc5c94a8842c870201f5e9240ab0c88c34d251f62c059d11952e3911ccf1`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66094a714f7c60a9b14ef4184a10f5c44621b60a546377f98b40ff3440e74ac`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9876916b50b6d60d1f7bcca11749f2fb78f025d66ece2dc6650a5bfec13b021`  
		Last Modified: Fri, 15 Sep 2017 16:46:58 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
