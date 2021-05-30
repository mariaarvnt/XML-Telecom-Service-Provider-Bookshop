<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Books in alphabetic order:  &#160; </h2> 
	
  <xsl:apply-templates select="online_bookshop/book_list/book">
	<xsl:sort select="book_titles_info/@title" order="ascending"/>
  </xsl:apply-templates>
	
  </body>
  </html>
</xsl:template>

<xsl:template match="online_bookshop/book_list/book">
	
    <xsl:apply-templates select="book_titles_info/@title"/> &#160;
	<xsl:value-of select="@title"/><br/>
</xsl:template>

</xsl:stylesheet>

