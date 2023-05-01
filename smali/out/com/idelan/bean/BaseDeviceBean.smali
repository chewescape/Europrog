.class public Lcom/idelan/bean/BaseDeviceBean;
.super Ljava/lang/Object;
.source "BaseDeviceBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x23ba31c536f6313bL


# instance fields
.field public chn:I

.field public devApcVer:Ljava/lang/String;

.field public devBelong:I

.field public devBrand:Ljava/lang/String;

.field public devModel:Ljava/lang/String;

.field public devName:Ljava/lang/String;

.field public devOthersParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public devParent:Ljava/lang/String;

.field public devSerial:Ljava/lang/String;

.field public devSubType:I

.field public devType:I

.field public devVersion:Ljava/lang/String;

.field public hdwVersion:Ljava/lang/String;

.field public idx:I

.field public onLine:I

.field private parser:Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

.field public proVersion:Ljava/lang/String;

.field public sftVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devOthersParams:Ljava/util/HashMap;

    .line 40
    return-void
.end method


# virtual methods
.method public initWithObject(Lcom/idelan/bean/BaseDeviceBean;)I
    .registers 3
    .param p1, "object"    # Lcom/idelan/bean/BaseDeviceBean;

    .prologue
    .line 43
    iget v0, p1, Lcom/idelan/bean/BaseDeviceBean;->idx:I

    iput v0, p0, Lcom/idelan/bean/BaseDeviceBean;->idx:I

    .line 44
    iget v0, p1, Lcom/idelan/bean/BaseDeviceBean;->chn:I

    iput v0, p0, Lcom/idelan/bean/BaseDeviceBean;->chn:I

    .line 45
    iget v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devType:I

    iput v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devType:I

    .line 46
    iget v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devSubType:I

    iput v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devSubType:I

    .line 47
    iget v0, p1, Lcom/idelan/bean/BaseDeviceBean;->onLine:I

    iput v0, p0, Lcom/idelan/bean/BaseDeviceBean;->onLine:I

    .line 48
    iget v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devBelong:I

    iput v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devBelong:I

    .line 49
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devName:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devName:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devSerial:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devSerial:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devVersion:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->proVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->proVersion:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->sftVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->sftVersion:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->hdwVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->hdwVersion:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devBrand:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devBrand:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devModel:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devApcVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devApcVer:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devParent:Ljava/lang/String;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devParent:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/idelan/bean/BaseDeviceBean;->devOthersParams:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/idelan/bean/BaseDeviceBean;->devOthersParams:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public objectToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    new-instance v1, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

    invoke-direct {v1}, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;-><init>()V

    iput-object v1, p0, Lcom/idelan/bean/BaseDeviceBean;->parser:Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

    .line 68
    :try_start_7
    iget-object v1, p0, Lcom/idelan/bean/BaseDeviceBean;->parser:Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

    invoke-virtual {v1, p0}, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;->serialize(Lcom/idelan/bean/BaseDeviceBean;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object v1

    .line 72
    :goto_d
    return-object v1

    .line 69
    :catch_e
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const-string v1, ""

    goto :goto_d
.end method

.method public stringToObject(Ljava/lang/String;)V
    .registers 5
    .param p1, "strXML"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v2, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

    invoke-direct {v2}, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;-><init>()V

    iput-object v2, p0, Lcom/idelan/bean/BaseDeviceBean;->parser:Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

    .line 78
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/idelan/bean/BaseDeviceBean;->parser:Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;

    invoke-virtual {v2, v1}, Lcom/idelan/xml/parser/SaxBaseDeviceObjectParser;->parse(Ljava/io/InputStream;)Lcom/idelan/bean/BaseDeviceBean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/idelan/bean/BaseDeviceBean;->initWithObject(Lcom/idelan/bean/BaseDeviceBean;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 83
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_1b
    return-void

    .line 80
    :catch_1c
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method
