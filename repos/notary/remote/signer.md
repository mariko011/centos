## `notary:signer`

```console
$ docker pull notary@sha256:880fae664d42e46f2f086b75eb6b81a3195b40a126e6d0290b4360ec14391cc9
```

-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5906500ae4ef2fb1a525046d6776c73ed55e85076ef76b8579595e004c10dc82`
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
# Wed, 10 May 2017 22:37:26 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Wed, 10 May 2017 22:37:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:37:28 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:37:30 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:37:30 GMT
USER [notary]
# Wed, 10 May 2017 22:37:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:37:32 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:37:32 GMT
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
	-	`sha256:022749d6b12f7974e125a0325382878acd69fff412f598c139b15e4d1fb2ede8`  
		Last Modified: Sat, 13 May 2017 08:59:00 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8aa62e1c073c316b42b4ff89fdaa740c8558f22175ec2d99e4718078b50507`  
		Last Modified: Sat, 13 May 2017 08:59:01 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b876c2e76287008552405b3cfc89905d33252e556f3eaf48d8ca3de062bc8a`  
		Last Modified: Sat, 13 May 2017 08:59:00 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
