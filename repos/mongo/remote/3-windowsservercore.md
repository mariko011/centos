## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:1a6fdf263fe9339da39549c15bcc5eae418969648932aca3ac50d36ec6f6b4ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4673646874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9571bff8687c0abf0d90b0f3f2da056311fcf352826c21612006a64f49fbfb`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:24:50 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:24:52 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.11-signed.msi
# Mon, 21 Nov 2016 20:24:55 GMT
ENV MONGO_DOWNLOAD_SHA256=981059deb1a6a67f05857368b262061c41eb2495379847d50f73bc1c0e8c9059
# Mon, 21 Nov 2016 20:25:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:25:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:26:00 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:26:05 GMT
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
	-	`sha256:0e32dc2ea997675699ec499cc6a2365b59851ff084b24c352a071355e961c3df`  
		Last Modified: Mon, 21 Nov 2016 20:27:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc665330fb02acf894027a96bc2f38791aa345d0b039ed343dfe6f079f2f2c63`  
		Last Modified: Mon, 21 Nov 2016 20:27:44 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3d2ef713e1fc158c3921d74937a342f627b67c1113c55ab0f6144299cff4b6`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4b2a44b1121103e8b468bbba8a8731a888e9f0e436e5df89c993d3239b4745`  
		Last Modified: Mon, 21 Nov 2016 20:27:49 GMT  
		Size: 57.0 MB (56961950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612d431a130e3ebbae662f91f1498819b4639a4b6d0d6cff1735f02a21103486`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59e22d55289f70a0421801cb5c8a6717f860585f7afd98897a1a67e57f07a68`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6109630a7707f20ba2f1a1649308e72bcfc7b5200f96edd7052b0af21a221a9`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
