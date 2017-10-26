## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:2a3e346b3412d21895e5df73d1959455b63ece24491d981f7aba16f3274533c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:8a6d58f159051474f9df95dcfc5c4fe611cc3fb3ae5eaee19fa11fa37aa221c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fbfd768cb43023e3d42c9031edd96fb52d441f88be4ade6700c078a0b88104`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:01:46 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 26 Oct 2017 00:01:46 GMT
RUN adduser -S eggdrop
# Thu, 26 Oct 2017 00:01:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 00:01:58 GMT
RUN apk add --no-cache tcl bash openssl
# Thu, 26 Oct 2017 00:03:29 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 26 Oct 2017 00:03:29 GMT
ENV NICK=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV SERVER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV LISTEN=3333
# Thu, 26 Oct 2017 00:03:30 GMT
ENV OWNER=
# Thu, 26 Oct 2017 00:03:30 GMT
ENV USERFILE=eggdrop.user
# Thu, 26 Oct 2017 00:03:30 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 26 Oct 2017 00:03:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 26 Oct 2017 00:03:31 GMT
EXPOSE 3333/tcp
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 26 Oct 2017 00:03:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 26 Oct 2017 00:03:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 26 Oct 2017 00:03:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468533f6948e168df28d7d8c73f087b55f639bd5b65314d0eb5a38ae86bc9fa`  
		Last Modified: Thu, 26 Oct 2017 00:05:25 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628abe8acdff55a3ccde1d3f445747eae9155f8ac7395f39db5aeda403d56899`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 8.1 KB (8054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7717a62d77f39a641afa4897499d15f043fcf23704083d29cc13c827718f2c0`  
		Last Modified: Thu, 26 Oct 2017 00:05:23 GMT  
		Size: 2.9 MB (2938344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6271445c007698a1dcd1c6e1ee9bc39de460a693205af69369e9372cb669ea29`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 2.1 MB (2147640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a3fcf2031112c48b2837679158da7eea6dc869581e27bed545ee011fbe695`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665f03535abd3b952b54befa252c7f59bb7c511ac75cbdefa77fed581f1589cb`  
		Last Modified: Thu, 26 Oct 2017 00:05:22 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
