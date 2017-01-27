## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:643187d38f687aab18f234e9cfdc71f8d1fa1960ff4d574e2d916655b17a4c45
```

-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bb4cc84862959041a3a217e8284dc2ea295d750a2b057cefe3aedd56a13753`
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
# Fri, 27 Jan 2017 18:18:17 GMT
ENV EGGDROP_SHA256=844f4d1558dda3dbccf142dd7a1dd0f43b1229de22476e29ff448c74514084eb
# Fri, 27 Jan 2017 18:18:17 GMT
ENV EGGDROP_COMMIT=39ee2eb382def5f598a53546761994c729b60507
# Fri, 27 Jan 2017 18:19:00 GMT
RUN apk add --no-cache tcl tcl-dev wget ca-certificates make tar gpgme bash build-base openssl openssl-dev  && wget https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz -O develop.tar.gz  && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev
# Fri, 27 Jan 2017 18:19:00 GMT
ENV NICK=
# Fri, 27 Jan 2017 18:19:01 GMT
ENV SERVER=
# Fri, 27 Jan 2017 18:19:01 GMT
ENV LISTEN=3333
# Fri, 27 Jan 2017 18:19:01 GMT
ENV OWNER=
# Fri, 27 Jan 2017 18:19:02 GMT
ENV USERFILE=eggdrop.user
# Fri, 27 Jan 2017 18:19:02 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 27 Jan 2017 18:19:02 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 27 Jan 2017 18:19:02 GMT
EXPOSE 3333/tcp
# Fri, 27 Jan 2017 18:19:03 GMT
COPY file:2134aab955c0f8203f3f3082ef7fd1b8154e50743de1f79914d312f04d898087 in /home/eggdrop/eggdrop 
# Fri, 27 Jan 2017 18:19:03 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 27 Jan 2017 18:19:04 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 27 Jan 2017 18:19:04 GMT
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
	-	`sha256:5cc8dec8d47b7f47b953b0f23b71b6f24a17fea254cb61afab150df12291e153`  
		Last Modified: Fri, 27 Jan 2017 18:19:26 GMT  
		Size: 10.4 MB (10362529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b6490e1043861b434cc3ecf5f894bb99a2b03444a1dc44678c5e81e7e455e`  
		Last Modified: Fri, 27 Jan 2017 18:19:23 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ca230abeb4d570f850099385ed2b8efb6a6efb93e3f997140d143eba41cbfd`  
		Last Modified: Fri, 27 Jan 2017 18:19:23 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
