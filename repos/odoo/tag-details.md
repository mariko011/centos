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
$ docker pull odoo@sha256:b57e81f873caed14e47e530509c45fae6e1ff91ebc1476caacf8c7a8e507fe8c
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272743455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e86a1943e8250a670adf21a2f1a0deadbf2cbd9bc357be9c81321fc2c70c13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:41:21 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:41:22 GMT
ENV ODOO_VERSION=8.0
# Tue, 25 Apr 2017 02:41:22 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:42:58 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:43:00 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 25 Apr 2017 02:43:01 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:43:03 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:43:05 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:43:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:43:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:43:09 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:43:10 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:43:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:43:33 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d95d5630bfa46654cbc22f8c57469e131cf9195eaca1a2dbdb4f028925be2d`  
		Last Modified: Tue, 25 Apr 2017 20:15:35 GMT  
		Size: 88.4 MB (88363274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034345818c5c064c6bc588b40debea87c0a178fb118e641df48d2c1a3a434655`  
		Last Modified: Tue, 25 Apr 2017 20:15:53 GMT  
		Size: 131.8 MB (131827972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2701db490b58430b2c90199f8f3d2f46b1418ea873d5b67db295f80ff1e6743`  
		Last Modified: Tue, 25 Apr 2017 20:15:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2970927aa5624ec0db4c841de9b77411b2e55a5e40096e64bc254f953584056d`  
		Last Modified: Tue, 25 Apr 2017 20:15:09 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0ccd7ae161fb9eb6c0abb54667251d3423b5426bf9bf36ca5a04cdd2bc1d2f`  
		Last Modified: Tue, 25 Apr 2017 20:15:09 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4ac56842f5a8b3c638eece0da44af9765905255219d63b7c442cd7de49b43c`  
		Last Modified: Tue, 25 Apr 2017 20:15:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:b57e81f873caed14e47e530509c45fae6e1ff91ebc1476caacf8c7a8e507fe8c
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272743455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e86a1943e8250a670adf21a2f1a0deadbf2cbd9bc357be9c81321fc2c70c13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:41:21 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:41:22 GMT
ENV ODOO_VERSION=8.0
# Tue, 25 Apr 2017 02:41:22 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:42:58 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'cd8c1dc9d2ddf5a538381eed85871a2e343ec8ae odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:43:00 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 25 Apr 2017 02:43:01 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:43:03 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:43:05 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:43:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:43:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:43:09 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:43:10 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:43:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:43:33 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d95d5630bfa46654cbc22f8c57469e131cf9195eaca1a2dbdb4f028925be2d`  
		Last Modified: Tue, 25 Apr 2017 20:15:35 GMT  
		Size: 88.4 MB (88363274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034345818c5c064c6bc588b40debea87c0a178fb118e641df48d2c1a3a434655`  
		Last Modified: Tue, 25 Apr 2017 20:15:53 GMT  
		Size: 131.8 MB (131827972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2701db490b58430b2c90199f8f3d2f46b1418ea873d5b67db295f80ff1e6743`  
		Last Modified: Tue, 25 Apr 2017 20:15:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2970927aa5624ec0db4c841de9b77411b2e55a5e40096e64bc254f953584056d`  
		Last Modified: Tue, 25 Apr 2017 20:15:09 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0ccd7ae161fb9eb6c0abb54667251d3423b5426bf9bf36ca5a04cdd2bc1d2f`  
		Last Modified: Tue, 25 Apr 2017 20:15:09 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4ac56842f5a8b3c638eece0da44af9765905255219d63b7c442cd7de49b43c`  
		Last Modified: Tue, 25 Apr 2017 20:15:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:1c5df7fe85828d583251bdc001a7b0b4968f2d9e34c9ae711f085204884d96bb
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288469904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb57241eaaa80c50b45d20f9f994a63256f129bef06345286fb98e77681eba27`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:37:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:44:13 GMT
ENV ODOO_VERSION=9.0
# Tue, 25 Apr 2017 02:44:14 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:45:45 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:45:56 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 25 Apr 2017 02:45:58 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:46:00 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:46:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:46:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:46:04 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:46:05 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:46:06 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:46:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:46:07 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4c51af3b00bd5cbb3b95682f87a5a861fb3f14dc338a6d409ed0bef2a05f0f`  
		Last Modified: Tue, 25 Apr 2017 20:13:47 GMT  
		Size: 88.7 MB (88741424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21946c607d541c059f355f4a0eaf9a5cc0b17ce7281eecd3150b66c00ef29db2`  
		Last Modified: Tue, 25 Apr 2017 20:17:20 GMT  
		Size: 147.2 MB (147176287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154922f3245beb69c2dfa82b9d38dd0c38f995a6e04f40fc5a2c52c44afbe925`  
		Last Modified: Tue, 25 Apr 2017 20:16:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ffeeb858f967b3f21bce554877d0c940ff182fc02fb28ca080200810f814b`  
		Last Modified: Tue, 25 Apr 2017 20:16:36 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1772a9657cef401564bee3c5ca635398197225d758c9c852bd625e15daceb3f4`  
		Last Modified: Tue, 25 Apr 2017 20:16:36 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a142111fedac1d5fc59899e37bfd3212bbcc17fd1ff8426c39019c5ca409d5`  
		Last Modified: Tue, 25 Apr 2017 20:16:35 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:1c5df7fe85828d583251bdc001a7b0b4968f2d9e34c9ae711f085204884d96bb
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288469904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb57241eaaa80c50b45d20f9f994a63256f129bef06345286fb98e77681eba27`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:37:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:44:13 GMT
ENV ODOO_VERSION=9.0
# Tue, 25 Apr 2017 02:44:14 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:45:45 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '4ff504f4b2a49667a0bc8bbca95079305d8108c8 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:45:56 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 25 Apr 2017 02:45:58 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:46:00 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:46:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:46:03 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:46:04 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:46:05 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 25 Apr 2017 02:46:06 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:46:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:46:07 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4c51af3b00bd5cbb3b95682f87a5a861fb3f14dc338a6d409ed0bef2a05f0f`  
		Last Modified: Tue, 25 Apr 2017 20:13:47 GMT  
		Size: 88.7 MB (88741424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21946c607d541c059f355f4a0eaf9a5cc0b17ce7281eecd3150b66c00ef29db2`  
		Last Modified: Tue, 25 Apr 2017 20:17:20 GMT  
		Size: 147.2 MB (147176287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154922f3245beb69c2dfa82b9d38dd0c38f995a6e04f40fc5a2c52c44afbe925`  
		Last Modified: Tue, 25 Apr 2017 20:16:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ffeeb858f967b3f21bce554877d0c940ff182fc02fb28ca080200810f814b`  
		Last Modified: Tue, 25 Apr 2017 20:16:36 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1772a9657cef401564bee3c5ca635398197225d758c9c852bd625e15daceb3f4`  
		Last Modified: Tue, 25 Apr 2017 20:16:36 GMT  
		Size: 591.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a142111fedac1d5fc59899e37bfd3212bbcc17fd1ff8426c39019c5ca409d5`  
		Last Modified: Tue, 25 Apr 2017 20:16:35 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:ee6e6d15b39f8bf5a83664cfefa95d4d27d20c40deabaff0c81929fc396d715b
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273118759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f200cfffa8402c5e1b3b5bb783b3fd4470093162ca156d472fe9e6000974d13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:37:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:37:41 GMT
ENV ODOO_VERSION=10.0
# Tue, 25 Apr 2017 02:37:43 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:39:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:39:11 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 25 Apr 2017 02:39:12 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:39:15 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:39:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:39:19 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:39:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:20 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:39:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:39:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4c51af3b00bd5cbb3b95682f87a5a861fb3f14dc338a6d409ed0bef2a05f0f`  
		Last Modified: Tue, 25 Apr 2017 20:13:47 GMT  
		Size: 88.7 MB (88741424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5802f724b90e24eb49c737d30493c2f02298dcf38e2e671bf64a8cd2a9f7ff52`  
		Last Modified: Tue, 25 Apr 2017 20:14:06 GMT  
		Size: 131.8 MB (131825180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9e7a704125b876cc4db4992548c267e7d5aa4df97d38180af5625208c3717e`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3f3e40ee4761df4c7feab5bd271fbee6128e2d760ec2c3a610788f87cdd1ac`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ed0f2d93390580b6a016bd258feda3c756a2cf754729536ace22deb66902b6`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf51298934800bbe910798c7528640e49c5535c7164b0766c071529bbfdabff`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:ee6e6d15b39f8bf5a83664cfefa95d4d27d20c40deabaff0c81929fc396d715b
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273118759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f200cfffa8402c5e1b3b5bb783b3fd4470093162ca156d472fe9e6000974d13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:37:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:37:41 GMT
ENV ODOO_VERSION=10.0
# Tue, 25 Apr 2017 02:37:43 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:39:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:39:11 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 25 Apr 2017 02:39:12 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:39:15 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:39:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:39:19 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:39:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:20 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:39:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:39:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4c51af3b00bd5cbb3b95682f87a5a861fb3f14dc338a6d409ed0bef2a05f0f`  
		Last Modified: Tue, 25 Apr 2017 20:13:47 GMT  
		Size: 88.7 MB (88741424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5802f724b90e24eb49c737d30493c2f02298dcf38e2e671bf64a8cd2a9f7ff52`  
		Last Modified: Tue, 25 Apr 2017 20:14:06 GMT  
		Size: 131.8 MB (131825180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9e7a704125b876cc4db4992548c267e7d5aa4df97d38180af5625208c3717e`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3f3e40ee4761df4c7feab5bd271fbee6128e2d760ec2c3a610788f87cdd1ac`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ed0f2d93390580b6a016bd258feda3c756a2cf754729536ace22deb66902b6`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf51298934800bbe910798c7528640e49c5535c7164b0766c071529bbfdabff`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:ee6e6d15b39f8bf5a83664cfefa95d4d27d20c40deabaff0c81929fc396d715b
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273118759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f200cfffa8402c5e1b3b5bb783b3fd4470093162ca156d472fe9e6000974d13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 02:36:33 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 25 Apr 2017 02:37:40 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 25 Apr 2017 02:37:41 GMT
ENV ODOO_VERSION=10.0
# Tue, 25 Apr 2017 02:37:43 GMT
ENV ODOO_RELEASE=20170207
# Tue, 25 Apr 2017 02:39:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5d2fb0cc03fa0795a7b2186bb341caa74d372e82 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 25 Apr 2017 02:39:11 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 25 Apr 2017 02:39:12 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 25 Apr 2017 02:39:15 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 25 Apr 2017 02:39:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 25 Apr 2017 02:39:19 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 25 Apr 2017 02:39:20 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 25 Apr 2017 02:39:20 GMT
USER [odoo]
# Tue, 25 Apr 2017 02:39:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Apr 2017 02:39:22 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4c51af3b00bd5cbb3b95682f87a5a861fb3f14dc338a6d409ed0bef2a05f0f`  
		Last Modified: Tue, 25 Apr 2017 20:13:47 GMT  
		Size: 88.7 MB (88741424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5802f724b90e24eb49c737d30493c2f02298dcf38e2e671bf64a8cd2a9f7ff52`  
		Last Modified: Tue, 25 Apr 2017 20:14:06 GMT  
		Size: 131.8 MB (131825180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9e7a704125b876cc4db4992548c267e7d5aa4df97d38180af5625208c3717e`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3f3e40ee4761df4c7feab5bd271fbee6128e2d760ec2c3a610788f87cdd1ac`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ed0f2d93390580b6a016bd258feda3c756a2cf754729536ace22deb66902b6`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf51298934800bbe910798c7528640e49c5535c7164b0766c071529bbfdabff`  
		Last Modified: Tue, 25 Apr 2017 20:13:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
