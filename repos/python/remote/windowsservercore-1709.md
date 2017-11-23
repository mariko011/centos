## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:b62347ed69e0dcd59da9aa691561f03c2306b167dfa168c45f2d6d6544839696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull python@sha256:1e826502b51f30321cb112a25c1dbcca01879932c307d4d29a88db5877d32e50
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2731765395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896df5253540105807b3235a25262a8d867387c2b37e9e9ff1ddcb443082813`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 03:14:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Nov 2017 17:29:15 GMT
ENV PYTHON_VERSION=3.6.3
# Thu, 23 Nov 2017 17:29:16 GMT
ENV PYTHON_RELEASE=3.6.3
# Thu, 23 Nov 2017 17:31:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:31:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Nov 2017 17:32:34 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 17:32:35 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:72ebc5a9d332e2a64fb3a65257e303100db8bcd07f6ccb562e3dc2e77f2cd3c5`  
		Last Modified: Thu, 23 Nov 2017 10:07:03 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4e52913db5bd4eafedb9f0f23a63f5286958c491322c72bf62caf9cc7c813b`  
		Last Modified: Thu, 23 Nov 2017 17:41:14 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af7cf21235083e57a3724aeac49f4d7077a4abd44adb145592e77bb516b4f4`  
		Last Modified: Thu, 23 Nov 2017 17:41:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6e0020b7b084cf7aab5053143aff9d2389a59f0d0701b88cb4848ef801c417`  
		Last Modified: Thu, 23 Nov 2017 17:41:23 GMT  
		Size: 46.9 MB (46857868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ac3768028451bf0bd1a8af17d740e00b5a663e90e141f2813d4b19537f7c6e`  
		Last Modified: Thu, 23 Nov 2017 17:41:10 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc080691a09547e7ec2edcd1f359c86b2ba4a792b3a7fe652f1c8a63f4ebd1c`  
		Last Modified: Thu, 23 Nov 2017 17:41:13 GMT  
		Size: 8.7 MB (8749864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e88cde4decd96ea40bee0a9ff0899ec827cd7a780e99c72f7f99250087a4b31`  
		Last Modified: Thu, 23 Nov 2017 17:41:10 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
