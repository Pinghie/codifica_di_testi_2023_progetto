<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" >
    <xsl:output method="text" version="1.0" indent="yes"/>


    <xsl:template match="/">
        <xsl:value-of select="//tei:add"/>
    </xsl:template>

</xsl:stylesheet>