<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <xsl:for-each select="online_bookshop/book_list/book">
    <xsl:element name="books_to_buy">
      <b style="color:#666699;">Title:&#160; </b><xsl:value-of select="book_titles_info/@title"/>&#160;
	  <b style="color:#1f1f2e;">Publisher: &#160;</b><xsl:value-of select="book_characteristics/publisher"/>&#160;
	  <b style="color:#a3a3c2;">Publishing year:&#160;</b> <xsl:value-of select="book_characteristics/publisher/@publisher_year"/>
    </xsl:element>
    <br />
  </xsl:for-each>
</xsl:template>


</xsl:stylesheet>