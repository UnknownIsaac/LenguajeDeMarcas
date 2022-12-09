<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 12/22</title>
            </head>
            <body>
                <h1>Actividad 22</h1>
                <table border="1">
                    <tr>
                        <th colspan="6">CDs EN OFERTA</th>
                    </tr>
                    <tr>
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>País</th>
                        <th>Compañia discografica</th>
                        <th>Precio</th>
                        <th>Año de publicacion</th>
                    </tr>
                    <xsl:for-each select="ofertasCD/CD">
                    <tr>
                        <td>
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td>
                            <xsl:value-of select="artista"/>
                        </td>
                        <td>
                            <xsl:value-of select="pais"/>
                        </td>
                        <td>
                            <xsl:value-of select="compañia"/>
                        </td>
                        <td>
                            <xsl:value-of select="precio"/>
                        </td>
                        <td>
                            <xsl:value-of select="añodepubli"/>
                        </td>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>