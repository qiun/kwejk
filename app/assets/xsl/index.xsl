<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Data</title>
      </head>
      <body>
          <table align="center" >
            <tr bgcolor="#d74d2f">
              <th align="center" width="100">
                Id:
              </th>
              <th align="center" width="300">
                Title:
              </th>
              <th align="center">
                Description:
              </th>
              <th align="center">
                &#160;C&#160;/&#160;L&#160;/&#160;S&#160;/&#160;TOTAL&#160;
              </th>
              <th align="center">
                Image:
              </th>
            </tr>
            <xsl:for-each select="posts/post">
              <xsl:variable name="altColor">
                   <xsl:choose>
                       <xsl:when test="position() mod 2 = 0">#D3DFEE</xsl:when>
                       <xsl:otherwise>#EEEEE</xsl:otherwise>
                   </xsl:choose>
              </xsl:variable>
              <tr bgcolor="{$altColor}">
                <td align="center">
                  <xsl:value-of select="id"/>
                </td>
                <td align="center">
                  <xsl:element name="a">
                    <xsl:attribute name="href">
                      <xsl:value-of select="url"/>
                    </xsl:attribute>
                    <xsl:value-of select="title"/>
                  </xsl:element>
                </td>
                <td align="center" >
                  <xsl:value-of select="description"/>
                </td>
                <td align="center" >
                  <xsl:value-of select="comment_count"/>&#160;/&#160;<xsl:value-of select="like_count"/>&#160;/&#160;<xsl:value-of select="share_count"/>&#160;/&#160;<xsl:value-of select="total_count"/>
                </td>
                <td align="center">
                  <img>
                    <xsl:attribute name="width">
                      300
                    </xsl:attribute>
                    <xsl:attribute name="src">
                      <xsl:value-of select="img/url/default"/>
                    </xsl:attribute>
                  </img>  
                </td>
              </tr>
            </xsl:for-each>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
