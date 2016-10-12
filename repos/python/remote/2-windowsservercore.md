## `python:2-windowsservercore`

```console
$ docker pull python@sha256:c9f6cf3bacd4af594e39aa22ea9cad4aad2128f1a030f5e58c8b0405bf86d246
```

-	Platforms:
	-	windows; amd64

### `python:2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4406775058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3580406141d3b15810c2abbeaec24b64f61a308dc12467c27773fe5a91af8205`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:26:42 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 12 Oct 2016 19:27:05 GMT
ENV PYTHON_RELEASE=2.7.12
# Wed, 12 Oct 2016 19:27:18 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 12 Oct 2016 19:34:34 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py $pipInstall; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:36:22 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 12 Oct 2016 19:36:32 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441135d084d47d571b6411a91fb9d16c02f94c27895e03c7f053effe8b75c47b`  
		Last Modified: Wed, 12 Oct 2016 19:49:16 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c44863fafaa282f22dd6a4f878b8052d4ca417bb2d98e214b2d77a6070593c4`  
		Last Modified: Wed, 12 Oct 2016 19:49:13 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e857e9df252ba9e9c907dbe3c860a98e8ff0708dc3cabd5c170c59b2ab8e325`  
		Last Modified: Wed, 12 Oct 2016 19:49:12 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f96c848e7c7bfe538d04617fa6d1b11bf9d41fd0b7ba9201d38bd70d4568ede`  
		Last Modified: Wed, 12 Oct 2016 19:50:08 GMT  
		Size: 48.0 MB (47974295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb43055f65e233fc6b2159b19661bc84f59041677aea991ec07424a643dde4`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 7.9 MB (7910342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ad3c0755d9a02feb98594b82ac7dec5ff162bafa6a5b0fbae7ce086c874122`  
		Last Modified: Wed, 12 Oct 2016 19:49:13 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
