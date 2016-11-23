<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:8.0`](#odoo80)
-	[`odoo:8`](#odoo8)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:9`](#odoo9)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:10`](#odoo10)
-	[`odoo:latest`](#odoolatest)

## `odoo:8.0`

```console
$ docker pull odoo@sha256:3f7d3eddfa97af839efd82c4bc18d505d55ccee228099abc1c491c7c3099cce3
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268750195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a316577e9e9ee1b1ebdafc44ce985bc097295c3129c4293e59aeba66b253aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:58:52 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:59:00 GMT
ENV ODOO_VERSION=8.0
# Wed, 23 Nov 2016 20:09:45 GMT
ENV ODOO_RELEASE=20161123
# Wed, 23 Nov 2016 20:11:02 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcc9fa35fae811958ee08a0f51dfc23242e755b6 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 23 Nov 2016 20:11:08 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 23 Nov 2016 20:11:09 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 23 Nov 2016 20:11:10 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:11:10 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 23 Nov 2016 20:11:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 23 Nov 2016 20:11:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 23 Nov 2016 20:11:12 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:11:12 GMT
USER [odoo]
# Wed, 23 Nov 2016 20:11:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:11:13 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5899f370b0b6e78b65caa2a45ede6c009f2e1642e3eadb71e72fee5bc2029475`  
		Last Modified: Tue, 08 Nov 2016 23:01:00 GMT  
		Size: 86.3 MB (86282446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f44f34d6401fb41267573889a6ce3fa9f92d9a0377949d63ebca9b79a5c960b`  
		Last Modified: Wed, 23 Nov 2016 20:14:58 GMT  
		Size: 131.1 MB (131108854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50abb5fb503fce37a8b1dfd11af064e49fcee6ba7dd8fb19df7af8a42ff6213`  
		Last Modified: Wed, 23 Nov 2016 20:14:08 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6aafd01ba3731975d74a0ed7a7347e764701a43b8fd2241e230437d15d9a1b`  
		Last Modified: Wed, 23 Nov 2016 20:14:08 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f2eadeef707ad15c61d754183d72373ddb7bcd8e38f7ee2cd82b684faeaac3`  
		Last Modified: Wed, 23 Nov 2016 20:14:08 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4606cbfa6e71b5e88f716b6871357612e1cbee45f7b27560b0e2ced5590337dd`  
		Last Modified: Wed, 23 Nov 2016 20:14:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:3f7d3eddfa97af839efd82c4bc18d505d55ccee228099abc1c491c7c3099cce3
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268750195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a316577e9e9ee1b1ebdafc44ce985bc097295c3129c4293e59aeba66b253aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:58:52 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:59:00 GMT
ENV ODOO_VERSION=8.0
# Wed, 23 Nov 2016 20:09:45 GMT
ENV ODOO_RELEASE=20161123
# Wed, 23 Nov 2016 20:11:02 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcc9fa35fae811958ee08a0f51dfc23242e755b6 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 23 Nov 2016 20:11:08 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 23 Nov 2016 20:11:09 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 23 Nov 2016 20:11:10 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:11:10 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 23 Nov 2016 20:11:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 23 Nov 2016 20:11:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 23 Nov 2016 20:11:12 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:11:12 GMT
USER [odoo]
# Wed, 23 Nov 2016 20:11:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:11:13 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5899f370b0b6e78b65caa2a45ede6c009f2e1642e3eadb71e72fee5bc2029475`  
		Last Modified: Tue, 08 Nov 2016 23:01:00 GMT  
		Size: 86.3 MB (86282446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f44f34d6401fb41267573889a6ce3fa9f92d9a0377949d63ebca9b79a5c960b`  
		Last Modified: Wed, 23 Nov 2016 20:14:58 GMT  
		Size: 131.1 MB (131108854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50abb5fb503fce37a8b1dfd11af064e49fcee6ba7dd8fb19df7af8a42ff6213`  
		Last Modified: Wed, 23 Nov 2016 20:14:08 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6aafd01ba3731975d74a0ed7a7347e764701a43b8fd2241e230437d15d9a1b`  
		Last Modified: Wed, 23 Nov 2016 20:14:08 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f2eadeef707ad15c61d754183d72373ddb7bcd8e38f7ee2cd82b684faeaac3`  
		Last Modified: Wed, 23 Nov 2016 20:14:08 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4606cbfa6e71b5e88f716b6871357612e1cbee45f7b27560b0e2ced5590337dd`  
		Last Modified: Wed, 23 Nov 2016 20:14:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:eebcf70c8d245cf5a3aa63980e9811e671846366b20a0ca014017badd09beea8
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283499922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c38acba24cd4dd3c2acf78e11062798fba6f8521fc7a1d24690ad477aef986`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 23:01:31 GMT
ENV ODOO_VERSION=9.0
# Wed, 23 Nov 2016 20:11:13 GMT
ENV ODOO_RELEASE=20161123
# Wed, 23 Nov 2016 20:12:33 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'c9e66e878146940ef188eaa8c9bc5da7e4306982 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 23 Nov 2016 20:12:35 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 23 Nov 2016 20:12:36 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 23 Nov 2016 20:12:36 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:12:38 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 23 Nov 2016 20:12:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 23 Nov 2016 20:12:39 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 23 Nov 2016 20:12:39 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:12:40 GMT
USER [odoo]
# Wed, 23 Nov 2016 20:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:12:40 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16c5fc4fc0edd1937cdca0228c99cc5f18aead8fc71e8504590b76c61347def`  
		Last Modified: Wed, 23 Nov 2016 20:16:34 GMT  
		Size: 146.2 MB (146160406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c514e4343e0bf170b47f5d75eafa9236c475fb5c88a459f5ca44c592b3fc10d`  
		Last Modified: Wed, 23 Nov 2016 20:15:42 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4002d0809e44aabfeeb2531bb2adac17dd79906d05eab0e23ece695fd5de30`  
		Last Modified: Wed, 23 Nov 2016 20:15:42 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0382a20b7dc8eb26bea04634e6f7273bb92b1e803c9b3378a715f77a4ebf0d24`  
		Last Modified: Wed, 23 Nov 2016 20:15:42 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b3dc40b11d46d067b0c3425bb3fe50a617eedb761aa4cf5ed819f9463eedbd`  
		Last Modified: Wed, 23 Nov 2016 20:15:44 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:eebcf70c8d245cf5a3aa63980e9811e671846366b20a0ca014017badd09beea8
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283499922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c38acba24cd4dd3c2acf78e11062798fba6f8521fc7a1d24690ad477aef986`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 23:01:31 GMT
ENV ODOO_VERSION=9.0
# Wed, 23 Nov 2016 20:11:13 GMT
ENV ODOO_RELEASE=20161123
# Wed, 23 Nov 2016 20:12:33 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'c9e66e878146940ef188eaa8c9bc5da7e4306982 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 23 Nov 2016 20:12:35 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 23 Nov 2016 20:12:36 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 23 Nov 2016 20:12:36 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:12:38 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 23 Nov 2016 20:12:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 23 Nov 2016 20:12:39 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 23 Nov 2016 20:12:39 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 23 Nov 2016 20:12:40 GMT
USER [odoo]
# Wed, 23 Nov 2016 20:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:12:40 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16c5fc4fc0edd1937cdca0228c99cc5f18aead8fc71e8504590b76c61347def`  
		Last Modified: Wed, 23 Nov 2016 20:16:34 GMT  
		Size: 146.2 MB (146160406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c514e4343e0bf170b47f5d75eafa9236c475fb5c88a459f5ca44c592b3fc10d`  
		Last Modified: Wed, 23 Nov 2016 20:15:42 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4002d0809e44aabfeeb2531bb2adac17dd79906d05eab0e23ece695fd5de30`  
		Last Modified: Wed, 23 Nov 2016 20:15:42 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0382a20b7dc8eb26bea04634e6f7273bb92b1e803c9b3378a715f77a4ebf0d24`  
		Last Modified: Wed, 23 Nov 2016 20:15:42 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b3dc40b11d46d067b0c3425bb3fe50a617eedb761aa4cf5ed819f9463eedbd`  
		Last Modified: Wed, 23 Nov 2016 20:15:44 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:7d770872c28b3352ab6be432ba42850ffe4e7e1dffc958247c51a1b7b8a00df7
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273202233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941bc81d2f8ad7c4b74968d3ff9b9e521a394f9bd7267cb7b722711418d86a9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_VERSION=10.0
# Wed, 23 Nov 2016 20:12:41 GMT
ENV ODOO_RELEASE=20161123
# Wed, 23 Nov 2016 20:13:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 23 Nov 2016 20:13:40 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 23 Nov 2016 20:13:41 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Wed, 23 Nov 2016 20:13:42 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 23 Nov 2016 20:13:43 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 23 Nov 2016 20:13:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 23 Nov 2016 20:13:43 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 23 Nov 2016 20:13:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 23 Nov 2016 20:13:53 GMT
USER [odoo]
# Wed, 23 Nov 2016 20:13:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:13:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3318e516529d60b9db19da0581d27d054b6c55dd12a1a6327cc69f06014c08fa`  
		Last Modified: Wed, 23 Nov 2016 20:17:58 GMT  
		Size: 135.9 MB (135862752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9444046c0552eaaddeefb91b6d637fd7ec410465e426ebc93504ad9f55e19ac2`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ab673efbada24bd73917d032969a131dc12c5bb9133b1a79b0593760387d8a`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d14b7a9b4a3f7f063224d1f9e1ccb422a24cffd8cdd28da215d8cc060001f0`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6223e85dbcab05b30ef44ef4e609287d6197bc9740fab5420c3af57a17352215`  
		Last Modified: Wed, 23 Nov 2016 20:17:24 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:7d770872c28b3352ab6be432ba42850ffe4e7e1dffc958247c51a1b7b8a00df7
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273202233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941bc81d2f8ad7c4b74968d3ff9b9e521a394f9bd7267cb7b722711418d86a9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_VERSION=10.0
# Wed, 23 Nov 2016 20:12:41 GMT
ENV ODOO_RELEASE=20161123
# Wed, 23 Nov 2016 20:13:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 23 Nov 2016 20:13:40 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 23 Nov 2016 20:13:41 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Wed, 23 Nov 2016 20:13:42 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 23 Nov 2016 20:13:43 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 23 Nov 2016 20:13:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 23 Nov 2016 20:13:43 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 23 Nov 2016 20:13:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 23 Nov 2016 20:13:53 GMT
USER [odoo]
# Wed, 23 Nov 2016 20:13:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:13:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3318e516529d60b9db19da0581d27d054b6c55dd12a1a6327cc69f06014c08fa`  
		Last Modified: Wed, 23 Nov 2016 20:17:58 GMT  
		Size: 135.9 MB (135862752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9444046c0552eaaddeefb91b6d637fd7ec410465e426ebc93504ad9f55e19ac2`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ab673efbada24bd73917d032969a131dc12c5bb9133b1a79b0593760387d8a`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d14b7a9b4a3f7f063224d1f9e1ccb422a24cffd8cdd28da215d8cc060001f0`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6223e85dbcab05b30ef44ef4e609287d6197bc9740fab5420c3af57a17352215`  
		Last Modified: Wed, 23 Nov 2016 20:17:24 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:7d770872c28b3352ab6be432ba42850ffe4e7e1dffc958247c51a1b7b8a00df7
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273202233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941bc81d2f8ad7c4b74968d3ff9b9e521a394f9bd7267cb7b722711418d86a9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:54:38 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 08 Nov 2016 22:55:26 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 08 Nov 2016 22:55:27 GMT
ENV ODOO_VERSION=10.0
# Wed, 23 Nov 2016 20:12:41 GMT
ENV ODOO_RELEASE=20161123
# Wed, 23 Nov 2016 20:13:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 23 Nov 2016 20:13:40 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 23 Nov 2016 20:13:41 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Wed, 23 Nov 2016 20:13:42 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 23 Nov 2016 20:13:43 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 23 Nov 2016 20:13:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 23 Nov 2016 20:13:43 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 23 Nov 2016 20:13:44 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 23 Nov 2016 20:13:53 GMT
USER [odoo]
# Wed, 23 Nov 2016 20:13:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:13:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d559e6206d9cf304fc3dc212d33ffca94207b5630ad40970d58b010e183e56`  
		Last Modified: Tue, 08 Nov 2016 22:57:22 GMT  
		Size: 86.0 MB (85980613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3318e516529d60b9db19da0581d27d054b6c55dd12a1a6327cc69f06014c08fa`  
		Last Modified: Wed, 23 Nov 2016 20:17:58 GMT  
		Size: 135.9 MB (135862752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9444046c0552eaaddeefb91b6d637fd7ec410465e426ebc93504ad9f55e19ac2`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ab673efbada24bd73917d032969a131dc12c5bb9133b1a79b0593760387d8a`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d14b7a9b4a3f7f063224d1f9e1ccb422a24cffd8cdd28da215d8cc060001f0`  
		Last Modified: Wed, 23 Nov 2016 20:17:23 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6223e85dbcab05b30ef44ef4e609287d6197bc9740fab5420c3af57a17352215`  
		Last Modified: Wed, 23 Nov 2016 20:17:24 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
