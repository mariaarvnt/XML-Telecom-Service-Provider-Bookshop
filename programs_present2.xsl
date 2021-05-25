<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<title>
			Mobile programs
		</title>
	</head>
	<body>
		<xsl:for-each select="telecom_service_provider/program_list/program">
			<xsl:sort select="program_name" order="ascending"/>
				<ul>
			
					<xsl:if test="program_name/@category='mobile'">
							
						<b>Name of program:</b> <xsl:value-of select="program_name"/>
						<b>Name of secondary category:</b> <xsl:value-of select="secondary_mobile_categ/@value_info_m"/>

					</xsl:if>
						
				</ul>
		</xsl:for-each>
	</body>
</html>
</xsl:template>	
</xsl:stylesheet>
