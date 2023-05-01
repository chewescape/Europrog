.class Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SaxBaseDeviceObjectParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private object:Lcom/idelan/bean/BaseDeviceBean;

.field final synthetic this$0:Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;


# direct methods
.method private constructor <init>(Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->this$0:Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;)V
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;-><init>(Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 213
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 214
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "idx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 175
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idelan/bean/BaseDeviceBean;->idx:I

    .line 207
    :cond_19
    :goto_19
    return-void

    .line 176
    :cond_1a
    const-string v0, "chn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 177
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idelan/bean/BaseDeviceBean;->chn:I

    goto :goto_19

    .line 178
    :cond_31
    const-string v0, "devType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 179
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devType:I

    goto :goto_19

    .line 180
    :cond_48
    const-string v0, "devSubType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 181
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devSubType:I

    goto :goto_19

    .line 182
    :cond_5f
    const-string v0, "onLine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 183
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idelan/bean/BaseDeviceBean;->onLine:I

    goto :goto_19

    .line 184
    :cond_76
    const-string v0, "devBelong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 185
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devBelong:I

    goto :goto_19

    .line 186
    :cond_8d
    const-string v0, "devName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 187
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devName:Ljava/lang/String;

    goto/16 :goto_19

    .line 188
    :cond_a1
    const-string v0, "devSerial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 189
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devSerial:Ljava/lang/String;

    goto/16 :goto_19

    .line 190
    :cond_b5
    const-string v0, "devVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 191
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devVersion:Ljava/lang/String;

    goto/16 :goto_19

    .line 192
    :cond_c9
    const-string v0, "proVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 193
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->proVersion:Ljava/lang/String;

    goto/16 :goto_19

    .line 194
    :cond_dd
    const-string v0, "sftVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 195
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->sftVersion:Ljava/lang/String;

    goto/16 :goto_19

    .line 196
    :cond_f1
    const-string v0, "hdwVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 197
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->hdwVersion:Ljava/lang/String;

    goto/16 :goto_19

    .line 198
    :cond_105
    const-string v0, "devBrand"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 199
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devBrand:Ljava/lang/String;

    goto/16 :goto_19

    .line 200
    :cond_119
    const-string v0, "devModel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 201
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devModel:Ljava/lang/String;

    goto/16 :goto_19

    .line 202
    :cond_12d
    const-string v0, "devApcVer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 203
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devApcVer:Ljava/lang/String;

    goto/16 :goto_19

    .line 204
    :cond_141
    const-string v0, "devParent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 205
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    iget-object v1, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idelan/bean/BaseDeviceBean;->devParent:Ljava/lang/String;

    goto/16 :goto_19
.end method

.method public getBaseDeviceObject()Lcom/idelan/bean/BaseDeviceBean;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    return-object v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 159
    new-instance v0, Lcom/idelan/bean/BaseDeviceBean;

    invoke-direct {v0}, Lcom/idelan/bean/BaseDeviceBean;-><init>()V

    iput-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->object:Lcom/idelan/bean/BaseDeviceBean;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    .line 161
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 167
    iget-object v0, p0, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser$MyHandler;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 168
    return-void
.end method
