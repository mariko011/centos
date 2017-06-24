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
$ docker pull odoo@sha256:589e97af2dbd42212a831c9135058f711e354ae950417832559806dc324fa033
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272818279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1138353646f58407e16a4106ced419b2f953ad23e7212bee62b3fbb83aa440a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 01:08:13 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Jun 2017 01:09:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 23 Jun 2017 01:09:01 GMT
ENV ODOO_VERSION=8.0
# Fri, 23 Jun 2017 01:09:01 GMT
ENV ODOO_RELEASE=20170207
# Fri, 23 Jun 2017 01:10:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Jun 2017 01:10:21 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 23 Jun 2017 01:10:23 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 23 Jun 2017 01:10:25 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:10:26 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Jun 2017 01:10:27 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Jun 2017 01:10:28 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Jun 2017 01:10:29 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:10:30 GMT
USER [odoo]
# Fri, 23 Jun 2017 01:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 01:10:32 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55794cb5c01007a499a81112a9c0f9f33c3dce7e8ca9506f0119c77bfb3f9116`  
		Last Modified: Sat, 24 Jun 2017 16:14:34 GMT  
		Size: 88.4 MB (88366516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbc55a725b0e55eb1a1eb4d7a2c3c15ce3f4a6114972e67fb5c9acc82155108`  
		Last Modified: Sat, 24 Jun 2017 16:15:01 GMT  
		Size: 131.8 MB (131835022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fdbccaa37b9b5e942836409ea07776d359c54a2d19a24c7e6e183ca3d4d71a`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d860d2f49770e0741994ef133e23dee45f3c09fd8d44d11d98ceaf6c072a29`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5957fd747a52b3eaf00db63bfbd197692a7220c12c21e9f86545430fa41ad274`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5091bf6c72f6181e46507e80c809403ae7c9831800884233ae8cf15346e53f11`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:589e97af2dbd42212a831c9135058f711e354ae950417832559806dc324fa033
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272818279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1138353646f58407e16a4106ced419b2f953ad23e7212bee62b3fbb83aa440a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 01:08:13 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Jun 2017 01:09:00 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 23 Jun 2017 01:09:01 GMT
ENV ODOO_VERSION=8.0
# Fri, 23 Jun 2017 01:09:01 GMT
ENV ODOO_RELEASE=20170207
# Fri, 23 Jun 2017 01:10:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Jun 2017 01:10:21 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 23 Jun 2017 01:10:23 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 23 Jun 2017 01:10:25 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:10:26 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Jun 2017 01:10:27 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Jun 2017 01:10:28 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Jun 2017 01:10:29 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:10:30 GMT
USER [odoo]
# Fri, 23 Jun 2017 01:10:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 01:10:32 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55794cb5c01007a499a81112a9c0f9f33c3dce7e8ca9506f0119c77bfb3f9116`  
		Last Modified: Sat, 24 Jun 2017 16:14:34 GMT  
		Size: 88.4 MB (88366516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbc55a725b0e55eb1a1eb4d7a2c3c15ce3f4a6114972e67fb5c9acc82155108`  
		Last Modified: Sat, 24 Jun 2017 16:15:01 GMT  
		Size: 131.8 MB (131835022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fdbccaa37b9b5e942836409ea07776d359c54a2d19a24c7e6e183ca3d4d71a`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d860d2f49770e0741994ef133e23dee45f3c09fd8d44d11d98ceaf6c072a29`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5957fd747a52b3eaf00db63bfbd197692a7220c12c21e9f86545430fa41ad274`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5091bf6c72f6181e46507e80c809403ae7c9831800884233ae8cf15346e53f11`  
		Last Modified: Sat, 24 Jun 2017 16:14:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:44d5ef58a1a308cac211dccf8ab92a3ebb33c708e06a3d42e4035206409c607b
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288525703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d4e86df4b46f86ab29e57e85df91162f1f6df66f07c5bfd72d38b6c790007b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 01:08:13 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Jun 2017 01:39:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 23 Jun 2017 01:39:43 GMT
ENV ODOO_VERSION=9.0
# Fri, 23 Jun 2017 01:39:44 GMT
ENV ODOO_RELEASE=20170207
# Fri, 23 Jun 2017 01:40:56 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Jun 2017 01:40:57 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 23 Jun 2017 01:40:58 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Fri, 23 Jun 2017 01:40:59 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:41:01 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Jun 2017 01:41:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Jun 2017 01:41:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Jun 2017 01:41:03 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:41:03 GMT
USER [odoo]
# Fri, 23 Jun 2017 01:41:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 01:41:04 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32972ef7db8c3e7f415d4ae00abce0af6bfc9d2666d2552c1333ad568a520932`  
		Last Modified: Sat, 24 Jun 2017 16:31:17 GMT  
		Size: 88.7 MB (88738465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116797bdccf2959ac5f0947928450fbe6784f5c1cb6450e1b46ce65cb57c463e`  
		Last Modified: Sat, 24 Jun 2017 16:31:54 GMT  
		Size: 147.2 MB (147170513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f234c2cc7ef41c18c5c2b0b436169706e92d00db476afd32e09d68b7abb8048`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0070f9cc5391e137a9f66a1e490f022e94b1b9baa60d28d0bbed97075b228b6`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3c382471001cfa4afd95b6da399503690768037e6403f4555e763ca04baa09`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba25067cbe9470bc5ac7e9d31e77ea9c8e66562ecd34b92fb3b38466ca090300`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:44d5ef58a1a308cac211dccf8ab92a3ebb33c708e06a3d42e4035206409c607b
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288525703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d4e86df4b46f86ab29e57e85df91162f1f6df66f07c5bfd72d38b6c790007b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 01:08:13 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Jun 2017 01:39:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 23 Jun 2017 01:39:43 GMT
ENV ODOO_VERSION=9.0
# Fri, 23 Jun 2017 01:39:44 GMT
ENV ODOO_RELEASE=20170207
# Fri, 23 Jun 2017 01:40:56 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Jun 2017 01:40:57 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Fri, 23 Jun 2017 01:40:58 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Fri, 23 Jun 2017 01:40:59 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:41:01 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Jun 2017 01:41:01 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Jun 2017 01:41:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Jun 2017 01:41:03 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 23 Jun 2017 01:41:03 GMT
USER [odoo]
# Fri, 23 Jun 2017 01:41:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 01:41:04 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32972ef7db8c3e7f415d4ae00abce0af6bfc9d2666d2552c1333ad568a520932`  
		Last Modified: Sat, 24 Jun 2017 16:31:17 GMT  
		Size: 88.7 MB (88738465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116797bdccf2959ac5f0947928450fbe6784f5c1cb6450e1b46ce65cb57c463e`  
		Last Modified: Sat, 24 Jun 2017 16:31:54 GMT  
		Size: 147.2 MB (147170513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f234c2cc7ef41c18c5c2b0b436169706e92d00db476afd32e09d68b7abb8048`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0070f9cc5391e137a9f66a1e490f022e94b1b9baa60d28d0bbed97075b228b6`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3c382471001cfa4afd95b6da399503690768037e6403f4555e763ca04baa09`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba25067cbe9470bc5ac7e9d31e77ea9c8e66562ecd34b92fb3b38466ca090300`  
		Last Modified: Sat, 24 Jun 2017 16:30:56 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:0f61e36c1b7d5d42abd94c8ea1a1ab6f02b53be14f159a20b2b1e783970f040d
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273185167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de78fd099e3ffb80fbbe84aa4203b168f574b0a66e950d5aa1121d3227d12aaf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 01:08:13 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Jun 2017 01:39:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 23 Jun 2017 01:41:30 GMT
ENV ODOO_VERSION=10.0
# Fri, 23 Jun 2017 01:41:30 GMT
ENV ODOO_RELEASE=20170207
# Fri, 23 Jun 2017 01:42:50 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Jun 2017 01:42:51 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 23 Jun 2017 01:42:53 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 23 Jun 2017 01:42:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 23 Jun 2017 01:42:56 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Jun 2017 01:42:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Jun 2017 01:42:58 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Jun 2017 01:42:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 23 Jun 2017 01:42:59 GMT
USER [odoo]
# Fri, 23 Jun 2017 01:43:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 01:43:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32972ef7db8c3e7f415d4ae00abce0af6bfc9d2666d2552c1333ad568a520932`  
		Last Modified: Sat, 24 Jun 2017 16:31:17 GMT  
		Size: 88.7 MB (88738465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3599b9bb7b37768a3a251829b7baa22f044df384f32afd2ecdf3e0c31ea514c9`  
		Last Modified: Sat, 24 Jun 2017 16:46:27 GMT  
		Size: 131.8 MB (131830010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf26db8a2adc4e2702aa26a8cf29f8fceb1481092d294d868f4a83efa44b98`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ab85fc1d5fbea8c2bf918e7a6b1faac9297b4bce77bad27e0c4e3a80b6ac63`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f554dca679d265d02af0e34e1eb958a9fa4c39cbb5976380cb24dbdd3004078`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70f43967201fba4387b56bd75442642d8a11d86a16374cfe46bc45a5cb29b2`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:0f61e36c1b7d5d42abd94c8ea1a1ab6f02b53be14f159a20b2b1e783970f040d
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273185167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de78fd099e3ffb80fbbe84aa4203b168f574b0a66e950d5aa1121d3227d12aaf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 01:08:13 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Jun 2017 01:39:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 23 Jun 2017 01:41:30 GMT
ENV ODOO_VERSION=10.0
# Fri, 23 Jun 2017 01:41:30 GMT
ENV ODOO_RELEASE=20170207
# Fri, 23 Jun 2017 01:42:50 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Jun 2017 01:42:51 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 23 Jun 2017 01:42:53 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 23 Jun 2017 01:42:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 23 Jun 2017 01:42:56 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Jun 2017 01:42:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Jun 2017 01:42:58 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Jun 2017 01:42:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 23 Jun 2017 01:42:59 GMT
USER [odoo]
# Fri, 23 Jun 2017 01:43:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 01:43:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32972ef7db8c3e7f415d4ae00abce0af6bfc9d2666d2552c1333ad568a520932`  
		Last Modified: Sat, 24 Jun 2017 16:31:17 GMT  
		Size: 88.7 MB (88738465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3599b9bb7b37768a3a251829b7baa22f044df384f32afd2ecdf3e0c31ea514c9`  
		Last Modified: Sat, 24 Jun 2017 16:46:27 GMT  
		Size: 131.8 MB (131830010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf26db8a2adc4e2702aa26a8cf29f8fceb1481092d294d868f4a83efa44b98`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ab85fc1d5fbea8c2bf918e7a6b1faac9297b4bce77bad27e0c4e3a80b6ac63`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f554dca679d265d02af0e34e1eb958a9fa4c39cbb5976380cb24dbdd3004078`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70f43967201fba4387b56bd75442642d8a11d86a16374cfe46bc45a5cb29b2`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:0f61e36c1b7d5d42abd94c8ea1a1ab6f02b53be14f159a20b2b1e783970f040d
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273185167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de78fd099e3ffb80fbbe84aa4203b168f574b0a66e950d5aa1121d3227d12aaf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 01:08:13 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 23 Jun 2017 01:39:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 23 Jun 2017 01:41:30 GMT
ENV ODOO_VERSION=10.0
# Fri, 23 Jun 2017 01:41:30 GMT
ENV ODOO_RELEASE=20170207
# Fri, 23 Jun 2017 01:42:50 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 23 Jun 2017 01:42:51 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 23 Jun 2017 01:42:53 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 23 Jun 2017 01:42:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 23 Jun 2017 01:42:56 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 23 Jun 2017 01:42:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 23 Jun 2017 01:42:58 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 23 Jun 2017 01:42:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 23 Jun 2017 01:42:59 GMT
USER [odoo]
# Fri, 23 Jun 2017 01:43:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Jun 2017 01:43:01 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32972ef7db8c3e7f415d4ae00abce0af6bfc9d2666d2552c1333ad568a520932`  
		Last Modified: Sat, 24 Jun 2017 16:31:17 GMT  
		Size: 88.7 MB (88738465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3599b9bb7b37768a3a251829b7baa22f044df384f32afd2ecdf3e0c31ea514c9`  
		Last Modified: Sat, 24 Jun 2017 16:46:27 GMT  
		Size: 131.8 MB (131830010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf26db8a2adc4e2702aa26a8cf29f8fceb1481092d294d868f4a83efa44b98`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ab85fc1d5fbea8c2bf918e7a6b1faac9297b4bce77bad27e0c4e3a80b6ac63`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f554dca679d265d02af0e34e1eb958a9fa4c39cbb5976380cb24dbdd3004078`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70f43967201fba4387b56bd75442642d8a11d86a16374cfe46bc45a5cb29b2`  
		Last Modified: Sat, 24 Jun 2017 16:45:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
