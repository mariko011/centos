## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:79a5d31ab7c132c70c58d42c2e94bf36432bb9b01a4be159720237c21d0236ba
```

-	Platforms:
	-	windows; amd64

### `python:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4672751830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c0297617b027ca8c0a1aae3d3fefe2b59e8916eac360ae6cebd0b7b5e770c9`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Nov 2016 23:08:08 GMT
ENV PYTHON_VERSION=3.6.0b3
# Thu, 17 Nov 2016 23:08:11 GMT
ENV PYTHON_RELEASE=3.6.0
# Thu, 17 Nov 2016 23:08:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 23:10:42 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 17 Nov 2016 23:10:45 GMT
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
	-	`sha256:7de0bebd88210a4e22b7cba4b1a520d3176eb37d75bd5e13da1ef76ce65f7535`  
		Last Modified: Thu, 17 Nov 2016 23:11:46 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd12893ea8fb43deb3d02e502f6cf8a404767bf86458f95a1cc0aeeb0c91bf7`  
		Last Modified: Thu, 17 Nov 2016 23:11:46 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c00302aa744c87d703fb40781d4de350941f67df85c2722b8a85ec6d02f880`  
		Last Modified: Thu, 17 Nov 2016 23:11:46 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdca961ea75653ee04820f57466d6149c3db92db69158936a014f2ce8c30429`  
		Last Modified: Thu, 17 Nov 2016 23:11:56 GMT  
		Size: 56.1 MB (56069311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb440e7e73e90ed1988060ffc0408dc9c0d1c7d4fc250669c25f47c031681a5`  
		Last Modified: Thu, 17 Nov 2016 23:11:46 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
