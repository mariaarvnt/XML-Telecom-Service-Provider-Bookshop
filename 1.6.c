<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<tab>
		<xsl:for-each select="telecom_service_provider/combinational_program_offer_list">
			<xsl:match="telecom_service_provider/combinational_program_offer_list">
				<combinational_program_offer><xsl:value-of select="offer_program_code"></xsl:value-of></combinational_program_offer>
				<combinational_program_offer><xsl:value-of select="validity_period"></xsl:value-of></combinational_program_offer>
				<combinational_program_offer><xsl:value-of select="offer_price"></xsl:value-of></combinational_program_offer>
			</xsl:match="telecom_service_provider/combinational_program_offer_list">
		</xsl:for-each>
</tab>
</body>
</html>
</xsl:template>	
</xsl:stylesheet>