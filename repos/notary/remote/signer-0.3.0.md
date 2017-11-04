## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:55142071724211b6af10376213b84b6b7fd0aed77e12a3a1b377fedcf7bf6169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:b0a9803efe764f9b2a46bbdaba46114339c51e5f1dd4d9d100a9a3d0ab0dce6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6569309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309200ff89b6f69426302fb5d02abd1b27973758e07f754558a9c2b7895602c8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 4444/tcp
# Sat, 04 Nov 2017 13:09:20 GMT
EXPOSE 7899/tcp
# Sat, 04 Nov 2017 13:09:21 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:46 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:46 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Sat, 04 Nov 2017 13:09:48 GMT
WORKDIR /notary/signer
# Sat, 04 Nov 2017 13:09:49 GMT
RUN adduser -D -H -g "" notary
# Sat, 04 Nov 2017 13:09:49 GMT
USER [notary]
# Sat, 04 Nov 2017 13:09:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Sat, 04 Nov 2017 13:09:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Sat, 04 Nov 2017 13:09:50 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ddb0438272f33d92ca5aeb4c40c377441b3990238a71e242a79521af2e08a5`  
		Last Modified: Sat, 04 Nov 2017 13:10:23 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97899d2b1ee676c2ad344d6f3b97b87b63f855bdf621f279fb6741c67edcaa0f`  
		Last Modified: Sat, 04 Nov 2017 13:11:07 GMT  
		Size: 4.6 MB (4575965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f524a6013a11b8f9c5d37eccd0af5b7716ee469c9c352ba9716bfd9735241`  
		Last Modified: Sat, 04 Nov 2017 13:11:06 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee05158e29947f25290a946df92531c7f01ac01cfd4fb970dc094cb5f5f0033`  
		Last Modified: Sat, 04 Nov 2017 13:11:06 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
