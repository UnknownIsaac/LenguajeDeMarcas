<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes"/>   

<xsl:template match="/FACTURACIÓN_DE_EMPRESA">
---
FACTURACIÓN_DE_EMPRESA:
---

- Factura:

   Número: "<xsl:value-of select="factura/@numero"/>"

- Datos empresa:

     Nombre: "<xsl:value-of select="factura/datos_empresa/nombre"/>"
     Avenida: "<xsl:value-of select="factura/datos_empresa/avenida"/>"
     Provincia y CP: "<xsl:value-of select="factura/datos_empresa/ProvinciayCP"/>"
     CIF: "<xsl:value-of select="factura/datos_empresa/CIF"/>"
     Telefono: "<xsl:value-of select="factura/datos_empresa/Telefono"/>"
     Fax: <xsl:value-of select="factura/datos_empresa/fax"/>"

- Datos pago:

     Fecha: "<xsl:value-of select="factura/datos_pago/fecha"/>"
     Pedido: "<xsl:value-of select="factura/datos_pago/pedido"/>"
     Forma de pago: "<xsl:value-of select="factura/datos_pago/forma_pago"/>"

- Datos cliente:

        - Numero de cliente: "<xsl:value-of select="datos_CLIENTE/num_cliente"/>"
          Nombre: "<xsl:value-of select="datos_CLIENTE/nombre"/>"
          Direccion envio: "<xsl:value-of select="datos_CLIENTE/direccion_envio"/>"
          Poblacion: "<xsl:value-of select="datos_CLIENTE/poblacion"/>"
          CP: "<xsl:value-of select="datos_CLIENTE/cod.posta"/>"
          Provincia: "<xsl:value-of select="datos_CLIENTE/provincia"/>"

- Datos Factura:
     
       <xsl:for-each select="datos_FACTURA/datos">
        - Referencia: "<xsl:value-of select="ref"/>"
          Descripcion: "<xsl:value-of select="descripcion"/>"
          Cantidad: "<xsl:value-of select="cantidad"/>"
          Precio: "<xsl:value-of select="precio"/>"
          IVA: "<xsl:value-of select="i.v.a"/>"
          Importe: "<xsl:value-of select="importe"/>"
       </xsl:for-each>
- Total:
          BaseImponible: "<xsl:value-of select="datos_FACTURA/datos_total/base_imponible"/>"
          Porcentaje IVA: "<xsl:value-of select="datos_FACTURA/datos_total/IVA_Porcentaje"/>"
          Cuota IVA: "<xsl:value-of select="datos_FACTURA/datos_total/cuota_IVA"/>"
          
          TotalFactura: "<xsl:value-of select="datos_FACTURA/datos_total/@TotalFactura"/>"
</xsl:template>

</xsl:stylesheet>