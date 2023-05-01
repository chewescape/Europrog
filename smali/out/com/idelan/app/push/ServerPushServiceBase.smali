.class public Lcom/idelan/app/push/ServerPushServiceBase;
.super Landroid/app/Service;
.source "ServerPushServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;
    }
.end annotation


# static fields
.field static idIndex:I

.field static isStop:Z

.field static msgIdList:[Ljava/lang/String;

.field public static sTokenId:Ljava/lang/String;


# instance fields
.field public m_nSocketType:I

.field private messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

.field msgIds:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    .line 48
    sput-boolean v1, Lcom/idelan/app/push/ServerPushServiceBase;->isStop:Z

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->msgIdList:[Ljava/lang/String;

    .line 50
    sput v1, Lcom/idelan/app/push/ServerPushServiceBase;->idIndex:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/idelan/app/push/ServerPushServiceBase;->m_nSocketType:I

    .line 44
    return-void
.end method

.method private WriteAppInfo(Lcom/idelan/app/push/PushAppInfo;)V
    .registers 9
    .param p1, "pushApp"    # Lcom/idelan/app/push/PushAppInfo;

    .prologue
    .line 185
    :try_start_0
    const-string v5, "PushMessage"

    .line 186
    const/4 v6, 0x0

    .line 185
    invoke-virtual {p0, v5, v6}, Lcom/idelan/app/push/ServerPushServiceBase;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 187
    .local v2, "preferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_92

    .line 188
    const-string v5, "Keys"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "sAllKey":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 190
    const-string v3, ""

    .line 191
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "sKey":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_93

    .line 193
    move-object v3, v4

    .line 199
    :cond_37
    :goto_37
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 200
    iget-object v6, p1, Lcom/idelan/app/push/PushAppInfo;->mSign:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "appInfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/idelan/app/push/PushAppInfo;->mDefLogo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/idelan/app/push/PushAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 204
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "Keys"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    .end local v0    # "appInfo":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "sAllKey":Ljava/lang/String;
    .end local v4    # "sKey":Ljava/lang/String;
    :cond_92
    :goto_92
    return-void

    .line 195
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    .restart local v3    # "sAllKey":Ljava/lang/String;
    .restart local v4    # "sKey":Ljava/lang/String;
    :cond_93
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_37

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_af} :catch_b1

    move-result-object v3

    goto :goto_37

    .line 208
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "sAllKey":Ljava/lang/String;
    .end local v4    # "sKey":Ljava/lang/String;
    :catch_b1
    move-exception v5

    goto :goto_92
.end method

.method static synthetic access$0(Lcom/idelan/app/push/ServerPushServiceBase;Z)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/idelan/app/push/ServerPushServiceBase;->updateStatus(Z)V

    return-void
.end method

.method public static getPushTokenId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    sget-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, ""

    sget-object v1, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 140
    :cond_e
    const-string v0, "DLToKenId"

    .line 141
    const-string v1, ""

    .line 140
    invoke-static {p0, v0, v1}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    .line 143
    :cond_1a
    const-string v0, ""

    sget-object v1, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 144
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    const-string v1, "Idelan-push-v1.0.1"

    invoke-static {v0, v1}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    .line 146
    const-string v0, "DLToKenId"

    sget-object v1, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/idelan/app/Util/SharePreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_3f
    sget-object v0, Lcom/idelan/app/push/ServerPushServiceBase;->sTokenId:Ljava/lang/String;

    return-object v0
.end method

.method public static getXmlDoc([BII)Lorg/w3c/dom/Document;
    .registers 9
    .param p0, "xml"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 1036
    .local v2, "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 1038
    .local v1, "dombuilder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v1

    .line 1042
    :goto_9
    const/4 v0, 0x0

    .line 1043
    .local v0, "doc":Lorg/w3c/dom/Document;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 1046
    .local v4, "is":Ljava/io/InputStream;
    :try_start_f
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_12} :catch_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_26

    move-result-object v0

    .line 1056
    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_30

    .line 1061
    return-object v0

    .line 1039
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_17
    move-exception v3

    .line 1040
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 1047
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1c
    move-exception v3

    .line 1048
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 1049
    new-instance v5, Lorg/xml/sax/SAXException;

    invoke-direct {v5}, Lorg/xml/sax/SAXException;-><init>()V

    throw v5

    .line 1050
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_26
    move-exception v3

    .line 1051
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1052
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 1057
    .end local v3    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v3

    .line 1058
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1059
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
.end method

.method private loadAppInfo(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/idelan/app/push/PushAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "lst":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/app/push/PushAppInfo;>;"
    :try_start_0
    const-string v4, "PushMessage"

    .line 216
    const/4 v5, 0x0

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/idelan/app/push/ServerPushServiceBase;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 217
    .local v12, "preferences":Landroid/content/SharedPreferences;
    if-eqz v12, :cond_1b

    .line 218
    const-string v4, "Keys"

    const-string v5, ""

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "sAllKey":Ljava/lang/String;
    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    .line 255
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "sAllKey":Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-void

    .line 222
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    .restart local v13    # "sAllKey":Ljava/lang/String;
    :cond_1c
    const-string v4, ","

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, "sKey":[Ljava/lang/String;
    if-eqz v15, :cond_1b

    .line 225
    array-length v9, v15

    .line 226
    .local v9, "keys":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    if-ge v7, v9, :cond_1b

    .line 227
    aget-object v8, v15, v7

    .line 228
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_33

    .line 226
    :cond_30
    :goto_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 230
    :cond_33
    const-string v4, "@"

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 231
    .local v10, "nPos":I
    if-lez v10, :cond_30

    .line 233
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "sKey1":Ljava/lang/String;
    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "sKey2":Ljava/lang/String;
    const-string v4, ""

    invoke-interface {v12, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, "sFileds":Ljava/lang/String;
    if-eqz v14, :cond_30

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_30

    .line 238
    const-string v4, "&"

    invoke-virtual {v14, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 239
    .local v11, "pram":[Ljava/lang/String;
    if-eqz v11, :cond_30

    array-length v4, v11

    const/4 v5, 0x5

    if-lt v4, v5, :cond_30

    .line 242
    const/4 v4, 0x0

    aget-object v4, v11, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_30

    .line 244
    const/4 v4, 0x1

    aget-object v4, v11, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_30

    .line 246
    new-instance v1, Lcom/idelan/app/push/PushAppInfo;

    .line 247
    const/4 v4, 0x2

    aget-object v4, v11, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v11, v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    const/4 v6, 0x3

    aget-object v6, v11, v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-direct/range {v1 .. v6}, Lcom/idelan/app/push/PushAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v1, "push":Lcom/idelan/app/push/PushAppInfo;
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_99} :catch_9a

    goto :goto_30

    .line 252
    .end local v1    # "push":Lcom/idelan/app/push/PushAppInfo;
    .end local v2    # "sKey2":Ljava/lang/String;
    .end local v3    # "sKey1":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keys":I
    .end local v10    # "nPos":I
    .end local v11    # "pram":[Ljava/lang/String;
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "sAllKey":Ljava/lang/String;
    .end local v14    # "sFileds":Ljava/lang/String;
    .end local v15    # "sKey":[Ljava/lang/String;
    :catch_9a
    move-exception v4

    goto :goto_1b
.end method

.method public static setStop(Z)V
    .registers 1
    .param p0, "isStop"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/idelan/app/push/ServerPushServiceBase;->isStop:Z

    .line 57
    return-void
.end method

.method private updateStatus(Z)V
    .registers 6
    .param p1, "bRun"    # Z

    .prologue
    .line 69
    :try_start_0
    const-string v2, "PushMessage"

    .line 70
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v2, v3}, Lcom/idelan/app/push/ServerPushServiceBase;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_15

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "IsRuning"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 80
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_15
    :goto_15
    return-void

    .line 77
    :catch_16
    move-exception v2

    goto :goto_15
.end method


# virtual methods
.method protected NotificatioMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "sLocalId"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "notifyLogo"    # Ljava/lang/String;
    .param p4, "sTickMsg"    # Ljava/lang/String;
    .param p5, "corpId"    # Ljava/lang/String;
    .param p6, "appId"    # Ljava/lang/String;
    .param p7, "subject"    # Ljava/lang/String;
    .param p8, "body"    # Ljava/lang/String;
    .param p9, "content"    # Ljava/lang/String;
    .param p10, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1075
    return-void
.end method

.method public isEanbled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 85
    :try_start_1
    const-string v2, "PushMessage"

    .line 86
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0, v2, v3}, Lcom/idelan/app/push/ServerPushServiceBase;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_11

    .line 88
    const-string v2, "OpenFlag"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 95
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_11
    :goto_11
    return v0

    .line 92
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public isNetworkAvailable()Z
    .registers 6

    .prologue
    .line 124
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/idelan/app/push/ServerPushServiceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 125
    .local v2, "manager":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_14

    .line 126
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 127
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_14

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, v1

    if-lt v0, v3, :cond_16

    .line 135
    .end local v0    # "i":I
    .end local v1    # "info":[Landroid/net/NetworkInfo;
    :cond_14
    const/4 v3, 0x0

    :goto_15
    return v3

    .line 129
    .restart local v0    # "i":I
    .restart local v1    # "info":[Landroid/net/NetworkInfo;
    :cond_16
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_22

    .line 130
    const/4 v3, 0x1

    goto :goto_15

    .line 128
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 101
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushServiceBase;->isEanbled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 102
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushServiceBase;->stopSelf()V

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idelan/app/push/ServerPushServiceBase;->updateStatus(Z)V

    .line 106
    :cond_10
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idelan/app/push/ServerPushServiceBase;->updateStatus(Z)V

    .line 112
    :try_start_4
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    if-eqz v0, :cond_15

    .line 113
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->userStop()V

    .line 114
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->stop()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_19

    .line 120
    :cond_15
    :goto_15
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 121
    return-void

    .line 117
    :catch_19
    move-exception v0

    goto :goto_15
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 155
    if-eqz p1, :cond_2a

    :try_start_2
    const-string v3, "appInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 157
    const-string v3, "appInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 156
    check-cast v2, Lcom/idelan/app/push/PushAppInfo;

    .line 158
    .local v2, "pushTask":Lcom/idelan/app/push/PushAppInfo;
    if-eqz v2, :cond_28

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/app/push/PushAppInfo;>;"
    invoke-direct {p0, v0}, Lcom/idelan/app/push/ServerPushServiceBase;->loadAppInfo(Ljava/util/List;)V

    .line 162
    invoke-direct {p0, v2}, Lcom/idelan/app/push/ServerPushServiceBase;->WriteAppInfo(Lcom/idelan/app/push/PushAppInfo;)V

    .line 163
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    if-eqz v3, :cond_28

    .line 164
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v3, v2}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->addNotify(Lcom/idelan/app/push/PushAppInfo;)V

    .line 179
    .end local v0    # "lst":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/app/push/PushAppInfo;>;"
    .end local v2    # "pushTask":Lcom/idelan/app/push/PushAppInfo;
    :cond_28
    :goto_28
    const/4 v3, 0x1

    return v3

    .line 168
    :cond_2a
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    if-eqz v3, :cond_28

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .restart local v0    # "lst":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/app/push/PushAppInfo;>;"
    invoke-direct {p0, v0}, Lcom/idelan/app/push/ServerPushServiceBase;->loadAppInfo(Ljava/util/List;)V

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idelan/app/push/PushAppInfo;

    .line 172
    .local v1, "push":Lcom/idelan/app/push/PushAppInfo;
    iget-object v4, p0, Lcom/idelan/app/push/ServerPushServiceBase;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v4, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->addNotify(Lcom/idelan/app/push/PushAppInfo;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_3a

    .line 176
    .end local v0    # "lst":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/app/push/PushAppInfo;>;"
    .end local v1    # "push":Lcom/idelan/app/push/PushAppInfo;
    :catch_4c
    move-exception v3

    goto :goto_28
.end method

.method protected postNotifyMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "notifyId"    # I
    .param p2, "localId"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "notifyLogo"    # Ljava/lang/String;
    .param p5, "sNotifyData"    # Ljava/lang/String;
    .param p6, "tickerText"    # Ljava/lang/String;
    .param p7, "subject"    # Ljava/lang/String;
    .param p8, "body"    # Ljava/lang/String;
    .param p9, "content"    # Ljava/lang/String;
    .param p10, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1069
    return-void
.end method
