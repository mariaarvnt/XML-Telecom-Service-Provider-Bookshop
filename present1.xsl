<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
	<head>	
		<title>
			Table with books for selling
		</title>
	</head>
  <body>
  <h2 style="color:#800000;">Table with books for selling</h2>  
  <table border="3" bgcolor="#ffdd99" align="center">
		<tr>
			<th>
				Book title
			</th>
			<th>
				Book Subtitle
			</th>
			<th>
				Book Start Value (euro)
			</th>
			<th>
				Book End Value (euro)
			</th>
			<th>
				Book Availability
			</th>
		</tr>
		<xsl:apply-templates/>  
	</table>
  </body>
  </html>
</xsl:template>

<xsl:template match="book">
  <tr align="center">
    <td><xsl:apply-templates select="book_titles_info/@title"/></td>
    <td><xsl:apply-templates select="book_titles_info/@subtitle"/></td>
	<td><xsl:apply-templates select="cost_information/start_value[@currency='euro']"/></td>
	<td><xsl:apply-templates select="cost_information/end_value[@currency='euro']"/></td>
	<td><xsl:apply-templates select="other_information/diathesimotita"/></td>
  </tr>
</xsl:template>

<xsl:template match="book_titles_info/@title">
  <span style="color:#990000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="book_titles_info/@subtitle">
<span style="color:#330000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="cost_information/start_value[@currency='euro']">
 <span style="color:#4d0000">
  <xsl:value-of select="."/> euro</span>
  <br />
</xsl:template>

<xsl:template match="cost_information/end_value[@currency='euro']">
 <span style="color:#ff0000">
  <xsl:value-of select="."/> euro</span>
  <br />
</xsl:template>

<xsl:template match="other_information/diathesimotita">
  <span style="color:#b30000">
  <xsl:value-of select="."/> </span>
  <br />
</xsl:template>

</xsl:stylesheet>

