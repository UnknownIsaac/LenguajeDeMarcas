<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 12/22</title>
            </head>
            <body>
                <h1>Actividad 23</h1>
                <table border="1">
                    <tr>
                        <th colspan="6">Factura nº 999</th>
                    </tr>
                    <xsl:for-each select="/FACTURACIÓN_DE_EMPRESA">
                        <tr>
                            <td colspan="3">
                                <xsl:value-of select="factura_n999/datos_empresa/nombre" />
                                <br />
                                <xsl:value-of select="factura_n999/datos_empresa/avenida" />
                                <br />
                                <xsl:value-of select="factura_n999/datos_empresa/ProvinciayCP" />
                                <br />
                                <xsl:value-of select="factura_n999/datos_empresa/CIF" />
                                <br />
                                <xsl:value-of select="factura_n999/datos_empresa/Telefono" />
                                <br />
                                <xsl:value-of select="factura_n999/datos_empresa/fax" />
                                <br />
                            </td>
                            <td colspan="3">
                                <xsl:value-of select="factura_n999/datos_pago/fecha" />
                                <br />
                                <xsl:value-of select="factura_n999/datos_pago/pedido" />
                                <br />
                                <xsl:value-of select="factura_n999/datos_pago/forma_pago" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <th colspan="6" style="text-align: left;">Datos CLIENTE</th>
                        </tr>
                            <tr>
                            <td colspan="6">
                                <xsl:value-of select="datos_CLIENTE/num_cliente" />
                                <br/>
                                <xsl:value-of select="datos_CLIENTE/nombre" />
                                <br/>
                                <xsl:value-of select="datos_CLIENTE/direccion_envio" />
                                <br/>
                                <xsl:value-of select="datos_CLIENTE/poblacion" />
                                <br/>
                                <xsl:value-of select="datos_CLIENTE/cod.posta" />
                                <br/>
                                <xsl:value-of select="datos_CLIENTE/provincia" />
                                <br/>
                            </td>
                            </tr>
                            <th colspan="6" style="text-align: left;">Datos FACTURA</th>
                            <tr style="text-align: right;">
                                <th>REF.</th>
                                <th>DESCRIPCION</th>
                                <th>CANT.</th>
                                <th>PRECIO.</th>
                                <th>I.V.A.</th>
                                <th>IMPORTE.</th>
                            </tr>
                            <xsl:for-each select="/FACTURACIÓN_DE_EMPRESA/datos_FACTURA/datos">
                            <tr style="text-align: right;">
                                <td><xsl:value-of select="ref" /></td>
                                <td><xsl:value-of select="descripcion" /></td>
                                <td><xsl:value-of select="cantidad" /></td>
                                <td><xsl:value-of select="precio" /></td>
                                <td><xsl:value-of select="i.v.a" /></td>
                                <td><xsl:value-of select="importe" /></td>
                            </tr>
                            </xsl:for-each>
                            <tr>
                                <th style="text-align: left;" colspan="2">Base Imponible</th>
                                <th style="text-align: left;" colspan="2">% I.V.A.</th>
                                <th style="text-align: left;" colspan="2">Cuato I.V.A.</th>
                            </tr>
                            
                            <tr>
                                <td colspan="2"><xsl:value-of select="datos_FACTURA/datos2/base_imponible"/></td>
                                <td colspan="2"><xsl:value-of select="datos_FACTURA/datos2/IVA_Porcentaje" /></td>
                                <td colspan="2"><xsl:value-of select="datos_FACTURA/datos2/cuota_IVA" /></td>
                            </tr>
                            <th colspan="6"><xsl:value-of select="datos_FACTURA/totalfactura" /></th>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>