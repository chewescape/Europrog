.class public Lcom/idelan/MQTT/MQTTManager;
.super Ljava/lang/Object;
.source "MQTTManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static instance:Lcom/idelan/MQTT/MQTTManager;


# instance fields
.field private client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

.field private handler:Landroid/os/Handler;

.field private mqttBean:Lcom/idelan/bean/MQTTBean;

.field private mqttListener:Lcom/idelan/MQTT/MQTTListener;

.field private options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/idelan/MQTT/MQTTManager$1;

    invoke-direct {v0, p0}, Lcom/idelan/MQTT/MQTTManager$1;-><init>(Lcom/idelan/MQTT/MQTTManager;)V

    iput-object v0, p0, Lcom/idelan/MQTT/MQTTManager;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/bean/MQTTBean;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager;->mqttBean:Lcom/idelan/bean/MQTTBean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/idelan/MQTT/MQTTManager;)V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/idelan/MQTT/MQTTManager;->initMQTT()V

    return-void
.end method

.method static synthetic access$2(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/MQTT/MQTTListener;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager;->mqttListener:Lcom/idelan/MQTT/MQTTListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/idelan/MQTT/MQTTManager;Lcom/idelan/bean/MQTTBean;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/idelan/MQTT/MQTTManager;->mqttBean:Lcom/idelan/bean/MQTTBean;

    return-void
.end method

.method static synthetic access$4(Lcom/idelan/MQTT/MQTTManager;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/idelan/MQTT/MQTTManager;)Lorg/eclipse/paho/client/mqttv3/MqttClient;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    return-object v0
.end method

.method static synthetic access$6(Lcom/idelan/MQTT/MQTTManager;)Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    return-object v0
.end method

.method private connect()V
    .registers 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/idelan/MQTT/MQTTManager$4;

    invoke-direct {v1, p0}, Lcom/idelan/MQTT/MQTTManager$4;-><init>(Lcom/idelan/MQTT/MQTTManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    return-void
.end method

.method public static getInstance()Lcom/idelan/MQTT/MQTTManager;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/idelan/MQTT/MQTTManager;->instance:Lcom/idelan/MQTT/MQTTManager;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/idelan/MQTT/MQTTManager;

    invoke-direct {v0}, Lcom/idelan/MQTT/MQTTManager;-><init>()V

    sput-object v0, Lcom/idelan/MQTT/MQTTManager;->instance:Lcom/idelan/MQTT/MQTTManager;

    .line 40
    :cond_b
    sget-object v0, Lcom/idelan/MQTT/MQTTManager;->instance:Lcom/idelan/MQTT/MQTTManager;

    return-object v0
.end method

.method private initMQTT()V
    .registers 6

    .prologue
    .line 181
    :try_start_0
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tcp://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idelan/MQTT/MQTTManager;->mqttBean:Lcom/idelan/bean/MQTTBean;

    invoke-virtual {v3}, Lcom/idelan/bean/MQTTBean;->getServerAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/idelan/MQTT/MQTTManager;->mqttBean:Lcom/idelan/bean/MQTTBean;

    invoke-virtual {v3}, Lcom/idelan/bean/MQTTBean;->getToken()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    .line 181
    iput-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 184
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    iput-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 186
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 188
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    iget-object v2, p0, Lcom/idelan/MQTT/MQTTManager;->mqttBean:Lcom/idelan/bean/MQTTBean;

    invoke-virtual {v2}, Lcom/idelan/bean/MQTTBean;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setUserName(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    iget-object v2, p0, Lcom/idelan/MQTT/MQTTManager;->mqttBean:Lcom/idelan/bean/MQTTBean;

    invoke-virtual {v2}, Lcom/idelan/bean/MQTTBean;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setPassword([C)V

    .line 192
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 194
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    .line 196
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    new-instance v2, Lcom/idelan/MQTT/MQTTManager$3;

    invoke-direct {v2, p0}, Lcom/idelan/MQTT/MQTTManager$3;-><init>(Lcom/idelan/MQTT/MQTTManager;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 219
    invoke-direct {p0}, Lcom/idelan/MQTT/MQTTManager;->connect()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    .line 223
    :goto_69
    return-void

    .line 220
    :catch_6a
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method


# virtual methods
.method public closeMQTT()V
    .registers 3

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V
    :try_end_5
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_5} :catch_6

    .line 160
    :goto_5
    return-void

    .line 156
    :catch_6
    move-exception v0

    .line 158
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_5
.end method

.method public openMQTT(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/MQTT/MQTTListener;)V
    .registers 12
    .param p1, "sdk"    # Lcom/idelan/DeLanSDK/DeLanSDK;
    .param p2, "appId"    # I
    .param p3, "listener"    # Lcom/idelan/MQTT/MQTTListener;

    .prologue
    .line 54
    iput-object p3, p0, Lcom/idelan/MQTT/MQTTManager;->mqttListener:Lcom/idelan/MQTT/MQTTListener;

    .line 55
    const-string v1, "/push/mqtt/param"

    .line 56
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "mqttparam"

    .line 57
    .local v2, "funcName":Ljava/lang/String;
    const-string v0, "appId=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "uriParams":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v4, "dataDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "KeepAlive"

    const-string v5, "60"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v5, 0x0

    .line 61
    new-instance v6, Lcom/idelan/MQTT/MQTTManager$2;

    invoke-direct {v6, p0}, Lcom/idelan/MQTT/MQTTManager$2;-><init>(Lcom/idelan/MQTT/MQTTManager;)V

    move-object v0, p1

    .line 60
    invoke-virtual/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK;->commonSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BLcom/idelan/DeLanSDK/ResponseMethod;)V

    .line 82
    return-void
.end method

.method public subscribeMQTTWithDevSN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "devSN"    # Ljava/lang/String;
    .param p2, "subSN"    # Ljava/lang/String;
    .param p3, "brandID"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {p2}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 101
    invoke-static {p3}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 102
    invoke-static {p4}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 116
    :cond_18
    :goto_18
    return-void

    .line 106
    :cond_19
    const-string v2, "/%s@idelan.cn/+/app/+/%s/push/sn/%s/%s/dev_service/status"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 107
    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 105
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "topic":Ljava/lang/String;
    const-string v2, "unsubscribeMQTTWithDevSN"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_33
    iget-object v2, p0, Lcom/idelan/MQTT/MQTTManager;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe(Ljava/lang/String;)V
    :try_end_38
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_18

    .line 112
    :catch_39
    move-exception v0

    .line 114
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_18
.end method

.method public unsubscribeMQTTWithDevSN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "devSN"    # Ljava/lang/String;
    .param p2, "subSN"    # Ljava/lang/String;
    .param p3, "brandID"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {p2}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 133
    invoke-static {p3}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 134
    invoke-static {p4}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 148
    :cond_18
    :goto_18
    return-void

    .line 138
    :cond_19
    const-string v2, "/%s@idelan.cn/+/app/+/%s/push/sn/%s/%s/dev_service/status"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 139
    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 137
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "topic":Ljava/lang/String;
    const-string v2, "unsubscribeMQTTWithDevSN"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_33
    iget-object v2, p0, Lcom/idelan/MQTT/MQTTManager;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->unsubscribe(Ljava/lang/String;)V
    :try_end_38
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_18

    .line 144
    :catch_39
    move-exception v0

    .line 146
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_18
.end method
