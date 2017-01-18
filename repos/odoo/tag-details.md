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
$ docker pull odoo@sha256:aa9059372e9c656e2b3d0e8fccb4b861db9748af75c27747cd8667cdc07db7d2
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268755168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1788fa8cb2068e6cfb2c4161936f665f732aff56abab75e85f88c33302be3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:48:14 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:48:14 GMT
ENV ODOO_VERSION=8.0
# Tue, 17 Jan 2017 18:48:15 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:49:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcc9fa35fae811958ee08a0f51dfc23242e755b6 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:49:40 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 17 Jan 2017 18:49:40 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:49:41 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:49:42 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:49:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:49:43 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:49:43 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:49:44 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:49:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:49:44 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03bdb4ff8c51a4a8b6bdaf0f002397a53bb36c596e070a6d8837ba4b1fa078b`  
		Last Modified: Wed, 18 Jan 2017 06:10:51 GMT  
		Size: 86.3 MB (86289690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b793d4128d5b007442f08bdfc31273af86c7076c2e3312666f957dc7d22472`  
		Last Modified: Wed, 18 Jan 2017 06:12:36 GMT  
		Size: 131.1 MB (131102360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f834a65717777d52c1305819b3a907070a1858d6cf5f42cef153bcf4cbc748`  
		Last Modified: Wed, 18 Jan 2017 06:09:37 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4295b947d9ba57ea5d02461dd4388ac86f2e9618fc101a101e1a92f064fd8daa`  
		Last Modified: Wed, 18 Jan 2017 06:09:38 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8baccc209bfb6cda68303b197d4ae4894feabf8e4daf5a8b938188b5265822`  
		Last Modified: Wed, 18 Jan 2017 06:09:34 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932a95862c9ec013b7c3eee1107fb2ebe939668090997a2a40da2cf2ba4fd54e`  
		Last Modified: Wed, 18 Jan 2017 06:09:32 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:aa9059372e9c656e2b3d0e8fccb4b861db9748af75c27747cd8667cdc07db7d2
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268755168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1788fa8cb2068e6cfb2c4161936f665f732aff56abab75e85f88c33302be3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:48:14 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:48:14 GMT
ENV ODOO_VERSION=8.0
# Tue, 17 Jan 2017 18:48:15 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:49:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcc9fa35fae811958ee08a0f51dfc23242e755b6 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:49:40 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 17 Jan 2017 18:49:40 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:49:41 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:49:42 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:49:43 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:49:43 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:49:43 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:49:44 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:49:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:49:44 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03bdb4ff8c51a4a8b6bdaf0f002397a53bb36c596e070a6d8837ba4b1fa078b`  
		Last Modified: Wed, 18 Jan 2017 06:10:51 GMT  
		Size: 86.3 MB (86289690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b793d4128d5b007442f08bdfc31273af86c7076c2e3312666f957dc7d22472`  
		Last Modified: Wed, 18 Jan 2017 06:12:36 GMT  
		Size: 131.1 MB (131102360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f834a65717777d52c1305819b3a907070a1858d6cf5f42cef153bcf4cbc748`  
		Last Modified: Wed, 18 Jan 2017 06:09:37 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4295b947d9ba57ea5d02461dd4388ac86f2e9618fc101a101e1a92f064fd8daa`  
		Last Modified: Wed, 18 Jan 2017 06:09:38 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8baccc209bfb6cda68303b197d4ae4894feabf8e4daf5a8b938188b5265822`  
		Last Modified: Wed, 18 Jan 2017 06:09:34 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932a95862c9ec013b7c3eee1107fb2ebe939668090997a2a40da2cf2ba4fd54e`  
		Last Modified: Wed, 18 Jan 2017 06:09:32 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:6f59bd129178688744affff3b6d0baa0becaf2b7bf9b0a9500c58abcb6142a04
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283514274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f10e1e593ae63ad0c9469cf63417e667a43bf6a91170dd4e8ed4b9044ac3e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:46:06 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:49:45 GMT
ENV ODOO_VERSION=9.0
# Tue, 17 Jan 2017 18:49:46 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:51:01 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'c9e66e878146940ef188eaa8c9bc5da7e4306982 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:51:03 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 17 Jan 2017 18:51:03 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:51:04 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:51:05 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:51:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:51:06 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:51:06 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:51:06 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:51:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:51:07 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72950d8783cffb22b9f107ea8bbd6491fdb4fda908f3440639c14cce42b9558d`  
		Last Modified: Wed, 18 Jan 2017 06:06:46 GMT  
		Size: 86.0 MB (85995026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1111a71e36c9f96f69c15fca573e99fc55d9167e1e3816475444796eaf3e4c5`  
		Last Modified: Wed, 18 Jan 2017 06:15:21 GMT  
		Size: 146.2 MB (146156131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728aabe7ebf007f0b8dac64cf298a89e6b8d7387fa14046636a15fe489ae727e`  
		Last Modified: Wed, 18 Jan 2017 06:13:23 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510fab1b7cf97274b0b07cb02a769ce68bab157351134340ba33c93aeaaa4982`  
		Last Modified: Wed, 18 Jan 2017 06:13:22 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf966449559b320bccfef88165b338ba69aef982fd43a950cbe46ad66cdb0006`  
		Last Modified: Wed, 18 Jan 2017 06:13:22 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4142964ce2e38b0cb9785fb9a23cc62010f711c601ef1f06d71135c8ff7dde`  
		Last Modified: Wed, 18 Jan 2017 06:13:20 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:6f59bd129178688744affff3b6d0baa0becaf2b7bf9b0a9500c58abcb6142a04
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283514274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f10e1e593ae63ad0c9469cf63417e667a43bf6a91170dd4e8ed4b9044ac3e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:46:06 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:49:45 GMT
ENV ODOO_VERSION=9.0
# Tue, 17 Jan 2017 18:49:46 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:51:01 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'c9e66e878146940ef188eaa8c9bc5da7e4306982 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:51:03 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 17 Jan 2017 18:51:03 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:51:04 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:51:05 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:51:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:51:06 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:51:06 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 17 Jan 2017 18:51:06 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:51:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:51:07 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72950d8783cffb22b9f107ea8bbd6491fdb4fda908f3440639c14cce42b9558d`  
		Last Modified: Wed, 18 Jan 2017 06:06:46 GMT  
		Size: 86.0 MB (85995026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1111a71e36c9f96f69c15fca573e99fc55d9167e1e3816475444796eaf3e4c5`  
		Last Modified: Wed, 18 Jan 2017 06:15:21 GMT  
		Size: 146.2 MB (146156131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728aabe7ebf007f0b8dac64cf298a89e6b8d7387fa14046636a15fe489ae727e`  
		Last Modified: Wed, 18 Jan 2017 06:13:23 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510fab1b7cf97274b0b07cb02a769ce68bab157351134340ba33c93aeaaa4982`  
		Last Modified: Wed, 18 Jan 2017 06:13:22 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf966449559b320bccfef88165b338ba69aef982fd43a950cbe46ad66cdb0006`  
		Last Modified: Wed, 18 Jan 2017 06:13:22 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4142964ce2e38b0cb9785fb9a23cc62010f711c601ef1f06d71135c8ff7dde`  
		Last Modified: Wed, 18 Jan 2017 06:13:20 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:481490b876c6f0776ec3130f125df34f5e6d6b1cc143a6ede067b328fe839d29
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273213789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a950e8ec6b228021699980660123fa94f57c753ddb8498bb1253ef05c505dde3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:46:06 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_VERSION=10.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:47:21 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:47:23 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:47:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:47:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:47:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:26 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:47:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72950d8783cffb22b9f107ea8bbd6491fdb4fda908f3440639c14cce42b9558d`  
		Last Modified: Wed, 18 Jan 2017 06:06:46 GMT  
		Size: 86.0 MB (85995026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1b83236a1269b0e433ead51cc6c8c6545a7755c40d3d98a8085ea0a37dcf3`  
		Last Modified: Wed, 18 Jan 2017 06:08:25 GMT  
		Size: 135.9 MB (135855677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a5062aa23cd0884d8a4c865ffeb85287f5095029f08dc7c5b7678bd034ec0`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a946566bea080328aca11efedac59aaabc467a08e7d19d3e605d415d5e386`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795476a3a05f3f82f20d56f8ecfc70b42118a1f2265d6c1af72db2daeace24d9`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3e82e2a3e49db69686d016a1f4480910230ba2e525de0f782f9852852c90d`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:481490b876c6f0776ec3130f125df34f5e6d6b1cc143a6ede067b328fe839d29
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273213789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a950e8ec6b228021699980660123fa94f57c753ddb8498bb1253ef05c505dde3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:46:06 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_VERSION=10.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:47:21 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:47:23 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:47:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:47:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:47:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:26 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:47:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72950d8783cffb22b9f107ea8bbd6491fdb4fda908f3440639c14cce42b9558d`  
		Last Modified: Wed, 18 Jan 2017 06:06:46 GMT  
		Size: 86.0 MB (85995026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1b83236a1269b0e433ead51cc6c8c6545a7755c40d3d98a8085ea0a37dcf3`  
		Last Modified: Wed, 18 Jan 2017 06:08:25 GMT  
		Size: 135.9 MB (135855677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a5062aa23cd0884d8a4c865ffeb85287f5095029f08dc7c5b7678bd034ec0`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a946566bea080328aca11efedac59aaabc467a08e7d19d3e605d415d5e386`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795476a3a05f3f82f20d56f8ecfc70b42118a1f2265d6c1af72db2daeace24d9`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3e82e2a3e49db69686d016a1f4480910230ba2e525de0f782f9852852c90d`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:481490b876c6f0776ec3130f125df34f5e6d6b1cc143a6ede067b328fe839d29
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273213789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a950e8ec6b228021699980660123fa94f57c753ddb8498bb1253ef05c505dde3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:45:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jan 2017 18:46:06 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_VERSION=10.0
# Tue, 17 Jan 2017 18:46:06 GMT
ENV ODOO_RELEASE=20161123
# Tue, 17 Jan 2017 18:47:21 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jan 2017 18:47:22 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Tue, 17 Jan 2017 18:47:23 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jan 2017 18:47:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jan 2017 18:47:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jan 2017 18:47:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jan 2017 18:47:26 GMT
USER [odoo]
# Tue, 17 Jan 2017 18:47:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 18:47:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72950d8783cffb22b9f107ea8bbd6491fdb4fda908f3440639c14cce42b9558d`  
		Last Modified: Wed, 18 Jan 2017 06:06:46 GMT  
		Size: 86.0 MB (85995026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1b83236a1269b0e433ead51cc6c8c6545a7755c40d3d98a8085ea0a37dcf3`  
		Last Modified: Wed, 18 Jan 2017 06:08:25 GMT  
		Size: 135.9 MB (135855677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a5062aa23cd0884d8a4c865ffeb85287f5095029f08dc7c5b7678bd034ec0`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a946566bea080328aca11efedac59aaabc467a08e7d19d3e605d415d5e386`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795476a3a05f3f82f20d56f8ecfc70b42118a1f2265d6c1af72db2daeace24d9`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3e82e2a3e49db69686d016a1f4480910230ba2e525de0f782f9852852c90d`  
		Last Modified: Wed, 18 Jan 2017 06:05:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
