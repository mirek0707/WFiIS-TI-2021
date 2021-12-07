<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" version="1.0"  />
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteka</title>
                <link rel="stylesheet" type="text/css" href="zad.css" media="screen" />
            </head>
            <body>
                <table>
                    <thead>
                        <tr>
                            <th colspan="5">Działy</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="biblioteka/dzialy/dzial">
                            <xsl:sort select="nazwa" />
                                <div>
                                    <tr>
                                        <th colspan="5">
                                            <xsl:value-of select="nazwa"/>
                                        </th>
                                    </tr>
                                <tr class="naglowek"><td class="numer">NUMER</td><td class="nazwisko">NAZWISKO</td><td class="imie">IMIĘ</td><td class="tytul">TYTUŁ</td><td class="cena">CENA</td></tr>
                                <xsl:for-each select="ksiazka">
                                    <xsl:sort select="autor/nazwisko" />
                                        <tr>
                                            <td class="numer">
                                                <xsl:number value="position()" format="1" />
                                            </td>
                                            <td class="nazwisko">
                                                <xsl:value-of select="autor/nazwisko" />
                                            </td>
                                            <td class="imie">
                                                <xsl:value-of select="autor/imie" />
                                            </td>
                                            <td class="tytul">
                                                <xsl:value-of select="tytul" />
                                            </td>
                                            <td class="cena">
                                                <xsl:value-of select="cena" />
                                            </td>
                                        </tr>
                                </xsl:for-each>
                            </div>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>