<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">

    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Salud Integral</title>
                <link
                    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous"></link>
                <link rel="stylesheet" href="" />
            </head>
            <body>
                <div>
                    <h1 class="shadow p-3 mb-5 bg-body-tertiary rounded" id="titulo">
                        <center>Salud Integral</center>
                    </h1>
                </div>

                <table class="table" border="1">
                    <tr style="background-color: grey;">
                        <th>Servicio</th>
                        <th>Precio</th>
                        <th>Plaza</th>
                        <th>Dias disponibles</th>
                        <th>Horas Disponibles</th>
                        <th>Empleado/s</th>
                    </tr>
                    <xsl:for-each select="/saludintegral/servicio">
                        <tr>
                            <td>
                                <xsl:value-of select="@tipo" />

                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                            <td>
                                <xsl:value-of select="limiteplaza" />
                            </td>
                            <td>
                                <xsl:value-of select="horario/dia" />
                            </td>
                            <td>
                                <xsl:value-of select="horario/hora" />
                            </td>
                            <td>
                                <xsl:value-of select="empleado" />
                            </td>
                        </tr>

                    </xsl:for-each>
                </table>

                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                    crossorigin="anonymous"></script>
                <script
                    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                    crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                    crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>