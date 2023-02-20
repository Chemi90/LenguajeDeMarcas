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
                    flex-direction: column;
                    align-items: center;
                    }
                    h1{
                    margin: 2cm;
                    }
                    p{
                    text-align:center;
                    }
                    tr.top td{
                    background-color:yellow;
                    }
                </style>
            </head>
            <body>
                <h1>Simulacro de examen NOTAS</h1>
                
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>DNI</th>
                        <th>Modulos</th>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
