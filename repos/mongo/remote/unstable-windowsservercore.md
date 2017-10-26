## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:a1399c6373168fda568969a3d82872c2d4aa0e382a4a4113ce2dd5d2b4d9ffe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
