## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:b66d2e7a931a249beeb09439fd554a23f7169af7b66a21932d9a35478cb1df95
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5300504125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8485775c1b9f736e0e61d7ac9ed5538da35ba1a3d8daa22b489db7bdaef248c1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 13 Jul 2017 17:37:46 GMT
ENV MONGO_VERSION=3.5.10
# Thu, 13 Jul 2017 17:37:49 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.10-signed.msi
# Thu, 13 Jul 2017 17:37:51 GMT
ENV MONGO_DOWNLOAD_SHA256=c40ae817a47c2ca07c5f6aca2139a485af7d253e47a5a802eb085057ae6c86d5
# Thu, 13 Jul 2017 17:40:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 13 Jul 2017 17:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 13 Jul 2017 17:40:08 GMT
EXPOSE 27017/tcp
# Thu, 13 Jul 2017 17:40:13 GMT
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
	-	`sha256:be5e0d91ab2c7e2b94e154dc6e01ae406d6eee53c143bfee41761e3d9a19b049`  
		Last Modified: Thu, 13 Jul 2017 17:40:53 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1837c75d4de8d99abd099ae9fdcab833cea0f1121bd378d36fe5a0f3e29408ba`  
		Last Modified: Thu, 13 Jul 2017 17:40:51 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de627065e0823590c4ccad762a991abfa452862dd74fba7455eb0672ca23a1`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d84113d04222f851c929c6831a3b4721d7026b1c2045caaec55b90786b4b7d`  
		Last Modified: Thu, 13 Jul 2017 17:40:57 GMT  
		Size: 68.6 MB (68607656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c225975a9033796be1719b72a5032619404be34f44724b02e859821bc8184a`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0594821d10cd1214c9b4e317ad8931707d3a86ee2645f4df201944829066f`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9158f59419379605ad03f178d8eaa829caf8e36aff8a44403b8f4961090cafdf`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
