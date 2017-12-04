## `r-base:latest`

```console
$ docker pull r-base@sha256:f09cc19b31ee2942653a611923ecdd509e29ffb9ffec99f68b636c6f63ba08ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `r-base:latest` - linux; amd64

```console
$ docker pull r-base@sha256:cf835beae8d8360f024028265c9edfd5441766bfa6e50e1b9fdb14abcad067cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 MB (286489914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d9ba0d335c5744629900d2a14d79849ee0ddacfa764f09295c436654fcbddf`
-	Default Command: `["R"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:55 GMT
ADD file:f2155b46067f1955669502cbb14d0fae745f29940234ec173d13f5e1f885f041 in / 
# Sat, 04 Nov 2017 05:26:56 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:19:08 GMT
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com
# Sat, 04 Nov 2017 06:19:10 GMT
RUN useradd docker 	&& mkdir /home/docker 	&& chown docker:docker /home/docker 	&& addgroup docker staff
# Sat, 04 Nov 2017 06:19:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ed 		less 		locales 		vim-tiny 		wget 		ca-certificates 		fonts-texgyre 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:19:27 GMT
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 	&& locale-gen en_US.utf8 	&& /usr/sbin/update-locale LANG=en_US.UTF-8
# Sat, 04 Nov 2017 06:19:28 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 04 Nov 2017 06:19:28 GMT
ENV LANG=en_US.UTF-8
# Sat, 04 Nov 2017 06:19:28 GMT
RUN echo "deb http://http.debian.net/debian sid main" > /etc/apt/sources.list.d/debian-unstable.list 	&& echo 'APT::Default-Release "testing";' > /etc/apt/apt.conf.d/default
# Mon, 04 Dec 2017 20:43:23 GMT
ENV R_BASE_VERSION=3.4.3
# Mon, 04 Dec 2017 20:45:10 GMT
RUN apt-get update 	&& apt-get install -t unstable -y --no-install-recommends 		littler                 r-cran-littler 		r-base=${R_BASE_VERSION}* 		r-base-dev=${R_BASE_VERSION}* 		r-recommended=${R_BASE_VERSION}*         && echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site         && echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r 	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r 	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r 	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r 	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r 	&& install.r docopt 	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds 	&& rm -rf /var/lib/apt/lists/*
# Mon, 04 Dec 2017 20:45:10 GMT
CMD ["R"]
```

-	Layers:
	-	`sha256:31d9d91516b8b9604769d1dd4a951948cd1fe368ee7cc8b73bc129b37ee9b3d6`  
		Last Modified: Mon, 09 Oct 2017 21:42:49 GMT  
		Size: 47.5 MB (47527284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d329eef6788a4cb2cafd8c91ee2a6f0541dc4f781b301faa84043c5c96f5635f`  
		Last Modified: Sat, 04 Nov 2017 06:21:49 GMT  
		Size: 2.0 KB (1973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0191ff0db9ad2e7f573b13f90cdcd245c26f0aea1039fdd5cecd8e370ef89c4c`  
		Last Modified: Sat, 04 Nov 2017 06:21:55 GMT  
		Size: 23.4 MB (23437005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde9645eabc7b0670d526812530f05c4185a05ad8e78f0fd9d386eb3fa30dac6`  
		Last Modified: Sat, 04 Nov 2017 06:21:49 GMT  
		Size: 425.9 KB (425871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a453e71e5295dee77d49228c7f72fa9b4bc01b50516622a2aba37adcc32a79ec`  
		Last Modified: Sat, 04 Nov 2017 06:21:50 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9ebc4f24cbc6604fe2b7782d6bd576b7ebb24dbff8d7f47324cd614c0d1d4e`  
		Last Modified: Mon, 04 Dec 2017 20:45:58 GMT  
		Size: 215.1 MB (215097487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
