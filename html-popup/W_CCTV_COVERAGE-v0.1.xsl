<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<html>
<head>
</head>
<body>

<xsl:variable name="hyperlink">
	<xsl:value-of select="@href" />
</xsl:variable>

<xsl:for-each select="FieldsDoc/Fields/Field">
	<xsl:choose>
		<xsl:when test="FieldName='TECHNOLOGY'">
			<xsl:value-of select="FieldValue" disable-output-escaping="yes"/><br/>
		</xsl:when>
		<xsl:when test="FieldName='VIDEO_FILE'">
			<a target="_blank">
				<xsl:attribute name="href">Y:\EPM\zEPM_PublicShare\SLank\Video\CCTV\<xsl:value-of select="FieldValue"/></xsl:attribute>
				Video
			</a>
		</xsl:when>
	</xsl:choose>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
