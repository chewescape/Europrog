.class public Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;
.super Ljava/lang/Object;
.source "ConnectActionListener.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# instance fields
.field private client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field private comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private originalMqttVersion:I

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

.field private userContext:Ljava/lang/Object;

.field private userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .registers 9
    .param p1, "client"    # Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;
    .param p2, "persistence"    # Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .param p3, "comms"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .param p4, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .param p5, "userToken"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p6, "userContext"    # Ljava/lang/Object;
    .param p7, "userCallback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 65
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    .line 66
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 67
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 68
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 69
    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userContext:Ljava/lang/Object;

    .line 70
    iput-object p7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 71
    invoke-virtual {p4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    .line 72
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 153
    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 155
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getServerURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 158
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->clear()V

    .line 161
    :cond_2f
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v2

    if-nez v2, :cond_3d

    .line 162
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 166
    :cond_3d
    :try_start_3d
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_44
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_3d .. :try_end_44} :catch_45

    .line 171
    :goto_44
    return-void

    .line 168
    :catch_45
    move-exception v0

    .line 169
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_44
.end method

.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x4

    .line 101
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModules()[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v4

    array-length v3, v4

    .line 102
    .local v3, "numberOfURIs":I
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModuleIndex()I

    move-result v2

    .line 104
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x1

    if-lt v4, v3, :cond_1e

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v4, :cond_4e

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v4

    if-ne v4, v5, :cond_4e

    .line 106
    :cond_1e
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v4, :cond_41

    .line 107
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v4

    if-ne v4, v5, :cond_34

    .line 108
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 119
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->connect()V
    :try_end_33
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_30 .. :try_end_33} :catch_49

    .line 144
    :cond_33
    :goto_33
    return-void

    .line 111
    :cond_34
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 112
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setNetworkModuleIndex(I)V

    goto :goto_30

    .line 116
    :cond_41
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setNetworkModuleIndex(I)V

    goto :goto_30

    .line 121
    :catch_49
    move-exception v0

    .line 122
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 126
    .end local v0    # "e":Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    :cond_4e
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v4, :cond_58

    .line 127
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 130
    :cond_58
    instance-of v4, p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v4, :cond_81

    move-object v1, p2

    .line 131
    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 136
    .local v1, "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :goto_5f
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v4, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 137
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v4, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notifyComplete()V

    .line 139
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v4, :cond_33

    .line 140
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userContext:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 141
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-interface {v4, v5, p2}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 134
    .end local v1    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_81
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    .restart local v1    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    goto :goto_5f
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .registers 5
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .prologue
    .line 80
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v0, :cond_a

    .line 81
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 83
    :cond_a
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getResponse()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 84
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notifyComplete()V

    .line 86
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v0, :cond_2f

    .line 87
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userContext:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    .line 90
    :cond_2f
    return-void
.end method
