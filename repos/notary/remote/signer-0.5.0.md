## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:1b9c6cf56ae77b126c47c7d67e8a71fdd3ac579c18be8d210ec3fb9a1027bba2
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5918980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db637b90a9a03c26c766c8a026119709607c397c9135c9b0c2446b6226915fc0`
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
# Tue, 27 Dec 2016 20:51:21 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:22 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:22 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:23 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:24 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:25 GMT
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
	-	`sha256:ff8ebc471bf06547e34f9716bceed2b7305ca21a66c3a8c329f11fd5c861303f`  
		Last Modified: Tue, 27 Dec 2016 21:12:20 GMT  
		Size: 3.6 MB (3603959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f714708f2a3bd82cf8f64c1050fa6de0ca9040535d32b6612461e058fa8dcb`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53f30d0a33cefb18b2a15039750f2277e857f586f80cfe1cbbd5c70714bdf23`  
		Last Modified: Tue, 27 Dec 2016 21:12:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
