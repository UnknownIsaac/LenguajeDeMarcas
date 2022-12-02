<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 11/21</title>
            </head>
            <body>
                <h1>Actividad 21</h1>
                <table border="1">
                    <tr bgcolor="#F3E7F7">
                        <th rowspan="2">Descripcion</th>
                        <th colspan="3">Fecha</th>
                    </tr>
                    <tr bgcolor="#F3E7F7">
                        <th>Día</th>
                        <th>Mes</th>
                        <th>Año</th>
                    </tr>
                    <xsl:apply-templates/>
                    </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="tabla/tab">
        <tr>
            <td>
                <xsl:value-of select="@Descripcion"/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="tabla/tab/Fecha">
        <tr>
            <td>
                <xsl:value-of select="dia"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>