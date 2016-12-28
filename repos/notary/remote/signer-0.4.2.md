## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:1b5f176aa9be818ded8ec73be2dc301d66a499fd76fc60c33201f80382568ad7
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72772d7c998e244d573b8172f588aeae751cbc57da3544ae2d2e58e8dceb3f96`
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
# Tue, 27 Dec 2016 20:51:37 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:37 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 27 Dec 2016 20:51:38 GMT
WORKDIR /notary/signer
# Tue, 27 Dec 2016 20:51:39 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:39 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 27 Dec 2016 20:51:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:40 GMT
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
	-	`sha256:11fc09d6e8019b5553ff8b60d988a16d2972f5c6869332139f3269686bb3354f`  
		Last Modified: Tue, 27 Dec 2016 21:13:51 GMT  
		Size: 3.5 MB (3524250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8453d0be4f23371e670b77b1e828b44ea79669cb80d297ca3968cebf906f0ba8`  
		Last Modified: Tue, 27 Dec 2016 21:13:48 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06240b179b404512961e0dc05b98b8f0ee3576b88a11e31e8b070a2cdb180eea`  
		Last Modified: Tue, 27 Dec 2016 21:13:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
