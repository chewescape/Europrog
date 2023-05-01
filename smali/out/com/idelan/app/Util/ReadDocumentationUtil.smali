.class public Lcom/idelan/app/Util/ReadDocumentationUtil;
.super Ljava/lang/Object;
.source "ReadDocumentationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readDOC(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v4, 0x0

    .line 28
    .local v4, "text":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    .local v3, "in":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 30
    .local v0, "a":I
    const/4 v2, 0x0

    .line 32
    .local v2, "extractor":Lorg/textmining/text/extraction/WordExtractor;
    new-instance v2, Lorg/textmining/text/extraction/WordExtractor;

    .end local v2    # "extractor":Lorg/textmining/text/extraction/WordExtractor;
    invoke-direct {v2}, Lorg/textmining/text/extraction/WordExtractor;-><init>()V

    .line 34
    .restart local v2    # "extractor":Lorg/textmining/text/extraction/WordExtractor;
    invoke-virtual {v2, v3}, Lorg/textmining/text/extraction/WordExtractor;->extractText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 35
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u89e3\u6790\u5f97\u5230\u7684\u4e1c\u897f"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2d} :catch_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_37

    .line 41
    .end local v0    # "a":I
    .end local v2    # "extractor":Lorg/textmining/text/extraction/WordExtractor;
    .end local v3    # "in":Ljava/io/FileInputStream;
    :goto_2d
    if-nez v4, :cond_31

    .line 42
    const-string v4, "\u89e3\u6790\u6587\u4ef6\u51fa\u73b0\u95ee\u9898"

    .line 44
    :cond_31
    return-object v4

    .line 36
    :catch_32
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2d

    .line 38
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_37
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public static readDOCX(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v3, ""

    .line 50
    .local v3, "river":Ljava/lang/String;
    :try_start_2
    new-instance v6, Ljava/util/zip/ZipFile;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 51
    .local v6, "xlsxFile":Ljava/util/zip/ZipFile;
    const-string v8, "word/document.xml"

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 52
    .local v4, "sharedStringXML":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 53
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 54
    .local v7, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 55
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_22
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_22} :catch_60
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_22} :catch_6a

    move-result v1

    .line 56
    .local v1, "evtType":I
    :goto_23
    const/4 v8, 0x1

    if-ne v1, v8, :cond_2b

    .line 79
    .end local v1    # "evtType":I
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v6    # "xlsxFile":Ljava/util/zip/ZipFile;
    .end local v7    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_26
    if-nez v3, :cond_2a

    .line 80
    const-string v3, "\u89e3\u6790\u6587\u4ef6\u51fa\u73b0\u95ee\u9898"

    .line 83
    :cond_2a
    return-object v3

    .line 57
    .restart local v1    # "evtType":I
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .restart local v6    # "xlsxFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2b
    packed-switch v1, :pswitch_data_70

    .line 70
    :cond_2e
    :goto_2e
    :pswitch_2e
    :try_start_2e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_23

    .line 59
    :pswitch_33
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "tag":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    const-string v8, "t"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/util/zip/ZipException; {:try_start_2e .. :try_end_5e} :catch_60
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_5e} :catch_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_5e} :catch_6a

    move-result-object v3

    .line 64
    goto :goto_2e

    .line 72
    .end local v1    # "evtType":I
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "xlsxFile":Ljava/util/zip/ZipFile;
    .end local v7    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_60
    move-exception v0

    .line 73
    .local v0, "e":Ljava/util/zip/ZipException;
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_26

    .line 74
    .end local v0    # "e":Ljava/util/zip/ZipException;
    :catch_65
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6a
    move-exception v0

    .line 77
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_26

    .line 57
    nop

    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_33
        :pswitch_2e
    .end packed-switch
.end method

