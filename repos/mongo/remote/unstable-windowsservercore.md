## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:67bb83012874594efa031a935a6e6f0e2c9051ad7eb13eccc866e9144b9226a9
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280355611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2bd609bc989ff99bb3d6b69f045c676c30bb4276410b956ff30c5afe69f0ce`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 03 Apr 2017 21:31:18 GMT
ENV MONGO_VERSION=3.5.5
# Mon, 03 Apr 2017 21:31:21 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.5-signed.msi
# Mon, 03 Apr 2017 21:31:23 GMT
ENV MONGO_DOWNLOAD_SHA256=d246a825f689ed1f690159262e731add47bb5a72993124bc6d2ec20c94d70e4d
# Mon, 03 Apr 2017 21:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 03 Apr 2017 21:32:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 03 Apr 2017 21:32:32 GMT
EXPOSE 27017/tcp
# Mon, 03 Apr 2017 21:32:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535946ef8cc844b8aea17f426d69c66ecb386d19c2c1fd71f4f78d81b1ed385`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3827928430cec9e30dfaf89876f3c06373e410bf96e608e6408d1ef0cfb3f075`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d78ae5780ee1c63e35f3015e0722069745d49200c1a9554cc348f359ca10b1`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a849bc9a80918095d9d943b280b29948ac53a22e8b2e8c98eb4165be63dc64`  
		Last Modified: Mon, 03 Apr 2017 21:33:19 GMT  
		Size: 63.1 MB (63093345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb69973582e43e31d15c47d27a321355d07686654c0ed49be9aa68ee77972a`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469cd1a3cb96e6a1171ee1f086e9921734a0d11bdefed9f1e9b91b8cf6160c8`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744981ed53e88ffd307164dc4c060f7133b4705474a619d210b780baa41495a7`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
