# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD$

PORTNAME=	icecream
PORTVERSION=	1.1
CATEGORIES=	devel

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Distributed compiler with a central scheduler to share build load

LICENSE=	GPLv2

BUILD_DEPENDS=	docbook2man:textproc/docbook2X
LIB_DEPENDS=	liblzo2.so:archivers/lzo2

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

USES=	autoreconf gmake libtool
GNU_CONFIGURE=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	icecc
GH_TAGNAME=	${PORTVERSION}

.include <bsd.port.mk>
