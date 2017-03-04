## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:f43402d61274240e3fde49b661d670b213ed912ec9fafbc686d6f04432ce39b5
```

-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5886532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:973b8e658b8b30a09c6f426d383468a466dd126e9921c06a8ae52f2c1447bf51`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:38:11 GMT
EXPOSE 4443/tcp
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:12 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:13 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 03 Mar 2017 22:38:13 GMT
WORKDIR /notary/server
# Fri, 03 Mar 2017 22:38:14 GMT
RUN adduser -D -H -g "" notary
# Fri, 03 Mar 2017 22:38:14 GMT
USER [notary]
# Fri, 03 Mar 2017 22:38:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 03 Mar 2017 22:38:15 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 03 Mar 2017 22:38:15 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ba097ff74c8a9ac583f9ceb10b9726c1659923c7f1f445a08b04d49cbe561b`  
		Last Modified: Sat, 04 Mar 2017 05:24:14 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f67dc05f5118836188286dc30ca707f7941eaa624d1404bfeb2f89cb923581f`  
		Last Modified: Sat, 04 Mar 2017 05:24:16 GMT  
		Size: 4.0 MB (3979287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b58441017de4703262a19c4d7e82492a463963e17050f2062528522fa583f`  
		Last Modified: Sat, 04 Mar 2017 05:24:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd674b03b269fb05878954e00d0c1144da89088fde6d5cdf564a84491ec9a69d`  
		Last Modified: Sat, 04 Mar 2017 05:24:15 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
