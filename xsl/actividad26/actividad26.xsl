<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Actividad 26</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"></link>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <xsl:for-each select="/rss/channel">
                    <div>
                        <h1 class="shadow p-3 mb-5 bg-body-tertiary rounded" id="titulo">
                            <xsl:value-of select="title" />
                        </h1>

                        <h3 class="shadow-sm p-3 mb-5 bg-body-tertiary rounded" id="description">
                            <xsl:value-of select="description" />
                        </h3>
                        <div class="">
                        
                            <p  style="text-align: center">
                                <xsl:value-of select="lastBuildDate" />
                            </p>
                        </div>
                    </div>
                    <xsl:for-each select="item">
                        <div>
                        
                        <xsl:value-of select="title" />
                        <xsl:value-of select="pubDate" />
                        <xsl:value-of select="link" />
                        


                    </div>
                    </xsl:for-each>
                </xsl:for-each>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>