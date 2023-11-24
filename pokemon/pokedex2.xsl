<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Pokédex</title>
        </head>
        <body>
            <h1>Pokédex</h1>
            <ul>
                <xsl:apply-templates select="pokedex/pokemon">
                    <xsl:sort select="nombre" />
                </xsl:apply-templates>
            </ul>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="pokemon">
        <li>
            <xsl:value-of select="nombre" />
        </li>
    </xsl:template>

  
</xsl:stylesheet>
