<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
	<head>	
		<title>
			 books to buy
		</title>
	</head>
	<body>
	<h2 style="color:#800000;">Table with books for selling</h2>  
	<table border="1" bgcolor="#ffdd99" align="center">
	<tr>
			<th>
				Book title 
			</th>
			<th>
				Pubisher
			</th>
	</tr>
	<xsl:for-each select="//book_list">
	<tr>
			<td>
				<xsl:value-of select="//book_title">
			</td>
			<td>
				<xsl:value-of select="publisher publisher_year">
			</td>
	</tr>
	</xsl:for-each>
	</table>
	</body>
	</html>
	</xsl:template>
	</xsl:styleshit>