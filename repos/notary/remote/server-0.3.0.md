## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:19265d5e79096a71a19870b18b6821402a8a56e1aeae7d37e8620b5d5c704511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:1f08e1db96a2a7f248413a83dbc155092fc77c4137186d079dca6986c32103ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6854522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0b82f8de919ed12cb0f67c53dbcc83ced4e247bd6bbd3b2ae1243a5bbed4e0`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:01:58 GMT
EXPOSE 4443/tcp
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Thu, 26 Oct 2017 01:10:20 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Thu, 26 Oct 2017 01:10:20 GMT
WORKDIR /notary/server
# Thu, 26 Oct 2017 01:10:21 GMT
RUN adduser -D -H -g "" notary
# Thu, 26 Oct 2017 01:10:21 GMT
USER [notary]
# Thu, 26 Oct 2017 01:10:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 26 Oct 2017 01:10:22 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 26 Oct 2017 01:10:22 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4488c9b4218c8e2a0e1a1d31f79a39baeac5091d5bf92b4e293a5028d648277`  
		Last Modified: Thu, 26 Oct 2017 01:21:53 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b155753c7dd7eae00db8d0db2f2c3061b82af1f4b07548ec873b86815597ecab`  
		Last Modified: Thu, 26 Oct 2017 01:21:53 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4066725be29123c7a930a087417b2c159d8e84d8135bef1780bc2e5b5e2dc8e1`  
		Last Modified: Thu, 26 Oct 2017 01:21:52 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae77cae1012182ab7883ce7391fd140937e5a49f290fddb060477be948188753`  
		Last Modified: Thu, 26 Oct 2017 01:21:52 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
