## `odoo:latest`

```console
$ docker pull odoo@sha256:6bf0586b5544b34862087cf15181f9ae37008c0ab20429f32b7ac474c98eda12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:1d36f368b3dad73c7cdbdf589730aca18d67fd893d38b25d639cd2b90d317ade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.0 MB (409981201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fec770d5f16fbdc73e2c38d6037bae494f931e90c1c6ec6cb27c82cc6785f8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:06:56 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 03 Nov 2017 22:06:58 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 22:07:32 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 03 Nov 2017 22:07:34 GMT
ENV ODOO_VERSION=11.0
# Fri, 03 Nov 2017 22:07:36 GMT
ENV ODOO_RELEASE=20171030
# Fri, 03 Nov 2017 22:08:41 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '63d3fd997c850b657b93fb9351624d88d45d1682 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 03 Nov 2017 22:08:46 GMT
RUN pip3 install num2words
# Fri, 03 Nov 2017 22:08:48 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 03 Nov 2017 22:08:49 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 03 Nov 2017 22:08:51 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:52 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 03 Nov 2017 22:08:52 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 03 Nov 2017 22:08:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 03 Nov 2017 22:08:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 03 Nov 2017 22:08:53 GMT
USER [odoo]
# Fri, 03 Nov 2017 22:08:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:08:53 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729c3fbeb1f6d705316e0806248f4bad0e804c01ab74035baa6ed9fc5386cc7d`  
		Last Modified: Fri, 03 Nov 2017 22:10:55 GMT  
		Size: 221.3 MB (221310070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf2303e5cf41eb588078c87f56eb647b766d989b9b2e4f9e27ac8a863da279`  
		Last Modified: Fri, 03 Nov 2017 22:10:48 GMT  
		Size: 143.4 MB (143416685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366f7636acc3422b3fbe84517dfa6acf453d67ef00b5048407e020fa57495ce0`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 123.5 KB (123516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0a44c6d2da5e9a7f27c0576274a5b862acaf04c3933ff2318ee23bd2e661fc`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8245c0eeb0e722b932bcfe1d4ea8c6d33a69f3a96b3d488f46a76e877e23870e`  
		Last Modified: Fri, 03 Nov 2017 22:10:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8ce5c99f7fc62bdb8a9bbca1bb6a86bf0ae3f18620574156fb57a2663babbe`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912ba932966d4ddd7534ee57f06ff95f347d69e3f9e99feadb2531871dd897b5`  
		Last Modified: Fri, 03 Nov 2017 22:10:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
