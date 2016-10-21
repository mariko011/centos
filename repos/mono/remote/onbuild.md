## `mono:onbuild`

```console
$ docker pull mono@sha256:d82c560b86e9cfb4707d303b8ae909f5c9eba64e152bea11713a1b69a6fecfbb
```

-	Platforms:
	-	linux; amd64

### `mono:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a0c23a9f56e1e244d48f9c6b6230b06dba546dd3e6abc7ab2ec834bb51fd45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:01:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:01:47 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:01:48 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:01:48 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92564c722dde7632d00a5f9ad3479f516cb95e18117d01aeba8572d7bfb990ab`  
		Last Modified: Fri, 21 Oct 2016 21:01:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
