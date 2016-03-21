<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
        <movieStudios>
            <xsl:for-each select="/videolibrary/studios/studio">
                
                <movieStudio> 
                    <name><xsl:value-of select="studioName"/></name>
                    <directorOfStudio><xsl:value-of select="director"/></directorOfStudio>
                    <phoneOfDirector><xsl:value-of select="phone"/></phoneOfDirector>
                    <addresOfDirector><xsl:value-of select="address"/></addresOfDirector>
                    
                    
                    <xsl:variable name="studioId">
                        <xsl:value-of select="@id"/>
                    </xsl:variable>
                    <producedMovies>
                    <xsl:for-each select="/videolibrary/videos/video[@produced-by=$studioId]">
                        
                        
                        <title><xsl:value-of select="filmName"/></title>
                        
                    </xsl:for-each>
                    </producedMovies>
                    
                    
                    
                   
                </movieStudio>
            </xsl:for-each>
        </movieStudios>
    </xsl:template>
</xsl:stylesheet>
