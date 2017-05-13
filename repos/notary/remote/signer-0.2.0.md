## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:37104f8fae90daab48d9453d5a640f4c94923409deb030a68f7be532cc9830ec
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b58fee31ae385e3d2cc3bd9f89daf965c677c2644746f027f2ed9517b56b9d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:37:23 GMT
EXPOSE 4444/tcp
# Wed, 10 May 2017 22:37:24 GMT
EXPOSE 7899/tcp
# Wed, 10 May 2017 22:37:25 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Wed, 10 May 2017 22:37:53 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Wed, 10 May 2017 22:37:54 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:37:54 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:37:56 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:37:57 GMT
USER [notary]
# Wed, 10 May 2017 22:37:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:37:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:37:59 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e1ce24d389ccb61c47769ecb8a0bda56f4a890d15174a3a8d6dd940f19080f`  
		Last Modified: Sat, 13 May 2017 08:58:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e395cb7cdc2e31b9c1b02108c02eb3096aa78d7fae874e1c7a2e382f93963f73`  
		Last Modified: Sat, 13 May 2017 08:59:49 GMT  
		Size: 5.5 MB (5543258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffa37863879bf286cb9acbc6c53565dc8f11d3c58f2890dbb65a8d8a74b04d7`  
		Last Modified: Sat, 13 May 2017 08:59:48 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f4c34ac923e1c11cdb8b27d758c9c0f9da7da5b6b466cedb3a296da9ab7c3`  
		Last Modified: Sat, 13 May 2017 08:59:49 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
