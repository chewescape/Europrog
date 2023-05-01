.class public Lcom/idelan/xml/parser/SDKFunctions;
.super Ljava/lang/Object;
.source "SDKFunctions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBindDeviceKey([B)Ljava/lang/String;
    .registers 10
    .param p0, "data"    # [B

    .prologue
    .line 1177
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 1178
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 1180
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_2f

    move-result-object v0

    .line 1185
    :goto_9
    const/4 v1, 0x0

    .line 1187
    .local v1, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_12} :catch_34
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_39

    move-result-object v1

    .line 1196
    :goto_13
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 1200
    .local v7, "rootElement":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 1201
    .local v5, "key":Ljava/lang/String;
    const-string v8, "result"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1202
    .local v6, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_2e

    .line 1203
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 1204
    .local v3, "element":Lorg/w3c/dom/Element;
    const-string v8, "randomKey"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1207
    .end local v3    # "element":Lorg/w3c/dom/Element;
    :cond_2e
    return-object v5

    .line 1181
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v7    # "rootElement":Lorg/w3c/dom/Element;
    :catch_2f
    move-exception v2

    .line 1183
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 1188
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :catch_34
    move-exception v2

    .line 1190
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_13

    .line 1191
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_39
    move-exception v2

    .line 1193
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13
.end method

