<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
        <head>
            <title>Mi libreria</title>
        </head>
        <body>
            <h1>Mi librearia</h1>
            <table border="1px">
                <tr>
                    <th>Autor</th>
                    <th>Título</th>
                    <th>Precio</th>
                    <th>Fecha publicación</th>
                </tr>
                <xsl:for-each select="libreria/libro[titulo!='Todo Arde']">
                <xsl:sort select="autor"/>
                <xsl:if test="precio &gt; 20">
                    <tr>
                        <td><xsl:value-of select="autor"></xsl:value-of></td>
                        <td><xsl:value-of select="titulo"></xsl:value-of></td>
                        <td><xsl:value-of select="precio"></xsl:value-of></td>
                        <td><xsl:value-of select="@fecha-publicacion"></xsl:value-of></td>
                    </tr>
                </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>

</xsl:stylesheet>