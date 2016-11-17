## `python:2-windowsservercore`

```console
$ docker pull python@sha256:aa9e1a7c6cb164837599b8db57d0e06516533bfc10accae3a4cefadd1ba83c00
```

-	Platforms:
	-	windows; amd64

### `python:2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4675710321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a372e15e17bffc3ef8cb546e9a8675d46faeecbce8efb60627ada997f10f9f`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:41:17 GMT
ENV PYTHON_VERSION=2.7.12
# Tue, 15 Nov 2016 00:41:21 GMT
ENV PYTHON_RELEASE=2.7.12
# Thu, 17 Nov 2016 23:01:23 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 23:04:40 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py $pipInstall; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 17 Nov 2016 23:05:09 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 17 Nov 2016 23:05:12 GMT
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
	-	`sha256:26c05bd41eb02c289507dbda413c65dc16db5e1e7ec9c9de2181c2487e314604`  
		Last Modified: Tue, 15 Nov 2016 00:43:59 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e90edd3994760244edd8dfc13d4c2c1e9bdecca37e66202aae581f1635338d`  
		Last Modified: Tue, 15 Nov 2016 00:43:55 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f573244c21dcfcfd1bef8e37e5f036456d035fcbe35c8e554295e01e53bb51`  
		Last Modified: Thu, 17 Nov 2016 23:10:53 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dce746df10a8d343625f7e20997312ee6d09a065def0f139a59166ba2b4251`  
		Last Modified: Thu, 17 Nov 2016 23:11:05 GMT  
		Size: 48.2 MB (48161431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235aebe15e2e66259044bf519cacc1ac06e07a40a83b0aaa419dff9c0a68071c`  
		Last Modified: Thu, 17 Nov 2016 23:10:57 GMT  
		Size: 10.9 MB (10866353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bc0f60a307ab20a2291250b7548daeeac53bb4ce87ce3eac41b1907bdae89`  
		Last Modified: Thu, 17 Nov 2016 23:10:52 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
