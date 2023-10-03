<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>HTML from XML</title>
      </head>
      <body>
        <h1>Portafolio </h1>
        <ul>
          <xsl:for-each select="portafolios/portafolio">
            <h2>
              <xsl:value-of select="nombrecompleto" />
            </h2>
          <h3>Información</h3>
          <ul>
              <li>Formación: <xsl:value-of select="informacion/formacion" /></li>
             

            </ul>
          <h3> Proyecto</h3>


          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>