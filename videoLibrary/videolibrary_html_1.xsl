<?xml version="1.0"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
        <xsl:template match="/">
            <html>
                <head>
                    <title>VideoLibrary</title>
                </head>
                <body background="23.jpg" text="#8C1717">
                    <h1 align="center"><font size="7"><xsl:value-of select="//nameSite"/></font></h1>
                    <table>
                        <tr>
                            <td><img src="IronMan.jpg"  height='200' width='200'/></td>
                            <td><img src="seventhSon.jpg"  height='200' width='200'/></td>
                            <td><img src="gameOfThrones.jpg"  height='200' width='200'/></td>
                            <td><img src="hotel.jpg"  height='200' width='200'/></td>
                            <td><img src="hobbit.jpg" height='200' width='200'/></td>
                            <td><img src="inside.jpg" height='200' width='200'/></td>
                        </tr>
                    </table>
                    
                    
                    <br></br><br></br><br></br>
                    <table cellpadding="2" >
                        <xsl:for-each select="videolibrary/videos/video">
                            <xsl:variable name="produced-by">
                                <xsl:value-of select="@produced-by"/>
                            </xsl:variable>
                            
                        <tr>
                            
                            <td><font size="4" face="Comic Sans MS"><u>Име</u></font></td>
                            <td><font size="4" face="Comic Sans MS"><xsl:value-of select="filmName"/></font></td>
                            
                        </tr>
                        
                        <tr>
                            <td><font size="4" face="Comic Sans MS"><u>Година</u></font></td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="@gendre"/></font></td>
                        </tr>
                            
                        <tr>
                            <td><font size="4" face="Comic Sans MS"><u>Сюжет</u></font></td>
                            <td><font size="3" face="Comic Sans MS"><xsl:value-of select="plot"/></font></td>
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



