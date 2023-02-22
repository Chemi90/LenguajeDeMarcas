<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : SimulacroExamen.xsl
    Created on : 20 de febrero de 2023, 13:22
    Author     : JoseMiguelRuizGuevar
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>SimulacroExamen.xsl</title>
                <style>
                    table{
                    border-collapse: collapse;
                    border: solid;
                    }
                    table tr th{
                    background-color: black;
                    color: white;
                    padding: 1em;
                    border: solid;
                    border-color: black;
                    }
                    table tr td{
                    padding: 1em;
                    border: solid;
                    }
                    body{
                    display: flex;
                    justify:center;
                    flex-direction: column;
                    /*align-items: center;*/
                    margin-left:30%;
                    }
                    div {
                    display: flex;
                    flex-direction: row;
                    }
                    h3{
                    padding: 10px;
                    margin: 10px;
                    }
                    
                </style>
            </head>
            <body>
                <h1>Simulacro de examen NOTAS</h1>
                <xsl:for-each select="/notas/alumno">
                    <div>
                        <h3>
                            <xsl:value-of select="nombre"/>
                        </h3>
                        <h3>
                            <xsl:value-of select="apellido"/>
                        </h3>
                        <h3>
                            <xsl:value-of select="dni"/>
                        </h3>
                    </div>
                    <xsl:for-each select="modulos/modulo">
                    
                        <table>
                            <tr>
                                <td>
                                    <xsl:value-of select="@nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="."/>
                                </td>
                            </tr>
                        </table>
                    
                    </xsl:for-each>
                    
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
