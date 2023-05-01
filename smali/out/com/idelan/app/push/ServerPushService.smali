.class public abstract Lcom/idelan/app/push/ServerPushService;
.super Lcom/idelan/app/push/ServerPushServiceBase;
.source "ServerPushService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerPushService"

.field public static final remoteAddress:Ljava/lang/String;

.field public static final remotePort:I


# instance fields
.field handler:Landroid/os/Handler;

.field kl:Landroid/app/KeyguardManager$KeyguardLock;

.field private messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

.field notifyId:I

.field screenReceiver:Landroid/content/BroadcastReceiver;

.field stub:Lcom/idelan/app/push/IServicePush$Stub;

.field protected tickPendIntent:Landroid/app/PendingIntent;

.field wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/idelan/app/push/PushIConstants;->PushAddress:Ljava/lang/String;

    sput-object v0, Lcom/idelan/app/push/ServerPushService;->remoteAddress:Ljava/lang/String;

    .line 50
    sget v0, Lcom/idelan/app/push/PushIConstants;->PushPort:I

    sput v0, Lcom/idelan/app/push/ServerPushService;->remotePort:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    .line 54
    new-instance v0, Lcom/idelan/app/push/ServerPushService$1;

    invoke-direct {v0, p0}, Lcom/idelan/app/push/ServerPushService$1;-><init>(Lcom/idelan/app/push/ServerPushService;)V

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->handler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/idelan/app/push/ServerPushService$2;

    invoke-direct {v0, p0}, Lcom/idelan/app/push/ServerPushService$2;-><init>(Lcom/idelan/app/push/ServerPushService;)V

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->stub:Lcom/idelan/app/push/IServicePush$Stub;

    .line 380
    new-instance v0, Lcom/idelan/app/push/ServerPushService$3;

    invoke-direct {v0, p0}, Lcom/idelan/app/push/ServerPushService$3;-><init>(Lcom/idelan/app/push/ServerPushService;)V

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->screenReceiver:Landroid/content/BroadcastReceiver;

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/idelan/app/push/ServerPushService;->notifyId:I

    .line 42
    return-void
.end method

.method public static getCommonStatus(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 98
    .line 99
    const-string v2, "PushMessage"

    .line 98
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "CommonStatus"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .local v0, "a":Z
    const-string v2, "hw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "CommonStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v0
.end method

.method private getServerAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/idelan/app/push/ServerPushService;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/idelan/app/push/ServerPushService;->remotePort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "sAddress":Ljava/lang/String;
    return-object v0
.end method

.method public static getXmlDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 352
    .local v2, "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 354
    .local v1, "dombuilder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_1d

    move-result-object v1

    .line 358
    :goto_9
    const/4 v0, 0x0

    .line 359
    .local v0, "doc":Lorg/w3c/dom/Document;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 362
    .local v4, "is":Ljava/io/InputStream;
    :try_start_15
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_18} :catch_22
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_2c

    move-result-object v0

    .line 372
    :try_start_19
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_36

    .line 377
    return-object v0

    .line 355
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_1d
    move-exception v3

    .line 356
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 363
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_22
    move-exception v3

    .line 364
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 365
    new-instance v5, Lorg/xml/sax/SAXException;

    invoke-direct {v5}, Lorg/xml/sax/SAXException;-><init>()V

    throw v5

    .line 366
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_2c
    move-exception v3

    .line 367
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 373
    .end local v3    # "e":Ljava/io/IOException;
    :catch_36
    move-exception v3

    .line 374
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 375
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
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
    .line 321
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 322
    .local v2, "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 324
    .local v1, "dombuilder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v1

    .line 328
    :goto_9
    const/4 v0, 0x0

    .line 329
    .local v0, "doc":Lorg/w3c/dom/Document;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 332
    .local v4, "is":Ljava/io/InputStream;
    :try_start_f
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_12} :catch_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_26

    move-result-object v0

    .line 342
    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_30

    .line 347
    return-object v0

    .line 325
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_17
    move-exception v3

    .line 326
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 333
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1c
    move-exception v3

    .line 334
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 335
    new-instance v5, Lorg/xml/sax/SAXException;

    invoke-direct {v5}, Lorg/xml/sax/SAXException;-><init>()V

    throw v5

    .line 336
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_26
    move-exception v3

    .line 337
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 343
    .end local v3    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v3

    .line 344
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 345
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
.end method

