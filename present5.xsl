<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<title>
			Books published after 2014
		</title>
	</head>
	<body>
		<h3 style="color:#F5A9E1;">List of books published after 2014</h3>
		<xsl:for-each select="online_bookshop/book_list/book">
			
				<ul>

					<xsl:if test="book_characteristics/publisher[@publisher_year &gt; 2014]">
							
						<b style="color:#6699ff;">Book Title: </b> <xsl:value-of select="book_titles_info/@title"/><br/>
						<b style="color:#6699ff;">Book Subtitle: </b> 
							<xsl:choose>
								<xsl:when test = "book_titles_info/@subtitle">
									<xsl:value-of select = "book_titles_info/@subtitle"/> 
								</xsl:when>
								<xsl:otherwise>
									-
								</xsl:otherwise>	
							</xsl:choose><br/>
						<b style="color:#6699ff;">Book ISBN: </b> <xsl:value-of select="ISBN"/><br/>
						<b style="color:#6699ff;">Book Description: </b> <xsl:value-of select="book_descr"/><br/>
						<b style="color:#6699ff;">Book Characteristics: </b> <br/>
							Dimensions: <xsl:value-of select="book_characteristics/dimensions"/> <xsl:value-of select="book_characteristics/dimensions/@unit"/><br/>
							Publisher: <xsl:value-of select="book_characteristics/publisher"/> 
							Publishing year: <xsl:value-of select="book_characteristics/publisher/@publisher_year"/><br/>
							Publishing country: 
								<xsl:choose>
									<xsl:when test = "book_characteristics/publisher/@publishing_country">
										<xsl:value-of select = "book_characteristics/publisher/@publishing_country"/> 
									</xsl:when>
									<xsl:otherwise>
										-
									</xsl:otherwise>	
							</xsl:choose><br/>
						<b style="color:#6699ff;">Book Pages: </b><xsl:value-of select="book_characteristics/pages"/> pages<br/>
						<b style="color:#6699ff;">Book Weight: </b>
							<xsl:choose>
								<xsl:when test = "book_characteristics/weight">
									<xsl:value-of select = "book_characteristics/weight"/>&#160;<xsl:value-of select = "book_characteristics/weight/@w_unit"/>
								</xsl:when>
								<xsl:otherwise>
									-
								</xsl:otherwise>	
							</xsl:choose><br/>
						<b style="color:#6699ff;">Book Language: </b><xsl:value-of select="book_characteristics/language"/><br/>
						<b style="color:#6699ff;">Book Cost Information: </b><br/>
							Start Value: <xsl:value-of select="cost_information/start_value"/>&#160;<xsl:value-of select = "cost_information/start_value/@currency"/><br/>
							End Value: <xsl:value-of select="cost_information/end_value"/>&#160;<xsl:value-of select = "cost_information/end_value/@currency"/><br/>
						<b style="color:#6699ff;">Diathesimotita: </b><xsl:value-of select="other_information/diathesimotita"/><br/>
						Apostoli se: 
							<xsl:choose>
								<xsl:when test = "other_information/diathesimotita/@apostoli_se">
									<xsl:value-of select = "other_information/diathesimotita/@apostoli_se"/>
								</xsl:when>
								<xsl:otherwise>
									-
								</xsl:otherwise>	
						</xsl:choose><br/>
					</xsl:if>
						
				</ul>
		</xsl:for-each>
	</body>
</html>
</xsl:template>	
</xsl:stylesheet>

