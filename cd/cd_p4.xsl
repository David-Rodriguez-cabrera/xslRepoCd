<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mis cd de musica</h1>
        <table border="1">
            <tr bgcolor="#6E6E6E">
                <th>Album</th>
                <th>artista</th>
                <th>selloDiscografico</th>
                <th>year</th>
                <th>Canciones</th>
                <th>tiempoCanciones</th>
            </tr>
            <xsl:for-each select="tiendaMusica/cd">
            <xsl:variable name="Album"><xsl:value-of select="Album"/></xsl:variable>
            <xsl:variable name="artista"><xsl:value-of select="artista"/></xsl:variable>
            <xsl:variable name="selloDiscografico"><xsl:value-of select="selloDiscografico"/></xsl:variable>
            <xsl:variable name="year"><xsl:value-of select="year"/></xsl:variable>

            <xsl:for-each select="Canciones">
            <xsl:if test="@tiempo&lt;300">

        <tr bgcolor="#D6D1D1">
            <td><xsl:value-of select="$Album"/></td>
            <td><xsl:value-of select="$artista"/></td>
            <td><xsl:value-of select="$selloDiscografico"/></td>
            <td><xsl:value-of select="$year"/></td>
            <td><xsl:value-of select="."/><br></br></td>

        <td><xsl:value-of select="@tiempo"/></td>
        </tr>
    </xsl:if>
</xsl:for-each>
    </xsl:for-each>
        
        
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>
