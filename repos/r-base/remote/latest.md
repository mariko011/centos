## `r-base:latest`

```console
$ docker pull r-base@sha256:e192edf861d61caff0b3294361e92d8c925b2c146e13bbc78505d791259e51ab
```

-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270952100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fe32463daaa51d2b290ef335c93c55857474226854203b1597f77cbf0d1a43`
-	Default Command: `["R"]`

```dockerfile
# Mon, 24 Apr 2017 19:27:39 GMT
ADD file:eb7fb075b1e2b34b6c8b8f75e2ffa77df8aa5e7bbfe2470aaa723fb57f470fd2 in / 
# Mon, 24 Apr 2017 19:27:40 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:36:54 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Tue, 25 Apr 2017 04:36:56 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Tue, 25 Apr 2017 04:37:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:37:18 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Tue, 25 Apr 2017 04:37:18 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 25 Apr 2017 04:37:19 GMT
ENV LANG=en_US.UTF-8
# Tue, 25 Apr 2017 04:37:21 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Tue, 25 Apr 2017 16:59:41 GMT
ENV R_BASE_VERSION=3.4.0
# Tue, 25 Apr 2017 17:01:33 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 17:01:34 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:5d797a4cfc3eed1d0444d3d90ff3332aa83a75b5e24aea96a17f64e2d83e895d`  
		Last Modified: Mon, 24 Apr 2017 19:39:39 GMT  
		Size: 45.1 MB (45070388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c2f092956c0556462fc525660797069b3f4638fbd2a2a685f1f75c2ccbb1b2`  
		Last Modified: Tue, 25 Apr 2017 17:01:57 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a6e2a5f4fab6ec2fa3cfbb9af892907ad6d491d238448f49671c672ff87fc0`  
		Last Modified: Tue, 25 Apr 2017 17:02:04 GMT  
		Size: 36.1 MB (36116928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6ce71702328987fc21c172d4b6f0eca545cef634a87abeae34a9bb5bcbb162`  
		Last Modified: Tue, 25 Apr 2017 17:01:55 GMT  
		Size: 425.7 KB (425746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1474396bacc07d3113ff472d15ba4e42dd7c0fb91719312c41bbf868fc3c4cf`  
		Last Modified: Tue, 25 Apr 2017 17:01:54 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e729120880f2ac1ecaccb9dfa726137418b84a998ef58383742b22754c97ad07`  
		Last Modified: Tue, 25 Apr 2017 17:02:20 GMT  
		Size: 189.3 MB (189336914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
