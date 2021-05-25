<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<title>
		Combinational Program Offers List
	</title>
<body>
	<h3 style="color:#00b386;">
		Combinational Program Offers List
	</h3>

	<xsl:for-each select="telecom_service_provider/combinational_program_offer_list/combinational_program_offer">
			<ul> <li> Offer:
				<br/>
				<b> Program codes that participate in the offer: </b> <xsl:value-of select="@offer_program_code"/>
				<b>  Offer start date: </b> <xsl:value-of select="validity_period/@from"/>
				<b>  Offer expiration date: </b> <xsl:value-of select="validity_period/@to"/>
				<b>  Offer price: </b> <xsl:value-of select="@offer_price"/>
				</li>
			</ul>
		</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
