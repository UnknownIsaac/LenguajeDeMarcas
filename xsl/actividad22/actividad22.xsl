<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 15/23</title>
            </head>
            <body>
                <h1>Actividad 23</h1>
                <table border="1">
                    <tr>
                        <th colspan="6"></th>
                    </tr>
                    <tr>
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