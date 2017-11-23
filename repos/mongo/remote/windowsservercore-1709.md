## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:e12d3b76f09b858cc3124b49f03656356a96bccecdf94b3a0e7fe47a4ac53ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:17bfb9f25b2623da4d8dd779c471768195bed3068f634a6e632cd45ab77468d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2738856321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c424ddd6a0a1ef5d65f8fe382c94d2e35fa14048cf1d64692ddcad4c72e98f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:53:55 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 23 Nov 2017 02:53:56 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Thu, 23 Nov 2017 02:53:57 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Thu, 23 Nov 2017 02:55:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:56:00 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:56:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0157483ff8aa5c4b0b01d6612f31a30fd6be0a1dac1a4eb930da512902354`  
		Last Modified: Thu, 23 Nov 2017 03:00:01 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a34e37e080f8fef322903befa65cd7f8b5e2c211da3da7ef90597faaedea213`  
		Last Modified: Thu, 23 Nov 2017 03:00:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473602cf63f0e30e831a96e695e39d72c6049cecfe53bc55b9e22b5afc349b8d`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee910e0187099e2bc6a1495717324ceaa6d17c5d8cf94c1a620855b5b7866777`  
		Last Modified: Thu, 23 Nov 2017 03:00:17 GMT  
		Size: 62.7 MB (62696241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb448e4a417ea38b944807864e26381ef102a4be7c2bd58cb6599391f003d74`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ac86dc9b2b016fae673d2d732dde1f2b6bcd3e5e9dd9bb73a206d595f32f2`  
		Last Modified: Thu, 23 Nov 2017 02:59:59 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a53c25e23583f7e1db8961dde92ebe080dcc68de9d2ddfd81133a52b346516`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
