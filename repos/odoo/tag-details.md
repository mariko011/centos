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
$ docker pull odoo@sha256:0d822713a40b09b2d4727937b6da7b3bc74dfefef216e4d5f6f9eab491517bc9
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267959970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a95f5d897957880919c231489dce14b193bf10b823b5c62959ce6c007d75e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:36:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:36:42 GMT
ENV ODOO_VERSION=8.0
# Thu, 03 Nov 2016 19:26:07 GMT
ENV ODOO_RELEASE=20161103
# Thu, 03 Nov 2016 19:27:08 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '1f0312e64731fd8f6c0d8bf9b3516ff1b13d01f2 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 03 Nov 2016 19:27:09 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Thu, 03 Nov 2016 19:27:09 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Thu, 03 Nov 2016 19:27:10 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:27:11 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 03 Nov 2016 19:27:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 03 Nov 2016 19:27:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 03 Nov 2016 19:27:12 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:27:12 GMT
USER [odoo]
# Thu, 03 Nov 2016 19:27:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 19:27:12 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91eceda3a20d76496239ddddccae2e996fc519786f09b66fa85d68e86c9a5ce`  
		Last Modified: Mon, 31 Oct 2016 23:42:07 GMT  
		Size: 86.3 MB (86282014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007f3fe1d478815acca4362d09b85c7cb874947f953c33443c5750a1624bf2d1`  
		Last Modified: Thu, 03 Nov 2016 19:29:59 GMT  
		Size: 130.3 MB (130323107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824f29dce287acb049f0f78e818056a3c19c29a9cf8e28bfad3a5dad2984bded`  
		Last Modified: Thu, 03 Nov 2016 19:29:23 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e7eb18b86fd731f8f37ef346d1f852154061298be3c3251187a60f3eef3f31`  
		Last Modified: Thu, 03 Nov 2016 19:29:24 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5981b2165d6f8f3e8c27cc6915499f679785fa64719b0dbd34fc30dc3dea0738`  
		Last Modified: Thu, 03 Nov 2016 19:29:24 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f55213615493b996ef39a0430f2666d01f78bfe1ad209e1aaae1560140adfa0`  
		Last Modified: Thu, 03 Nov 2016 19:29:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:0d822713a40b09b2d4727937b6da7b3bc74dfefef216e4d5f6f9eab491517bc9
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267959970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a95f5d897957880919c231489dce14b193bf10b823b5c62959ce6c007d75e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:36:42 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:36:42 GMT
ENV ODOO_VERSION=8.0
# Thu, 03 Nov 2016 19:26:07 GMT
ENV ODOO_RELEASE=20161103
# Thu, 03 Nov 2016 19:27:08 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '1f0312e64731fd8f6c0d8bf9b3516ff1b13d01f2 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 03 Nov 2016 19:27:09 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Thu, 03 Nov 2016 19:27:09 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Thu, 03 Nov 2016 19:27:10 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:27:11 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 03 Nov 2016 19:27:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 03 Nov 2016 19:27:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 03 Nov 2016 19:27:12 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:27:12 GMT
USER [odoo]
# Thu, 03 Nov 2016 19:27:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 19:27:12 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91eceda3a20d76496239ddddccae2e996fc519786f09b66fa85d68e86c9a5ce`  
		Last Modified: Mon, 31 Oct 2016 23:42:07 GMT  
		Size: 86.3 MB (86282014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007f3fe1d478815acca4362d09b85c7cb874947f953c33443c5750a1624bf2d1`  
		Last Modified: Thu, 03 Nov 2016 19:29:59 GMT  
		Size: 130.3 MB (130323107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824f29dce287acb049f0f78e818056a3c19c29a9cf8e28bfad3a5dad2984bded`  
		Last Modified: Thu, 03 Nov 2016 19:29:23 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e7eb18b86fd731f8f37ef346d1f852154061298be3c3251187a60f3eef3f31`  
		Last Modified: Thu, 03 Nov 2016 19:29:24 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5981b2165d6f8f3e8c27cc6915499f679785fa64719b0dbd34fc30dc3dea0738`  
		Last Modified: Thu, 03 Nov 2016 19:29:24 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f55213615493b996ef39a0430f2666d01f78bfe1ad209e1aaae1560140adfa0`  
		Last Modified: Thu, 03 Nov 2016 19:29:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:40380465e6c80093a330e6cbfe79680f4b95a34cbd0ddbd6c6ad88b744aab7dc
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274923288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88671c0097a46720f0f5e7fff420e935c2b23fa2a46d42b2b6e742342450463b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:38:44 GMT
ENV ODOO_VERSION=9.0
# Thu, 03 Nov 2016 19:27:13 GMT
ENV ODOO_RELEASE=20161103
# Thu, 03 Nov 2016 19:28:13 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'b5f88c06d8ba3475fa5ef15d93e504891c648f8e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 03 Nov 2016 19:28:14 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Thu, 03 Nov 2016 19:28:15 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Thu, 03 Nov 2016 19:28:15 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:28:16 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 03 Nov 2016 19:28:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 03 Nov 2016 19:28:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 03 Nov 2016 19:28:17 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:28:17 GMT
USER [odoo]
# Thu, 03 Nov 2016 19:28:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 19:28:18 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49213196f1a6592ff2f71e8182da676b58ea11c737e6b18f2d60d7333c7d9728`  
		Last Modified: Thu, 03 Nov 2016 19:31:06 GMT  
		Size: 137.6 MB (137587762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902b426aeae940cc97f4899c6cb0475c8f960e13eb8b2772a847efdf307cca94`  
		Last Modified: Thu, 03 Nov 2016 19:30:33 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa025b401a5039c8f88dcbc685d87daab3e2eb26fc7ea2e492692cd01fb5e70f`  
		Last Modified: Thu, 03 Nov 2016 19:30:35 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d748bfea6abd0ed1b3a30341e871775da91b8a399d7dcf0b878ed581dd356eee`  
		Last Modified: Thu, 03 Nov 2016 19:30:33 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be2ab791948d936a84244ec5ede83ae2e17215616b3e7a9627935ae026a2c71`  
		Last Modified: Thu, 03 Nov 2016 19:30:33 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:40380465e6c80093a330e6cbfe79680f4b95a34cbd0ddbd6c6ad88b744aab7dc
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274923288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88671c0097a46720f0f5e7fff420e935c2b23fa2a46d42b2b6e742342450463b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:38:44 GMT
ENV ODOO_VERSION=9.0
# Thu, 03 Nov 2016 19:27:13 GMT
ENV ODOO_RELEASE=20161103
# Thu, 03 Nov 2016 19:28:13 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'b5f88c06d8ba3475fa5ef15d93e504891c648f8e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 03 Nov 2016 19:28:14 GMT
COPY file:6a26368655785ae1cbc5fa039658eb80009b936ad5c44b16530636a59339c64b in / 
# Thu, 03 Nov 2016 19:28:15 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Thu, 03 Nov 2016 19:28:15 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:28:16 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 03 Nov 2016 19:28:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 03 Nov 2016 19:28:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 03 Nov 2016 19:28:17 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Thu, 03 Nov 2016 19:28:17 GMT
USER [odoo]
# Thu, 03 Nov 2016 19:28:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 19:28:18 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49213196f1a6592ff2f71e8182da676b58ea11c737e6b18f2d60d7333c7d9728`  
		Last Modified: Thu, 03 Nov 2016 19:31:06 GMT  
		Size: 137.6 MB (137587762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902b426aeae940cc97f4899c6cb0475c8f960e13eb8b2772a847efdf307cca94`  
		Last Modified: Thu, 03 Nov 2016 19:30:33 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa025b401a5039c8f88dcbc685d87daab3e2eb26fc7ea2e492692cd01fb5e70f`  
		Last Modified: Thu, 03 Nov 2016 19:30:35 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d748bfea6abd0ed1b3a30341e871775da91b8a399d7dcf0b878ed581dd356eee`  
		Last Modified: Thu, 03 Nov 2016 19:30:33 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be2ab791948d936a84244ec5ede83ae2e17215616b3e7a9627935ae026a2c71`  
		Last Modified: Thu, 03 Nov 2016 19:30:33 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:9dda179a2b818130c4346e4ad2ae830d4a44a140070c68cb4e24e53ca7b2514e
```

-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271723061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0de364896f833048a8ba1ac8d4f79a61c126c06270dc0650181be327241dbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:40:03 GMT
ENV ODOO_VERSION=10.0
# Thu, 03 Nov 2016 19:28:18 GMT
ENV ODOO_RELEASE=20161103
# Thu, 03 Nov 2016 19:29:07 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '298b9a3c752fbe8df1e6bc7e5ab9d84ce7d0061b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 03 Nov 2016 19:29:09 GMT
COPY file:47d94ca963470d9d965c44f9ee07bdfed21bf7be5b46925e55818de15ce0bdb1 in / 
# Thu, 03 Nov 2016 19:29:09 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Thu, 03 Nov 2016 19:29:10 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 03 Nov 2016 19:29:11 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 03 Nov 2016 19:29:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 03 Nov 2016 19:29:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 03 Nov 2016 19:29:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 03 Nov 2016 19:29:12 GMT
USER [odoo]
# Thu, 03 Nov 2016 19:29:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 19:29:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c77683ace25f2af113a296edcb0dc42eb6a4b50f37dbe8c3b6575babe107e7f`  
		Last Modified: Thu, 03 Nov 2016 19:32:15 GMT  
		Size: 134.4 MB (134387567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b0a5bd1ab8c65575e07e5a062631252283adb13941d6367644c9b1cc8eb51`  
		Last Modified: Thu, 03 Nov 2016 19:31:38 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b79415104a9484c3a9143b70d235cca577a98ad0722e86112119c8d06d67e34`  
		Last Modified: Thu, 03 Nov 2016 19:31:41 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa217fe0543fe1c753123206a8f943600650a1a3d795d02a6870489c1ca5090`  
		Last Modified: Thu, 03 Nov 2016 19:31:39 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472160712c3802434e4108921db5318d1fcc7693a00381eb6be70cc5dd975106`  
		Last Modified: Thu, 03 Nov 2016 19:31:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10`

```console
$ docker pull odoo@sha256:9dda179a2b818130c4346e4ad2ae830d4a44a140070c68cb4e24e53ca7b2514e
```

-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271723061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0de364896f833048a8ba1ac8d4f79a61c126c06270dc0650181be327241dbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:40:03 GMT
ENV ODOO_VERSION=10.0
# Thu, 03 Nov 2016 19:28:18 GMT
ENV ODOO_RELEASE=20161103
# Thu, 03 Nov 2016 19:29:07 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '298b9a3c752fbe8df1e6bc7e5ab9d84ce7d0061b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 03 Nov 2016 19:29:09 GMT
COPY file:47d94ca963470d9d965c44f9ee07bdfed21bf7be5b46925e55818de15ce0bdb1 in / 
# Thu, 03 Nov 2016 19:29:09 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Thu, 03 Nov 2016 19:29:10 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 03 Nov 2016 19:29:11 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 03 Nov 2016 19:29:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 03 Nov 2016 19:29:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 03 Nov 2016 19:29:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 03 Nov 2016 19:29:12 GMT
USER [odoo]
# Thu, 03 Nov 2016 19:29:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 19:29:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c77683ace25f2af113a296edcb0dc42eb6a4b50f37dbe8c3b6575babe107e7f`  
		Last Modified: Thu, 03 Nov 2016 19:32:15 GMT  
		Size: 134.4 MB (134387567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b0a5bd1ab8c65575e07e5a062631252283adb13941d6367644c9b1cc8eb51`  
		Last Modified: Thu, 03 Nov 2016 19:31:38 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b79415104a9484c3a9143b70d235cca577a98ad0722e86112119c8d06d67e34`  
		Last Modified: Thu, 03 Nov 2016 19:31:41 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa217fe0543fe1c753123206a8f943600650a1a3d795d02a6870489c1ca5090`  
		Last Modified: Thu, 03 Nov 2016 19:31:39 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472160712c3802434e4108921db5318d1fcc7693a00381eb6be70cc5dd975106`  
		Last Modified: Thu, 03 Nov 2016 19:31:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:9dda179a2b818130c4346e4ad2ae830d4a44a140070c68cb4e24e53ca7b2514e
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271723061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0de364896f833048a8ba1ac8d4f79a61c126c06270dc0650181be327241dbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Mon, 31 Oct 2016 23:38:44 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Mon, 31 Oct 2016 23:40:03 GMT
ENV ODOO_VERSION=10.0
# Thu, 03 Nov 2016 19:28:18 GMT
ENV ODOO_RELEASE=20161103
# Thu, 03 Nov 2016 19:29:07 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '298b9a3c752fbe8df1e6bc7e5ab9d84ce7d0061b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 03 Nov 2016 19:29:09 GMT
COPY file:47d94ca963470d9d965c44f9ee07bdfed21bf7be5b46925e55818de15ce0bdb1 in / 
# Thu, 03 Nov 2016 19:29:09 GMT
COPY file:5cd4425a11ba7c482740572351bc33ea5b877795c1d6240fe07667b118dc3740 in /etc/odoo/ 
# Thu, 03 Nov 2016 19:29:10 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 03 Nov 2016 19:29:11 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 03 Nov 2016 19:29:11 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 03 Nov 2016 19:29:11 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 03 Nov 2016 19:29:11 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 03 Nov 2016 19:29:12 GMT
USER [odoo]
# Thu, 03 Nov 2016 19:29:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 19:29:12 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffed833a60de1cd27e448c5ce63cb4c8c78e1ac896b4b2da23986e17266ab9`  
		Last Modified: Mon, 31 Oct 2016 23:43:50 GMT  
		Size: 86.0 MB (85980676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c77683ace25f2af113a296edcb0dc42eb6a4b50f37dbe8c3b6575babe107e7f`  
		Last Modified: Thu, 03 Nov 2016 19:32:15 GMT  
		Size: 134.4 MB (134387567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b0a5bd1ab8c65575e07e5a062631252283adb13941d6367644c9b1cc8eb51`  
		Last Modified: Thu, 03 Nov 2016 19:31:38 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b79415104a9484c3a9143b70d235cca577a98ad0722e86112119c8d06d67e34`  
		Last Modified: Thu, 03 Nov 2016 19:31:41 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa217fe0543fe1c753123206a8f943600650a1a3d795d02a6870489c1ca5090`  
		Last Modified: Thu, 03 Nov 2016 19:31:39 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472160712c3802434e4108921db5318d1fcc7693a00381eb6be70cc5dd975106`  
		Last Modified: Thu, 03 Nov 2016 19:31:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
