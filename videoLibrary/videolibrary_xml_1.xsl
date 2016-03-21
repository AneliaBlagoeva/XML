<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
        <movies>
            <xsl:for-each select="/videolibrary/videos/video">
                <xsl:if test="@type='movie'">
                <movie> 
                    <typeOfmovie><xsl:value-of select="@type"/></typeOfmovie>
                    <nameOfMovie><xsl:value-of select="filmName"/></nameOfMovie>
                    <gendre><xsl:value-of select="@gendre"/></gendre>
                    <originCountry><xsl:value-of select="country"/></originCountry>
                    <plotOfMovie><xsl:value-of select="plot"/></plotOfMovie>
                    
                    <actors>
                    <xsl:for-each select="actorsIN/actor-ref">
                        <xsl:variable name="actIn">
                            <xsl:value-of select="@actorID"/>
                        </xsl:variable>
                        
                        
                            <actor>
                            <xsl:value-of select="//actor[@id=$actIn]/name/first"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="//actor[@id=$actIn]/name/last"/> 
                            </actor>
                        
                    </xsl:for-each>
                    </actors>
                    
                </movie>
                </xsl:if>
            </xsl:for-each>
        </movies>
    </xsl:template>
</xsl:stylesheet>