.method public static readPPTX(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v5, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, ""

    .line 170
    .local v6, "river":Ljava/lang/String;
    const/4 v10, 0x0

    .line 172
    .local v10, "xlsxFile":Ljava/util/zip/ZipFile;
    :try_start_8
    new-instance v11, Ljava/util/zip/ZipFile;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_12} :catch_3b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_40

    .end local v10    # "xlsxFile":Ljava/util/zip/ZipFile;
    .local v11, "xlsxFile":Ljava/util/zip/ZipFile;
    move-object v10, v11

    .line 179
    .end local v11    # "xlsxFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "xlsxFile":Ljava/util/zip/ZipFile;
    :goto_13
    :try_start_13
    const-string v13, "[Content_Types].xml"

    invoke-virtual {v10, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 180
    .local v8, "sharedStringXML":Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 181
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 182
    .local v12, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "utf-8"

    invoke-interface {v12, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 183
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_29
    .catch Ljava/util/zip/ZipException; {:try_start_13 .. :try_end_29} :catch_6c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_29} :catch_76

    move-result v2

    .line 184
    .local v2, "evtType":I
    :goto_2a
    const/4 v13, 0x1

    if-ne v2, v13, :cond_45

    .line 210
    .end local v2    # "evtType":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v12    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2d
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-lt v3, v13, :cond_7b

    .line 243
    if-nez v6, :cond_3a

    .line 244
    const-string v6, "\u89e3\u6790\u6587\u4ef6\u51fa\u73b0\u95ee\u9898"

    .line 246
    :cond_3a
    return-object v6

    .line 173
    .end local v3    # "i":I
    :catch_3b
    move-exception v1

    .line 174
    .local v1, "e1":Ljava/util/zip/ZipException;
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_13

    .line 175
    .end local v1    # "e1":Ljava/util/zip/ZipException;
    :catch_40
    move-exception v1

    .line 176
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 185
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "evtType":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .restart local v12    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_45
    packed-switch v2, :pswitch_data_10e

    .line 201
    :cond_48
    :goto_48
    :pswitch_48
    :try_start_48
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2a

    .line 187
    :pswitch_4d
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "tag":Ljava/lang/String;
    const-string v13, "Override"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_48

    .line 190
    const/4 v13, 0x0

    const-string v14, "PartName"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "s":Ljava/lang/String;
    const-string v13, "/ppt/slides/slide"

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_48

    .line 192
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/util/zip/ZipException; {:try_start_48 .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_6b} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_6b} :catch_76

    goto :goto_48

    .line 203
    .end local v2    # "evtType":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v12    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6c
    move-exception v0

    .line 204
    .local v0, "e":Ljava/util/zip/ZipException;
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_2d

    .line 205
    .end local v0    # "e":Ljava/util/zip/ZipException;
    :catch_71
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :catch_76
    move-exception v0

    .line 208
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2d

    .line 211
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "i":I
    :cond_7b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\u7b2c"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u5f20\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7\u00b7"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    :try_start_9e
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ppt/slides/slide"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 213
    invoke-virtual {v10, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 216
    .restart local v8    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 217
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 218
    .restart local v12    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "utf-8"

    invoke-interface {v12, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 219
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 220
    .restart local v2    # "evtType":I
    :goto_c8
    const/4 v13, 0x1

    if-ne v2, v13, :cond_cf

    .line 210
    .end local v2    # "evtType":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v12    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_cb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2e

    .line 221
    .restart local v2    # "evtType":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .restart local v12    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_cf
    packed-switch v2, :pswitch_data_116

    .line 233
    :cond_d2
    :goto_d2
    :pswitch_d2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_c8

    .line 223
    :pswitch_d7
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 224
    .restart local v9    # "tag":Ljava/lang/String;
    const-string v13, "t"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 225
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_fd
    .catch Ljava/util/zip/ZipException; {:try_start_9e .. :try_end_fd} :catch_ff
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_fd} :catch_104
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_fd} :catch_109

    move-result-object v6

    .line 227
    goto :goto_d2

    .line 235
    .end local v2    # "evtType":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v12    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_ff
    move-exception v0

    .line 236
    .local v0, "e":Ljava/util/zip/ZipException;
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_cb

    .line 237
    .end local v0    # "e":Ljava/util/zip/ZipException;
    :catch_104
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cb

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :catch_109
    move-exception v0

    .line 240
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_cb

    .line 185
    :pswitch_data_10e
    .packed-switch 0x2
        :pswitch_4d
        :pswitch_48
    .end packed-switch

    .line 221
    :pswitch_data_116
    .packed-switch 0x2
        :pswitch_d7
        :pswitch_d2
    .end packed-switch
.end method

