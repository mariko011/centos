## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:e7b9ca462e66b821c9d22589ac558837cffd22a51da17de1c9e1ca0bc2d7d3b0
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6835758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c118f1afc9a67d978d9f5ab7e434e6353bc53e7a8b65a6b8a0beac9ca606c2d3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:51:19 GMT
EXPOSE 4444/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
EXPOSE 7899/tcp
# Tue, 27 Dec 2016 20:51:20 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:32 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:32 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:33 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:34 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:34 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:35 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75c625c3f05de77c5d9c75a125c86b5fff7419c80109bdd3e847809e5ab62a`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20e33bc7ef819b3e49fd4f3ed39b831ec4cd274a672238eb786727f2c192fba`  
		Last Modified: Tue, 27 Dec 2016 21:13:27 GMT  
		Size: 4.5 MB (4520743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4447a3f4854fb0a5e2270fdc1ab447f5233487a8df15a7dae603cb2cdb5f769`  
		Last Modified: Tue, 27 Dec 2016 21:13:26 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595391890d1c79111c8c0738f2abc778cb09187418fde1918c4f5f7551fcba9b`  
		Last Modified: Tue, 27 Dec 2016 21:13:25 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
