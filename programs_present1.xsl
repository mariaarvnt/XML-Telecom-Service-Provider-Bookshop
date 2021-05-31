<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
		<title>
			Table with programs and prices per costumer category
		</title>
	</head>
    <body>
		<table border="2">
			<tr bgcolor="#CCCCFF" align="center">
				<th>
                   Program Name 
                </th>
                <th>
                   Price for New Client
                </th>
                <th>
                    Price for Old Client
                </th>
                <th>
                    Price for Company
                </th>
			</tr>
			<xsl:for-each select = "telecom_service_provider/program_list/program">
			<tr>
				<td>
					<xsl:value-of select = "program_name"/>
				</td>
				<td>
				
					<xsl:choose>
						<xsl:when test = "prices_list/client_prices/@client='new_client'">
							<xsl:value-of select = "prices_list/client_prices[@client='new_client']"/> euro 
						</xsl:when>
						<xsl:otherwise>
							-
						</xsl:otherwise>	
					</xsl:choose>
				</td>
				<td>
					<xsl:choose>
						<xsl:when test = "prices_list/client_prices/@client='old_client'">
							<xsl:value-of select = "prices_list/client_prices[@client='old_client']"/> euro 
						</xsl:when>
						<xsl:otherwise>
							-
						</xsl:otherwise>
					</xsl:choose>
				</td>
				<td>
					<xsl:choose>
						<xsl:when test = "prices_list/client_prices/@client='company'">
							<xsl:value-of select = "prices_list/client_prices[@client='company']"/> euro 
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
		