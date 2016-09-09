## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:14e80c493610007f1149fcf2e812d25759dc34607224b04d73d2b5ee812321e5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47468967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4637778fa965cd1017baf2532578a7937722298cea74376f9870deb44d3ddaf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:51 GMT
ADD file:b9d44ee8d22c829c1f1ff0a7458f40a2591b599c18ac5f9e778e818fbb4a1344 in /
# Thu, 28 Jul 2016 17:48:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 22:01:12 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 26 Aug 2016 22:01:14 GMT
RUN echo 'deb http://neuro.debian.net/debian stretch main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:01:17 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:01:19 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel stretch main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:01:22 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:05a57567480c26a5f94fde377da4e0792f5e745a5d37e39f467a104fd9bd8942`  
		Last Modified: Thu, 28 Jul 2016 17:53:00 GMT  
		Size: 42.1 MB (42066618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21962dd0b98e634765a61adf4c3b77e9b65a6e2ffc1cc0dca315358fc55024a`  
		Last Modified: Fri, 26 Aug 2016 22:05:20 GMT  
		Size: 5.4 MB (5398574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325115ea66be9ecffa81685b8c6361fd615f44bcd838fd85c4339bf9934f323d`  
		Last Modified: Fri, 26 Aug 2016 22:05:20 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a5141a5069adfdbfe07a37cc6da5fb376a81e1eb3a7112800a0a689165f23a`  
		Last Modified: Fri, 26 Aug 2016 22:05:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416401469d0ca00aeeac3ca17c5a3cf9756391ef90d3c1837aed5d00a2b43cde`  
		Last Modified: Fri, 26 Aug 2016 22:05:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c4956c2933c75f998daa70f263c9e878a7d1bd17ba7c210c9f0f51f88aff25`  
		Last Modified: Fri, 26 Aug 2016 22:05:19 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
