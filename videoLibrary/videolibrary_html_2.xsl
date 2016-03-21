<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
    <xsl:template match="/">
        <html>
            <head>
                <title>Movies</title>
            </head>
            <body background="5.jpg" text="Salmon">
                <h1 align="center"><font size="7"><i>Филми</i></font></h1>

                <table cellpadding="3" align="center">
        
                    <tr>
                        
                        <th><font size="5"><u><i>Заглавие</i></u></font></th>
                        <th><font size="5"><u><i>Жанр</i></u></font></th>
                        <th><font size="5"><u><i>Студио</i></u></font></th>
                        <th><font size="5"><u><i>Продължитеност</i></u></font></th>
                        <th><font size="5"><u><i>Държава</i></u></font></th>
                        <th><font size="5"><u><i>Година</i></u></font></th>

                        
                    </tr>
                    
                    <xsl:for-each select="videolibrary/videos/video">
                        <xsl:if test="@type='movie'">
                            
                            
                        <xsl:variable name="produced-by">
                            <xsl:value-of select="@produced-by"/>
                        </xsl:variable>
                        
                        
                        <tr valign="top" >
                            <td><font size="4"><i><xsl:value-of select="filmName"/></i></font></td>
                            <td><font size="4"><i><xsl:value-of select="@gendre"/></i></font></td>
                            <td>
                                <font size="4">
                                <i>
                                    <xsl:value-of select="//studio[@id=$produced-by]/studioName"/>
                                </i>
                                </font>
                            </td>
                            <td><font size="4"><i><xsl:value-of select="duration"/></i></font></td>
                            <td><font size="4"><i><xsl:value-of select="country"/></i></font></td>
                            <td><font size="4"><i><xsl:value-of select="year"/></i></font></td>   
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                    
                    
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