.method public static readXLSX(Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v11, ""

    .line 88
    .local v11, "str":Ljava/lang/String;
    const/4 v14, 0x0

    .line 89
    .local v14, "v":Ljava/lang/String;
    const/4 v5, 0x0

    .line 90
    .local v5, "flat":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v8, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_9
    new-instance v15, Ljava/util/zip/ZipFile;

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 94
    .local v15, "xlsxFile":Ljava/util/zip/ZipFile;
    const-string v18, "xl/sharedStrings.xml"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 95
    .local v9, "sharedStringXML":Ljava/util/zip/ZipEntry;
    invoke-virtual {v15, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 96
    .local v6, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 97
    .local v16, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v18, "utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 98
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 99
    .local v3, "evtType":I
    :goto_36
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_6b

    .line 114
    const-string v18, "xl/worksheets/sheet1.xml"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 115
    .local v10, "sheetXML":Ljava/util/zip/ZipEntry;
    invoke-virtual {v15, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 116
    .local v7, "inputStreamsheet":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 117
    .local v17, "xmlParsersheet":Lorg/xmlpull/v1/XmlPullParser;
    const-string v18, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 119
    .local v4, "evtTypesheet":I
    :goto_59
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_90

    .line 153
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/util/zip/ZipException; {:try_start_9 .. :try_end_66} :catch_8b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_66} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_66} :catch_170

    .line 161
    .end local v3    # "evtType":I
    .end local v4    # "evtTypesheet":I
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamsheet":Ljava/io/InputStream;
    .end local v9    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v10    # "sheetXML":Ljava/util/zip/ZipEntry;
    .end local v15    # "xlsxFile":Ljava/util/zip/ZipFile;
    .end local v16    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "xmlParsersheet":Lorg/xmlpull/v1/XmlPullParser;
    :goto_66
    if-nez v11, :cond_6a

    .line 162
    const-string v11, "\u89e3\u6790\u6587\u4ef6\u51fa\u73b0\u95ee\u9898"

    .line 164
    :cond_6a
    return-object v11

    .line 100
    .restart local v3    # "evtType":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .restart local v15    # "xlsxFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6b
    packed-switch v3, :pswitch_data_176

    .line 112
    :cond_6e
    :goto_6e
    :pswitch_6e
    :try_start_6e
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_36

    .line 102
    :pswitch_73
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 103
    .local v13, "tag":Ljava/lang/String;
    const-string v18, "t"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6e

    .line 104
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/util/zip/ZipException; {:try_start_6e .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_8a} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_8a} :catch_170

    goto :goto_6e

    .line 154
    .end local v3    # "evtType":I
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v15    # "xlsxFile":Ljava/util/zip/ZipFile;
    .end local v16    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8b
    move-exception v2

    .line 155
    .local v2, "e":Ljava/util/zip/ZipException;
    invoke-virtual {v2}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_66

    .line 120
    .end local v2    # "e":Ljava/util/zip/ZipException;
    .restart local v3    # "evtType":I
    .restart local v4    # "evtTypesheet":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStreamsheet":Ljava/io/InputStream;
    .restart local v9    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .restart local v10    # "sheetXML":Ljava/util/zip/ZipEntry;
    .restart local v15    # "xlsxFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "xmlParsersheet":Lorg/xmlpull/v1/XmlPullParser;
    :cond_90
    packed-switch v4, :pswitch_data_17e

    .line 151
    :cond_93
    :goto_93
    :try_start_93
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_59

    .line 122
    :pswitch_98
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 123
    .restart local v13    # "tag":Ljava/lang/String;
    const-string v18, "row"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_93

    .line 124
    const-string v18, "c"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f3

    .line 125
    const/16 v18, 0x0

    const-string v19, "t"

    invoke-interface/range {v17 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, "t":Ljava/lang/String;
    if-eqz v12, :cond_d9

    .line 127
    const/4 v5, 0x1

    .line 128
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\u6709"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/util/zip/ZipException; {:try_start_93 .. :try_end_d3} :catch_8b
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_d3} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_93 .. :try_end_d3} :catch_170

    goto :goto_93

    .line 156
    .end local v3    # "evtType":I
    .end local v4    # "evtTypesheet":I
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamsheet":Ljava/io/InputStream;
    .end local v9    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v10    # "sheetXML":Ljava/util/zip/ZipEntry;
    .end local v12    # "t":Ljava/lang/String;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v15    # "xlsxFile":Ljava/util/zip/ZipFile;
    .end local v16    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "xmlParsersheet":Lorg/xmlpull/v1/XmlPullParser;
    :catch_d4
    move-exception v2

    .line 157
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "evtType":I
    .restart local v4    # "evtTypesheet":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStreamsheet":Ljava/io/InputStream;
    .restart local v9    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .restart local v10    # "sheetXML":Ljava/util/zip/ZipEntry;
    .restart local v12    # "t":Ljava/lang/String;
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v15    # "xlsxFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "xmlParsersheet":Lorg/xmlpull/v1/XmlPullParser;
    :cond_d9
    :try_start_d9
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\u6ca1\u6709"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    const/4 v5, 0x0

    .line 133
    goto :goto_93

    .end local v12    # "t":Ljava/lang/String;
    :cond_f3
    const-string v18, "v"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_93

    .line 134
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 135
    if-eqz v14, :cond_93

    .line 136
    if-eqz v5, :cond_132

    .line 137
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 138
    goto/16 :goto_93

    .line 139
    :cond_132
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 143
    goto/16 :goto_93

    .line 145
    .end local v13    # "tag":Ljava/lang/String;
    :pswitch_14d
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "row"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_93

    .line 146
    if-eqz v14, :cond_93

    .line 147
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16d
    .catch Ljava/util/zip/ZipException; {:try_start_d9 .. :try_end_16d} :catch_8b
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_16d} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d9 .. :try_end_16d} :catch_170

    move-result-object v11

    goto/16 :goto_93

    .line 158
    .end local v3    # "evtType":I
    .end local v4    # "evtTypesheet":I
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamsheet":Ljava/io/InputStream;
    .end local v9    # "sharedStringXML":Ljava/util/zip/ZipEntry;
    .end local v10    # "sheetXML":Ljava/util/zip/ZipEntry;
    .end local v15    # "xlsxFile":Ljava/util/zip/ZipFile;
    .end local v16    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "xmlParsersheet":Lorg/xmlpull/v1/XmlPullParser;
    :catch_170
    move-exception v2

    .line 159
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_66

    .line 100
    :pswitch_data_176
    .packed-switch 0x2
        :pswitch_73
        :pswitch_6e
    .end packed-switch

    .line 120
    :pswitch_data_17e
    .packed-switch 0x2
        :pswitch_98
        :pswitch_14d
    .end packed-switch
.end method
