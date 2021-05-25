<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<tab>
	<xsl:for-each select="telecom_service_provider/program_list">
	<xsl:for-each sort select="program_name"/>
	<xsl:if test="//cateory='mobile'">
		<tr>
			<td>
				<xsl:value-of select="program_name"/>
			</td>
			<td>
				<xsl:value-of select="secondary_mobile_categ"/>
			</td>
		</tr>
</tab>
</body>
</html>
</xsl:template>	