## `r-base:latest`

```console
$ docker pull r-base@sha256:287d8b76535622e3693ea799f2e8fc31f7845111954b14ac1ef406deb4e811b9
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263522292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba1baf9d8bb9fa7eb58c43479dd1c45cdadeee0083058f3dcd0263bf083ea6b`
-	Default Command: `["R"]`

```dockerfile
# Mon, 17 Oct 2016 21:27:26 GMT
ADD file:96c162b6d5ed7f4808f1aa97c9b9855b82877319c195b916ed76a2c7561d7bf2 in / 
# Mon, 17 Oct 2016 21:27:27 GMT
CMD ["/bin/bash"]
# Tue, 18 Oct 2016 00:03:14 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Tue, 18 Oct 2016 00:03:14 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 18 Oct 2016 00:03:32 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 00:03:33 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 18 Oct 2016 00:03:34 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Oct 2016 00:03:34 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Oct 2016 00:03:35 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 18 Oct 2016 00:03:35 GMT
ENV R_BASE_VERSION=3.3.1
# Tue, 18 Oct 2016 00:08:24 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 00:08:24 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:4f042f9a98b8dabee4877b6b106f96da1c59662dac49e969ac121cb1b6db2b30`  
		Last Modified: Mon, 17 Oct 2016 21:27:46 GMT  
		Size: 43.2 MB (43208351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22ce88574be75fe06e8891840f44ffbcc4b2c0f9eaa5bd2f606fde47bc71dc1`  
		Last Modified: Tue, 18 Oct 2016 00:08:33 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da422942eb621c7cc3625cee3df0f95ba128949c49c815a4e3150152344613d1`  
		Last Modified: Tue, 18 Oct 2016 00:08:39 GMT  
		Size: 25.1 MB (25120984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fdc9a3a3cd5bf7ba1ade4ba84d6eba183d16372240fddd1f3729f9c8cd44cf`  
		Last Modified: Tue, 18 Oct 2016 00:08:34 GMT  
		Size: 339.6 KB (339571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506c5c66c378650f97ae69facda29515f5fdeb49ab9fcb6ca7d3619738db7725`  
		Last Modified: Tue, 18 Oct 2016 00:08:34 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d742e7a3b5a0d7f85a70ddc4134e8df585fcf5f6fe3db10211a13229fa8f78`  
		Last Modified: Tue, 18 Oct 2016 00:09:21 GMT  
		Size: 194.9 MB (194851262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
