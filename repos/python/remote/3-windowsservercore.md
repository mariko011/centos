## `python:3-windowsservercore`

```console
$ docker pull python@sha256:f18c60bc38f0ee27e1e066b135f1c9d75d1e331df20967e1992fa13f24c26642
```

-	Platforms:
	-	windows; amd64

### `python:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4670614965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6585c54a0693776ebf3ec8ee1c2a226725c5128583faf6ac68e994a02e7dfb3e`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:44:30 GMT
ENV PYTHON_VERSION=3.5.2
# Tue, 15 Nov 2016 00:44:33 GMT
ENV PYTHON_RELEASE=3.5.2
# Thu, 17 Nov 2016 23:05:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 23:08:00 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 17 Nov 2016 23:08:05 GMT
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
	-	`sha256:93d3d20b02aa5a5335f72d8a7308364519865f2dab579364d1fc5e8b9427b6dc`  
		Last Modified: Tue, 15 Nov 2016 00:47:17 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b7340a4ad4ba92a916d84dabd8295075f3efa8a7f36fec31277058fca2a4eb`  
		Last Modified: Tue, 15 Nov 2016 00:47:16 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ccf7f6f943100328365a7b623d1749dcbd62b24956fa7c6de38a30c551ae8`  
		Last Modified: Thu, 17 Nov 2016 23:11:19 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c8687f01637e0e6f054c0bc9a506357de660640bc070d4e8d3a7eb80e635a9`  
		Last Modified: Thu, 17 Nov 2016 23:11:29 GMT  
		Size: 53.9 MB (53932439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e3a52108d38b41e21c17c2c8cec487153cab021f014fea58b9ff90c7d41ea1`  
		Last Modified: Thu, 17 Nov 2016 23:11:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
