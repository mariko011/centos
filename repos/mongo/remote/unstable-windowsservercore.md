## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:534f6347bfae560aa8036f6fe430fbffb64079f8966df56f22fb9e3c6b252688
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667637922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dcfbf68f82a7da670689e9d7d7e7519fb8ae9e5d7e108b7ad89ce0cbcbf9d9`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:34:32 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 19:34:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 19:34:47 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:40:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:40:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:40:30 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:40:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19757ebf22102a8812eb128ef2736f5881d4df111997b60ef9b4c2cdbfb1a13`  
		Last Modified: Wed, 12 Oct 2016 19:51:44 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccb1ebe767ff47faffd98b614de913a0d93fa05e16823fab759a202a2cd033`  
		Last Modified: Wed, 12 Oct 2016 19:51:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac2394515b91479422aa719c6af15ec5c4937a21047362c38f99ed8d06cc107`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968fff81db8e11d3c4a5e5986c59af3e12c6b9ebfe72f89f8d4d67a007c75d89`  
		Last Modified: Wed, 12 Oct 2016 19:53:12 GMT  
		Size: 312.2 MB (312221714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257f71b3bc49e4d7defa6ac334ff73b52bba4229c945486e174b05852bbd198`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380f46dbca92825aa958f26a40a5dfef1470afe303672b80493a3b7faa21daa`  
		Last Modified: Wed, 12 Oct 2016 19:51:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63bb1fc58295c0c11d39d051f9b645dbe4af4153797267b6133b74dd3e2786b`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
