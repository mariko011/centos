## `mono:3-onbuild`

```console
$ docker pull mono@sha256:3db5971184cbc1db1dad0774b96f24ca21efff2ec557d490ef5aca6878f956e1
```

-	Platforms:
	-	linux; amd64

### `mono:3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125842563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e297fd84027dc01e50d3c8e6408c7572a995ab6a60b87c4b776308f8384000f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:07:11 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 28 Feb 2017 06:07:33 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:07:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 28 Feb 2017 06:10:44 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:10:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 28 Feb 2017 06:10:46 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 28 Feb 2017 06:10:46 GMT
WORKDIR /usr/src/app/source
# Tue, 28 Feb 2017 06:10:46 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 28 Feb 2017 06:10:47 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 28 Feb 2017 06:10:47 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 28 Feb 2017 06:10:48 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f0d7f91319b180baeb2a0f91a411f093e8f3308b7873ecb30dad82f542b874`  
		Last Modified: Wed, 01 Mar 2017 00:44:09 GMT  
		Size: 7.6 MB (7646900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13333fb4d978a689b0679e9269d705a64715ec8856eb6584a006aea589c8571`  
		Last Modified: Wed, 01 Mar 2017 00:44:06 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7394b12ea9ef55225c3cc26c100e9463c98318dee05171c2440764b95565d5`  
		Last Modified: Wed, 01 Mar 2017 00:47:01 GMT  
		Size: 80.9 MB (80880890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137a22a38bdf6c7dc8b9da6fa25e47a2ee6f736de2857b702a649f236c30b6f7`  
		Last Modified: Wed, 01 Mar 2017 00:48:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
