<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">

        <xsl:for-each select="//actor">
            <xsl:text>Име на актьор: </xsl:text>
            <xsl:value-of select="name/first"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="name/last"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Пол: </xsl:text>
            <xsl:value-of select="@gender"/>
            <xsl:text>&#10;</xsl:text>


            <xsl:text>Години: </xsl:text>
            <xsl:value-of select="@age"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>Страна: </xsl:text>
            <xsl:value-of select="countryActor"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>email: </xsl:text>
            <xsl:value-of select="email"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:variable name="actId">
                <xsl:value-of select="@id"/>
            </xsl:variable>


            <xsl:text>Филми, в които участва: </xsl:text>
            <xsl:text>&#10;</xsl:text>
            <xsl:for-each
                select="/videolibrary/videos/video/actorsIN/actor-ref[@actorID=$actId]/../..">
                <xsl:text>- </xsl:text>
                <xsl:value-of select="filmName"/>
                <xsl:text>&#10;</xsl:text>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
