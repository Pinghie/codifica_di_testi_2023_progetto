<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" >
    <xsl:output method="html" encoding="UTF-8"/>


    <xsl:template match="/">

        <html>
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <script src="https://kit.fontawesome.com/2fd670a4d1.js" crossorigin="anonymous"></script>
                <link rel="preconnect" href="https://fonts.googleapis.com"/>
                <link rel="stylesheet" type="text/css" href="src/style.css"/>
                <title>Codifica elettronica dei diari di Emanuele Artom</title>
            </head>

            <body>

            <div class="header">
                <h1>Diari di Emanuele Artom</h1>
                <h2>Codifica elettronica delle pagine 42-44</h2>
            </div>

            <div class="sezione1">
                <h1>Informazioni sulla fonte</h1>
                <div class="containerTabelle">
                    <div class="containerTabella">
                        <h2>Descrizione bibliografica</h2>
                        <xsl:apply-templates select="//tei:msContents"/>
                    </div>
                    <div class="containerTabella">
                        <h2>Descrizione fisica</h2>
                        <xsl:apply-templates select="//tei:physDesc"/>
                    </div>
                </div>
            </div>

            <div class="container">

                <div class="controlPanel">
                    <div class="divCambioPagina">
                    <button onclick="cambioPagina(-1)"><i class="fa-solid fa-arrow-right fa-rotate-180"></i> Pagina precedente</button>
                    <button onclick="cambioPagina(1)">Pagina successiva <i class="fa-solid fa-arrow-right"></i></button>
                </div>
                <div class="divBottoni">
                    <div>
                        <h2>Evidenzia</h2>
                        <button class="addBtn" onclick="mostraFenomeno('add', 'blue', 'ev')">AGGIUNTE</button>
                        <button class="placeBtn" onclick="mostraFenomeno('place', 'green', 'ev')">LUOGHI</button>
                        <button class="abbrBtn" onclick="mostraFenomeno('abbr', 'orange', 'ev')">ABBREVIAZIONI</button>
                        <button class="sicBtn" onclick="mostraFenomeno('sic', 'yellow', 'ev')">ERRORI</button>
                        <button class="origBtn" onclick="mostraFenomeno('orig', 'aqua', 'ev')">ORIGINALE</button>
                    </div>
                    <div>
                        <h2>Mostra</h2>
                        <button class="delBtn" onclick="mostraFenomeno('del', 'red', 'show')">CANCELLATURE</button>
                        <button class="expanBtn" onclick="mostraFenomeno('expan', 'purple', 'show')">ESPANSIONI</button>
                        <button class="regBtn" onclick="mostraFenomeno('reg', 'deeppink', 'show')">REGOLARIZZAZIONI</button>
                    </div>
                </div>
                </div>

                <h2 id="indicatorePagina">Pagina X</h2>
                <xsl:apply-templates select="//tei:facsimile"/>

                <div class="controlPanel">
                <div class="divBottoni">
                    <div>
                        <h2>Evidenzia</h2>
                        <button class="addBtn" onclick="mostraFenomeno('add', 'blue', 'ev')">AGGIUNTE</button>
                        <button class="placeBtn" onclick="mostraFenomeno('place', 'green', 'ev')">LUOGHI</button>
                        <button class="abbrBtn" onclick="mostraFenomeno('abbr', 'orange', 'ev')">ABBREVIAZIONI</button>
                        <button class="sicBtn" onclick="mostraFenomeno('sic', 'yellow', 'ev')">ERRORI</button>
                        <button class="origBtn" onclick="mostraFenomeno('orig', 'aqua', 'ev')">ORIGINALE</button>
                    </div>
                    <div>
                        <h2>Mostra</h2>
                        <button class="delBtn" onclick="mostraFenomeno('del', 'red', 'show')">CANCELLATURE</button>
                        <button class="expanBtn" onclick="mostraFenomeno('expan', 'purple', 'show')">ESPANSIONI</button>
                        <button class="regBtn" onclick="mostraFenomeno('reg', 'deeppink', 'show')">REGOLARIZZAZIONI</button>
                    </div>
                </div>
                    <div class="divCambioPagina">
                        <button onclick="cambioPagina(-1)"><i class="fa-solid fa-arrow-right fa-rotate-180"></i> Pagina precedente</button>
                        <button onclick="cambioPagina(1)">Pagina successiva <i class="fa-solid fa-arrow-right"></i></button>
                    </div>
              </div>
	        </div>

            <div class="sezione2">
                <h1>Sul progetto</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin varius enim id turpis ultricies pretium. Nunc a dui nisl. Etiam viverra justo urna, id maximus nunc porta at. Aliquam mollis dui massa, sit amet hendrerit nunc egestas nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum ex non risus congue, ut pellentesque magna dignissim. Maecenas interdum at enim in vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam libero massa, rutrum quis fermentum vitae, semper ac turpis. Integer ut posuere massa. Ut mollis felis diam, quis fringilla ipsum feugiat aliquam. Sed orci nulla, consequat vitae massa in, finibus molestie risus. Aliquam ante dui, vestibulum vel diam fringilla, cursus feugiat nunc. Etiam ut erat ipsum.</p>
                <h1>Bibliografia</h1>
                <p>
                    <xsl:apply-templates select="//tei:listBibl"/>
                </p>
            </div>

            <footer>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin varius enim id turpis ultricies pretium. Nunc a dui nisl. Etiam viverra justo urna, id</p>
            </footer>
            
            </body>
            <script type="text/javascript" src="src/script.js"></script>
        </html>

    </xsl:template>

    <xsl:template match="//tei:msContents">
        <table>
            <tr>
                <td><strong>In breve</strong></td>
                <td><span><xsl:value-of select="//tei:msContents/tei:summary"/></span></td>
            </tr>
            <tr>
                <td><span><strong>Identificazione</strong></span></td>
                <td>
                    <table>
                        <tr>
                            <td><strong>Posizione</strong></td>
                            <td><span><xsl:value-of select="//tei:msIdentifier/tei:settlement"/></span>, <span><xsl:value-of select="//tei:msIdentifier/tei:country"/></span></td>
                        </tr>
                        <tr>
                            <td><strong>Istituzione</strong></td>
                            <td><span><xsl:value-of select="//tei:msIdentifier/tei:institution"/></span></td>
                        </tr>
                        <tr>
                            <td><strong>Collezione</strong></td>
                            <td><span><xsl:value-of select="//tei:msIdentifier/tei:repository"/></span></td>
                        </tr>
                        <tr>
                            <td><strong>Manoscritto</strong></td>
                            <td><span><xsl:value-of select="//tei:msIdentifier/tei:idno"/></span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <xsl:for-each select="//tei:msContents/tei:msItem">
                <tr>
                    <td><strong>Item <span><xsl:value-of select="@n"/></span></strong></td>
                    <td>
                        <table>
                            <tr>
                                <td><strong>Titolo</strong></td>
                                <td><span><xsl:value-of select="tei:title"/></span></td>
                            </tr>
                            <tr>
                                <td><strong>Autore</strong></td>
                                <td><span><xsl:value-of select="tei:author"/></span></td>
                            </tr>
                            <tr>
                                <td><strong>Lingua</strong></td>
                                <td><span><xsl:value-of select="tei:textLang"/></span></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

    <xsl:template match="//tei:physDesc">
        <table>
            <tr>
                <td><span><strong>Supporto</strong></span></td>
                <td><span><xsl:value-of select="//tei:support"/></span></td>
            </tr>
            <tr>
                <td><span><strong>Quantità</strong></span></td>
                <td><xsl:value-of select="//tei:extent"/>. </td>
            </tr>
            <tr>
                <td><span><strong>Organizzazione</strong></span></td>
                <td><xsl:value-of select="//tei:collation"/></td>
            </tr>
            <tr>
                <td><span><strong>Condizioni</strong></span></td>
                <td><span><xsl:value-of select="//tei:condition"/></span></td>
            </tr>
            <tr>
                <td><span><strong>Impaginazione</strong></span></td>
                <td><span><xsl:value-of select="//tei:layoutDesc/tei:p"/></span></td>
            </tr>
            <tr>
                <td><span><strong>Mani</strong></span></td>
                <td><span><xsl:value-of select="//tei:handDesc/tei:p"/></span></td>
            </tr>
            <tr>
                <td><span><strong>Storia</strong></span></td>
                <td><span><xsl:value-of select="//tei:history/tei:p"/></span></td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template match="//tei:facsimile">
        <xsl:for-each select="//tei:surface">
            <div class="page">
                <xsl:element name="img">
                    <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
                </xsl:element>
                <div class="trascrizione">
                    <p>
                        <xsl:variable name="myVar" >
                            <xsl:value-of select="position()"/>
                        </xsl:variable>
                        <xsl:apply-templates select="//tei:ab[@n=$myVar]"/>

                    </p>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="//tei:lb">
        <br/>
        <xsl:element name="span">
            <xsl:attribute name="id">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:attribute name="class">row-number</xsl:attribute>
            <xsl:value-of select="@n" />&#160; 
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

            <!-- Correzioni -->
        <xsl:template match="tei:choice/tei:corr">
            <corr>
                <xsl:element name="span">
                    <xsl:attribute name="class">corr</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
            </corr>
        </xsl:template>

        <!-- Abbreviazioni -->
        <xsl:template match="tei:abbr">
            <xsl:element name="span">
                <xsl:attribute name="class">abbr</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>

        <!-- Normalizzazioni  -->
        <xsl:template match="tei:choice/tei:reg">
            <reg>
                <xsl:element name="span">
                    <xsl:attribute name="class">reg</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
            </reg>
        </xsl:template>

        <!-- Aggiunte -->
        <xsl:template match="tei:add">
                <xsl:element name="span">
                    <xsl:attribute name="class">add</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
        </xsl:template>

        <xsl:template match="tei:sic">
            <xsl:element name="sic">
                    <xsl:attribute name="class">sic</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
        </xsl:template>

        <!-- Cancellazioni -->
        <xsl:template match="tei:del">
            <xsl:element name="span">
                <xsl:attribute name="class">del</xsl:attribute>
                <xsl:apply-templates />
            </xsl:element>
        </xsl:template>

        <!-- expan -->
        <xsl:template match="tei:expan">
            <xsl:element name="span">
                <xsl:attribute name="class">expan</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>

        <!-- persName -->
        <xsl:template match="tei:name[@type='person']">
            <xsl:element name="span">
                <xsl:attribute name="class">name</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>


        <!-- placeName -->
        <xsl:template match="tei:name[@type='place']">
            <xsl:element name="span">
                <xsl:attribute name="class">place</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>

        <xsl:template match="//tei:listBibl">
        <ul>
            <xsl:for-each select="//tei:biblStruct">
            <li>
                <xsl:value-of select="tei:monogr/tei:title"/>,
                <xsl:value-of select="tei:monogr/tei:author"/>,
                <xsl:value-of select="tei:monogr/tei:imprint/tei:pubPlace"/>,
                <xsl:value-of select="tei:monogr/tei:imprint/tei:date"/>,
                <xsl:value-of select="tei:monogr/tei:imprint/tei:publisher"/>
            </li>
            </xsl:for-each>
        </ul>
        </xsl:template>

</xsl:stylesheet>