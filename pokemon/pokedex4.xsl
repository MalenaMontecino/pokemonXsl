<!-- Archivo pokedex1.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Pokedex</title>
      </head>
      <body>
        <h1>Pokedex</h1>
        <table border="1">
          <tr>
            <th>Número</th>
            <th>Nombre</th>
            <th>Tipos</th>
          </tr>
          <xsl:for-each select="pokedex/pokemon">
            <tr>
              <td><xsl:value-of select="position()"/></td>
              <td><xsl:value-of select="nombre"/></td>
              <td>
                <xsl:for-each select="tipos/tipo">
                  <xsl:value-of select="."/>
                  <xsl:if test="position() != last()">
                    <xsl:text>, </xsl:text>
                  </xsl:if>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
