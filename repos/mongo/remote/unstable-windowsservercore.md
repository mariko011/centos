## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:53a71f1933f45dd6b5328740f4779cafbce61a5da2fbec3c2a25edebcc5c2431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
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
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
