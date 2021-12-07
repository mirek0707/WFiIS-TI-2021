<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" version="1.0"  />
    <xsl:param name="sort">name</xsl:param>
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblioteka</title>
                <link rel="stylesheet" type="text/css" href="../zad5.css" media="screen" />
            </head>
            <body>
                <table class="cala">
                    <thead>
                        <tr>
                            <th colspan="5">Działy</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <xsl:for-each select="biblioteka/dzialy/dzial">
                                    <xsl:sort select="nazwa" />
                                    <table class="dzial">
                                        <tr>
                                            <th colspan="5">
                                                <xsl:value-of select="nazwa"/>
                                            </th>
                                        </tr>
                                        <tr class="naglowek"><td class="numer">NUMER</td><td class="nazwisko">NAZWISKO</td><td class="imie">IMIĘ</td><td class="tytul">TYTUŁ</td><td class="cena">CENA</td></tr>
                                        <xsl:choose>
                                            <xsl:when test="$sort = 'nazwisko'">
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
                                            </xsl:when>
                                            <xsl:when test="$sort = 'imie'">
                                                <xsl:for-each select="ksiazka">
                                                    <xsl:sort select="autor/imie" />
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
                                            </xsl:when>
                                            <xsl:when test="$sort = 'cena'">
                                                <xsl:for-each select="ksiazka">
                                                    <xsl:sort select="cena" />
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
                                            </xsl:when>
                                            <xsl:when test="$sort = 'tytul'">
                                                <xsl:for-each select="ksiazka">
                                                    <xsl:sort select="tytul" />
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
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:for-each select="ksiazka">
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
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </table>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>