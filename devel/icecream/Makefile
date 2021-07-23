# $FreeBSD$

PORTNAME=	icecream
PORTVERSION=	1.3.1
CATEGORIES=	devel
MASTER_SITES=	https://github.com/icecc/icecream/releases/download/${PORTVERSION}/
DISTNAME=	icecc-${DISTVERSION}

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Distributed compiler with a central scheduler to share build load

LICENSE=	GPLv2

LIB_DEPENDS=	liblzo2.so:archivers/lzo2 \
		libzstd.so:archivers/zstd

USES=	autoreconf gmake libarchive libtool localbase shebangfix tar:xz

SHEBANG_FILES=	client/icecc-test-env.in

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
