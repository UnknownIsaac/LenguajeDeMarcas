<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">

    <xsl:template match="/rss/channel">
        <html lang="es">
            <head>
                <title>Actividad 29</title>
                <link
                    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous"></link>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>

                <div>
                    <h1 class="shadow p-3 mb-5 bg-body-tertiary rounded" id="titulo">
                        <xsl:value-of select="title" />
                    </h1>
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="img/rajooy.jpg" alt="First slide"></img>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="img/biden.jpg" alt="Second slide"></img>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="img/war.jpg" alt="Third slide"></img>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls"
                            role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls"
                            role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                    <h3 class="shadow-sm p-3 mb-5 bg-body-tertiary rounded" id="description">
                        <xsl:value-of select="description" />
                    </h3>
                    <div class="">

                        <p id="absolutedate">
                            <b>
                                <xsl:value-of select="lastBuildDate" />
                            </b>
                        </p>
                    </div>
                </div>

                <div class="row align-items-start">
                <xsl:for-each select="item">

                        <div class="col-3">

                <div class="container d-flex flex-wrap align-items-center">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                          <div class="col-md-4">
                            <img src="img/elpais.png" class="img-fluid rounded-start" alt="..."></img>
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title">                                <xsl:value-of select="title" />
                              </h5>
                              <p class="card-text"><xsl:value-of select="description" /></p>
                              <p class="card-text"><small class="text-muted"><xsl:value-of select="pubDate"/><br/><xsl:value-of select="category" /></small></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
</div>
                </xsl:for-each>
                </div>

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