.method public static isEanbled(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 151
    .line 152
    const-string v2, "PushMessage"

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2c

    .line 154
    const-string v2, "OpenFlag"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, "a":Z
    const-string v2, "hw"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u63a8\u9001\u503c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0    # "a":Z
    :cond_2c
    return v0
.end method

.method public static setCommonStatus(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Z

    .prologue
    .line 113
    .line 114
    const-string v2, "PushMessage"

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CommonStatus"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method public static setEanbled(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bRun"    # Z

    .prologue
    .line 132
    .line 133
    const-string v2, "PushMessage"

    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_15

    .line 136
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "OpenFlag"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_15
    return-void
.end method


# virtual methods
.method protected NotificatioMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p1, "sLocalId"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "notifyLogo"    # Ljava/lang/String;
    .param p4, "sTickMsg"    # Ljava/lang/String;
    .param p5, "corpId"    # Ljava/lang/String;
    .param p6, "appId"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "abstractStr"    # Ljava/lang/String;
    .param p9, "content"    # Ljava/lang/String;
    .param p10, "msgId"    # Ljava/lang/String;

    .prologue
    .line 462
    if-nez p5, :cond_4

    .line 463
    const-string p5, ""

    .line 464
    :cond_4
    if-nez p6, :cond_8

    .line 465
    const-string p6, ""

    .line 466
    :cond_8
    iget v1, p0, Lcom/idelan/app/push/ServerPushService;->notifyId:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/idelan/app/push/ServerPushService;->notifyId:I

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/idelan/app/push/ServerPushService;->postNotifyMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 469
    .local v11, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v11, Landroid/os/Message;->what:I

    .line 470
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p7, v0, v1

    const/4 v1, 0x1

    aput-object p8, v0, v1

    const/4 v1, 0x2

    aput-object p9, v0, v1

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    return-void
.end method

.method public isNetworkAvailable()Z
    .registers 6

    .prologue
    .line 286
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/idelan/app/push/ServerPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 287
    .local v2, "manager":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_14

    .line 288
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 289
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_14

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, v1

    if-lt v0, v3, :cond_16

    .line 297
    .end local v0    # "i":I
    .end local v1    # "info":[Landroid/net/NetworkInfo;
    :cond_14
    const/4 v3, 0x0

    :goto_15
    return v3

    .line 291
    .restart local v0    # "i":I
    .restart local v1    # "info":[Landroid/net/NetworkInfo;
    :cond_16
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_22

    .line 292
    const/4 v3, 0x1

    goto :goto_15

    .line 290
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->stub:Lcom/idelan/app/push/IServicePush$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 163
    invoke-super {p0}, Lcom/idelan/app/push/ServerPushServiceBase;->onCreate()V

    .line 164
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushService;->setTickAlarm()V

    .line 166
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/idelan/app/push/ServerPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    check-cast v0, Landroid/os/PowerManager;

    .line 167
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    .line 168
    const-string v2, "OnlineService"

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 169
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushService;->resetClient()V

    .line 171
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    if-eqz v0, :cond_11

    .line 262
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->userStop()V

    .line 263
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->stop()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_1f

    .line 269
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushService;->tryReleaseWakeLock()V

    .line 270
    const-string v0, "hw"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-super {p0}, Lcom/idelan/app/push/ServerPushServiceBase;->onDestroy()V

    .line 272
    return-void

    .line 266
    :catch_1f
    move-exception v0

    goto :goto_11
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 188
    const-string v1, "test"

    const-string v2, "on statr Command=1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-nez p1, :cond_b

    .line 190
    const/4 v1, 0x1

    .line 209
    :goto_a
    return v1

    .line 192
    :cond_b
    const-string v1, "CMD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "cmd":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 194
    const-string v0, ""

    .line 197
    :cond_15
    const-string v1, "TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 198
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 199
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 202
    :cond_2e
    const-string v1, "RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 203
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_47

    .line 204
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    :cond_47
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushService;->resetClient()V

    .line 209
    :cond_4a
    const/4 v1, 0x3

    invoke-super {p0, p1, v1, p3}, Lcom/idelan/app/push/ServerPushServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_a
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    :try_start_0
    const-string v0, "test"

    const-string v1, "push service is unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    if-eqz v0, :cond_18

    .line 217
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->userStop()V

    .line 218
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->stop()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1d

    .line 224
    :cond_18
    :goto_18
    invoke-super {p0, p1}, Lcom/idelan/app/push/ServerPushServiceBase;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 221
    :catch_1d
    move-exception v0

    goto :goto_18
.end method

.method protected postNotifyMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 29
    .param p1, "notifyId"    # I
    .param p2, "localId"    # Ljava/lang/String;
    .param p3, "activityName1"    # Ljava/lang/String;
    .param p4, "notifyLogo"    # Ljava/lang/String;
    .param p5, "sNotifyData"    # Ljava/lang/String;
    .param p6, "tickerText"    # Ljava/lang/String;
    .param p7, "subject"    # Ljava/lang/String;
    .param p8, "body"    # Ljava/lang/String;
    .param p9, "content"    # Ljava/lang/String;
    .param p10, "msgId"    # Ljava/lang/String;

    .prologue
    .line 402
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v7, "intent":Landroid/content/Intent;
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/idelan/app/push/ServerPushService;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 406
    const-class v16, Lcom/idelan/app/push/PushActivity;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 407
    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    const-string v14, "extra"

    move-object/from16 v0, p9

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v14, "msgId"

    move-object/from16 v0, p10

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v14, "localId"

    move-object/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const/high16 v14, 0x8000000

    .line 411
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v7, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 413
    .local v10, "messagePendingIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 414
    .local v6, "iconId":I
    sget v14, Lcom/idelan/app/push/PushIConstants;->PushIcon:I

    if-nez v14, :cond_12d

    .line 415
    const-string v14, "icon"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 418
    :goto_4f
    new-instance v12, Landroid/app/Notification;

    .line 419
    sget-object v14, Lcom/idelan/app/push/PushIConstants;->PushAppTitle:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 418
    move-wide/from16 v0, v16

    invoke-direct {v12, v6, v14, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 420
    .local v12, "notify":Landroid/app/Notification;
    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/idelan/app/push/ServerPushService;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 421
    const-string v15, "item_push_notification"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 420
    invoke-direct {v13, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 422
    .local v13, "remoteView":Landroid/widget/RemoteViews;
    const-string v14, "image"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 425
    const-string v14, "notificat_context"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 424
    move-object/from16 v0, p8

    invoke-virtual {v13, v14, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 427
    const-string v14, "notificat_title"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 426
    move-object/from16 v0, p7

    invoke-virtual {v13, v14, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 429
    .local v2, "c":Ljava/util/Calendar;
    const/16 v14, 0xb

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 430
    .local v5, "hour":I
    const/16 v14, 0xc

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 433
    .local v11, "minute":I
    const-string v14, "notificat_time"

    .line 432
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 433
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0xa

    if-ge v5, v14, :cond_131

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_c4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 434
    const/16 v14, 0xa

    if-ge v11, v14, :cond_136

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_e7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 433
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 432
    invoke-virtual {v13, v15, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 435
    iput-object v13, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 436
    if-eqz p6, :cond_fe

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_114

    .line 437
    :cond_fe
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 438
    .local v8, "locale":Ljava/util/Locale;
    if-nez v8, :cond_13b

    const-string v3, ""

    .line 439
    .local v3, "country":Ljava/lang/String;
    :goto_106
    if-nez v3, :cond_10a

    .line 440
    const-string v3, ""

    .line 441
    :cond_10a
    const-string v14, "cn"

    invoke-virtual {v3, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_140

    .line 442
    const-string p6, "\u65b0\u6d88\u606f"

    .line 446
    .end local v3    # "country":Ljava/lang/String;
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_114
    :goto_114
    const/4 v14, 0x1

    iput v14, v12, Landroid/app/Notification;->defaults:I

    .line 447
    const/16 v14, 0x10

    iput v14, v12, Landroid/app/Notification;->flags:I

    .line 448
    iput-object v10, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 449
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/idelan/app/push/ServerPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 450
    .local v9, "messageNotificationManager":Landroid/app/NotificationManager;
    move/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 454
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v5    # "hour":I
    .end local v6    # "iconId":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "messageNotificationManager":Landroid/app/NotificationManager;
    .end local v10    # "messagePendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "minute":I
    .end local v12    # "notify":Landroid/app/Notification;
    .end local v13    # "remoteView":Landroid/widget/RemoteViews;
    :goto_12c
    return-void

    .line 417
    .restart local v6    # "iconId":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "messagePendingIntent":Landroid/app/PendingIntent;
    :cond_12d
    sget v6, Lcom/idelan/app/push/PushIConstants;->PushIcon:I

    goto/16 :goto_4f

    .line 433
    .restart local v2    # "c":Ljava/util/Calendar;
    .restart local v5    # "hour":I
    .restart local v11    # "minute":I
    .restart local v12    # "notify":Landroid/app/Notification;
    .restart local v13    # "remoteView":Landroid/widget/RemoteViews;
    :cond_131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_c4

    .line 434
    :cond_136
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_e7

    .line 438
    .restart local v8    # "locale":Ljava/util/Locale;
    :cond_13b
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_106

    .line 444
    .restart local v3    # "country":Ljava/lang/String;
    :cond_140
    const-string p6, "New Message"
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_142} :catch_143

    goto :goto_114

    .line 451
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v3    # "country":Ljava/lang/String;
    .end local v5    # "hour":I
    .end local v6    # "iconId":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "locale":Ljava/util/Locale;
    .end local v10    # "messagePendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "minute":I
    .end local v12    # "notify":Landroid/app/Notification;
    .end local v13    # "remoteView":Landroid/widget/RemoteViews;
    :catch_143
    move-exception v4

    .line 452
    .local v4, "ex":Ljava/lang/Exception;
    const-string v14, "postNotifyMessage"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c
.end method

.method public abstract pushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected resetClient()V
    .registers 9

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    if-eqz v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->userStop()V

    .line 232
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->stop()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_5f

    .line 238
    :cond_11
    :goto_11
    const-string v0, "test"

    const-string v1, "rest client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p0}, Lcom/idelan/app/push/ServerPushService;->getPushTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idelan/app/push/ServerPushService;->sTokenId:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushService;->getServerAddress()Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "sAddress":Ljava/lang/String;
    :try_start_22
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "test ip="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-direct {v0, p0, p0, v6}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;-><init>(Lcom/idelan/app/push/ServerPushServiceBase;Lcom/idelan/app/push/ServerPushServiceBase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    .line 247
    iget-object v7, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    new-instance v0, Lcom/idelan/app/push/PushAppInfo;

    sget-object v1, Lcom/idelan/app/push/PushIConstants;->PushAppId:Ljava/lang/String;

    .line 248
    sget-object v2, Lcom/idelan/app/push/PushIConstants;->PushCorpId:Ljava/lang/String;

    .line 249
    sget-object v3, Lcom/idelan/app/push/PushIConstants;->PushKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/idelan/app/push/PushAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v7, v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->addNotify(Lcom/idelan/app/push/PushAppInfo;)V

    .line 252
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->messageThread:Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;

    invoke-virtual {v0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->start()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5c} :catch_5d

    .line 256
    :goto_5c
    return-void

    .line 253
    :catch_5d
    move-exception v0

    goto :goto_5c

    .line 235
    .end local v6    # "sAddress":Ljava/lang/String;
    :catch_5f
    move-exception v0

    goto :goto_11
.end method

.method protected setTickAlarm()V
    .registers 11

    .prologue
    .line 174
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/idelan/app/push/ServerPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 175
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/idelan/app/push/receiver/TickAlarmReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v7, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 178
    .local v9, "requestCode":I
    const/high16 v1, 0x8000000

    .line 177
    invoke-static {p0, v9, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/idelan/app/push/ServerPushService;->tickPendIntent:Landroid/app/PendingIntent;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, "triggerAtTime":J
    const v8, 0x493e0

    .line 182
    .local v8, "interval":I
    const/4 v1, 0x0

    int-to-long v4, v8

    .line 183
    iget-object v6, p0, Lcom/idelan/app/push/ServerPushService;->tickPendIntent:Landroid/app/PendingIntent;

    .line 182
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 184
    return-void
.end method

.method protected tryReleaseWakeLock()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 276
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 278
    :cond_11
    return-void
.end method

.method public trySystemSleep()V
    .registers 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/idelan/app/push/ServerPushService;->tryReleaseWakeLock()V

    .line 393
    return-void
.end method
