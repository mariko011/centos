<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `r-base`

-	[`r-base:3.4.1`](#r-base341)
-	[`r-base:latest`](#r-baselatest)

## `r-base:3.4.1`

```console
$ docker pull r-base@sha256:e8dd90bcf8ca6bff54d5d6868a490910c03bcabb2d07900eb6ca91c7d39e4d78
```

-	Platforms:
	-	linux; amd64

### `r-base:3.4.1` - linux; amd64

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

## `r-base:latest`

```console
$ docker pull r-base@sha256:a600f66f3b4bb5d9025e7bb50966e18799cfa715a05d5cb605be4dc486917d55
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271376984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a943b96c51047079e082cde4754425f50b1ffdab5a3f6a8a05c0fdc7e7a026`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:14 GMT
ADD file:aab99dff17d67d81a49f55d77fade65f4a719b49b5614c5d1430298f4336be6d in / 
# Mon, 24 Jul 2017 16:53:15 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:05:18 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Wed, 26 Jul 2017 09:05:20 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Wed, 26 Jul 2017 09:05:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:05:36 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Wed, 26 Jul 2017 09:05:36 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 26 Jul 2017 09:05:36 GMT
ENV LANG=en_US.UTF-8
# Wed, 26 Jul 2017 09:05:37 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Wed, 26 Jul 2017 09:05:37 GMT
ENV R_BASE_VERSION=3.4.1
# Wed, 26 Jul 2017 09:07:07 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:07:07 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:dcc248e321fc0450bb176a499d598ea0e00a061a4866cda57b4c823cc593a7e0`  
		Last Modified: Mon, 24 Jul 2017 17:00:21 GMT  
		Size: 48.0 MB (48020211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d9ec50e5ecee68ae1b5729a9c5bb0db15f330649b83c62dfeb951ca8bc530f`  
		Last Modified: Wed, 26 Jul 2017 09:07:14 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71479b4d2a334db30ff048c0897c1481b9bbadc5a1b36ee2475ba71e074cc6d0`  
		Last Modified: Wed, 26 Jul 2017 09:07:17 GMT  
		Size: 23.4 MB (23388802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea54da6eae47cfe8ed5f8181b133c5043f348c4d5c9e60585557d37cf940539`  
		Last Modified: Wed, 26 Jul 2017 09:07:14 GMT  
		Size: 425.9 KB (425873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe04606aa481c3e38715f4acb977b2f585faedb55ab5944be99cc6b220a00b87`  
		Last Modified: Wed, 26 Jul 2017 09:07:13 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eced747181a0ef1a9f10770d4fc5e86c36d2e2b23a888b4c842031363bc1665e`  
		Last Modified: Wed, 26 Jul 2017 09:07:39 GMT  
		Size: 199.5 MB (199539984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
