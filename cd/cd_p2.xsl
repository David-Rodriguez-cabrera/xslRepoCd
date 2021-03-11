<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mis cd de musica</h1>
        <table border="1">
            <tr bgcolor="#6E6E6E">
                <th>tituloAlbum</th>
                <th>artista</th>
                <th>selloDiscografico</th>
                <th>year</th>
                <th>tituloCanciones</th>
            </tr>
            <xsl:for-each select="tiendaMusica/cd[artista='Wisin y Yandel']">
            
        <tr bgcolor="#D6D1D1">
            <td><xsl:value-of select="tituloAlbum"/></td>
            <td><xsl:value-of select="artista"/></td>
            <!--td><xsl:value-of select="tituloCanciones"/></td!-->
            
            <td><xsl:value-of select="selloDiscografico"/></td>
            <td><xsl:value-of select="year"/></td>
            <td>
                
                <xsl:for-each select="tituloCanciones">
                
                    <xsl:value-of select="."/>
                    <br></br>
                </xsl:for-each>
            </td>
        </tr>
    </xsl:for-each>
        
        
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>