<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">
{
    "ofertasCD": {
      "CD": [
        <xsl:for-each select="/ofertasCD/CD">
        {
          "titulo": "<xsl:value-of select="titulo"/>",
          "artista": "<xsl:value-of select="artista"/>",
          "pais": "<xsl:value-of select="pais"/>",
          "compañia": "<xsl:value-of select="compañia"/>",
          "precio": "<xsl:value-of select="precio"/>",
          "añodepubli": "<xsl:value-of select="añodepubli"/>"
        }
        <xsl:if test="position() &lt; last()">,</xsl:if>
        </xsl:for-each>
      ]
    }
  } 
</xsl:template>
</xsl:stylesheet>
