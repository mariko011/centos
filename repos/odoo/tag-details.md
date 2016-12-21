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
$ docker pull odoo@sha256:cca8d669b240e1d979d6a89d0f213dacfe3231ad0c6438c3413034784b4c3733
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268757342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11765ac19654709683a413981413dc64cffc9c3540909b47e3b330a6ed02233d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:16:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:16:33 GMT
ENV ODOO_VERSION=8.0
# Wed, 14 Dec 2016 17:16:33 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:17:24 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcc9fa35fae811958ee08a0f51dfc23242e755b6 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:17:25 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 14 Dec 2016 17:17:26 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:17:27 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:17:28 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:17:28 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:17:29 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:17:29 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:17:30 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:17:31 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a5d9347ee632f6fa6bdb2d313c09e3239590ac186f1068d9f5f65a1ea90c1a`  
		Last Modified: Wed, 21 Dec 2016 18:49:39 GMT  
		Size: 86.3 MB (86283229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1096f8ecd1ffad347bcb4127bb17e8e0fc5b4b8be670ab10edad79224e7a19d2`  
		Last Modified: Wed, 21 Dec 2016 18:50:01 GMT  
		Size: 131.1 MB (131109080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac8d9b08f832d6a95a2b19a45c1f112a69fc518b134f66117045e835778e8a4`  
		Last Modified: Wed, 21 Dec 2016 18:49:08 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cb245e1318aabb6f4b0a5c9a1eb5ba03f0db4269879c4442711bc6eb4695d1`  
		Last Modified: Wed, 21 Dec 2016 18:49:08 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70b1b6950376265e76d5877adb07fe668371144c60ae4e4081c4900e70d8b5`  
		Last Modified: Wed, 21 Dec 2016 18:49:08 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af46b3d70578c13ce4a3fc4ee0d50f20048bf349d3b318e78c5e5646dab5a2`  
		Last Modified: Wed, 21 Dec 2016 18:49:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:cca8d669b240e1d979d6a89d0f213dacfe3231ad0c6438c3413034784b4c3733
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268757342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11765ac19654709683a413981413dc64cffc9c3540909b47e3b330a6ed02233d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:16:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:16:33 GMT
ENV ODOO_VERSION=8.0
# Wed, 14 Dec 2016 17:16:33 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:17:24 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcc9fa35fae811958ee08a0f51dfc23242e755b6 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:17:25 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 14 Dec 2016 17:17:26 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:17:27 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:17:28 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:17:28 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:17:29 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:17:29 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:17:30 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:17:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:17:31 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a5d9347ee632f6fa6bdb2d313c09e3239590ac186f1068d9f5f65a1ea90c1a`  
		Last Modified: Wed, 21 Dec 2016 18:49:39 GMT  
		Size: 86.3 MB (86283229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1096f8ecd1ffad347bcb4127bb17e8e0fc5b4b8be670ab10edad79224e7a19d2`  
		Last Modified: Wed, 21 Dec 2016 18:50:01 GMT  
		Size: 131.1 MB (131109080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac8d9b08f832d6a95a2b19a45c1f112a69fc518b134f66117045e835778e8a4`  
		Last Modified: Wed, 21 Dec 2016 18:49:08 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cb245e1318aabb6f4b0a5c9a1eb5ba03f0db4269879c4442711bc6eb4695d1`  
		Last Modified: Wed, 21 Dec 2016 18:49:08 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70b1b6950376265e76d5877adb07fe668371144c60ae4e4081c4900e70d8b5`  
		Last Modified: Wed, 21 Dec 2016 18:49:08 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af46b3d70578c13ce4a3fc4ee0d50f20048bf349d3b318e78c5e5646dab5a2`  
		Last Modified: Wed, 21 Dec 2016 18:49:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:063a7a30bc71b381c7973117d91dd53c5d6ff5bfe9a3d59fece1f2c2623b7cc3
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283508477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3ed8357d864fd7c702f2b6058477c683d26a4a4a43dc0a9434454fbf97c1d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:14:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:17:31 GMT
ENV ODOO_VERSION=9.0
# Wed, 14 Dec 2016 17:17:32 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:18:31 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'c9e66e878146940ef188eaa8c9bc5da7e4306982 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:18:32 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 14 Dec 2016 17:18:33 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:18:35 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:18:36 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:18:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:18:37 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:18:37 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:18:38 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:18:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:18:39 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c4cd4ef734b6f3725e45edf2fd83ece4173442c4acd18be994ca75884e21e`  
		Last Modified: Wed, 21 Dec 2016 18:47:47 GMT  
		Size: 86.0 MB (85980399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc782ac3bc1fc85625e411bd0d40f25038f2f42c7153642301d16793a4bbb239`  
		Last Modified: Wed, 21 Dec 2016 18:51:33 GMT  
		Size: 146.2 MB (146163043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15ca2b9e0dbb5da7d959c156411742bd1cc13bebe3f519654cd4dbba9c2ee0`  
		Last Modified: Wed, 21 Dec 2016 18:50:38 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1952af09b38dd4d85ae6c632f30b96bbc70325293efe8e05d3699e64b4a7391c`  
		Last Modified: Wed, 21 Dec 2016 18:50:38 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc626f051cfc56704963448d87bc9f55d7f0bd97d413e4685db5fdf50e36a5`  
		Last Modified: Wed, 21 Dec 2016 18:50:37 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a65f83e768171309a83e8ed47d4a449373f38f7d57898be1c196d25b710ddd3`  
		Last Modified: Wed, 21 Dec 2016 18:50:38 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:063a7a30bc71b381c7973117d91dd53c5d6ff5bfe9a3d59fece1f2c2623b7cc3
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283508477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3ed8357d864fd7c702f2b6058477c683d26a4a4a43dc0a9434454fbf97c1d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:14:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:17:31 GMT
ENV ODOO_VERSION=9.0
# Wed, 14 Dec 2016 17:17:32 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:18:31 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'c9e66e878146940ef188eaa8c9bc5da7e4306982 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:18:32 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 14 Dec 2016 17:18:33 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:18:35 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:18:36 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:18:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:18:37 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:18:37 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 14 Dec 2016 17:18:38 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:18:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:18:39 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c4cd4ef734b6f3725e45edf2fd83ece4173442c4acd18be994ca75884e21e`  
		Last Modified: Wed, 21 Dec 2016 18:47:47 GMT  
		Size: 86.0 MB (85980399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc782ac3bc1fc85625e411bd0d40f25038f2f42c7153642301d16793a4bbb239`  
		Last Modified: Wed, 21 Dec 2016 18:51:33 GMT  
		Size: 146.2 MB (146163043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15ca2b9e0dbb5da7d959c156411742bd1cc13bebe3f519654cd4dbba9c2ee0`  
		Last Modified: Wed, 21 Dec 2016 18:50:38 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1952af09b38dd4d85ae6c632f30b96bbc70325293efe8e05d3699e64b4a7391c`  
		Last Modified: Wed, 21 Dec 2016 18:50:38 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc626f051cfc56704963448d87bc9f55d7f0bd97d413e4685db5fdf50e36a5`  
		Last Modified: Wed, 21 Dec 2016 18:50:37 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a65f83e768171309a83e8ed47d4a449373f38f7d57898be1c196d25b710ddd3`  
		Last Modified: Wed, 21 Dec 2016 18:50:38 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:c5c530de5fdcd206617113f381f194abc8f5d6c272d3fb4f301eadcc5c6985e9
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273208473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779beea033a4224611a1ad7f5ced11b2c6728c195d5e2d04f8dceb221f08e842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:14:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:14:43 GMT
ENV ODOO_VERSION=10.0
# Wed, 14 Dec 2016 17:14:44 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:15:47 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:15:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:15:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:15:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:15:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:53 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:15:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c4cd4ef734b6f3725e45edf2fd83ece4173442c4acd18be994ca75884e21e`  
		Last Modified: Wed, 21 Dec 2016 18:47:47 GMT  
		Size: 86.0 MB (85980399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c8c773fde8e31a94c89b034abe01163a55a7082706340071b3e3fc748d7198`  
		Last Modified: Wed, 21 Dec 2016 18:48:13 GMT  
		Size: 135.9 MB (135863071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ab903d6a2d976dbcc2b86476f1389ff4682777bda5e3f0600b522f274a4241`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b470300aba74c43a1ba7ef624abd20eaf09ed7e1b8589e1a20742080d1611c4`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ca3541a70cc622580ea66e38cd3e260ba45aabf3054119ef06f2c183697db`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a85d3778d8fec3a7d4bf27b3d86a0df4d2d6fcc16f595f6d0e1616dbc2598`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:c5c530de5fdcd206617113f381f194abc8f5d6c272d3fb4f301eadcc5c6985e9
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273208473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779beea033a4224611a1ad7f5ced11b2c6728c195d5e2d04f8dceb221f08e842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:14:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:14:43 GMT
ENV ODOO_VERSION=10.0
# Wed, 14 Dec 2016 17:14:44 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:15:47 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:15:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:15:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:15:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:15:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:53 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:15:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c4cd4ef734b6f3725e45edf2fd83ece4173442c4acd18be994ca75884e21e`  
		Last Modified: Wed, 21 Dec 2016 18:47:47 GMT  
		Size: 86.0 MB (85980399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c8c773fde8e31a94c89b034abe01163a55a7082706340071b3e3fc748d7198`  
		Last Modified: Wed, 21 Dec 2016 18:48:13 GMT  
		Size: 135.9 MB (135863071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ab903d6a2d976dbcc2b86476f1389ff4682777bda5e3f0600b522f274a4241`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b470300aba74c43a1ba7ef624abd20eaf09ed7e1b8589e1a20742080d1611c4`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ca3541a70cc622580ea66e38cd3e260ba45aabf3054119ef06f2c183697db`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a85d3778d8fec3a7d4bf27b3d86a0df4d2d6fcc16f595f6d0e1616dbc2598`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:c5c530de5fdcd206617113f381f194abc8f5d6c272d3fb4f301eadcc5c6985e9
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273208473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779beea033a4224611a1ad7f5ced11b2c6728c195d5e2d04f8dceb221f08e842`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:14:06 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Dec 2016 17:14:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Dec 2016 17:14:43 GMT
ENV ODOO_VERSION=10.0
# Wed, 14 Dec 2016 17:14:44 GMT
ENV ODOO_RELEASE=20161123
# Wed, 14 Dec 2016 17:15:47 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c9edd6f1b5673c2a87fe65cfa5f404ef5f9c8e7 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Dec 2016 17:15:49 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Wed, 14 Dec 2016 17:15:50 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:51 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Dec 2016 17:15:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Dec 2016 17:15:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Dec 2016 17:15:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Dec 2016 17:15:53 GMT
USER [odoo]
# Wed, 14 Dec 2016 17:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 17:15:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9c4cd4ef734b6f3725e45edf2fd83ece4173442c4acd18be994ca75884e21e`  
		Last Modified: Wed, 21 Dec 2016 18:47:47 GMT  
		Size: 86.0 MB (85980399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c8c773fde8e31a94c89b034abe01163a55a7082706340071b3e3fc748d7198`  
		Last Modified: Wed, 21 Dec 2016 18:48:13 GMT  
		Size: 135.9 MB (135863071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ab903d6a2d976dbcc2b86476f1389ff4682777bda5e3f0600b522f274a4241`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b470300aba74c43a1ba7ef624abd20eaf09ed7e1b8589e1a20742080d1611c4`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ca3541a70cc622580ea66e38cd3e260ba45aabf3054119ef06f2c183697db`  
		Last Modified: Wed, 21 Dec 2016 18:47:17 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a85d3778d8fec3a7d4bf27b3d86a0df4d2d6fcc16f595f6d0e1616dbc2598`  
		Last Modified: Wed, 21 Dec 2016 18:47:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
