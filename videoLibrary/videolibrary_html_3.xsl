<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
    <xsl:template match="/">
        <html>
            <body background="6.jpg" text="#0033FF">
                <h1 align="center"><font size="7" face="Comic Sans MS">Информация за актьори</font></h1>
                <table cellpadding="7" align="center">
                    <xsl:for-each select="videolibrary/actors/actor">
                        
                        <tr>
                            <td valign="top"><font size="4" face="Comic Sans MS" >
                                <xsl:value-of select="name/first"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="name/last"/>
                                </font>
                            </td>
                            <td>
                                <pre>
                                <font size="4" face="Comic Sans MS">
                                <xsl:text>Пол: </xsl:text><xsl:value-of select="@gender"/>
                                <xsl:text>&#10;</xsl:text>
                                <xsl:text>Години: </xsl:text><xsl:value-of select="@age"/>
                                <xsl:text>&#10;</xsl:text>
                                <xsl:text>Родина: </xsl:text><xsl:value-of select="countryActor"/>
                                <xsl:text>&#10;</xsl:text>
                                <xsl:text>Email: </xsl:text><xsl:value-of select="email"/>
                                <xsl:text>&#10;</xsl:text>
                                </font>
                                </pre>
                                
                            </td>
                            
                            <td>
                                <xsl:variable name="actId">
                                    <xsl:value-of select="@id"/>
                                </xsl:variable>
                                
                                <xsl:for-each select="/videolibrary/videos/video/actorsIN/actor-ref[@actorID=$actId]/../..">
                                    <pre>
                                    <font size="4" face="Comic Sans MS">
                                    <xsl:value-of select="filmName"/>
                                    <xsl:text>&#10;</xsl:text>
                                    </font>
                                    </pre>
                                    
                                </xsl:for-each>
                            </td>
                        </tr>
                        
                        <tr>
                            <td> &#160;
                            </td>
                        </tr>
                    </xsl:for-each>                        
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



