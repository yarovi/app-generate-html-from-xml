<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>HTML from XML</title>
      </head>
      <body>
        <h1>Portafolio </h1>
        <xsl:for-each select="portafolios/portafolio">
        <h2>
          <xsl:value-of select="nombrecompleto" />
        </h2>
      <h3>Información</h3>
      <ul>
          <li>Formación: <xsl:value-of select="informacion/formacion" /></li>
          <li>País: <xsl:value-of select="informacion/pais" /></li>
          <li>Idioma: <xsl:value-of select="informacion/idioma" /></li>
          <li>Teléfono de Contacto: <xsl:value-of select="informacion/contactotelefono" /></li>
          <li>Habilidades Duras: <xsl:value-of select="informacion/habilidades/habilidad-dura" /></li>
          <li>Habilidades Blandas: <xsl:value-of
              select="informacion/habilidades/habilidad-blanda" /></li>
        </ul>
      <h3> Proyecto</h3>
      <ul>
          <li>Nombre del Proyecto: <xsl:value-of select="proyecto/nombreproyecto" /></li>
          <li>Cargo: <xsl:value-of select="proyecto/cargo" /></li>
          <li>Funciones Desarrolladas: <xsl:value-of select="proyecto/funcionesdesarrolladas" /></li>
        </ul>

      </xsl:for-each>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>