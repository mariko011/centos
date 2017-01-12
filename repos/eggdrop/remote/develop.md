## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:e26615fe29103abe0203702915639463df138b246ff102396b35378aa1c03ee8
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11441779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d885b8fd7c1901e519ecd8d607c01d8b71a7431bc7c1c1fb868269a0bc4fa3`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:53:42 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 27 Dec 2016 18:53:43 GMT
RUN adduser -S eggdrop
# Tue, 27 Dec 2016 18:53:44 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 00:52:46 GMT
ENV EGGDROP_SHA256=0b6b131e215671e92c61fc96bf23f180afeeaf32a1dc6beca1ac35517c675245
# Wed, 04 Jan 2017 00:52:46 GMT
ENV EGGDROP_COMMIT=1ff945133d4e67e53fb12c32133dfbee4bfedb84
# Wed, 04 Jan 2017 00:53:29 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 04 Jan 2017 00:53:30 GMT
ENV NICK=
# Wed, 04 Jan 2017 00:53:30 GMT
ENV SERVER=
# Wed, 04 Jan 2017 00:53:30 GMT
ENV LISTEN=3333
# Wed, 04 Jan 2017 00:53:31 GMT
ENV OWNER=
# Wed, 04 Jan 2017 00:53:31 GMT
ENV USERFILE=eggdrop.user
# Wed, 04 Jan 2017 00:53:31 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 04 Jan 2017 00:53:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 04 Jan 2017 00:53:32 GMT
EXPOSE 3333/tcp
# Thu, 12 Jan 2017 18:24:58 GMT
COPY file:60002465eb391b3d073a25a5737706a3119fd836517a661f9b0044343d3a3a44 in /home/eggdrop/eggdrop 
# Thu, 12 Jan 2017 18:24:59 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 12 Jan 2017 18:24:59 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 12 Jan 2017 18:24:59 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae71a62028767a6de6048b9fb3b0fda70fa0059e9aa22113ae7f68cfbc9e2f`  
		Last Modified: Tue, 27 Dec 2016 18:57:48 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a28180207a9f6cc7d510678c9dc0bcfb8a340845bac80f06e3d3ce42ec53355`  
		Last Modified: Tue, 27 Dec 2016 18:57:48 GMT  
		Size: 7.9 KB (7927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d086fecd33c038e61b51727759b363d99428bb7554792935c18357d9336beba`  
		Last Modified: Wed, 04 Jan 2017 00:53:52 GMT  
		Size: 9.1 MB (9117099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8909f513a5ddbd04a67fa2f38602696f0f3b586fc78efe6c448a3c4361c09903`  
		Last Modified: Thu, 12 Jan 2017 18:25:18 GMT  
		Size: 1.7 KB (1702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4827248f064a1fa82ed96034f21bae20ab47610aa509f7e2b7ba84c89c86d401`  
		Last Modified: Thu, 12 Jan 2017 18:25:17 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
