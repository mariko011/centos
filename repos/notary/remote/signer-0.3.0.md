## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:d8c993cd9a67512cf79968e8a3a1000520e88b768396d428734f329fb940410d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:6aa6a6ffd01f74e9b8e5abd6599bba1c1b3442134119469505c024983e7ce077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6643423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf25a16a6e35746ef8396758aa0f11d52cb8707930e62d14de525baef5fbc9e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 4444/tcp
# Wed, 10 Jan 2018 00:06:09 GMT
EXPOSE 7899/tcp
# Wed, 10 Jan 2018 00:06:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 Jan 2018 00:19:18 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 10 Jan 2018 00:19:18 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 Jan 2018 00:19:18 GMT
WORKDIR /notary/signer
# Wed, 10 Jan 2018 00:19:19 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 Jan 2018 00:19:20 GMT
USER [notary]
# Wed, 10 Jan 2018 00:19:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 Jan 2018 00:19:20 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 Jan 2018 00:19:20 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c79197f24d1ec960c8da352c9c8a40e299d5e6f923adb9e076ce68c82b002d`  
		Last Modified: Wed, 10 Jan 2018 00:26:46 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65dc1e5f3c75eb6c0ed9f3b90c1eb5b19c008b3d45c1b401e0a39e646328f7`  
		Last Modified: Wed, 10 Jan 2018 00:43:55 GMT  
		Size: 4.6 MB (4575965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fb60ea03c0e412fdc5867f21213e397453819a03bfc6e6b0c14c6bc3d24ae8`  
		Last Modified: Wed, 10 Jan 2018 00:43:53 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0285d42e1bcafd9649749924b6697cc66c2f692876ccf049078e4cd93502da01`  
		Last Modified: Wed, 10 Jan 2018 00:43:54 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
