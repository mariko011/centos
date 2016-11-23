## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:e96ef63cb73449910829d58ad23183e1b8721c0911580b914ac850efbcd21708
```

-	Platforms:
	-	windows; amd64

### `python:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4673004011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40722e107daec0818b58c1e1b4cae19b88bef06dfae11d586e19ce8908285ff9`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 23 Nov 2016 21:00:37 GMT
ENV PYTHON_VERSION=3.6.0b4
# Wed, 23 Nov 2016 21:00:40 GMT
ENV PYTHON_RELEASE=3.6.0
# Wed, 23 Nov 2016 21:00:43 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 23 Nov 2016 21:03:12 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 23 Nov 2016 21:03:15 GMT
CMD ["python"]
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
	-	`sha256:f71aea2fb34ee637aa4292133b29a0babfc35a30f5565b4c1dd755cbae259554`  
		Last Modified: Wed, 23 Nov 2016 21:03:36 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a9f0becc68f0d8db473748448427b8d7630a7e9825a1fcb616b57f25b01633`  
		Last Modified: Wed, 23 Nov 2016 21:03:37 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3ed5ee1ed8cabec3bebe6d2ceacc7a88c4d2d68a5c781d9ee76dd56787f40c`  
		Last Modified: Wed, 23 Nov 2016 21:03:36 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd4be169ea2192f52dccf008775279a7f50b9a7f78c56795fedd04f5f52e1fc`  
		Last Modified: Wed, 23 Nov 2016 21:03:48 GMT  
		Size: 56.3 MB (56321463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e57d520266a2f0de1c37ea39a04c604220b39e73913f3a3071b3d3a7c23b30e`  
		Last Modified: Wed, 23 Nov 2016 21:03:36 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
