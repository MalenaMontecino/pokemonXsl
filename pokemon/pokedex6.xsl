<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="pokemon">
    <div id="{@numero}" class="pokemon">
      <img src="{imagen}" />
      <p><xsl:value-of select="nombre" /></p>
    </div>
  </xsl:template>
  
  <xsl:template match="pokedex">
    <html>
      <head>
        <title> Pokedex</title>
        <style>
          /* Estilos para hacer la página responsive */
          body {
            display: flex;
            flex-wrap: wrap;
          }
          /* Estilos para cada pokemon */
          .pokemon {
            border: 1px solid black;
            border-radius: 10px;
            padding: 10px;
            margin: 10px;
            text-align: center;
          }
        </style>
      </head>

      <body>
        <xsl:apply-templates select="pokemon">
          <xsl:sort select="nombre" />
        </xsl:apply-templates>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
