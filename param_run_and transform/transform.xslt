<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Test Results</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Group</th>
      <th style="text-align:left">Test</th>
      <th style="text-align:left">Result</th>

      <th style="text-align:left">Request</th>
      <th style="text-align:left">Response</th>
      <th style="text-align:left">Assertion</th>	  
    </tr>
    <xsl:for-each select="testResults/sample">
    <tr>
      <td><xsl:value-of select="@tn" /></td>
      <td><xsl:value-of select="@lb" /></td>


       <xsl:choose>
         <xsl:when test="assertionResult/failure = 'false'">
         <td><font color="green"><b>passed</b></font></td>
         </xsl:when>
         <xsl:otherwise>
         <td><font color="red"><b>failed</b></font></td>
         </xsl:otherwise>
       </xsl:choose>


      <td><xsl:value-of select="samplerData" /></td>
      <td><xsl:value-of select="responseData" /></td>
	  <td><xsl:value-of select="assertionResult/failureMessage" /></td>
	  
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
