<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="pokedex">
        <html>
          <head>
             <title>Pokedex</title>
          </head>
          <body>
            <table border="1"> 
              <tr>
                <th>Numero</th>
                <th>Nombre</th>
                <th>Tipo</th>
              </tr>              
              <xsl:for-each select="pokemon">
                  <tr>
                      <td><xsl:value-of select="@numero"/></td>
                      <td><xsl:value-of select="nombre"/></td>
                      <td>
                          <xsl:for-each select="tipos/tipo">
                              <xsl:variable name="tipo" select="."/>
                              <xsl:value-of select="tipos/tipo"/>
                              <xsl:choose>
                                <xsl:when test="$tipo='Planta'">
                                    <span style="background-color:green;"><xsl:value-of select="$tipo"/></span>
                                </xsl:when>
                                <xsl:when test="$tipo='Veneno'">
                                    <span style="background-color:yellow;"><xsl:value-of select="$tipo"/></span>
                                </xsl:when>
                                <xsl:when test="$tipo='Fuego'">
                                    <span style="background-color:red;"><xsl:value-of select="$tipo"/></span>
                                </xsl:when>
                                <xsl:when test="$tipo='Volador'">
                                    <span style="background-color:grey;"><xsl:value-of select="$tipo"/></span>
                                </xsl:when>
                                <xsl:when test="$tipo='Agua'">
                                    <span style="background-color:blue;"><xsl:value-of select="$tipo"/></span>
                                </xsl:when>
                                <xsl:when test="$tipo='Bicho'">
                                    <span style="background-color:purple;"><xsl:value-of select="$tipo"/></span>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$tipo"/>
                                </xsl:otherwise> 
                              </xsl:choose>                      
                          </xsl:for-each>
                      </td>
                  </tr>
              </xsl:for-each>
            </table>
          </body>
        </html>
    </xsl:template>
</xsl:stylesheet>