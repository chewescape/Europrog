.class public Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
.super Ljava/lang/Object;
.source "ClientComms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;,
        Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;
    }
.end annotation


# static fields
.field public static BUILD_LEVEL:Ljava/lang/String; = null

.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final CLOSED:B = 0x4t

.field private static final CONNECTED:B = 0x0t

.field private static final CONNECTING:B = 0x1t

.field private static final DISCONNECTED:B = 0x3t

.field private static final DISCONNECTING:B = 0x2t

.field public static VERSION:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

.field private client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private closePending:Z

.field private conLock:Ljava/lang/Object;

.field private conOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private conState:B

.field private networkModuleIndex:I

.field private networkModules:[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

.field private receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

.field private sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

.field private stoppingComms:Z

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    const-string v0, "${project.version}"

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->VERSION:Ljava/lang/String;

    .line 46
    const-string v0, "L${build.level}"

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->BUILD_LEVEL:Ljava/lang/String;

    .line 47
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_c
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.ClientComms"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_25

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->class$0:Ljava/lang/Class;

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    .line 48
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 54
    return-void

    .line 47
    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V
    .registers 10
    .param p1, "client"    # Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
    .param p2, "persistence"    # Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .param p3, "pingSender"    # Lorg/eclipse/paho/client/mqttv3/MqttPingSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->stoppingComms:Z

    .line 69
    iput-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->closePending:Z

    .line 78
    iput-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 79
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    .line 80
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 81
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    .line 82
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v0, p0}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->init(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    .line 84
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 85
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 86
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    move-object v1, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 88
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->setClientState(Lorg/eclipse/paho/client/mqttv3/internal/ClientState;)V

    .line 89
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-object v0
.end method

.method static access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    return-object v0
.end method

.method static access$2(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    return-object v0
.end method

.method static access$3(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModules:[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    return-object v0
.end method

.method static access$4(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModuleIndex:I

    return v0
.end method

.method static access$5(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    return-object v0
.end method

.method static access$6(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    return-void
.end method

.method static access$7(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    return-object v0
.end method

.method static access$8(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    return-void
.end method

.method static access$9(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    return-object v0
.end method

.method private handleOldTokens(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 12
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p2, "reason"    # Lorg/eclipse/paho/client/mqttv3/MqttException;

    .prologue
    .line 376
    const-string v0, "handleOldTokens"

    .line 378
    .local v0, "methodName":Ljava/lang/String;
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleOldTokens"

    const-string v8, "222"

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v2, 0x0

    .line 384
    .local v2, "tokToNotifyLater":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    if-eqz p1, :cond_29

    .line 385
    :try_start_10
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v6, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v5

    if-nez v5, :cond_29

    .line 386
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v6, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/String;)V

    .line 390
    :cond_29
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v5, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->resolveOldTokens(Lorg/eclipse/paho/client/mqttv3/MqttException;)Ljava/util/Vector;

    move-result-object v3

    .line 391
    .local v3, "toksToNot":Ljava/util/Vector;
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 392
    .local v4, "toksToNotE":Ljava/util/Enumeration;
    :goto_33
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 409
    .end local v3    # "toksToNot":Ljava/util/Vector;
    .end local v4    # "toksToNotE":Ljava/util/Enumeration;
    :goto_39
    return-object v2

    .line 393
    .restart local v3    # "toksToNot":Ljava/util/Vector;
    .restart local v4    # "toksToNotE":Ljava/util/Enumeration;
    :cond_3a
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 395
    .local v1, "tok":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    iget-object v5, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Disc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 396
    iget-object v5, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Con"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 398
    :cond_5c
    move-object v2, v1

    .line 399
    goto :goto_33

    .line 403
    :cond_5e
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->asyncOperationComplete(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_63} :catch_64

    goto :goto_33

    .line 406
    .end local v1    # "tok":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .end local v3    # "toksToNot":Ljava/util/Vector;
    .end local v4    # "toksToNotE":Ljava/util/Enumeration;
    :catch_64
    move-exception v5

    goto :goto_39
.end method

.method private handleRunException(Ljava/lang/Exception;)V
    .registers 10
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x0

    .line 670
    const-string v6, "handleRunException"

    .line 672
    .local v6, "methodName":Ljava/lang/String;
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 674
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_1e

    .line 675
    new-instance v7, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v0, 0x7d6d

    invoke-direct {v7, v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    .line 680
    .local v7, "mex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :goto_1a
    invoke-virtual {p0, v4, v7}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 681
    return-void

    .end local v7    # "mex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_1e
    move-object v7, p1

    .line 677
    check-cast v7, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .restart local v7    # "mex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    goto :goto_1a
.end method


# virtual methods
.method public checkForActivity()Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 4

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 660
    .local v1, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkForActivity()Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :try_end_6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_d

    move-result-object v1

    .line 666
    :goto_7
    return-object v1

    .line 661
    :catch_8
    move-exception v0

    .line 662
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->handleRunException(Ljava/lang/Exception;)V

    goto :goto_7

    .line 663
    .end local v0    # "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_d
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->handleRunException(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v0, "close"

    .line 156
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isClosed()Z

    move-result v1

    if-nez v1, :cond_68

    .line 159
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnected()Z

    move-result v1

    if-nez v1, :cond_45

    .line 161
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "close"

    const-string v5, "224"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 164
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v3, 0x7d6e

    invoke-direct {v1, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 156
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v1

    .line 165
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 166
    const/16 v1, 0x7d64

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 167
    :cond_3a
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->closePending:Z

    .line 169
    monitor-exit v2

    .line 188
    :goto_44
    return-void

    .line 173
    :cond_45
    const/4 v1, 0x4

    iput-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 176
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->close()V

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModules:[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 156
    :cond_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_2d .. :try_end_69} :catchall_2a

    goto :goto_44
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 15
    .param p1, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .param p2, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v10, "connect"

    .line 197
    .local v10, "methodName":Ljava/lang/String;
    iget-object v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v11

    .line 198
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnected()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->closePending:Z

    if-nez v1, :cond_68

    .line 200
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "connect"

    const-string v4, "214"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x1

    iput-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 204
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 206
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v2

    .line 208
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v3

    .line 209
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v4

    .line 210
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getPassword()[C

    move-result-object v6

    .line 212
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v7

    .line 213
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillDestination()Ljava/lang/String;

    move-result-object v8

    .line 206
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;-><init>(Ljava/lang/String;IZILjava/lang/String;[CLorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/String;)V

    .line 215
    .local v0, "connect":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->setKeepAliveSecs(J)V

    .line 216
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->setCleanSession(Z)V

    .line 218
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->open()V

    .line 219
    new-instance v9, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;

    invoke-direct {v9, p0, p0, p2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;)V

    .line 220
    .local v9, "conbg":Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;
    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->start()V

    .line 197
    monitor-exit v11

    .line 236
    return-void

    .line 224
    .end local v0    # "connect":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;
    .end local v9    # "conbg":Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;
    :cond_68
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "connect"

    const-string v4, "207"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Byte;

    iget-byte v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    invoke-direct {v7, v8}, Ljava/lang/Byte;-><init>(B)V

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8a

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->closePending:Z

    if-eqz v1, :cond_95

    .line 226
    :cond_8a
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d6f

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 197
    :catchall_92
    move-exception v1

    monitor-exit v11
    :try_end_94
    .catchall {:try_start_5 .. :try_end_94} :catchall_92

    throw v1

    .line 227
    :cond_95
    :try_start_95
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 228
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d6e

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 229
    :cond_a3
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 230
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d66

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 232
    :cond_b1
    const/16 v1, 0x7d64

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1
    :try_end_b8
    .catchall {:try_start_95 .. :try_end_b8} :catchall_92
.end method

.method public connectComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 12
    .param p1, "cack"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;
    .param p2, "mex"    # Lorg/eclipse/paho/client/mqttv3/MqttException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 239
    const-string v0, "connectComplete"

    .line 240
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v1

    .line 241
    .local v1, "rc":I
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    if-nez v1, :cond_1c

    .line 245
    :try_start_c
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "connectComplete"

    const-string v6, "215"

    invoke-interface {v2, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v2, 0x0

    iput-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 248
    monitor-exit v3

    return-void

    .line 241
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_33

    .line 253
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "connectComplete"

    const-string v5, "204"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v8

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    throw p2

    .line 241
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method protected deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .registers 3
    .param p1, "msg"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 520
    return-void
.end method

.method public disconnect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;JLorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 13
    .param p1, "disconnect"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;
    .param p2, "quiesceTimeout"    # J
    .param p4, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 413
    const-string v0, "disconnect"

    .line 414
    .local v0, "methodName":Ljava/lang/String;
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v7

    .line 415
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 417
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "disconnect"

    const-string v5, "223"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v2, 0x7d6f

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 414
    :catchall_1d
    move-exception v2

    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v2

    .line 419
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 421
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "disconnect"

    const-string v5, "211"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/16 v2, 0x7d65

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 423
    :cond_38
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 425
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "disconnect"

    const-string v5, "219"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/16 v2, 0x7d66

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 427
    :cond_50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_6e

    .line 429
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "disconnect"

    const-string v5, "210"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/16 v2, 0x7d6b

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 435
    :cond_6e
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "disconnect"

    const-string v5, "218"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v2, 0x2

    iput-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 437
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;JLorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 438
    .local v1, "discbg":Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$DisconnectBG;->start()V

    .line 414
    monitor-exit v7
    :try_end_89
    .catchall {:try_start_20 .. :try_end_89} :catchall_1d

    .line 440
    return-void
.end method

.method public disconnectForcibly(JJ)V
    .registers 10
    .param p1, "quiesceTimeout"    # J
    .param p3, "disconnectTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 447
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesce(J)V

    .line 448
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :try_start_11
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;-><init>()V

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 454
    invoke-virtual {v0, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->waitForCompletion(J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_25
    .catchall {:try_start_11 .. :try_end_1c} :catchall_2f

    .line 460
    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v1, v3, v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 461
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 463
    :goto_24
    return-void

    .line 456
    :catch_25
    move-exception v1

    .line 460
    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v1, v3, v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 461
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_24

    .line 459
    :catchall_2f
    move-exception v1

    .line 460
    iget-object v2, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v2, v3, v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 461
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 462
    throw v1
.end method

.method public getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->client:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    return-object v0
.end method

.method public getClientState()Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    return-object v0
.end method

.method public getConOptions()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    return-object v0
.end method

.method public getDebug()Ljava/util/Properties;
    .registers 5

    .prologue
    .line 539
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 540
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "conState"

    new-instance v2, Ljava/lang/Integer;

    iget-byte v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "serverURI"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getServerURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "callback"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v1, "stoppingComms"

    new-instance v2, Ljava/lang/Boolean;

    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->stoppingComms:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-object v0
.end method

.method public getKeepAlive()J
    .registers 3

    .prologue
    .line 527
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getKeepAlive()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkModuleIndex()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModuleIndex:I

    return v0
.end method

.method public getNetworkModules()[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModules:[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getOutstandingDelTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method getReceiver()Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    return-object v0
.end method

.method protected getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .registers 3
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 501
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    return-object v0
.end method

.method internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 15
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .param p2, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 104
    const-string v1, "internalSend"

    .line 106
    .local v1, "methodName":Ljava/lang/String;
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "internalSend"

    const-string v5, "200"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    if-nez v2, :cond_32

    .line 110
    iget-object v2, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setClient(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V

    .line 121
    :try_start_2c
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_31
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2c .. :try_end_31} :catch_51

    .line 128
    return-void

    .line 114
    :cond_32
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "internalSend"

    const-string v5, "213"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v3, 0x7dc9

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v2

    .line 122
    :catch_51
    move-exception v0

    .line 123
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v2, :cond_5d

    .line 124
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .end local p1    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->undo(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 126
    :cond_5d
    throw v0
.end method

.method public isClosed()Z
    .registers 4

    .prologue
    .line 490
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 490
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 466
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 466
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isConnecting()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 472
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_4
    iget-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    if-ne v2, v0, :cond_a

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 472
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isDisconnected()Z
    .registers 4

    .prologue
    .line 478
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 478
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isDisconnecting()Z
    .registers 4

    .prologue
    .line 484
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 484
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 8
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .param p2, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "sendNoWait"

    .line 136
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 137
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v1

    if-nez v1, :cond_12

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-nez v1, :cond_1c

    .line 138
    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_20

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v1, :cond_20

    .line 139
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 145
    return-void

    .line 142
    :cond_20
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "sendNoWait"

    const-string v4, "208"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v1, 0x7d68

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .registers 3
    .param p1, "mqttCallback"    # Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    .prologue
    .line 497
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 498
    return-void
.end method

.method public setNetworkModuleIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 504
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModuleIndex:I

    .line 505
    return-void
.end method

.method public setNetworkModules([Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;)V
    .registers 2
    .param p1, "networkModules"    # [Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    .prologue
    .line 513
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModules:[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    .line 514
    return-void
.end method

.method public shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 14
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p2, "reason"    # Lorg/eclipse/paho/client/mqttv3/MqttException;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 265
    const-string v1, "shutdownConnection"

    .line 267
    .local v1, "methodName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 271
    .local v0, "endToken":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v7

    .line 272
    :try_start_8
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->stoppingComms:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->closePending:Z

    if-eqz v4, :cond_12

    .line 273
    :cond_10
    monitor-exit v7

    .line 368
    :goto_11
    return-void

    .line 275
    :cond_12
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->stoppingComms:Z

    .line 278
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v8, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "shutdownConnection"

    const-string v10, "216"

    invoke-interface {v4, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v4

    if-nez v4, :cond_ce

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v4

    if-nez v4, :cond_ce

    move v3, v6

    .line 281
    .local v3, "wasConnected":Z
    :goto_2d
    const/4 v4, 0x2

    iput-byte v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 271
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_d1

    .line 286
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 287
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4, p2}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 292
    :cond_3e
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    if-eqz v4, :cond_47

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->stop()V

    .line 296
    :cond_47
    :try_start_47
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModules:[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    if-eqz v4, :cond_56

    .line 297
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModules:[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModuleIndex:I

    aget-object v2, v4, v7

    .line 298
    .local v2, "networkModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    if-eqz v2, :cond_56

    .line 299
    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->stop()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_e1

    .line 307
    .end local v2    # "networkModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    :cond_56
    :goto_56
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->stop()V

    .line 310
    :cond_5f
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    new-instance v7, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v8, 0x7d66

    invoke-direct {v7, v8}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    invoke-virtual {v4, v7}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->quiesce(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 315
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->handleOldTokens(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v0

    .line 319
    :try_start_6f
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v4, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->disconnected(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_df

    .line 324
    :goto_74
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->stop()V

    .line 326
    :cond_7d
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    if-eqz v4, :cond_86

    .line 327
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v4}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->stop()V

    .line 331
    :cond_86
    :try_start_86
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_dd

    .line 337
    :cond_8f
    :goto_8f
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v7

    .line 339
    :try_start_92
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v8, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "shutdownConnection"

    const-string v10, "217"

    invoke-interface {v4, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x3

    iput-byte v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conState:B

    .line 342
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->stoppingComms:Z

    .line 337
    monitor-exit v7
    :try_end_a4
    .catchall {:try_start_92 .. :try_end_a4} :catchall_d4

    .line 350
    if-eqz v0, :cond_d7

    move v4, v5

    :goto_a7
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    if-eqz v7, :cond_d9

    :goto_ab
    and-int/2addr v4, v5

    if-eqz v4, :cond_b3

    .line 351
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->asyncOperationComplete(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 354
    :cond_b3
    if-eqz v3, :cond_be

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    if-eqz v4, :cond_be

    .line 356
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v4, p2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->connectionLost(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 360
    :cond_be
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->conLock:Ljava/lang/Object;

    monitor-enter v5

    .line 361
    :try_start_c1
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->closePending:Z
    :try_end_c3
    .catchall {:try_start_c1 .. :try_end_c3} :catchall_cb

    if-eqz v4, :cond_c8

    .line 363
    :try_start_c5
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_db
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_cb

    .line 360
    :cond_c8
    :goto_c8
    :try_start_c8
    monitor-exit v5

    goto/16 :goto_11

    :catchall_cb
    move-exception v4

    monitor-exit v5
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_cb

    throw v4

    .end local v3    # "wasConnected":Z
    :cond_ce
    move v3, v5

    .line 280
    goto/16 :goto_2d

    .line 271
    :catchall_d1
    move-exception v4

    :try_start_d2
    monitor-exit v7
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v4

    .line 337
    .restart local v3    # "wasConnected":Z
    :catchall_d4
    move-exception v4

    :try_start_d5
    monitor-exit v7
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v4

    :cond_d7
    move v4, v6

    .line 350
    goto :goto_a7

    :cond_d9
    move v5, v6

    goto :goto_ab

    .line 364
    :catch_db
    move-exception v4

    goto :goto_c8

    .line 332
    :catch_dd
    move-exception v4

    goto :goto_8f

    .line 320
    :catch_df
    move-exception v4

    goto :goto_74

    .line 302
    :catch_e1
    move-exception v4

    goto/16 :goto_56
.end method
