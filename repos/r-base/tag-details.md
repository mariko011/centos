<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.4.1`](#r-base341)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.4.1`

```console
$ docker pull r-base@sha256:9ab089342cc41360f082d2d8756c2a12db7babf842155990283cba0714cf525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:3.4.1` - linux; amd64

```console
$ docker pull r-base@sha256:98d8f93c8ff39cf160f7952ecbf13591420789229aee800ff93af1aca4487c70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488197935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab131e275e4c550608096ff923a6d0be4d828ef26c5c463a13284ae340befc5`
-	Default Command: `["R"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:54 GMT
ADD file:ba27ed06ab0b41115fcba163ee91adb3ef91d5198bc0a998aefab339543c6129 in / 
# Wed, 13 Sep 2017 08:41:54 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 16:46:52 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Wed, 13 Sep 2017 16:46:54 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 13 Sep 2017 16:47:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:47:12 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 13 Sep 2017 16:47:12 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 13 Sep 2017 16:47:12 GMT
ENV LANG=en_US.UTF-8
# Wed, 13 Sep 2017 16:47:13 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 13 Sep 2017 16:47:13 GMT
ENV R_BASE_VERSION=3.4.1
# Wed, 13 Sep 2017 16:49:22 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:49:22 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:45d1abe0cfa1c1a4b0ad226ed84808e071967e832f41514b00435d5a6c67d39d`  
		Last Modified: Mon, 11 Sep 2017 10:13:27 GMT  
		Size: 47.5 MB (47547409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa13897e3390656be0d64aa9d06329b240ab0f2b3bd45503aa6b13e976d6567`  
		Last Modified: Wed, 13 Sep 2017 16:49:37 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659455c278d07c79bf0551ffc26809aa9ad8570739829f8b7366f4bedb0caf59`  
		Last Modified: Wed, 13 Sep 2017 16:49:42 GMT  
		Size: 23.4 MB (23363494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdf9a91ef1ef587aa2e0996c90574612034d6d8e74ae980e02f606f81e98811`  
		Last Modified: Wed, 13 Sep 2017 16:49:37 GMT  
		Size: 425.9 KB (425869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844ff4896fb8913f25b983b65495e0ac0166a588ca2620313c709377f79214dc`  
		Last Modified: Wed, 13 Sep 2017 16:49:37 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f77f7b16926c11ceeb6eac136ba0747605a6781539800bf89d48d7092ae9cf`  
		Last Modified: Wed, 13 Sep 2017 16:50:41 GMT  
		Size: 416.9 MB (416859025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `r-base:latest`

```console
$ docker pull r-base@sha256:e8dd90bcf8ca6bff54d5d6868a490910c03bcabb2d07900eb6ca91c7d39e4d78
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488194665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc6692388913f184f38e243c7d092f640f574cc92c3a1dba14c3f2758cd17b1`
-	Default Command: `["R"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:00 GMT
ADD file:ba27ed06ab0b41115fcba163ee91adb3ef91d5198bc0a998aefab339543c6129 in / 
# Thu, 07 Sep 2017 23:08:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:41:05 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Fri, 08 Sep 2017 09:41:07 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Fri, 08 Sep 2017 09:41:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:41:22 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Fri, 08 Sep 2017 09:41:22 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 08 Sep 2017 09:41:23 GMT
ENV LANG=en_US.UTF-8
# Fri, 08 Sep 2017 09:41:23 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Fri, 08 Sep 2017 09:41:24 GMT
ENV R_BASE_VERSION=3.4.1
# Fri, 08 Sep 2017 09:43:17 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:19 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:630bb2ca021b44e516a3fd85cb6dbe309e0a59775fe926f3aee999c6d6cfd165`  
		Last Modified: Thu, 07 Sep 2017 23:22:00 GMT  
		Size: 47.5 MB (47547409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16c7c4fab69772400bef9bcebcd362cdb08d930124596bd182b28082fc11fa8`  
		Last Modified: Sat, 09 Sep 2017 01:33:46 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1442cf635d48d67a80e9f0e1347042cba1affcb6e3cc13471efad309cda7f526`  
		Last Modified: Sat, 09 Sep 2017 01:33:51 GMT  
		Size: 23.4 MB (23363438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda3e1e80363f34c335a86b606feb142e9ea55add248cc2961d64e08f443f8a6`  
		Last Modified: Sat, 09 Sep 2017 01:33:46 GMT  
		Size: 425.9 KB (425879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e027d634de4e416faefbf52b7cb925d2362c2eacfc43ef75a735dc2c1fe8c3`  
		Last Modified: Sat, 09 Sep 2017 01:33:46 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b3b67f58524ee6c13b9780ae44948ffed4ed256c8dc16385c1c7d52bd38350`  
		Last Modified: Sat, 09 Sep 2017 01:34:54 GMT  
		Size: 416.9 MB (416855832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
