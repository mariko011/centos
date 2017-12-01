## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:1770afde05ccd4bc0a6d8d8b0d175ae3fefed77e26f932f7b185bf786cdbeea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:7ebf7c6ec9502fb9421e1bf857d60cca97a44fe1606e3e4a47029ee1364f519f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aece4dbbaa5d6bbb10a24035956dfc75d2df29f76b0a980955b755fdd049432`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 4444/tcp
# Fri, 01 Dec 2017 21:24:16 GMT
EXPOSE 7899/tcp
# Fri, 01 Dec 2017 21:24:17 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 01 Dec 2017 21:33:53 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 01 Dec 2017 21:33:53 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 01 Dec 2017 21:33:54 GMT
WORKDIR /notary/signer
# Fri, 01 Dec 2017 21:33:55 GMT
RUN adduser -D -H -g "" notary
# Fri, 01 Dec 2017 21:33:55 GMT
USER [notary]
# Fri, 01 Dec 2017 21:33:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 01 Dec 2017 21:33:56 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 01 Dec 2017 21:33:56 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f92cd3c514b87c9520aab5d7aa8327bab1b70130520cf5d3db6f6e42ee2fbb`  
		Last Modified: Fri, 01 Dec 2017 21:41:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05562fa8021ef6ea05ff395bcdf471d0880220ce9faa4ba90aa1fe7f3a4daeb8`  
		Last Modified: Fri, 01 Dec 2017 21:43:03 GMT  
		Size: 5.5 MB (5543266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df89b2f6b9aa92a9cdcd1e693055efaa77ec5886f92a64822aac31721d163fd`  
		Last Modified: Fri, 01 Dec 2017 21:42:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be96e975c76c34b443d3cf0add8c36dc3334d3260b65391bf8251247ae17cc5`  
		Last Modified: Fri, 01 Dec 2017 21:42:59 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
