<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Pokedex</title>
      </head>
      <body>
        <h1>Pokedex</h1>
        <ul>
          <xsl:apply-templates select="pokedex/pokemon"/>
        </ul>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="pokemon">
    <li><strong><xsl:value-of select="@numero"/> - <xsl:value-of select="nombre"/></strong></li>
  </xsl:template>

</xsl:stylesheet>
