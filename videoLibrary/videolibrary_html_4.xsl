<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
    <xsl:template match="/">
        <html>
            <body background="7.jpg" text="Beige">
                <h1 align="center"><font size="7" face="Comic Sans MS">Информация за студиа</font></h1>
                <table cellpadding="7" align="center">
                    <xsl:for-each select="videolibrary/studios/studio">
                        
                        <tr>
                            <td><font size="4" face="Comic Sans MS" >
                                <xsl:value-of select="studioName"/>
                            </font>
                            </td>
                            <td>
                                <pre>
                                <font size="4" face="Comic Sans MS">
                                <xsl:text>Продуцент: </xsl:text>
                                <xsl:value-of select="director"/>
                                <xsl:text>&#10;</xsl:text>   
                                    
                                <xsl:text>Адрес на продуцент: </xsl:text>
                                <xsl:value-of select="address"/>
                                <xsl:text>&#10;</xsl:text>
                                    
                                <xsl:text>Телефон на продуцент: </xsl:text>
                                <xsl:value-of select="phone"/>
                                <xsl:text>&#10;</xsl:text>
                                    
                                </font>
                                </pre>
                                
                            </td>
                            
                            <td>
                                <xsl:variable name="studioId">
                                    <xsl:value-of select="@id"/>
                                </xsl:variable>
                                
                                <xsl:for-each select="/videolibrary/videos/video[@produced-by=$studioId]">
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



