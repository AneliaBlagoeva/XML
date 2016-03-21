<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">

        <xsl:for-each select="//video">
            <xsl:text>Име на видео: </xsl:text>
            <xsl:value-of select="filmName"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Тип на видео: </xsl:text>
            <xsl:value-of select="@type"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Жанр на видео: </xsl:text>
            <xsl:value-of select="@gendre"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Продължителност на видео: </xsl:text>
            <xsl:value-of select="duration"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:text>Сюжет на видео: </xsl:text>
            <xsl:value-of select="plot"/>
            <xsl:text>&#10;</xsl:text>
            
            <xsl:for-each select="actorsIN/actor-ref">
                <xsl:variable name="actIn">
                    <xsl:value-of select="@actorID"/>
                </xsl:variable>
                
            <xsl:text>Главни актьори във видео: </xsl:text>
                <xsl:value-of select="//actor[@id=$actIn]/name/first"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="//actor[@id=$actIn]/name/last"/> 
            <xsl:text>&#10;</xsl:text>
            </xsl:for-each>
            
            
            <xsl:text>&#10;</xsl:text>
            
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>