.method public static parseCommonSend([BLjava/util/List;)I
    .registers 22
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 1272
    .local p1, "dictList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 1273
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 1275
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_5d

    move-result-object v4

    .line 1280
    :goto_9
    const/4 v5, 0x0

    .line 1282
    .local v5, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_18} :catch_62
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_67

    move-result-object v5

    .line 1291
    :goto_19
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 1295
    .local v14, "rootElement":Lorg/w3c/dom/Element;
    const-string v18, "result"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1296
    .local v13, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_5a

    .line 1297
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 1298
    .local v12, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_5a

    .line 1300
    const-string v18, "items"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1301
    .local v10, "itemsNode":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_5a

    .line 1302
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 1303
    .local v9, "itemsElement":Lorg/w3c/dom/Element;
    if-eqz v9, :cond_5a

    .line 1305
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1307
    .local v17, "shareApcNode":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_52
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-lt v8, v0, :cond_6c

    .line 1334
    .end local v8    # "i":I
    .end local v9    # "itemsElement":Lorg/w3c/dom/Element;
    .end local v10    # "itemsNode":Lorg/w3c/dom/NodeList;
    .end local v12    # "resultElement":Lorg/w3c/dom/Element;
    .end local v17    # "shareApcNode":Lorg/w3c/dom/NodeList;
    :cond_5a
    const/16 v18, 0x0

    return v18

    .line 1276
    .end local v5    # "document":Lorg/w3c/dom/Document;
    .end local v13    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v14    # "rootElement":Lorg/w3c/dom/Element;
    :catch_5d
    move-exception v6

    .line 1278
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 1283
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v5    # "document":Lorg/w3c/dom/Document;
    :catch_62
    move-exception v6

    .line 1285
    .local v6, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_19

    .line 1286
    .end local v6    # "e":Lorg/xml/sax/SAXException;
    :catch_67
    move-exception v6

    .line 1288
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 1310
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "i":I
    .restart local v9    # "itemsElement":Lorg/w3c/dom/Element;
    .restart local v10    # "itemsNode":Lorg/w3c/dom/NodeList;
    .restart local v12    # "resultElement":Lorg/w3c/dom/Element;
    .restart local v13    # "resultNode":Lorg/w3c/dom/NodeList;
    .restart local v14    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v17    # "shareApcNode":Lorg/w3c/dom/NodeList;
    :cond_6c
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 1309
    check-cast v16, Lorg/w3c/dom/Element;

    .line 1312
    .local v16, "shareApcElement":Lorg/w3c/dom/Element;
    if-eqz v16, :cond_93

    .line 1313
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v18

    if-eqz v18, :cond_93

    .line 1315
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1316
    .local v3, "attrs":Lorg/w3c/dom/NamedNodeMap;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1318
    .local v15, "sItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_86
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-lt v11, v0, :cond_96

    .line 1324
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    .end local v3    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "j":I
    .end local v15    # "sItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    .line 1319
    .restart local v3    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v11    # "j":I
    .restart local v15    # "sItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_96
    invoke-interface {v3, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1320
    .local v2, "attrNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    .line 1321
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    .line 1320
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    add-int/lit8 v11, v11, 0x1

    goto :goto_86
.end method

.method public static parseDevice([BLcom/idelan/bean/SmartDevice;Ljava/lang/String;)I
    .registers 20
    .param p0, "data"    # [B
    .param p1, "device"    # Lcom/idelan/bean/SmartDevice;
    .param p2, "remoteAddr"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 279
    .local v11, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 281
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_f1

    move-result-object v6

    .line 286
    :goto_9
    const/4 v9, 0x0

    .line 288
    .local v9, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v14, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_14} :catch_f7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_fd

    move-result-object v9

    .line 296
    :goto_15
    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 297
    .local v13, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 298
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 299
    .local v3, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_24
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-lt v12, v14, :cond_103

    .line 309
    .end local v3    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "i":I
    :cond_2a
    const-string v14, "body"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 310
    .local v5, "bodyNode":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_ef

    .line 311
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 312
    .local v4, "bodyElement":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_ef

    .line 314
    const-string v14, "device"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 315
    .local v8, "deviceNode":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_ef

    .line 316
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 317
    .local v7, "deviceElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v14

    if-eqz v14, :cond_5b

    .line 318
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 319
    .restart local v3    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_55
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-lt v12, v14, :cond_12e

    .line 325
    .end local v3    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v12    # "i":I
    :cond_5b
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    const-string v15, "ipaddr"

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/idelan/bean/SmartDevice;->devIPAddress:Ljava/lang/String;

    .line 328
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput v14, v0, Lcom/idelan/bean/SmartDevice;->onLine:I

    .line 330
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    const-string v15, "name"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 331
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 330
    invoke-static {v14}, Lcom/idelan/Charset/CharTools;->Utf8URLdecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 329
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/idelan/bean/SmartDevice;->devName:Ljava/lang/String;

    .line 332
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    const-string v15, "serial"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 333
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 332
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/idelan/bean/SmartDevice;->devSerial:Ljava/lang/String;

    .line 335
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    const-string v15, "port"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 336
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 335
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 334
    move-object/from16 v0, p1

    iput v14, v0, Lcom/idelan/bean/SmartDevice;->devServicePort:I

    .line 337
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    const-string v15, "apc_type"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_d1

    .line 339
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    .line 340
    const-string v15, "apc_type"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 339
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 338
    move-object/from16 v0, p1

    iput v14, v0, Lcom/idelan/bean/SmartDevice;->devType:I

    .line 341
    :cond_d1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    const-string v15, "brand"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_ef

    .line 342
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    const-string v15, "brand"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 343
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 342
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/idelan/bean/SmartDevice;->devBrand:Ljava/lang/String;

    .line 349
    .end local v4    # "bodyElement":Lorg/w3c/dom/Element;
    .end local v7    # "deviceElement":Lorg/w3c/dom/Element;
    .end local v8    # "deviceNode":Lorg/w3c/dom/NodeList;
    :cond_ef
    const/4 v14, 0x0

    return v14

    .line 282
    .end local v5    # "bodyNode":Lorg/w3c/dom/NodeList;
    .end local v9    # "document":Lorg/w3c/dom/Document;
    .end local v13    # "rootElement":Lorg/w3c/dom/Element;
    :catch_f1
    move-exception v10

    .line 284
    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_9

    .line 289
    .end local v10    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v9    # "document":Lorg/w3c/dom/Document;
    :catch_f7
    move-exception v10

    .line 291
    .local v10, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_15

    .line 292
    .end local v10    # "e":Lorg/xml/sax/SAXException;
    :catch_fd
    move-exception v10

    .line 294
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    .line 300
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v12    # "i":I
    .restart local v13    # "rootElement":Lorg/w3c/dom/Element;
    :cond_103
    invoke-interface {v3, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 301
    .local v2, "attrNode":Lorg/w3c/dom/Node;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 302
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 301
    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "sn"

    invoke-static {v14, v15}, Lcom/idelan/Charset/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12a

    .line 304
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/idelan/bean/SmartDevice;->devSerial:Ljava/lang/String;

    .line 299
    :cond_12a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_24

    .line 320
    .end local v2    # "attrNode":Lorg/w3c/dom/Node;
    .restart local v4    # "bodyElement":Lorg/w3c/dom/Element;
    .restart local v5    # "bodyNode":Lorg/w3c/dom/NodeList;
    .restart local v7    # "deviceElement":Lorg/w3c/dom/Element;
    .restart local v8    # "deviceNode":Lorg/w3c/dom/NodeList;
    :cond_12e
    invoke-interface {v3, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 321
    .restart local v2    # "attrNode":Lorg/w3c/dom/Node;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/idelan/bean/SmartDevice;->devOthersParams:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 322
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 321
    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_55
.end method

.method public static parseDeviceList([BLjava/util/List;)I
    .registers 28
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/idelan/bean/SmartDevice;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/SmartDevice;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 111
    .local v11, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 113
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_36

    move-result-object v6

    .line 118
    :goto_9
    const/4 v8, 0x0

    .line 120
    .local v8, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v25, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_14} :catch_3b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_40

    move-result-object v8

    .line 129
    :goto_15
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 131
    .local v18, "rootElement":Lorg/w3c/dom/Element;
    const-string v25, "errCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    .local v10, "errCode":Ljava/lang/String;
    if-eqz v10, :cond_45

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_45

    .line 133
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 134
    .local v13, "ierr":I
    if-eqz v13, :cond_45

    .line 270
    .end local v13    # "ierr":I
    :cond_35
    :goto_35
    return v13

    .line 114
    .end local v8    # "document":Lorg/w3c/dom/Document;
    .end local v10    # "errCode":Ljava/lang/String;
    .end local v18    # "rootElement":Lorg/w3c/dom/Element;
    :catch_36
    move-exception v9

    .line 116
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 121
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v8    # "document":Lorg/w3c/dom/Document;
    :catch_3b
    move-exception v9

    .line 123
    .local v9, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_15

    .line 124
    .end local v9    # "e":Lorg/xml/sax/SAXException;
    :catch_40
    move-exception v9

    .line 126
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 138
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "errCode":Ljava/lang/String;
    .restart local v18    # "rootElement":Lorg/w3c/dom/Element;
    :cond_45
    const-string v25, "result"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, "result":Ljava/lang/String;
    if-eqz v15, :cond_61

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_61

    .line 140
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 141
    .restart local v13    # "ierr":I
    if-nez v13, :cond_35

    .line 147
    .end local v13    # "ierr":I
    :cond_61
    const-string v25, "result"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 148
    .local v17, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v17, :cond_a8

    .line 149
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 150
    .local v16, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v16, :cond_a8

    .line 153
    const-string v25, "smartDeviceList"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 154
    .local v21, "smartDeviceListNode":Lorg/w3c/dom/NodeList;
    if-eqz v21, :cond_a8

    .line 156
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 155
    check-cast v20, Lorg/w3c/dom/Element;

    .line 157
    .local v20, "smartDeviceListElement":Lorg/w3c/dom/Element;
    if-eqz v20, :cond_a8

    .line 160
    const-string v25, "smartDevice"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 161
    .local v22, "smartDeviceNode":Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a0
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-lt v12, v0, :cond_aa

    .line 270
    .end local v12    # "i":I
    .end local v16    # "resultElement":Lorg/w3c/dom/Element;
    .end local v20    # "smartDeviceListElement":Lorg/w3c/dom/Element;
    .end local v21    # "smartDeviceListNode":Lorg/w3c/dom/NodeList;
    .end local v22    # "smartDeviceNode":Lorg/w3c/dom/NodeList;
    :cond_a8
    const/4 v13, 0x0

    goto :goto_35

    .line 163
    .restart local v12    # "i":I
    .restart local v16    # "resultElement":Lorg/w3c/dom/Element;
    .restart local v20    # "smartDeviceListElement":Lorg/w3c/dom/Element;
    .restart local v21    # "smartDeviceListNode":Lorg/w3c/dom/NodeList;
    .restart local v22    # "smartDeviceNode":Lorg/w3c/dom/NodeList;
    :cond_aa
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 162
    check-cast v19, Lorg/w3c/dom/Element;

    .line 164
    .local v19, "smartDeviceElement":Lorg/w3c/dom/Element;
    new-instance v24, Lcom/idelan/bean/SmartDevice;

    invoke-direct/range {v24 .. v24}, Lcom/idelan/bean/SmartDevice;-><init>()V

    .line 165
    .local v24, "smtDevice":Lcom/idelan/bean/SmartDevice;
    if-eqz v19, :cond_196

    .line 169
    const-string v25, "sn"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 168
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/idelan/bean/SmartDevice;->devSerial:Ljava/lang/String;

    .line 171
    const-string v25, "ver"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 170
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/idelan/bean/SmartDevice;->devVersion:Ljava/lang/String;

    .line 174
    const-string v25, "devType"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 173
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 172
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/idelan/bean/SmartDevice;->devType:I

    .line 177
    const-string v25, "devType"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 176
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 175
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/idelan/bean/SmartDevice;->devSubType:I

    .line 180
    const-string v25, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 179
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 178
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/idelan/bean/SmartDevice;->onLine:I

    .line 182
    const-string v25, "pv"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 181
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/idelan/bean/SmartDevice;->proVersion:Ljava/lang/String;

    .line 184
    const-string v25, "sv"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 183
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/idelan/bean/SmartDevice;->sftVersion:Ljava/lang/String;

    .line 186
    const-string v25, "hw"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 185
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/idelan/bean/SmartDevice;->hdwVersion:Ljava/lang/String;

    .line 189
    const-string v25, "belong"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 188
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 187
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/idelan/bean/SmartDevice;->devBelong:I

    .line 192
    const-string v25, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 191
    invoke-static/range {v25 .. v25}, Lcom/idelan/Charset/CharTools;->Utf8URLdecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 190
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/idelan/bean/SmartDevice;->devName:Ljava/lang/String;

    .line 196
    const-string v25, "applianceList"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 197
    .local v4, "applianceListNode":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_196

    .line 199
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 198
    check-cast v2, Lorg/w3c/dom/Element;

    .line 200
    .local v2, "appliaceListElement":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_196

    .line 203
    const-string v25, "appliance"

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 204
    .local v5, "applianceNode":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .line 205
    .local v14, "j":I
    :goto_18e
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    .line 204
    move/from16 v0, v25

    if-lt v14, v0, :cond_1a1

    .line 264
    .end local v2    # "appliaceListElement":Lorg/w3c/dom/Element;
    .end local v4    # "applianceListNode":Lorg/w3c/dom/NodeList;
    .end local v5    # "applianceNode":Lorg/w3c/dom/NodeList;
    .end local v14    # "j":I
    :cond_196
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a0

    .line 208
    .restart local v2    # "appliaceListElement":Lorg/w3c/dom/Element;
    .restart local v4    # "applianceListNode":Lorg/w3c/dom/NodeList;
    .restart local v5    # "applianceNode":Lorg/w3c/dom/NodeList;
    .restart local v14    # "j":I
    :cond_1a1
    invoke-interface {v5, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 207
    check-cast v3, Lorg/w3c/dom/Element;

    .line 209
    .local v3, "applianceElement":Lorg/w3c/dom/Element;
    new-instance v23, Lcom/idelan/bean/SmartAppliance;

    invoke-direct/range {v23 .. v23}, Lcom/idelan/bean/SmartAppliance;-><init>()V

    .line 211
    .local v23, "smtAppliance":Lcom/idelan/bean/SmartAppliance;
    const-string v25, "sn"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 210
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->devSerial:Ljava/lang/String;

    .line 217
    const-string v25, "typeId"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 216
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 215
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/idelan/bean/SmartAppliance;->devType:I

    .line 220
    const-string v25, "apc_model"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 219
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 218
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/idelan/bean/SmartAppliance;->devSubType:I

    .line 227
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 226
    invoke-static/range {v25 .. v25}, Lcom/idelan/Charset/CharTools;->Utf8URLdecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 225
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->devName:Ljava/lang/String;

    .line 229
    const-string v25, "brand"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 228
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->devBrand:Ljava/lang/String;

    .line 231
    const-string v25, "model"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 230
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->devModel:Ljava/lang/String;

    .line 233
    const-string v25, "apc_ver"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 232
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->devApcVer:Ljava/lang/String;

    .line 244
    const-string v25, "chn"

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "chnStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_236

    .line 247
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 246
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/idelan/bean/SmartAppliance;->chn:I

    .line 249
    :cond_236
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->subDeviceList:Ljava/util/List;

    move-object/from16 v25, v0

    .line 250
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    .line 249
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/idelan/bean/SmartAppliance;->idx:I

    .line 251
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->devVersion:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->devVersion:Ljava/lang/String;

    .line 252
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->devSerial:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->devParent:Ljava/lang/String;

    .line 253
    move-object/from16 v0, v24

    iget v0, v0, Lcom/idelan/bean/SmartDevice;->onLine:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/idelan/bean/SmartAppliance;->onLine:I

    .line 254
    move-object/from16 v0, v24

    iget v0, v0, Lcom/idelan/bean/SmartDevice;->devBelong:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/idelan/bean/SmartAppliance;->devBelong:I

    .line 255
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->sftVersion:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->sftVersion:Ljava/lang/String;

    .line 256
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->hdwVersion:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->hdwVersion:Ljava/lang/String;

    .line 257
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->proVersion:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/idelan/bean/SmartAppliance;->proVersion:Ljava/lang/String;

    .line 258
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->subDeviceList:Ljava/util/List;

    move-object/from16 v25, v0

    .line 259
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_18e
.end method

.method public static parseLoginInfo([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/bean/UserBean;)I
    .registers 32
    .param p0, "loginInfo"    # [B
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "bean"    # Lcom/idelan/bean/UserBean;

    .prologue
    .line 814
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 815
    .local v11, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 818
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_3a

    move-result-object v5

    .line 823
    :goto_9
    const/4 v8, 0x0

    .line 826
    .local v8, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v24, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_18} :catch_3f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_44

    move-result-object v8

    .line 835
    :goto_19
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    .line 837
    .local v19, "rootElement":Lorg/w3c/dom/Element;
    const-string v24, "errCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 838
    .local v10, "errCode":Ljava/lang/String;
    if-eqz v10, :cond_49

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_49

    .line 839
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 840
    .local v13, "ierr":I
    if-eqz v13, :cond_49

    .line 931
    .end local v13    # "ierr":I
    :cond_39
    :goto_39
    return v13

    .line 819
    .end local v8    # "document":Lorg/w3c/dom/Document;
    .end local v10    # "errCode":Ljava/lang/String;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    :catch_3a
    move-exception v9

    .line 820
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 827
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v8    # "document":Lorg/w3c/dom/Document;
    :catch_3f
    move-exception v9

    .line 829
    .local v9, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_19

    .line 830
    .end local v9    # "e":Lorg/xml/sax/SAXException;
    :catch_44
    move-exception v9

    .line 832
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 844
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "errCode":Ljava/lang/String;
    .restart local v19    # "rootElement":Lorg/w3c/dom/Element;
    :cond_49
    const-string v24, "result"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 845
    .local v15, "result":Ljava/lang/String;
    if-eqz v15, :cond_65

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_65

    .line 846
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 847
    .restart local v13    # "ierr":I
    if-nez v13, :cond_39

    .line 853
    .end local v13    # "ierr":I
    :cond_65
    const-string v24, "result"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 854
    .local v18, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v18, :cond_1a8

    .line 855
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 856
    .local v17, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v17, :cond_1a8

    .line 858
    const-string v24, "sessionId"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v16

    .line 859
    .local v16, "resultAttr":Lorg/w3c/dom/Attr;
    if-eqz v16, :cond_96

    .line 860
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/idelan/bean/UserBean;->setSessionId(Ljava/lang/String;)V

    .line 863
    :cond_96
    const-string v24, "accessToken"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v16

    .line 864
    if-eqz v16, :cond_11b

    .line 865
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "accessToken":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/idelan/bean/UserBean;->setAccessToken(Ljava/lang/String;)V

    .line 867
    if-eqz v3, :cond_11b

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11b

    .line 869
    invoke-static/range {p2 .. p2}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 870
    .local v14, "md5Pwd":Ljava/lang/String;
    const-string v24, "%s%s%s"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 871
    aput-object p1, v25, v26

    const/16 v26, 0x1

    aput-object p3, v25, v26

    const/16 v26, 0x2

    aput-object v14, v25, v26

    .line 870
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 872
    .local v6, "cKey":Ljava/lang/String;
    const/16 v24, 0x0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 874
    invoke-static {v3}, Lcom/idelan/Encrypt/AESEncrypt;->toByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 875
    .local v2, "acTok":[B
    if-eqz v2, :cond_11b

    .line 877
    const/16 v24, 0x0

    array-length v0, v2

    move/from16 v25, v0

    .line 876
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v6, v2, v0, v1}, Lcom/idelan/Encrypt/AESEncrypt;->decryptData(Ljava/lang/String;[BII)[B

    move-result-object v4

    .line 878
    .local v4, "aesDat":[B
    if-eqz v4, :cond_11b

    .line 879
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 880
    .local v20, "sessionKey":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/idelan/bean/UserBean;->setSessionKey(Ljava/lang/String;)V

    .line 881
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 883
    .local v7, "dataKey":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_10e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v12, v0, :cond_1ab

    .line 888
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/idelan/bean/UserBean;->setDataKey(Ljava/lang/String;)V

    .line 895
    .end local v2    # "acTok":[B
    .end local v3    # "accessToken":Ljava/lang/String;
    .end local v4    # "aesDat":[B
    .end local v6    # "cKey":Ljava/lang/String;
    .end local v7    # "dataKey":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "md5Pwd":Ljava/lang/String;
    .end local v20    # "sessionKey":Ljava/lang/String;
    :cond_11b
    const-string v24, "userInfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 896
    .local v22, "userInfoNode":Lorg/w3c/dom/NodeList;
    if-eqz v22, :cond_1a8

    .line 897
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 898
    .local v21, "userInfoElement":Lorg/w3c/dom/Element;
    if-eqz v21, :cond_1a8

    .line 901
    const-string v24, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v23

    .line 902
    .local v23, "usrInfAttr":Lorg/w3c/dom/Attr;
    if-eqz v23, :cond_14c

    .line 903
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/idelan/bean/UserBean;->setId(Ljava/lang/String;)V

    .line 906
    :cond_14c
    const-string v24, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v23

    .line 907
    if-eqz v23, :cond_163

    .line 908
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/idelan/bean/UserBean;->setName(Ljava/lang/String;)V

    .line 911
    :cond_163
    const-string v24, "mobile"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v23

    .line 912
    if-eqz v23, :cond_17a

    .line 913
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/idelan/bean/UserBean;->setMobile(Ljava/lang/String;)V

    .line 916
    :cond_17a
    const-string v24, "email"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v23

    .line 917
    if-eqz v23, :cond_191

    .line 918
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/idelan/bean/UserBean;->setEmail(Ljava/lang/String;)V

    .line 921
    :cond_191
    const-string v24, "state"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v23

    .line 922
    if-eqz v23, :cond_1a8

    .line 923
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/idelan/bean/UserBean;->setState(Ljava/lang/String;)V

    .line 931
    .end local v16    # "resultAttr":Lorg/w3c/dom/Attr;
    .end local v17    # "resultElement":Lorg/w3c/dom/Element;
    .end local v21    # "userInfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "userInfoNode":Lorg/w3c/dom/NodeList;
    .end local v23    # "usrInfAttr":Lorg/w3c/dom/Attr;
    :cond_1a8
    const/4 v13, 0x0

    goto/16 :goto_39

    .line 884
    .restart local v2    # "acTok":[B
    .restart local v3    # "accessToken":Ljava/lang/String;
    .restart local v4    # "aesDat":[B
    .restart local v6    # "cKey":Ljava/lang/String;
    .restart local v7    # "dataKey":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "md5Pwd":Ljava/lang/String;
    .restart local v16    # "resultAttr":Lorg/w3c/dom/Attr;
    .restart local v17    # "resultElement":Lorg/w3c/dom/Element;
    .restart local v20    # "sessionKey":Ljava/lang/String;
    :cond_1ab
    rem-int/lit8 v24, v12, 0x2

    if-nez v24, :cond_1c6

    .line 885
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 883
    :cond_1c6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_10e
.end method

.method public static parseMQTT([BLcom/idelan/bean/MQTTBean;)V
    .registers 12
    .param p0, "data"    # [B
    .param p1, "bean"    # Lcom/idelan/bean/MQTTBean;

    .prologue
    const/4 v9, 0x0

    .line 1220
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 1221
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 1223
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_6
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_9} :catch_6f

    move-result-object v0

    .line 1228
    :goto_a
    const/4 v1, 0x0

    .line 1230
    .local v1, "document":Lorg/w3c/dom/Document;
    :try_start_b
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_13} :catch_74
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_79

    move-result-object v1

    .line 1239
    :goto_14
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 1243
    .local v7, "rootElement":Lorg/w3c/dom/Element;
    const-string v8, "result"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1244
    .local v6, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_6e

    .line 1245
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 1246
    .local v3, "element":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_6e

    .line 1247
    const-string v8, "item"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1248
    .local v5, "itemsNode":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_6e

    .line 1249
    invoke-interface {v5, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .end local v3    # "element":Lorg/w3c/dom/Element;
    check-cast v3, Lorg/w3c/dom/Element;

    .line 1250
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_6e

    .line 1251
    const-string v8, "token"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/idelan/bean/MQTTBean;->setToken(Ljava/lang/String;)V

    .line 1252
    const-string v8, "serverAddr"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/idelan/bean/MQTTBean;->setServerAddr(Ljava/lang/String;)V

    .line 1253
    const-string v8, "user"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/idelan/bean/MQTTBean;->setUser(Ljava/lang/String;)V

    .line 1254
    const-string v8, "pass"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/idelan/bean/MQTTBean;->setPwd(Ljava/lang/String;)V

    .line 1255
    const-string v8, "keepAlive"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/idelan/bean/MQTTBean;->setKeepAlive(Ljava/lang/String;)V

    .line 1256
    const-string v8, "statusTopic"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/idelan/bean/MQTTBean;->setStatusTopic(Ljava/lang/String;)V

    .line 1261
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v5    # "itemsNode":Lorg/w3c/dom/NodeList;
    :cond_6e
    return-void

    .line 1224
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v7    # "rootElement":Lorg/w3c/dom/Element;
    :catch_6f
    move-exception v2

    .line 1226
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_a

    .line 1231
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :catch_74
    move-exception v2

    .line 1233
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_14

    .line 1234
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_79
    move-exception v2

    .line 1236
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public static parseMineShareList([BLjava/util/List;)I
    .registers 18
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/idelan/bean/ShareUserBean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "shareUsers":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/ShareUserBean;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 358
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 360
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_48

    move-result-object v1

    .line 365
    :goto_9
    const/4 v2, 0x0

    .line 367
    .local v2, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_12} :catch_4d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_52

    move-result-object v2

    .line 376
    :goto_13
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 380
    .local v10, "rootElement":Lorg/w3c/dom/Element;
    const-string v15, "result"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 381
    .local v9, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_46

    .line 382
    const/4 v15, 0x0

    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 383
    .local v8, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v8, :cond_46

    .line 385
    const-string v15, "items"

    invoke-interface {v8, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 386
    .local v7, "itemsNode":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_46

    .line 387
    const/4 v15, 0x0

    invoke-interface {v7, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 388
    .local v6, "itemsElement":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_46

    .line 390
    const-string v15, "shareApc"

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 391
    .local v12, "shareApcNode":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_40
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lt v5, v15, :cond_57

    .line 439
    .end local v5    # "i":I
    .end local v6    # "itemsElement":Lorg/w3c/dom/Element;
    .end local v7    # "itemsNode":Lorg/w3c/dom/NodeList;
    .end local v8    # "resultElement":Lorg/w3c/dom/Element;
    .end local v12    # "shareApcNode":Lorg/w3c/dom/NodeList;
    :cond_46
    const/4 v15, 0x0

    return v15

    .line 361
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v10    # "rootElement":Lorg/w3c/dom/Element;
    :catch_48
    move-exception v3

    .line 363
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 368
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v2    # "document":Lorg/w3c/dom/Document;
    :catch_4d
    move-exception v3

    .line 370
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_13

    .line 371
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_52
    move-exception v3

    .line 373
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 394
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "i":I
    .restart local v6    # "itemsElement":Lorg/w3c/dom/Element;
    .restart local v7    # "itemsNode":Lorg/w3c/dom/NodeList;
    .restart local v8    # "resultElement":Lorg/w3c/dom/Element;
    .restart local v9    # "resultNode":Lorg/w3c/dom/NodeList;
    .restart local v10    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v12    # "shareApcNode":Lorg/w3c/dom/NodeList;
    :cond_57
    invoke-interface {v12, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 393
    check-cast v11, Lorg/w3c/dom/Element;

    .line 395
    .local v11, "shareApcElement":Lorg/w3c/dom/Element;
    if-eqz v11, :cond_c6

    .line 396
    new-instance v13, Lcom/idelan/bean/ShareUserBean;

    invoke-direct {v13}, Lcom/idelan/bean/ShareUserBean;-><init>()V

    .line 398
    .local v13, "shareUser":Lcom/idelan/bean/ShareUserBean;
    const-string v15, "sid"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 399
    .local v14, "usrInfAttr":Lorg/w3c/dom/Attr;
    if-eqz v14, :cond_73

    .line 400
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareUserBean;->setsId(Ljava/lang/String;)V

    .line 403
    :cond_73
    const-string v15, "destUser"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 404
    if-eqz v14, :cond_82

    .line 406
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareUserBean;->setDestUser(Ljava/lang/String;)V

    .line 409
    :cond_82
    const-string v15, "shareType"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 410
    if-eqz v14, :cond_a3

    .line 412
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 411
    invoke-static {v15}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    .line 412
    if-eqz v15, :cond_a3

    .line 416
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 415
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 414
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareUserBean;->setShareType(I)V

    .line 419
    :cond_a3
    const-string v15, "startDate"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 420
    if-eqz v14, :cond_b2

    .line 422
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 421
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareUserBean;->setStartDate(Ljava/lang/String;)V

    .line 425
    :cond_b2
    const-string v15, "endDate"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 426
    if-eqz v14, :cond_c1

    .line 427
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareUserBean;->setEndDate(Ljava/lang/String;)V

    .line 430
    :cond_c1
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v13    # "shareUser":Lcom/idelan/bean/ShareUserBean;
    .end local v14    # "usrInfAttr":Lorg/w3c/dom/Attr;
    :cond_c6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_40
.end method

.method public static parseOtherShareList([BLjava/util/List;)I
    .registers 18
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/idelan/bean/ShareDeviceBean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/ShareDeviceBean;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 448
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 450
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_48

    move-result-object v1

    .line 455
    :goto_9
    const/4 v2, 0x0

    .line 457
    .local v2, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_12} :catch_4d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_52

    move-result-object v2

    .line 466
    :goto_13
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 470
    .local v10, "rootElement":Lorg/w3c/dom/Element;
    const-string v15, "result"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 471
    .local v9, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_46

    .line 472
    const/4 v15, 0x0

    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 473
    .local v8, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v8, :cond_46

    .line 475
    const-string v15, "items"

    invoke-interface {v8, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 476
    .local v7, "itemsNode":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_46

    .line 477
    const/4 v15, 0x0

    invoke-interface {v7, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 478
    .local v6, "itemsElement":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_46

    .line 480
    const-string v15, "shareApc"

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 482
    .local v12, "shareApcNode":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_40
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lt v5, v15, :cond_57

    .line 597
    .end local v5    # "i":I
    .end local v6    # "itemsElement":Lorg/w3c/dom/Element;
    .end local v7    # "itemsNode":Lorg/w3c/dom/NodeList;
    .end local v8    # "resultElement":Lorg/w3c/dom/Element;
    .end local v12    # "shareApcNode":Lorg/w3c/dom/NodeList;
    :cond_46
    const/4 v15, 0x0

    return v15

    .line 451
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v10    # "rootElement":Lorg/w3c/dom/Element;
    :catch_48
    move-exception v3

    .line 453
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 458
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v2    # "document":Lorg/w3c/dom/Document;
    :catch_4d
    move-exception v3

    .line 460
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_13

    .line 461
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_52
    move-exception v3

    .line 463
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 485
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "i":I
    .restart local v6    # "itemsElement":Lorg/w3c/dom/Element;
    .restart local v7    # "itemsNode":Lorg/w3c/dom/NodeList;
    .restart local v8    # "resultElement":Lorg/w3c/dom/Element;
    .restart local v9    # "resultNode":Lorg/w3c/dom/NodeList;
    .restart local v10    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v12    # "shareApcNode":Lorg/w3c/dom/NodeList;
    :cond_57
    invoke-interface {v12, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 484
    check-cast v11, Lorg/w3c/dom/Element;

    .line 486
    .local v11, "shareApcElement":Lorg/w3c/dom/Element;
    if-eqz v11, :cond_14a

    .line 487
    new-instance v13, Lcom/idelan/bean/ShareDeviceBean;

    invoke-direct {v13}, Lcom/idelan/bean/ShareDeviceBean;-><init>()V

    .line 489
    .local v13, "shareDevice":Lcom/idelan/bean/ShareDeviceBean;
    const-string v15, "sId"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 490
    .local v14, "usrInfAttr":Lorg/w3c/dom/Attr;
    if-eqz v14, :cond_73

    .line 491
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setsId(Ljava/lang/String;)V

    .line 495
    :cond_73
    const-string v15, "adminUser"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 496
    if-eqz v14, :cond_82

    .line 498
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 497
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setAdminUser(Ljava/lang/String;)V

    .line 502
    :cond_82
    const-string v15, "devSN"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 503
    if-eqz v14, :cond_91

    .line 504
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setDevSN(Ljava/lang/String;)V

    .line 508
    :cond_91
    const-string v15, "subSN"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 509
    if-eqz v14, :cond_a0

    .line 510
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setSubSN(Ljava/lang/String;)V

    .line 514
    :cond_a0
    const-string v15, "devName"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 515
    if-eqz v14, :cond_af

    .line 517
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 516
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setDevName(Ljava/lang/String;)V

    .line 521
    :cond_af
    const-string v15, "acpType"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 522
    if-eqz v14, :cond_be

    .line 524
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 523
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setAcpType(Ljava/lang/String;)V

    .line 528
    :cond_be
    const-string v15, "apcName"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 529
    if-eqz v14, :cond_cd

    .line 531
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 530
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setApcName(Ljava/lang/String;)V

    .line 535
    :cond_cd
    const-string v15, "brand"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 536
    if-eqz v14, :cond_dc

    .line 537
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setBrand(Ljava/lang/String;)V

    .line 541
    :cond_dc
    const-string v15, "model"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 542
    if-eqz v14, :cond_eb

    .line 543
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setModel(Ljava/lang/String;)V

    .line 547
    :cond_eb
    const-string v15, "acp_ver"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 548
    if-eqz v14, :cond_fa

    .line 550
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setAcpVer(Ljava/lang/String;)V

    .line 554
    :cond_fa
    const-string v15, "pro_ver"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 555
    if-eqz v14, :cond_109

    .line 557
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setProVer(Ljava/lang/String;)V

    .line 561
    :cond_109
    const-string v15, "shareType"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 562
    if-eqz v14, :cond_118

    .line 564
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 563
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setShareType(Ljava/lang/String;)V

    .line 568
    :cond_118
    const-string v15, "startDate"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 569
    if-eqz v14, :cond_127

    .line 571
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 570
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setStartDate(Ljava/lang/String;)V

    .line 575
    :cond_127
    const-string v15, "endDate"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 576
    if-eqz v14, :cond_136

    .line 578
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 577
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setEndDate(Ljava/lang/String;)V

    .line 582
    :cond_136
    const-string v15, "function"

    invoke-interface {v11, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 583
    if-eqz v14, :cond_145

    .line 585
    invoke-interface {v14}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 584
    invoke-virtual {v13, v15}, Lcom/idelan/bean/ShareDeviceBean;->setFunction(Ljava/lang/String;)V

    .line 588
    :cond_145
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    .end local v13    # "shareDevice":Lcom/idelan/bean/ShareDeviceBean;
    .end local v14    # "usrInfAttr":Lorg/w3c/dom/Attr;
    :cond_14a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_40
.end method

.method public static parseResultCode([B)I
    .registers 22
    .param p0, "data"    # [B

    .prologue
    .line 40
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 41
    .local v11, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 43
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_2a

    move-result-object v4

    .line 48
    :goto_9
    const/4 v8, 0x0

    .line 50
    .local v8, "document":Lorg/w3c/dom/Document;
    :try_start_a
    new-instance v20, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_14} :catch_2f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_34

    move-result-object v8

    .line 59
    :goto_15
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 61
    .local v16, "rootElement":Lorg/w3c/dom/Element;
    const-string v20, "errCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "errCode":Ljava/lang/String;
    if-eqz v10, :cond_39

    .line 63
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 100
    :goto_29
    return v20

    .line 44
    .end local v8    # "document":Lorg/w3c/dom/Document;
    .end local v10    # "errCode":Ljava/lang/String;
    .end local v16    # "rootElement":Lorg/w3c/dom/Element;
    :catch_2a
    move-exception v9

    .line 46
    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 51
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v8    # "document":Lorg/w3c/dom/Document;
    :catch_2f
    move-exception v9

    .line 53
    .local v9, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_15

    .line 54
    .end local v9    # "e":Lorg/xml/sax/SAXException;
    :catch_34
    move-exception v9

    .line 56
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 65
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "errCode":Ljava/lang/String;
    .restart local v16    # "rootElement":Lorg/w3c/dom/Element;
    :cond_39
    const-string v20, "result"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, "result":Ljava/lang/String;
    if-eqz v13, :cond_4a

    .line 67
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto :goto_29

    .line 71
    :cond_4a
    const-string v20, "body"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 72
    .local v3, "bodyElements":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_c8

    .line 73
    const/4 v12, 0x0

    .line 74
    .local v12, "hasError":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 75
    .local v2, "bdElement":Lorg/w3c/dom/Element;
    const-string v20, "type"

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 76
    .local v19, "type":Ljava/lang/String;
    const-string v20, "ERROR"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_72

    .line 77
    const/4 v12, 0x1

    .line 79
    :cond_72
    const-string v20, "result"

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 80
    .local v14, "result2":Ljava/lang/String;
    if-eqz v14, :cond_81

    .line 81
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto :goto_29

    .line 83
    :cond_81
    const-string v20, "code"

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 84
    .local v7, "codeElements":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_a2

    if-eqz v7, :cond_a2

    .line 85
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 86
    .local v5, "cdElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "code":Ljava/lang/String;
    if-eqz v6, :cond_a2

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto :goto_29

    .line 92
    .end local v5    # "cdElement":Lorg/w3c/dom/Element;
    .end local v6    # "code":Ljava/lang/String;
    :cond_a2
    const-string v20, "result"

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 93
    .local v15, "resultElements":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 94
    .local v17, "rtElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, "rtcode":Ljava/lang/String;
    const-string v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c8

    .line 96
    const/16 v20, 0x0

    goto/16 :goto_29

    .line 100
    .end local v2    # "bdElement":Lorg/w3c/dom/Element;
    .end local v7    # "codeElements":Lorg/w3c/dom/NodeList;
    .end local v12    # "hasError":Z
    .end local v14    # "result2":Ljava/lang/String;
    .end local v15    # "resultElements":Lorg/w3c/dom/NodeList;
    .end local v17    # "rtElement":Lorg/w3c/dom/Element;
    .end local v18    # "rtcode":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/String;
    :cond_c8
    const/16 v20, 0x0

    goto/16 :goto_29
.end method

.method public static parseUserInfo([BLcom/idelan/bean/UserBean;)I
    .registers 16
    .param p0, "data"    # [B
    .param p1, "bean"    # Lcom/idelan/bean/UserBean;

    .prologue
    const/4 v13, 0x0

    .line 944
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 945
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 947
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_6
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_9} :catch_105

    move-result-object v0

    .line 952
    :goto_a
    const/4 v1, 0x0

    .line 954
    .local v1, "document":Lorg/w3c/dom/Document;
    :try_start_b
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_13} :catch_10b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_111

    move-result-object v1

    .line 963
    :goto_14
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 967
    .local v8, "rootElement":Lorg/w3c/dom/Element;
    const-string v12, "result"

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 968
    .local v7, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_104

    .line 969
    invoke-interface {v7, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 970
    .local v6, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_104

    .line 972
    const-string v12, "items"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 973
    .local v5, "itemsNode":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_104

    .line 974
    invoke-interface {v5, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 975
    .local v4, "itemsElement":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_104

    .line 977
    const-string v12, "item"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 978
    .local v10, "userInfoNode":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_104

    .line 980
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 979
    check-cast v9, Lorg/w3c/dom/Element;

    .line 981
    .local v9, "userInfoElement":Lorg/w3c/dom/Element;
    if-eqz v9, :cond_104

    .line 984
    const-string v12, "name"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 985
    .local v11, "usrInfAttr":Lorg/w3c/dom/Attr;
    if-eqz v11, :cond_57

    .line 986
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setName(Ljava/lang/String;)V

    .line 990
    :cond_57
    const-string v12, "real_name"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 991
    if-eqz v11, :cond_66

    .line 992
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setRealName(Ljava/lang/String;)V

    .line 996
    :cond_66
    const-string v12, "nickName"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 997
    if-eqz v11, :cond_75

    .line 998
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setNickName(Ljava/lang/String;)V

    .line 1002
    :cond_75
    const-string v12, "sex"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1003
    if-eqz v11, :cond_8c

    .line 1005
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1004
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setSex(I)V

    .line 1009
    :cond_8c
    const-string v12, "phone"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1010
    if-eqz v11, :cond_9b

    .line 1011
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setPhone(Ljava/lang/String;)V

    .line 1014
    :cond_9b
    const-string v12, "mobile"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1015
    if-eqz v11, :cond_aa

    .line 1016
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setMobile(Ljava/lang/String;)V

    .line 1020
    :cond_aa
    const-string v12, "email"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1021
    if-eqz v11, :cond_b9

    .line 1022
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setEmail(Ljava/lang/String;)V

    .line 1026
    :cond_b9
    const-string v12, "address"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1027
    if-eqz v11, :cond_c8

    .line 1028
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setAddress(Ljava/lang/String;)V

    .line 1032
    :cond_c8
    const-string v12, "postcode"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1033
    if-eqz v11, :cond_d7

    .line 1034
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setPostcode(Ljava/lang/String;)V

    .line 1038
    :cond_d7
    const-string v12, "images"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1039
    if-eqz v11, :cond_e6

    .line 1040
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setImageIcon(Ljava/lang/String;)V

    .line 1044
    :cond_e6
    const-string v12, "sessionId"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1045
    if-eqz v11, :cond_f5

    .line 1046
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setSessionId(Ljava/lang/String;)V

    .line 1050
    :cond_f5
    const-string v12, "identity_number"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1051
    if-eqz v11, :cond_104

    .line 1053
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1052
    invoke-virtual {p1, v12}, Lcom/idelan/bean/UserBean;->setIdentityNumber(Ljava/lang/String;)V

    .line 1064
    .end local v4    # "itemsElement":Lorg/w3c/dom/Element;
    .end local v5    # "itemsNode":Lorg/w3c/dom/NodeList;
    .end local v6    # "resultElement":Lorg/w3c/dom/Element;
    .end local v9    # "userInfoElement":Lorg/w3c/dom/Element;
    .end local v10    # "userInfoNode":Lorg/w3c/dom/NodeList;
    .end local v11    # "usrInfAttr":Lorg/w3c/dom/Attr;
    :cond_104
    return v13

    .line 948
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v8    # "rootElement":Lorg/w3c/dom/Element;
    :catch_105
    move-exception v2

    .line 950
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_a

    .line 955
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :catch_10b
    move-exception v2

    .line 957
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_14

    .line 958
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_111
    move-exception v2

    .line 960
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14
.end method

.method public static parseVersonInfo([BLcom/idelan/bean/AppVersionBean;)I
    .registers 16
    .param p0, "data"    # [B
    .param p1, "version"    # Lcom/idelan/bean/AppVersionBean;

    .prologue
    const/4 v13, 0x0

    .line 1075
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 1076
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 1078
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_6
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_9} :catch_cf

    move-result-object v0

    .line 1083
    :goto_a
    const/4 v1, 0x0

    .line 1085
    .local v1, "document":Lorg/w3c/dom/Document;
    :try_start_b
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_13} :catch_d5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_db

    move-result-object v1

    .line 1094
    :goto_14
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1098
    .local v9, "rootElement":Lorg/w3c/dom/Element;
    const-string v12, "result"

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1099
    .local v8, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_ce

    .line 1100
    invoke-interface {v8, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 1101
    .local v7, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v7, :cond_ce

    .line 1103
    const-string v12, "items"

    invoke-interface {v7, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1104
    .local v6, "itemsNode":Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_ce

    .line 1105
    invoke-interface {v6, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 1106
    .local v5, "itemsElement":Lorg/w3c/dom/Element;
    if-eqz v5, :cond_ce

    .line 1108
    const-string v12, "item"

    invoke-interface {v7, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1110
    .local v10, "userInfoNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 1111
    .local v4, "itemElement":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_ce

    .line 1114
    const-string v12, "verCode"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1115
    .local v11, "usrInfAttr":Lorg/w3c/dom/Attr;
    if-eqz v11, :cond_5d

    .line 1117
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1116
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setVerCode(I)V

    .line 1120
    :cond_5d
    const-string v12, "curVer"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1121
    if-eqz v11, :cond_6c

    .line 1122
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setCurVer(Ljava/lang/String;)V

    .line 1125
    :cond_6c
    const-string v12, "des"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1126
    if-eqz v11, :cond_7b

    .line 1127
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setDes(Ljava/lang/String;)V

    .line 1131
    :cond_7b
    const-string v12, "downURL"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1132
    if-eqz v11, :cond_8a

    .line 1133
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setDownUrl(Ljava/lang/String;)V

    .line 1137
    :cond_8a
    const-string v12, "verName"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1138
    if-eqz v11, :cond_99

    .line 1139
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setVerName(Ljava/lang/String;)V

    .line 1143
    :cond_99
    const-string v12, "packageName"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1144
    if-eqz v11, :cond_a8

    .line 1145
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setPackageName(Ljava/lang/String;)V

    .line 1149
    :cond_a8
    const-string v12, "updateFlag"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1150
    if-eqz v11, :cond_bf

    .line 1152
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1151
    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setUpdateFlag(I)V

    .line 1156
    :cond_bf
    const-string v12, "publishDate"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 1157
    if-eqz v11, :cond_ce

    .line 1158
    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/idelan/bean/AppVersionBean;->setPublishDate(Ljava/lang/String;)V

    .line 1166
    .end local v4    # "itemElement":Lorg/w3c/dom/Element;
    .end local v5    # "itemsElement":Lorg/w3c/dom/Element;
    .end local v6    # "itemsNode":Lorg/w3c/dom/NodeList;
    .end local v7    # "resultElement":Lorg/w3c/dom/Element;
    .end local v10    # "userInfoNode":Lorg/w3c/dom/NodeList;
    .end local v11    # "usrInfAttr":Lorg/w3c/dom/Attr;
    :cond_ce
    return v13

    .line 1079
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v9    # "rootElement":Lorg/w3c/dom/Element;
    :catch_cf
    move-exception v2

    .line 1081
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_a

    .line 1086
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :catch_d5
    move-exception v2

    .line 1088
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_14

    .line 1089
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_db
    move-exception v2

    .line 1091
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14
.end method

.method public static parseWeather([BLcom/idelan/bean/WeatherBean;)I
    .registers 14
    .param p0, "data"    # [B
    .param p1, "weather"    # Lcom/idelan/bean/WeatherBean;

    .prologue
    const/4 v11, 0x0

    .line 604
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 605
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 607
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_6
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_9} :catch_262

    move-result-object v0

    .line 612
    :goto_a
    const/4 v1, 0x0

    .line 614
    .local v1, "document":Lorg/w3c/dom/Document;
    :try_start_b
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_13} :catch_268
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_26e

    move-result-object v1

    .line 623
    :goto_14
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 627
    .local v8, "rootElement":Lorg/w3c/dom/Element;
    const-string v10, "result"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 628
    .local v7, "resultNode":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_261

    .line 629
    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 630
    .local v6, "resultElement":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_261

    .line 631
    const-string v10, "item"

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 632
    .local v5, "itemNode":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_261

    .line 633
    invoke-interface {v5, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 634
    .local v4, "itemElement":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_261

    .line 635
    const-string v10, "t"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 636
    .local v9, "usrInfAttr":Lorg/w3c/dom/Attr;
    if-eqz v9, :cond_4f

    .line 637
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setT(I)V

    .line 640
    :cond_4f
    const-string v10, "h"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 641
    if-eqz v9, :cond_66

    .line 642
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setH(I)V

    .line 645
    :cond_66
    const-string v10, "weather"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 646
    if-eqz v9, :cond_75

    .line 647
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setWeather(Ljava/lang/String;)V

    .line 650
    :cond_75
    const-string v10, "w_p"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 651
    if-eqz v9, :cond_84

    .line 652
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setWp(Ljava/lang/String;)V

    .line 655
    :cond_84
    const-string v10, "w_d"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 656
    if-eqz v9, :cond_93

    .line 657
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setWd(Ljava/lang/String;)V

    .line 660
    :cond_93
    const-string v10, "d_t"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 661
    if-eqz v9, :cond_aa

    .line 662
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setDt(I)V

    .line 665
    :cond_aa
    const-string v10, "n_t"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 666
    if-eqz v9, :cond_c1

    .line 667
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setNt(I)V

    .line 670
    :cond_c1
    const-string v10, "warn_type"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 671
    if-eqz v9, :cond_d0

    .line 672
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setWarnType(Ljava/lang/String;)V

    .line 675
    :cond_d0
    const-string v10, "warn_level"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 676
    if-eqz v9, :cond_df

    .line 677
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setWarnLevel(Ljava/lang/String;)V

    .line 680
    :cond_df
    const-string v10, "weather_d"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 681
    if-eqz v9, :cond_ee

    .line 682
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setWeatherD(Ljava/lang/String;)V

    .line 685
    :cond_ee
    const-string v10, "weather_n"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 686
    if-eqz v9, :cond_fd

    .line 687
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setWeatherN(Ljava/lang/String;)V

    .line 690
    :cond_fd
    const-string v10, "is_day"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 691
    if-eqz v9, :cond_114

    .line 693
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 692
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setIsDay(I)V

    .line 696
    :cond_114
    const-string v10, "pm25"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 697
    if-eqz v9, :cond_12b

    .line 699
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 698
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setPm25(I)V

    .line 702
    :cond_12b
    const-string v10, "pm10"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 703
    if-eqz v9, :cond_142

    .line 705
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 704
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setPm10(I)V

    .line 708
    :cond_142
    const-string v10, "co"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 709
    if-eqz v9, :cond_159

    .line 710
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setCo(I)V

    .line 713
    :cond_159
    const-string v10, "co2"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 714
    if-eqz v9, :cond_170

    .line 716
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 715
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setCo2(I)V

    .line 719
    :cond_170
    const-string v10, "o3"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 720
    if-eqz v9, :cond_187

    .line 721
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setO3(I)V

    .line 724
    :cond_187
    const-string v10, "no2"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 725
    if-eqz v9, :cond_19e

    .line 727
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 726
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setNo2(I)V

    .line 730
    :cond_19e
    const-string v10, "lunar"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 731
    if-eqz v9, :cond_1ad

    .line 732
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setLunar(Ljava/lang/String;)V

    .line 735
    :cond_1ad
    const-string v10, "dress_lv"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 736
    if-eqz v9, :cond_1bc

    .line 737
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setDressLv(Ljava/lang/String;)V

    .line 740
    :cond_1bc
    const-string v10, "dress_desc"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 741
    if-eqz v9, :cond_1cb

    .line 742
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setDressDesc(Ljava/lang/String;)V

    .line 745
    :cond_1cb
    const-string v10, "sport_lv"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 746
    if-eqz v9, :cond_1da

    .line 747
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setSportLv(Ljava/lang/String;)V

    .line 750
    :cond_1da
    const-string v10, "sport_desc"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 751
    if-eqz v9, :cond_1e9

    .line 752
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setSportDesc(Ljava/lang/String;)V

    .line 755
    :cond_1e9
    const-string v10, "uv_lv"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 756
    if-eqz v9, :cond_1f8

    .line 757
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setUvLv(Ljava/lang/String;)V

    .line 760
    :cond_1f8
    const-string v10, "uv_desc"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 761
    if-eqz v9, :cond_207

    .line 762
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setUvDesc(Ljava/lang/String;)V

    .line 765
    :cond_207
    const-string v10, "cold_lv"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 766
    if-eqz v9, :cond_216

    .line 767
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setColdLv(Ljava/lang/String;)V

    .line 770
    :cond_216
    const-string v10, "cold_desc"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 771
    if-eqz v9, :cond_225

    .line 772
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setColdDesc(Ljava/lang/String;)V

    .line 775
    :cond_225
    const-string v10, "privce"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 776
    if-eqz v9, :cond_234

    .line 777
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setPrivce(Ljava/lang/String;)V

    .line 780
    :cond_234
    const-string v10, "city"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 781
    if-eqz v9, :cond_243

    .line 782
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setCity(Ljava/lang/String;)V

    .line 785
    :cond_243
    const-string v10, "district"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 786
    if-eqz v9, :cond_252

    .line 787
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setDistrict(Ljava/lang/String;)V

    .line 790
    :cond_252
    const-string v10, "ts"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 791
    if-eqz v9, :cond_261

    .line 792
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/idelan/bean/WeatherBean;->setTs(Ljava/lang/String;)V

    .line 800
    .end local v4    # "itemElement":Lorg/w3c/dom/Element;
    .end local v5    # "itemNode":Lorg/w3c/dom/NodeList;
    .end local v6    # "resultElement":Lorg/w3c/dom/Element;
    .end local v9    # "usrInfAttr":Lorg/w3c/dom/Attr;
    :cond_261
    return v11

    .line 608
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "resultNode":Lorg/w3c/dom/NodeList;
    .end local v8    # "rootElement":Lorg/w3c/dom/Element;
    :catch_262
    move-exception v2

    .line 610
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_a

    .line 615
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :catch_268
    move-exception v2

    .line 617
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_14

    .line 618
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_26e
    move-exception v2

    .line 620
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14
.end method
