## `notary:server`

```console
$ docker pull notary@sha256:71f64ab718a3331dee103bc5afc6bc492914738ce37c2d2f127a8133714ecf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:714e6dc005fb5ef5e551dd9e74465d445eb5c12b3a9d168dab54ee683357a657
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6024113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e926a06027d00e75fa07e2bd3ce38463b9864a304d5c7a69f1886c99256118`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:12 GMT
EXPOSE 4443/tcp
# Sat, 04 Nov 2017 13:09:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:14 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:14 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Sat, 04 Nov 2017 13:09:15 GMT
WORKDIR /notary/server
# Sat, 04 Nov 2017 13:09:15 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:16 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Sat, 04 Nov 2017 13:09:16 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:16 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67477e0fb4ec2a4aa8cdc0f2abeba958768801491fc3de648bac37c69c72762c`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea98348d97fecab878e929e55d1d439e679334491e93d8b9410d018584a2df3e`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 4.0 MB (4030701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a159eca0d07243cbc640704dd864c81dd481e16e2a375e0be866658a295ced`  
		Last Modified: Sat, 04 Nov 2017 13:10:10 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e0f7c91e8ee04a19b5a8f357071ee9782c2d85bab68d00e7ea45a657b43ef9`  
		Last Modified: Sat, 04 Nov 2017 13:10:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
