<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:8.0`](#odoo80)
-	[`odoo:8`](#odoo8)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:9`](#odoo9)
-	[`odoo:latest`](#odoolatest)

## `odoo:8.0`

```console
$ docker pull odoo@sha256:9441eebde71ae1eb2124ac589ef10136f3a32ec576c95dd806845ac3eba93b27
```

-	Platforms:
	-	linux; amd64

### `odoo:8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266079162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc67646e2fc9c55454ab71897af77809a11fc19d1c98ac24be842838e72c3068`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 21 Oct 2016 22:47:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Fri, 21 Oct 2016 22:47:05 GMT
ENV ODOO_VERSION=8.0
# Fri, 21 Oct 2016 22:47:05 GMT
ENV ODOO_RELEASE=20160726
# Fri, 21 Oct 2016 22:48:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '6679fad48c761cf8587faa243afcfc17f5a9eb73 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 21 Oct 2016 22:48:22 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Fri, 21 Oct 2016 22:48:22 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 21 Oct 2016 22:48:23 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:48:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 21 Oct 2016 22:48:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 21 Oct 2016 22:48:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 21 Oct 2016 22:48:26 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:48:26 GMT
USER [odoo]
# Fri, 21 Oct 2016 22:48:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 22:48:27 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6375b07c7849e0d471e91ca88343dcbe4a6be7c4b9c38cbf28db75ddc030a7b`  
		Last Modified: Fri, 21 Oct 2016 22:49:01 GMT  
		Size: 83.8 MB (83760554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3bfe43b4161eb1f7bca2c5d0185495de03c6e360d308af2236d775031007e3`  
		Last Modified: Fri, 21 Oct 2016 22:49:12 GMT  
		Size: 131.0 MB (130963840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be114735495a0fa9039578db7b0fec95c1ec07100c01f5acb83db8862547828`  
		Last Modified: Fri, 21 Oct 2016 22:48:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c037ae9e8cb875ebad00c7e8dc26d266a9232ab654fdc0420d82eeb0bb2c0bf`  
		Last Modified: Fri, 21 Oct 2016 22:48:36 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3475278008c3cb5d0afd18eabc5a410da603278533101aa0a8c85904e4cd0d`  
		Last Modified: Fri, 21 Oct 2016 22:48:37 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f04c0f0370a525fc4db15d96e0c2d54af815778a248eac7b1871472deeba7a`  
		Last Modified: Fri, 21 Oct 2016 22:48:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:8`

```console
$ docker pull odoo@sha256:9441eebde71ae1eb2124ac589ef10136f3a32ec576c95dd806845ac3eba93b27
```

-	Platforms:
	-	linux; amd64

### `odoo:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266079162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc67646e2fc9c55454ab71897af77809a11fc19d1c98ac24be842838e72c3068`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 21 Oct 2016 22:47:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Fri, 21 Oct 2016 22:47:05 GMT
ENV ODOO_VERSION=8.0
# Fri, 21 Oct 2016 22:47:05 GMT
ENV ODOO_RELEASE=20160726
# Fri, 21 Oct 2016 22:48:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '6679fad48c761cf8587faa243afcfc17f5a9eb73 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 21 Oct 2016 22:48:22 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Fri, 21 Oct 2016 22:48:22 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 21 Oct 2016 22:48:23 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:48:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 21 Oct 2016 22:48:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 21 Oct 2016 22:48:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 21 Oct 2016 22:48:26 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:48:26 GMT
USER [odoo]
# Fri, 21 Oct 2016 22:48:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 22:48:27 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6375b07c7849e0d471e91ca88343dcbe4a6be7c4b9c38cbf28db75ddc030a7b`  
		Last Modified: Fri, 21 Oct 2016 22:49:01 GMT  
		Size: 83.8 MB (83760554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3bfe43b4161eb1f7bca2c5d0185495de03c6e360d308af2236d775031007e3`  
		Last Modified: Fri, 21 Oct 2016 22:49:12 GMT  
		Size: 131.0 MB (130963840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be114735495a0fa9039578db7b0fec95c1ec07100c01f5acb83db8862547828`  
		Last Modified: Fri, 21 Oct 2016 22:48:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c037ae9e8cb875ebad00c7e8dc26d266a9232ab654fdc0420d82eeb0bb2c0bf`  
		Last Modified: Fri, 21 Oct 2016 22:48:36 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3475278008c3cb5d0afd18eabc5a410da603278533101aa0a8c85904e4cd0d`  
		Last Modified: Fri, 21 Oct 2016 22:48:37 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f04c0f0370a525fc4db15d96e0c2d54af815778a248eac7b1871472deeba7a`  
		Last Modified: Fri, 21 Oct 2016 22:48:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:5eae87cb1e65730105fe5a98c6fb27a27c966e1cad53c0ec3d87ca523346cf4f
```

-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272865288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd7044ca256b5f90c4d61b9ad4aef5cf5239547442d40fb24958cf64f5bd91f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 21 Oct 2016 22:47:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_VERSION=9.0
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_RELEASE=20160726
# Fri, 21 Oct 2016 22:50:43 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'cbd0cbaed27da28eaae1c6460f36d398c8acbf77 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 21 Oct 2016 22:50:44 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Fri, 21 Oct 2016 22:50:45 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 21 Oct 2016 22:50:46 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:47 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 21 Oct 2016 22:50:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 21 Oct 2016 22:50:48 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 21 Oct 2016 22:50:49 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:49 GMT
USER [odoo]
# Fri, 21 Oct 2016 22:50:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 22:50:50 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6375b07c7849e0d471e91ca88343dcbe4a6be7c4b9c38cbf28db75ddc030a7b`  
		Last Modified: Fri, 21 Oct 2016 22:49:01 GMT  
		Size: 83.8 MB (83760554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2560e081973b243d915385b4305da386e0309328a98b54db71542d1c50bf64a9`  
		Last Modified: Fri, 21 Oct 2016 22:51:32 GMT  
		Size: 137.7 MB (137749969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc328cc11980215ff40cfd8fb3083ba62924bfe3c5a2335706cfeb90b252ddcc`  
		Last Modified: Fri, 21 Oct 2016 22:51:01 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4d94a068afdaabde8d31f888eeaa2d3f6e93b3fb5a50ae15bd97a71cd66f82`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1323e3e12aa21d723ffe68cbc7a6b368f3a7a3ee94400ab7aea748727d7438`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6e4f4cffbcd03dcc01f54b540dca9f78b148405ab3a67c6dbc98e359d46546`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:5eae87cb1e65730105fe5a98c6fb27a27c966e1cad53c0ec3d87ca523346cf4f
```

-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272865288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd7044ca256b5f90c4d61b9ad4aef5cf5239547442d40fb24958cf64f5bd91f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 21 Oct 2016 22:47:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_VERSION=9.0
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_RELEASE=20160726
# Fri, 21 Oct 2016 22:50:43 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'cbd0cbaed27da28eaae1c6460f36d398c8acbf77 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 21 Oct 2016 22:50:44 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Fri, 21 Oct 2016 22:50:45 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 21 Oct 2016 22:50:46 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:47 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 21 Oct 2016 22:50:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 21 Oct 2016 22:50:48 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 21 Oct 2016 22:50:49 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:49 GMT
USER [odoo]
# Fri, 21 Oct 2016 22:50:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 22:50:50 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6375b07c7849e0d471e91ca88343dcbe4a6be7c4b9c38cbf28db75ddc030a7b`  
		Last Modified: Fri, 21 Oct 2016 22:49:01 GMT  
		Size: 83.8 MB (83760554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2560e081973b243d915385b4305da386e0309328a98b54db71542d1c50bf64a9`  
		Last Modified: Fri, 21 Oct 2016 22:51:32 GMT  
		Size: 137.7 MB (137749969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc328cc11980215ff40cfd8fb3083ba62924bfe3c5a2335706cfeb90b252ddcc`  
		Last Modified: Fri, 21 Oct 2016 22:51:01 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4d94a068afdaabde8d31f888eeaa2d3f6e93b3fb5a50ae15bd97a71cd66f82`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1323e3e12aa21d723ffe68cbc7a6b368f3a7a3ee94400ab7aea748727d7438`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6e4f4cffbcd03dcc01f54b540dca9f78b148405ab3a67c6dbc98e359d46546`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:5eae87cb1e65730105fe5a98c6fb27a27c966e1cad53c0ec3d87ca523346cf4f
```

-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272865288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd7044ca256b5f90c4d61b9ad4aef5cf5239547442d40fb24958cf64f5bd91f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:46:26 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 21 Oct 2016 22:47:04 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             node-clean-css             python-pyinotify             python-renderpm             python-support         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_VERSION=9.0
# Fri, 21 Oct 2016 22:49:33 GMT
ENV ODOO_RELEASE=20160726
# Fri, 21 Oct 2016 22:50:43 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'cbd0cbaed27da28eaae1c6460f36d398c8acbf77 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 21 Oct 2016 22:50:44 GMT
COPY file:156abbd9c6016388d9d2e1584d9e9c49a4085dba32d97d1ed88fee992bb89e61 in / 
# Fri, 21 Oct 2016 22:50:45 GMT
COPY file:1172e26dac1f2b6dd4d3b3ae484c69b33109695606154cdb13dcfa032d798e88 in /etc/odoo/ 
# Fri, 21 Oct 2016 22:50:46 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:47 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 21 Oct 2016 22:50:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 21 Oct 2016 22:50:48 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 21 Oct 2016 22:50:49 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Fri, 21 Oct 2016 22:50:49 GMT
USER [odoo]
# Fri, 21 Oct 2016 22:50:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 22:50:50 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6375b07c7849e0d471e91ca88343dcbe4a6be7c4b9c38cbf28db75ddc030a7b`  
		Last Modified: Fri, 21 Oct 2016 22:49:01 GMT  
		Size: 83.8 MB (83760554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2560e081973b243d915385b4305da386e0309328a98b54db71542d1c50bf64a9`  
		Last Modified: Fri, 21 Oct 2016 22:51:32 GMT  
		Size: 137.7 MB (137749969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc328cc11980215ff40cfd8fb3083ba62924bfe3c5a2335706cfeb90b252ddcc`  
		Last Modified: Fri, 21 Oct 2016 22:51:01 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4d94a068afdaabde8d31f888eeaa2d3f6e93b3fb5a50ae15bd97a71cd66f82`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1323e3e12aa21d723ffe68cbc7a6b368f3a7a3ee94400ab7aea748727d7438`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6e4f4cffbcd03dcc01f54b540dca9f78b148405ab3a67c6dbc98e359d46546`  
		Last Modified: Fri, 21 Oct 2016 22:51:00 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
