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
$ docker pull odoo@sha256:9deda039e0df28aaf515001dd1606ab74a16ed25504447edc2912bca9019cd43
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272782862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7416f97212785382d84610f4bd83fcc1ec25f93aa070de267599660b220a9a38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:47:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 10 May 2017 13:50:55 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 10 May 2017 13:50:56 GMT
ENV ODOO_VERSION=8.0
# Wed, 10 May 2017 13:50:57 GMT
ENV ODOO_RELEASE=20170207
# Wed, 10 May 2017 13:52:16 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 10 May 2017 13:52:18 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 10 May 2017 13:52:19 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 10 May 2017 13:52:21 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:52:22 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 10 May 2017 13:52:23 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 10 May 2017 13:52:24 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 10 May 2017 13:52:24 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:52:25 GMT
USER [odoo]
# Wed, 10 May 2017 13:52:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 13:52:27 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222b2f2ca6f0476eabcd2c4326be6fb241ee65db25a60e96a1bbc69a64b36dbb`  
		Last Modified: Sat, 13 May 2017 09:03:32 GMT  
		Size: 88.4 MB (88367290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be62937337961e545df8331ccb6810ed7e8239efca995914d26c10fec44af3c1`  
		Last Modified: Sat, 13 May 2017 09:04:01 GMT  
		Size: 131.8 MB (131829623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb3776a04b9dbbf6792392770f5e3799ecc8c0ecd1b39e13b0af1bffbfe394f`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f290c238f102973b70be6b1b634de01b08cf56a803f462dbfcf24ce3801e7cd`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0d57fd06cbf30b6acb14af607aee9bdac9feb13e490e3101f985054379d6ad`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d2b19075b7c5ac6830e7368215d30d6ba5cc1a51999789d6437d2bb3faf48`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:9deda039e0df28aaf515001dd1606ab74a16ed25504447edc2912bca9019cd43
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272782862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7416f97212785382d84610f4bd83fcc1ec25f93aa070de267599660b220a9a38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:47:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 10 May 2017 13:50:55 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 10 May 2017 13:50:56 GMT
ENV ODOO_VERSION=8.0
# Wed, 10 May 2017 13:50:57 GMT
ENV ODOO_RELEASE=20170207
# Wed, 10 May 2017 13:52:16 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 10 May 2017 13:52:18 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 10 May 2017 13:52:19 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Wed, 10 May 2017 13:52:21 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:52:22 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 10 May 2017 13:52:23 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 10 May 2017 13:52:24 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 10 May 2017 13:52:24 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:52:25 GMT
USER [odoo]
# Wed, 10 May 2017 13:52:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 13:52:27 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222b2f2ca6f0476eabcd2c4326be6fb241ee65db25a60e96a1bbc69a64b36dbb`  
		Last Modified: Sat, 13 May 2017 09:03:32 GMT  
		Size: 88.4 MB (88367290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be62937337961e545df8331ccb6810ed7e8239efca995914d26c10fec44af3c1`  
		Last Modified: Sat, 13 May 2017 09:04:01 GMT  
		Size: 131.8 MB (131829623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb3776a04b9dbbf6792392770f5e3799ecc8c0ecd1b39e13b0af1bffbfe394f`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f290c238f102973b70be6b1b634de01b08cf56a803f462dbfcf24ce3801e7cd`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0d57fd06cbf30b6acb14af607aee9bdac9feb13e490e3101f985054379d6ad`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22d2b19075b7c5ac6830e7368215d30d6ba5cc1a51999789d6437d2bb3faf48`  
		Last Modified: Sat, 13 May 2017 09:03:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:982577dc49c7fdfc3585b1421a04ec93b3fbd69a43ba21e60811dc899688aba2
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dbdfc07d3c7de53626f5dd8f39fa73a6fc634cf444f9d262207e32d5a94c981`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:47:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 10 May 2017 13:48:29 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 10 May 2017 13:52:47 GMT
ENV ODOO_VERSION=9.0
# Wed, 10 May 2017 13:52:48 GMT
ENV ODOO_RELEASE=20170207
# Wed, 10 May 2017 13:54:06 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 10 May 2017 13:54:08 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 10 May 2017 13:54:09 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 10 May 2017 13:54:11 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:54:12 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 10 May 2017 13:54:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 10 May 2017 13:54:14 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 10 May 2017 13:54:15 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:54:16 GMT
USER [odoo]
# Wed, 10 May 2017 13:54:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 13:54:17 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa58b4cb7976b895be10950a1a981bff8b7ba15440169e342e06a0600a48c3`  
		Last Modified: Sat, 13 May 2017 09:01:31 GMT  
		Size: 88.7 MB (88741792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001f232d9422cb09db8fd3dd51fbc96224dc615056150022f9de46ae8d703d6`  
		Last Modified: Sat, 13 May 2017 09:05:43 GMT  
		Size: 147.2 MB (147162112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc1f6c38b46a8f5418929e044f5ccbe6b6929cf87572d2790f687d73bc71563`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9719d3da407d3d1d7b879b4569b7af5b99e465add683ab3ae6c71d08c5b1a0`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616853e309e0bfaef555a0d4f49b7fd9a916de52218a02f2e9c734bf628bcd48`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c901a45ced0482a922b37f2001175b9e828421bdc13ea8f7669ff9ff9c8d0a`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:982577dc49c7fdfc3585b1421a04ec93b3fbd69a43ba21e60811dc899688aba2
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288489836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dbdfc07d3c7de53626f5dd8f39fa73a6fc634cf444f9d262207e32d5a94c981`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:47:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 10 May 2017 13:48:29 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 10 May 2017 13:52:47 GMT
ENV ODOO_VERSION=9.0
# Wed, 10 May 2017 13:52:48 GMT
ENV ODOO_RELEASE=20170207
# Wed, 10 May 2017 13:54:06 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 10 May 2017 13:54:08 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 10 May 2017 13:54:09 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 10 May 2017 13:54:11 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:54:12 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 10 May 2017 13:54:13 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 10 May 2017 13:54:14 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 10 May 2017 13:54:15 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 10 May 2017 13:54:16 GMT
USER [odoo]
# Wed, 10 May 2017 13:54:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 13:54:17 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa58b4cb7976b895be10950a1a981bff8b7ba15440169e342e06a0600a48c3`  
		Last Modified: Sat, 13 May 2017 09:01:31 GMT  
		Size: 88.7 MB (88741792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001f232d9422cb09db8fd3dd51fbc96224dc615056150022f9de46ae8d703d6`  
		Last Modified: Sat, 13 May 2017 09:05:43 GMT  
		Size: 147.2 MB (147162112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc1f6c38b46a8f5418929e044f5ccbe6b6929cf87572d2790f687d73bc71563`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9719d3da407d3d1d7b879b4569b7af5b99e465add683ab3ae6c71d08c5b1a0`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616853e309e0bfaef555a0d4f49b7fd9a916de52218a02f2e9c734bf628bcd48`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c901a45ced0482a922b37f2001175b9e828421bdc13ea8f7669ff9ff9c8d0a`  
		Last Modified: Sat, 13 May 2017 09:04:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:4142e69138d0f7ff28b63d3c0ae61921ab54a4160fa23a11f163756bde275a58
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273148206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c69d49c6245cb7c7b55c547f543e9b1e602efe5d41dd30d77be9e212790d12f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:47:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 10 May 2017 13:48:29 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 10 May 2017 13:48:30 GMT
ENV ODOO_VERSION=10.0
# Wed, 10 May 2017 13:48:30 GMT
ENV ODOO_RELEASE=20170207
# Wed, 10 May 2017 13:49:32 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 10 May 2017 13:49:34 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 10 May 2017 13:49:35 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 10 May 2017 13:49:36 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 10 May 2017 13:49:38 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 10 May 2017 13:49:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 10 May 2017 13:49:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 10 May 2017 13:49:40 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 10 May 2017 13:49:41 GMT
USER [odoo]
# Wed, 10 May 2017 13:49:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 13:49:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa58b4cb7976b895be10950a1a981bff8b7ba15440169e342e06a0600a48c3`  
		Last Modified: Sat, 13 May 2017 09:01:31 GMT  
		Size: 88.7 MB (88741792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a34f15fdb3d7e10dab4b69e156cb7be11c3a43f47a8c1b2f5de0d95b407d82`  
		Last Modified: Sat, 13 May 2017 09:01:59 GMT  
		Size: 131.8 MB (131820515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265338d935fd43338ef074726e9995fd2c91d7e5ca082131e1d202cd88d460b8`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db91a24bbd5da5cf5a0eae8b64826206c5e0f3b80080840260988a8f646d794e`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f4c8f00995ab3581fee64f1c6368691fa616a6550ccdc45fc7b108c12b57f`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd128d4abe1574532dffbb0917474c829665714d6f7ee3e3c84f8a5142813e`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:4142e69138d0f7ff28b63d3c0ae61921ab54a4160fa23a11f163756bde275a58
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273148206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c69d49c6245cb7c7b55c547f543e9b1e602efe5d41dd30d77be9e212790d12f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:47:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 10 May 2017 13:48:29 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 10 May 2017 13:48:30 GMT
ENV ODOO_VERSION=10.0
# Wed, 10 May 2017 13:48:30 GMT
ENV ODOO_RELEASE=20170207
# Wed, 10 May 2017 13:49:32 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 10 May 2017 13:49:34 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 10 May 2017 13:49:35 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 10 May 2017 13:49:36 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 10 May 2017 13:49:38 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 10 May 2017 13:49:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 10 May 2017 13:49:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 10 May 2017 13:49:40 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 10 May 2017 13:49:41 GMT
USER [odoo]
# Wed, 10 May 2017 13:49:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 13:49:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa58b4cb7976b895be10950a1a981bff8b7ba15440169e342e06a0600a48c3`  
		Last Modified: Sat, 13 May 2017 09:01:31 GMT  
		Size: 88.7 MB (88741792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a34f15fdb3d7e10dab4b69e156cb7be11c3a43f47a8c1b2f5de0d95b407d82`  
		Last Modified: Sat, 13 May 2017 09:01:59 GMT  
		Size: 131.8 MB (131820515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265338d935fd43338ef074726e9995fd2c91d7e5ca082131e1d202cd88d460b8`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db91a24bbd5da5cf5a0eae8b64826206c5e0f3b80080840260988a8f646d794e`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f4c8f00995ab3581fee64f1c6368691fa616a6550ccdc45fc7b108c12b57f`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd128d4abe1574532dffbb0917474c829665714d6f7ee3e3c84f8a5142813e`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:4142e69138d0f7ff28b63d3c0ae61921ab54a4160fa23a11f163756bde275a58
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273148206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c69d49c6245cb7c7b55c547f543e9b1e602efe5d41dd30d77be9e212790d12f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 13:47:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 10 May 2017 13:48:29 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 10 May 2017 13:48:30 GMT
ENV ODOO_VERSION=10.0
# Wed, 10 May 2017 13:48:30 GMT
ENV ODOO_RELEASE=20170207
# Wed, 10 May 2017 13:49:32 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 10 May 2017 13:49:34 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 10 May 2017 13:49:35 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 10 May 2017 13:49:36 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 10 May 2017 13:49:38 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 10 May 2017 13:49:39 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 10 May 2017 13:49:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 10 May 2017 13:49:40 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 10 May 2017 13:49:41 GMT
USER [odoo]
# Wed, 10 May 2017 13:49:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 13:49:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa58b4cb7976b895be10950a1a981bff8b7ba15440169e342e06a0600a48c3`  
		Last Modified: Sat, 13 May 2017 09:01:31 GMT  
		Size: 88.7 MB (88741792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a34f15fdb3d7e10dab4b69e156cb7be11c3a43f47a8c1b2f5de0d95b407d82`  
		Last Modified: Sat, 13 May 2017 09:01:59 GMT  
		Size: 131.8 MB (131820515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265338d935fd43338ef074726e9995fd2c91d7e5ca082131e1d202cd88d460b8`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db91a24bbd5da5cf5a0eae8b64826206c5e0f3b80080840260988a8f646d794e`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048f4c8f00995ab3581fee64f1c6368691fa616a6550ccdc45fc7b108c12b57f`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cd128d4abe1574532dffbb0917474c829665714d6f7ee3e3c84f8a5142813e`  
		Last Modified: Sat, 13 May 2017 09:01:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
