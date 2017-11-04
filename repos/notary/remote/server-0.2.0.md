## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:5a7a47612f4ceadb2b18d54f9f5bea699bb45c8cccd3e3aff5db49742a9594e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:9e8d41b06ae120bad00c19e6d808120fdd37e5a293dfea893a782d7ff7d708a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7772534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc331e9757f42a864ec38847b7a1bf7694d0de28baf81cb7cc1dc955a3b2063`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:38 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:53 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:53 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:53 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:54 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:54 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:55 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da8179f844951d2b701d9c2723fd9a2c3914793973e4e38dfd64664c29ccfb2`  
		Last Modified: Sat, 04 Nov 2017 13:10:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5a18c10679d8403d78e0d19bcca9bff865ca86989b11d9c9352b7f8f044592`  
		Last Modified: Sat, 04 Nov 2017 13:11:16 GMT  
		Size: 5.8 MB (5779113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971adfaa03ff506894bdab8d241631fbacb33021f6926b2b63bde17b38c65c8a`  
		Last Modified: Sat, 04 Nov 2017 13:11:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aba4781be0ce4b74c880df496fcdfc13ea0cc5849d75a1327905a80af0c2c37`  
		Last Modified: Sat, 04 Nov 2017 13:11:15 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
