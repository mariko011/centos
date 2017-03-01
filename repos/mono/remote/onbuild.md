## `mono:onbuild`

```console
$ docker pull mono@sha256:d0570d6d44b04c8ef9237982aa55fcffc6771d0baa8bd8a0f9d0ac91008132ab
```

-	Platforms:
	-	linux; amd64

### `mono:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144714255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50a8877825eac97d93d39dce585acb6745c2ebf4435e34e90d094244627a2b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:07:11 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 01 Mar 2017 00:02:24 GMT
ENV MONO_VERSION=4.8.0.495
# Wed, 01 Mar 2017 00:02:42 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 00:02:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 01 Mar 2017 00:03:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 01 Mar 2017 00:03:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 01 Mar 2017 00:03:38 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 01 Mar 2017 00:03:38 GMT
WORKDIR /usr/src/app/source
# Wed, 01 Mar 2017 00:03:39 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 01 Mar 2017 00:03:39 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 01 Mar 2017 00:03:40 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 01 Mar 2017 00:03:40 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777ebdf2d7aadb78d84e4aabf39423484a3a38eb188b884b8348a749da1d3b44`  
		Last Modified: Wed, 01 Mar 2017 01:27:08 GMT  
		Size: 7.6 MB (7647091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aabe1cecc145b82214f1f30675d9d9c3a028bf78e2f99da2f9a58f585ce56c`  
		Last Modified: Wed, 01 Mar 2017 01:27:06 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba4ce415e9e3a2e85f9bf9b4b77a9c45ecab24d0c8c8e97ec5412b5576f37e8`  
		Last Modified: Wed, 01 Mar 2017 01:27:48 GMT  
		Size: 99.8 MB (99752387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1ed47e66d653f094a99d8f08a8e7fb11c18dd5521e8b71ae176eba6da740d6`  
		Last Modified: Wed, 01 Mar 2017 01:29:19 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
