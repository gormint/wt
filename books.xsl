<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes'/>
	<xsl:template match="/">
		<html>
			<body>
				My Book Collection:
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>Title</th><th>Author</th><th>Year</th><th>Price</th>
					</tr>
					<xsl:for-each select="bookstore/book">
					<tr>
						<xsl:for-each select="./*">
							<td><xsl:value-of select="."/></td>
						</xsl:for-each>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>