## `python:2-windowsservercore`

```console
$ docker pull python@sha256:1e706ade30b8cb2eeffef606df1566ce334909f62d3f42e9d5e218880a4f6244
```

-	Platforms:
	-	windows; amd64

### `python:2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5268317664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fa06c559a06e37d2be68c620ca3889d59678720f7a06d3074d17279a0250e4`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:09:10 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 23:09:12 GMT
ENV PYTHON_RELEASE=2.7.13
# Wed, 22 Mar 2017 23:09:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:11:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py $pipInstall; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:11:52 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 23:11:56 GMT
CMD ["python"]
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
	-	`sha256:b38b81868546f40306c419273fd242e9d57181e4603e6a484c23373ffcd42353`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25f8d480b9d53ef54f1467341b03f0a168e3374cbd1f03ad41deed53f708a6`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be5612655320e6ffdefe20da7ec23549141ce2337b1a422d6478b6387de636`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd47f93fec56b5e4c1cd16f207639d2e66ff719857794a9e066bf9a63987887`  
		Last Modified: Thu, 23 Mar 2017 17:00:53 GMT  
		Size: 44.3 MB (44319250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c3a38f33e2a2a6196c7afb451391ab4709f4de4bb94d75e0e164da9cdc71b`  
		Last Modified: Thu, 23 Mar 2017 17:00:46 GMT  
		Size: 6.7 MB (6738604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba88d3b8b4844b9d3c0a1798022701ff48501284e55fca485ebec30daa843a38`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
