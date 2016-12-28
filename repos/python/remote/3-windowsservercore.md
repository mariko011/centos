## `python:3-windowsservercore`

```console
$ docker pull python@sha256:0fe73977983b6da30384bf98de478ebd66a4849d5a1de1f1abe8cf9b84b1f8b7
```

-	Platforms:
	-	windows; amd64

### `python:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4672965865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ef7014fc403d4fd38ed64717f57a054a0d6f5d74b27e84c7e01ec2b618ff3d`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 28 Dec 2016 23:06:29 GMT
ENV PYTHON_VERSION=3.6.0
# Wed, 28 Dec 2016 23:06:31 GMT
ENV PYTHON_RELEASE=3.6.0
# Wed, 28 Dec 2016 23:06:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 28 Dec 2016 23:09:13 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 28 Dec 2016 23:09:16 GMT
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
	-	`sha256:e1d4750238de4b29fa4cf1b73c26f67c22ae78f68725cc24069dc902f4a09c8a`  
		Last Modified: Wed, 28 Dec 2016 23:14:21 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a719e9ccc2c89ba3429297cc8f6100e5348b22cbfc435ca42595e1d926314e`  
		Last Modified: Wed, 28 Dec 2016 23:14:21 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be794793a81fe28a8b9fa72c26d03431eb108c271f074463243f5cca18e32ed`  
		Last Modified: Wed, 28 Dec 2016 23:14:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b9b24bb4fdc14d78deb2142079dce6d804ce47b376297e36828dbb160ae677`  
		Last Modified: Wed, 28 Dec 2016 23:14:33 GMT  
		Size: 56.3 MB (56283323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071d00e2ecfcd3f24a91ff3fdd25514ee2a87c10e45e6e526abf54b25ecdf688`  
		Last Modified: Wed, 28 Dec 2016 23:14:21 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
