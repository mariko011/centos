## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:51f05248a36eec1dd9429b11c0fca3b53ce9b06625cdfca8223fbbd9b11e17e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
