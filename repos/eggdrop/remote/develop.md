## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:f29b918cf0574be13360b8d72993cdb9eea0430476587233a85b0cd13788af0b
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13384342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e734c35ac7dfd4e824eaa53b3d40304392c03fdfea94e70f34f7876cc259efb4`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:22:43 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 May 2017 21:22:45 GMT
RUN adduser -S eggdrop
# Wed, 10 May 2017 21:22:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 21:22:47 GMT
ENV EGGDROP_SHA256=d059a654e47157f7e9ed975f70a648622bf38d18368d179c704a0c988b6ece3d
# Wed, 10 May 2017 21:22:48 GMT
ENV EGGDROP_COMMIT=e34c874e622f82ae12c3f3ceeaf0fec24871b6fc
# Wed, 10 May 2017 21:23:34 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Wed, 10 May 2017 21:23:35 GMT
ENV NICK=
# Wed, 10 May 2017 21:23:36 GMT
ENV SERVER=
# Wed, 10 May 2017 21:23:36 GMT
ENV LISTEN=3333
# Wed, 10 May 2017 21:23:37 GMT
ENV OWNER=
# Wed, 10 May 2017 21:23:38 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 May 2017 21:23:39 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 May 2017 21:23:40 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 May 2017 21:23:40 GMT
EXPOSE 3333/tcp
# Wed, 10 May 2017 21:23:41 GMT
COPY file:7a054cb46364a47f244469cd44e0d12e9e0c49ab06cd99348b2a2bba3a4fb1c8 in /home/eggdrop/eggdrop 
# Wed, 10 May 2017 21:23:42 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 May 2017 21:23:43 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 May 2017 21:23:44 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6571b6efbe0fd52dc15f46b8f71fab8ca38146025bf7cda67b5644642f7ecf`  
		Last Modified: Thu, 11 May 2017 15:34:44 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39755bdb43a56022f0086d5221c0899ed016fe2b423b7481a686cd1bdac2ffe0`  
		Last Modified: Thu, 11 May 2017 15:34:44 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88283f72a8199a1f73b3aace5b2139376d983b45a9d47b4247978206a3f8035c`  
		Last Modified: Thu, 11 May 2017 15:34:47 GMT  
		Size: 11.4 MB (11404978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0aeab4bffdc9b5509a818c9076618bd820ff67cc50a7c65864817899cb6394`  
		Last Modified: Thu, 11 May 2017 15:34:44 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b87587af6aff36f5a567e0c526c8cd29e767ace2cacdeaee136cf56d5cbdd`  
		Last Modified: Thu, 11 May 2017 15:34:45 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
