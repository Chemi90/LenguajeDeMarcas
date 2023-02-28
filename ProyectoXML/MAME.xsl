<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Juegos Jugables</title>
                <link rel="stylesheet" type="text/css" href="styles.css"/>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
            </head>
            <body>
                <header>
                    <h1>Lista de Juegos Jugables</h1>
                </header>
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Año</th>
                            <th>Fabricante</th>
                            <th>Estado del Controlador</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="//arcade[is_runnable='YES']">
                            <xsl:sort select="year" order="ascending"/>
                        </xsl:apply-templates>
                    </tbody>
                </table>
                <footer>
                    <p>Realizado por: José Miguel Ruiz Guevara</p>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="arcade">
        <xsl:if test="driver_status='INCOMPLETO'">
            <tr style="background-color: orange;">
                <td>
                    <xsl:value-of select="name"/>
                </td>
                <td>
                    <xsl:value-of select="description"/>
                </td>
                <td>
                    <xsl:value-of select="year"/>
                </td>
                <td>
                    <xsl:value-of select="manufacturer"/>
                </td>
                <td>
                    <xsl:value-of select="driver_status"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="driver_status!='INCOMPLETO'">
            <tr>
                <td>
                    <xsl:value-of select="name"/>
                </td>
                <td>
                    <xsl:value-of select="description"/>
                </td>
                <td>
                    <xsl:value-of select="year"/>
                </td>
                <td>
                    <xsl:value-of select="manufacturer"/>
                </td>
                <td>
                    <xsl:value-of select="driver_status"/>
                </td>
            </tr>
        </xsl:if>
      
    </xsl:template>

</xsl:stylesheet>
