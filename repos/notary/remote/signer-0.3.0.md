## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:6a5f9d752635a13404a573d630e81db487d7a49de7e565c3bfaf03a500953d3c
```

-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6545782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212e3aecfefa58626da6f0db6168d05ba726ced10470912575685d0d0a652dc6`
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
# Wed, 10 May 2017 22:38:19 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Wed, 10 May 2017 22:38:20 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Wed, 10 May 2017 22:38:21 GMT
WORKDIR /notary/signer
# Wed, 10 May 2017 22:38:22 GMT
RUN adduser -D -H -g "" notary
# Wed, 10 May 2017 22:38:23 GMT
USER [notary]
# Wed, 10 May 2017 22:38:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Wed, 10 May 2017 22:38:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 10 May 2017 22:38:25 GMT
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
	-	`sha256:00667393359efbe85677ffb5164dbf251cf0c1baad040666749ed81f37aa25e7`  
		Last Modified: Sat, 13 May 2017 09:00:16 GMT  
		Size: 4.6 MB (4575962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8264acb01788b9920f32d3814f3f55499a56e8b381a0a815ad219336b3b84d`  
		Last Modified: Sat, 13 May 2017 09:00:15 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f710f4d1be13a843d8fecae22c412a26a393ed7446aefdf5fc06ddf8c77fa10d`  
		Last Modified: Sat, 13 May 2017 09:00:15 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
