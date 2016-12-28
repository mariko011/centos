## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:43883f8b0b74e61d60946e82c416958e28b9f08fdfc0f5d68aec321d223ac1c5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8013412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc58bbad9b6635604ff964da16b5f2d416f807c0fa12e8b611ec7447e57dee7f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 20:50:56 GMT
EXPOSE 4443/tcp
# Tue, 27 Dec 2016 20:51:03 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:04 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:04 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 27 Dec 2016 20:51:05 GMT
WORKDIR /notary/server
# Tue, 27 Dec 2016 20:51:06 GMT
RUN adduser -D -H -g "" notary
# Tue, 27 Dec 2016 20:51:06 GMT
USER [notary]
# Tue, 27 Dec 2016 20:51:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 27 Dec 2016 20:51:07 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 27 Dec 2016 20:51:07 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0899c7f1757856a113ce2036d5ae6e497f6ae7d36d266ad0f74baa9e1c2af51`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6744e4350fff79ac3301217f35574952c60ac4343f88e1bb829e9adc98d68864`  
		Last Modified: Tue, 27 Dec 2016 21:11:14 GMT  
		Size: 5.7 MB (5698321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e845a2fd196b35728a9db5ba5e12921b473916ab142518ed02456630e6b3041d`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0a107fc957af0865d44a3a7ee534c0c6b8aeb66d11d8d3689e3f49e97d479c`  
		Last Modified: Tue, 27 Dec 2016 21:11:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
