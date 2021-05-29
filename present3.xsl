<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
		<title>
			Table with information for books
		</title>
	</head>
    <body>
        <h3 style="color:#4D446F;">Table with information for books</h3>
		<table border="1" color="#706695">
			<tr bgcolor="#CCCCFF" align="center">
				<th>
                   Book Title
                </th>
                <th>
                   Book Subtitle
                </th>
                <th>
                    Book End Value (euro)
                </th>
			</tr>
			<xsl:for-each select="online_bookshop/book_list/book">
            <xsl:sort select= "cost_information/end_value[@currency='euro']"  order="descending" data-type="number" />
            <tr>
                <td>
                    <xsl:value-of select = "book_titles_info/@title"/>
                </td>
				<td>
					<xsl:choose>
						<xsl:when test = "book_titles_info/@subtitle">
							<xsl:value-of select = "book_titles_info/@subtitle"/> 
						</xsl:when>
						<xsl:otherwise>
							-
						</xsl:otherwise>	
					</xsl:choose>
				</td>
				<td>
					<xsl:choose>
						<xsl:when test = "cost_information/end_value[@currency='euro']">
							<xsl:value-of select = "cost_information/end_value"/>&#160; <xsl:value-of select = "cost_information/end_value/@currency"/>
						</xsl:when>
						<xsl:otherwise>
							-
						</xsl:otherwise>
					</xsl:choose>
				</td>
			</tr>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
		
