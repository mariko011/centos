## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:9b7c3527800b089fbaf6443f054b8f555aecd40d47094de738ab47127951944f
```

-	Platforms:
	-	windows; amd64

### `python:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4673100048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acdc5e959bfb1e7f65a17ee0010a9ee0bed7537642140eeaaab65354adebc935`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 19 Dec 2016 19:34:16 GMT
ENV PYTHON_VERSION=3.6.0rc2
# Mon, 19 Dec 2016 19:34:19 GMT
ENV PYTHON_RELEASE=3.6.0
# Mon, 19 Dec 2016 19:34:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 19 Dec 2016 19:39:02 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Mon, 19 Dec 2016 19:39:05 GMT
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
	-	`sha256:9c4b099931c99353423c554bb0042c1a7e24d8bb4ad72101d4dfd94a05c69f89`  
		Last Modified: Mon, 19 Dec 2016 19:39:28 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a1c5a310d70a42faf6ff649b9f66af84b43c5de36bda1e48637429376eeb59`  
		Last Modified: Mon, 19 Dec 2016 19:39:28 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851abb36c87d36d2135cc8cebf57f02c42139360ee1949d6ef7a2bbbfaee9496`  
		Last Modified: Mon, 19 Dec 2016 19:39:28 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e644cd2d544ef19871c228d198276d5d02041192a9054b5a1e86cf66a63b18b4`  
		Last Modified: Mon, 19 Dec 2016 19:39:39 GMT  
		Size: 56.4 MB (56417502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a56bb2c132d188ee06d8821c5f6098673789354e87a9de2ad4f415d97b2ceb1`  
		Last Modified: Mon, 19 Dec 2016 19:39:29 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
