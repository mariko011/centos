## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:6c45dbd345b08d2209f547012f33bbc47937ef153507b99f9e953fa6ecc004f2
```

-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17109470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a7c57f99d2fc170a8cc04f1ec701fadf0a623d715c859df51dc4b4944949c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 29 Aug 2017 16:51:53 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Tue, 29 Aug 2017 16:51:53 GMT
COPY file:ac83376730537cef9682b2f05aa676b553072180a20df2ac2fd98153ea4404ba in /usr/local/bin/ 
# Tue, 29 Aug 2017 16:51:54 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 29 Aug 2017 16:51:54 GMT
EXPOSE 80/tcp
# Tue, 29 Aug 2017 16:51:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Aug 2017 16:51:55 GMT
CMD ["--help"]
# Tue, 29 Aug 2017 16:51:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e265575e13319cd4b39f7c95d5077b1c445fb467b71316ed4a4220f09d3deade`  
		Last Modified: Tue, 29 Aug 2017 16:52:44 GMT  
		Size: 2.1 MB (2119621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a3b43717b15df34ebef797343d801f2ce191d36be436bce9ebc33de56eb534`  
		Last Modified: Tue, 29 Aug 2017 16:52:46 GMT  
		Size: 13.0 MB (12999106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cac79ee87e6a3991cd49fd9a59ad915cd9f97a846e0cfd578c0f7c21de165b5`  
		Last Modified: Tue, 29 Aug 2017 16:52:43 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
