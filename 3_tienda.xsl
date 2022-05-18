<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
    <xsl:template match="/tienda">
        
        <html lang="es">
            <head>
                <title><xsl:value-of select="titulo"/></title>
                <link rel="stylesheet" href="3_tienda.css"/>
            </head>

            <body>
                <header><xsl:value-of select="titulo"/></header>
                <section id="introduccion">
                    <h1><xsl:value-of select="encabezado"/></h1>
                    <p><xsl:value-of select="descripcion"/></p>
                </section>

                <section id="productos">
                    <h2>Productos:</h2>
                </section>
                    <div class="contenedor-productos">
                        <xsl:for-each select="/tienda/productos/producto">

                <section id="producto">
                     <div class="nombre_producto">
                         <h3> <xsl:value-of select="titulo"/> </h3>

                     <div class="informacion_producto">
                         <p><xsl:value-of select="descripcion"/></p>
                         <p><xsl:value-of select="precio"/></p>
    
                    </div>
                    </div>
                 </section>
                        </xsl:for-each>
                    </div>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>

