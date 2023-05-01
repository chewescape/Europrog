.class public Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;
.super Ljava/lang/Object;
.source "SaxBaseDeviceObjectParser.java"

# interfaces
.implements Lcom/idelan/xml/parser/BaseDeviceObjectParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/idelan/bean/BaseDeviceBean;
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 27
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 28
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v1, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;-><init>(Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;)V

    .line 29
    .local v1, "handler":Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;
    invoke-virtual {v2, p1, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 30
    invoke-virtual {v1}, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->getBaseDeviceObject()Lcom/idelan/bean/BaseDeviceBean;

    move-result-object v3

    return-object v3
.end method

.method public serialize(Lcom/idelan/bean/BaseDeviceBean;)Ljava/lang/String;
    .registers 14
    .param p1, "object"    # Lcom/idelan/bean/BaseDeviceBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 36
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 35
    check-cast v1, Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 37
    .local v1, "factory":Ljavax/xml/transform/sax/SAXTransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v2

    .line 38
    .local v2, "handler":Ljavax/xml/transform/sax/TransformerHandler;
    invoke-interface {v2}, Ljavax/xml/transform/sax/TransformerHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 39
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    const-string v8, "encoding"

    const-string v9, "UTF-8"

    invoke-virtual {v5, v8, v9}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v8, "indent"

    const-string v9, "yes"

    invoke-virtual {v5, v8, v9}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v8, "omit-xml-declaration"

    const-string v9, "no"

    invoke-virtual {v5, v8, v9}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 44
    .local v7, "writer":Ljava/io/StringWriter;
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 45
    .local v4, "result":Ljavax/xml/transform/Result;
    invoke-interface {v2, v4}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    .line 47
    const-string v6, ""

    .line 48
    .local v6, "uri":Ljava/lang/String;
    const-string v3, ""

    .line 49
    .local v3, "localName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 51
    .local v0, "ch":[C
    invoke-interface {v2}, Ljavax/xml/transform/sax/TransformerHandler;->startDocument()V

    .line 52
    const-string v8, "DeviceObject"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 54
    const-string v8, "idx"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 55
    iget v8, p1, Lcom/idelan/bean/BaseDeviceBean;->idx:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 56
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 57
    const-string v8, "idx"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v8, "chn"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 60
    iget v8, p1, Lcom/idelan/bean/BaseDeviceBean;->chn:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 61
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 62
    const-string v8, "chn"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v8, "devType"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    iget v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 66
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 67
    const-string v8, "devType"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v8, "devSubType"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 70
    iget v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devSubType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 71
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 72
    const-string v8, "devSubType"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v8, "onLine"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 75
    iget v8, p1, Lcom/idelan/bean/BaseDeviceBean;->onLine:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 76
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 77
    const-string v8, "onLine"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v8, "devBelong"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 80
    iget v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devBelong:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 81
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 82
    const-string v8, "devBelong"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v8, "devName"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 85
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 86
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 87
    const-string v8, "devName"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v8, "devSerial"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 90
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devSerial:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 91
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 92
    const-string v8, "devSerial"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v8, "devVersion"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 95
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devVersion:Ljava/lang/String;

    if-eqz v8, :cond_10a

    .line 96
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devVersion:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 97
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 99
    :cond_10a
    const-string v8, "devVersion"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v8, "proVersion"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 102
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->proVersion:Ljava/lang/String;

    if-eqz v8, :cond_122

    .line 103
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->proVersion:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 104
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 106
    :cond_122
    const-string v8, "proVersion"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v8, "sftVersion"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 109
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->sftVersion:Ljava/lang/String;

    if-eqz v8, :cond_13a

    .line 110
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->sftVersion:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 111
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 113
    :cond_13a
    const-string v8, "sftVersion"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v8, "hdwVersion"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 116
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->hdwVersion:Ljava/lang/String;

    if-eqz v8, :cond_152

    .line 117
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->hdwVersion:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 118
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 120
    :cond_152
    const-string v8, "hdwVersion"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v8, "devBrand"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 123
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devBrand:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 124
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 125
    const-string v8, "devBrand"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v8, "devModel"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 128
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devModel:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 129
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 130
    const-string v8, "devModel"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v8, "devApcVer"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 133
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devApcVer:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 134
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 135
    const-string v8, "devApcVer"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v8, "devParent"

    invoke-interface {v2, v6, v3, v8, v10}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 138
    iget-object v8, p1, Lcom/idelan/bean/BaseDeviceBean;->devParent:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 139
    array-length v8, v0

    invoke-interface {v2, v0, v11, v8}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 140
    const-string v8, "devParent"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v8, "DeviceObject"

    invoke-interface {v2, v6, v3, v8}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v2}, Ljavax/xml/transform/sax/TransformerHandler;->endDocument()V

    .line 144
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
