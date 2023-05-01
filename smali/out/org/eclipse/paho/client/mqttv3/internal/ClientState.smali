.class public Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
.super Ljava/lang/Object;
.source "ClientState.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final DEFAULT_MAX_INFLIGHT:I = 0xa

.field private static final MAX_MSG_ID:I = 0xffff

.field private static final MIN_MSG_ID:I = 0x1

.field private static final PERSISTENCE_CONFIRMED_PREFIX:Ljava/lang/String; = "sc-"

.field private static final PERSISTENCE_RECEIVED_PREFIX:Ljava/lang/String; = "r-"

.field private static final PERSISTENCE_SENT_PREFIX:Ljava/lang/String; = "s-"

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private actualInFlight:I

.field private callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

.field private cleanSession:Z

.field private clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private connected:Z

.field private inFlightPubRels:I

.field private inUseMsgIds:Ljava/util/Hashtable;

.field private inboundQoS2:Ljava/util/Hashtable;

.field private keepAlive:J

.field private lastInboundActivity:J

.field private lastOutboundActivity:J

.field private lastPing:J

.field private maxInflight:I

.field private nextMsgId:I

.field private outboundQoS1:Ljava/util/Hashtable;

.field private outboundQoS2:Ljava/util/Hashtable;

.field private volatile pendingFlows:Ljava/util/Vector;

.field private volatile pendingMessages:Ljava/util/Vector;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

.field private pingOutstanding:I

.field private pingOutstandingLock:Ljava/lang/Object;

.field private pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

.field private queueLock:Ljava/lang/Object;

.field private quiesceLock:Ljava/lang/Object;

.field private quiescing:Z

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.ClientState"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    .line 92
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 99
    return-void

    .line 91
    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V
    .registers 11
    .param p1, "persistence"    # Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .param p2, "tokenStore"    # Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;
    .param p3, "callback"    # Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;
    .param p4, "clientComms"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .param p5, "pingSender"    # Lorg/eclipse/paho/client/mqttv3/MqttPingSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 107
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 108
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 113
    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    .line 114
    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 115
    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    .line 119
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    .line 121
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    .line 122
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    .line 123
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastPing:J

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstandingLock:Ljava/lang/Object;

    .line 126
    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    .line 128
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    .line 130
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    .line 131
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    .line 132
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    .line 134
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    .line 139
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "<Init>"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    .line 143
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    .line 144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    .line 145
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    .line 146
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    .line 147
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    .line 148
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 149
    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 150
    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 152
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 153
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 154
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 155
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 156
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    .line 158
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreState()V

    .line 159
    return-void
.end method

.method private decrementInFlight()V
    .registers 11

    .prologue
    .line 792
    const-string v0, "decrementInFlight"

    .line 793
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 794
    :try_start_5
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 796
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "decrementInFlight"

    const-string v5, "646"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 799
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 793
    :cond_2e
    monitor-exit v2

    .line 802
    return-void

    .line 793
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private declared-synchronized getNextMessageId()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 1131
    monitor-enter p0

    :try_start_1
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 1134
    .local v2, "startingMessageId":I
    const/4 v1, 0x0

    .line 1136
    .local v1, "loopCount":I
    :cond_4
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 1137
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    const v4, 0xffff

    if-le v3, v4, :cond_14

    .line 1138
    const/4 v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 1140
    :cond_14
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    if-ne v3, v2, :cond_27

    .line 1141
    add-int/lit8 v1, v1, 0x1

    .line 1142
    const/4 v3, 0x2

    if-ne v1, v3, :cond_27

    .line 1143
    const/16 v3, 0x7d01

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v3

    throw v3
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_24

    .line 1131
    .end local v1    # "loopCount":I
    .end local v2    # "startingMessageId":I
    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1146
    .restart local v1    # "loopCount":I
    .restart local v2    # "startingMessageId":I
    :cond_27
    :try_start_27
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1147
    new-instance v0, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1148
    .local v0, "id":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_24

    monitor-exit p0

    return v3
.end method

.method private getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;
    .registers 4
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "r-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;
    .registers 4
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "sc-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;
    .registers 4
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "s-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .registers 8
    .param p1, "list"    # Ljava/util/Vector;
    .param p2, "newMsg"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .prologue
    .line 229
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    .line 230
    .local v1, "newMsgId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_f

    .line 238
    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 239
    :goto_e
    return-void

    .line 231
    :cond_f
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 232
    .local v2, "otherMsg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v3

    .line 233
    .local v3, "otherMsgId":I
    if-le v3, v1, :cond_1f

    .line 234
    invoke-virtual {p1, p2, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_e

    .line 230
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private reOrder(Ljava/util/Vector;)Ljava/util/Vector;
    .registers 11
    .param p1, "list"    # Ljava/util/Vector;

    .prologue
    .line 250
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 252
    .local v6, "newList":Ljava/util/Vector;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_c

    .line 285
    :cond_b
    return-object v6

    .line 256
    :cond_c
    const/4 v7, 0x0

    .line 257
    .local v7, "previousMsgId":I
    const/4 v3, 0x0

    .line 258
    .local v3, "largestGap":I
    const/4 v4, 0x0

    .line 259
    .local v4, "largestGapMsgIdPosInList":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_3e

    .line 267
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v5

    .line 268
    .local v5, "lowestMsgId":I
    move v1, v7

    .line 271
    .local v1, "highestMsgId":I
    const v8, 0xffff

    sub-int/2addr v8, v1

    add-int/2addr v8, v5

    if-le v8, v3, :cond_2a

    .line 272
    const/4 v4, 0x0

    .line 276
    :cond_2a
    move v2, v4

    :goto_2b
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_53

    .line 281
    const/4 v2, 0x0

    :goto_32
    if-ge v2, v4, :cond_b

    .line 282
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 260
    .end local v1    # "highestMsgId":I
    .end local v5    # "lowestMsgId":I
    :cond_3e
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v0

    .line 261
    .local v0, "currentMsgId":I
    sub-int v8, v0, v7

    if-le v8, v3, :cond_4f

    .line 262
    sub-int v3, v0, v7

    .line 263
    move v4, v2

    .line 265
    :cond_4f
    move v7, v0

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 277
    .end local v0    # "currentMsgId":I
    .restart local v1    # "highestMsgId":I
    .restart local v5    # "lowestMsgId":I
    :cond_53
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b
.end method

.method private declared-synchronized releaseMessageId(I)V
    .registers 4
    .param p1, "msgId"    # I

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1122
    monitor-exit p0

    return-void

    .line 1121
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreInflightMessages()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 373
    const-string v2, "restoreInflightMessages"

    .line 374
    .local v2, "methodName":Ljava/lang/String;
    new-instance v4, Ljava/util/Vector;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    .line 375
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    .line 377
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 378
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 394
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 395
    :goto_26
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_82

    .line 405
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->reOrder(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    .line 406
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->reOrder(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    .line 407
    return-void

    .line 379
    :cond_3d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, "key":Ljava/lang/Object;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 381
    .local v3, "msg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    instance-of v4, v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v4, :cond_67

    .line 383
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "restoreInflightMessages"

    const-string v7, "610"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-virtual {v3, v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->setDuplicate(Z)V

    .line 386
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .end local v3    # "msg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-direct {p0, v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    goto :goto_1a

    .line 387
    .restart local v3    # "msg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_67
    instance-of v4, v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v4, :cond_1a

    .line 389
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "restoreInflightMessages"

    const-string v7, "611"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    .end local v3    # "msg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-direct {p0, v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    goto :goto_1a

    .line 396
    .end local v0    # "key":Ljava/lang/Object;
    :cond_82
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 397
    .restart local v0    # "key":Ljava/lang/Object;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 398
    .local v3, "msg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    invoke-virtual {v3, v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->setDuplicate(Z)V

    .line 400
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "restoreInflightMessages"

    const-string v7, "612"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-direct {p0, v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    goto :goto_26
.end method

.method private restoreMessage(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .registers 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "persistable"    # Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    const-string v7, "restoreMessage"

    .line 200
    .local v7, "methodName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 203
    .local v6, "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :try_start_5
    invoke-static {p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->createWireMessage(Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :try_end_8
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_5 .. :try_end_8} :catch_1c

    move-result-object v6

    .line 219
    :cond_9
    :goto_9
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "restoreMessage"

    const-string v3, "601"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v8

    aput-object v6, v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return-object v6

    .line 205
    :catch_1c
    move-exception v5

    .line 207
    .local v5, "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "restoreMessage"

    const-string v3, "602"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 208
    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_3c

    .line 210
    if-eqz p1, :cond_9

    .line 211
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto :goto_9

    .line 215
    :cond_3c
    throw v5
.end method


# virtual methods
.method public checkForActivity()Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 530
    const-string v3, "checkForActivity"

    .line 532
    .local v3, "methodName":Ljava/lang/String;
    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v11, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v12, "checkForActivity"

    const-string v13, "616"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12, v13, v14}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    monitor-enter v11

    .line 537
    :try_start_15
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    if-eqz v10, :cond_1e

    .line 538
    monitor-exit v11

    const/4 v8, 0x0

    .line 614
    :cond_1d
    :goto_1d
    return-object v8

    .line 534
    :cond_1e
    monitor-exit v11
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_b7

    .line 542
    const/4 v8, 0x0

    .line 543
    .local v8, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getKeepAlive()J

    move-result-wide v4

    .line 545
    .local v4, "nextPingTime":J
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    if-eqz v10, :cond_1d

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1d

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 549
    .local v6, "time":J
    const/16 v2, 0x64

    .line 552
    .local v2, "delta":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstandingLock:Ljava/lang/Object;

    monitor-enter v11

    .line 555
    :try_start_3f
    move-object/from16 v0, p0

    iget v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    if-lez v10, :cond_ba

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    sub-long v12, v6, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    cmp-long v10, v12, v14

    if-ltz v10, :cond_ba

    .line 560
    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v12, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v13, "checkForActivity"

    const-string v14, "619"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x3

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x4

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastPing:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    invoke-interface {v10, v12, v13, v14, v15}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    const/16 v10, 0x7d00

    invoke-static {v10}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v10

    throw v10

    .line 552
    :catchall_b4
    move-exception v10

    :goto_b5
    monitor-exit v11
    :try_end_b6
    .catchall {:try_start_3f .. :try_end_b6} :catchall_b4

    throw v10

    .line 534
    .end local v2    # "delta":I
    .end local v4    # "nextPingTime":J
    .end local v6    # "time":J
    .end local v8    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :catchall_b7
    move-exception v10

    :try_start_b8
    monitor-exit v11
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v10

    .line 568
    .restart local v2    # "delta":I
    .restart local v4    # "nextPingTime":J
    .restart local v6    # "time":J
    .restart local v8    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :cond_ba
    :try_start_ba
    move-object/from16 v0, p0

    iget v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    if-nez v10, :cond_130

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    sub-long v12, v6, v12

    const-wide/16 v14, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    cmp-long v10, v12, v14

    if-ltz v10, :cond_130

    .line 571
    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v12, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v13, "checkForActivity"

    const-string v14, "642"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x3

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x4

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastPing:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    invoke-interface {v10, v12, v13, v14, v15}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    const/16 v10, 0x7d02

    invoke-static {v10}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v10

    throw v10

    .line 587
    :cond_130
    move-object/from16 v0, p0

    iget v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    if-nez v10, :cond_149

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    sub-long v12, v6, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    int-to-long v0, v2

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    cmp-long v10, v12, v14

    if-gez v10, :cond_15c

    .line 588
    :cond_149
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    sub-long v12, v6, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    int-to-long v0, v2

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    cmp-long v10, v12, v14

    if-ltz v10, :cond_1e9

    .line 591
    :cond_15c
    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v12, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v13, "checkForActivity"

    const-string v14, "620"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    invoke-interface {v10, v12, v13, v14, v15}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    new-instance v9, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v10}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v10

    invoke-interface {v10}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V
    :try_end_1a8
    .catchall {:try_start_ba .. :try_end_1a8} :catchall_b4

    .line 596
    .end local v8    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .local v9, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :try_start_1a8
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    invoke-virtual {v10, v9, v12}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getKeepAlive()J

    move-result-wide v4

    .line 602
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyQueueLock()V
    :try_end_1c6
    .catchall {:try_start_1a8 .. :try_end_1c6} :catchall_20a

    move-object v8, v9

    .line 552
    .end local v9    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .restart local v8    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :goto_1c7
    :try_start_1c7
    monitor-exit v11
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_b4

    .line 610
    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v11, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v12, "checkForActivity"

    const-string v13, "624"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v16, v14, v15

    invoke-interface {v10, v11, v12, v13, v14}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v10, v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->schedule(J)V

    goto/16 :goto_1d

    .line 605
    :cond_1e9
    :try_start_1e9
    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v12, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v13, "checkForActivity"

    const-string v14, "634"

    const/4 v15, 0x0

    invoke-interface {v10, v12, v13, v14, v15}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    const-wide/16 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getKeepAlive()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    move-wide/from16 v16, v0

    sub-long v16, v6, v16

    sub-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J
    :try_end_208
    .catchall {:try_start_1e9 .. :try_end_208} :catchall_b4

    move-result-wide v4

    goto :goto_1c7

    .line 552
    .end local v8    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .restart local v9    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :catchall_20a
    move-exception v10

    move-object v8, v9

    .end local v9    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .restart local v8    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    goto/16 :goto_b5
.end method

.method protected checkQuiesceLock()Z
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 805
    const-string v0, "checkQuiesceLock"

    .line 807
    .local v0, "methodName":Ljava/lang/String;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->count()I

    move-result v1

    .line 808
    .local v1, "tokC":I
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    if-eqz v4, :cond_7a

    if-nez v1, :cond_7a

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_7a

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->isQuiesced()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 810
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "checkQuiesceLock"

    const-string v7, "626"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Boolean;

    iget-boolean v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v9, v8, v3

    new-instance v3, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v8, v2

    const/4 v3, 0x2

    new-instance v9, Ljava/lang/Integer;

    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v3

    const/4 v3, 0x3

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v3

    const/4 v3, 0x4

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->isQuiesced()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x5

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 812
    :try_start_70
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 811
    monitor-exit v3

    .line 816
    :goto_76
    return v2

    .line 811
    :catchall_77
    move-exception v2

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_77

    throw v2

    :cond_7a
    move v2, v3

    .line 816
    goto :goto_76
.end method

.method protected clearState()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "clearState"

    .line 186
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "clearState"

    const-string v4, ">"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->clear()V

    .line 189
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 190
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 191
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 192
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 193
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 194
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 195
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->clear()V

    .line 196
    return-void
.end method

.method protected close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1229
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1230
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1231
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1232
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1233
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1234
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1235
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->clear()V

    .line 1236
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    .line 1237
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    .line 1238
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    .line 1239
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    .line 1240
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    .line 1241
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    .line 1242
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 1243
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 1244
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 1245
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 1246
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 1247
    return-void
.end method

.method public connected()V
    .registers 6

    .prologue
    .line 1036
    const-string v0, "connected"

    .line 1038
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "connected"

    const-string v4, "631"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    .line 1041
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingSender:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->start()V

    .line 1042
    return-void
.end method

.method protected deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .registers 11
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 1214
    const-string v0, "deliveryComplete"

    .line 1217
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "deliveryComplete"

    const-string v4, "641"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1219
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    return-void
.end method

.method public disconnected(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 9
    .param p1, "reason"    # Lorg/eclipse/paho/client/mqttv3/MqttException;

    .prologue
    const/4 v6, 0x0

    .line 1092
    const-string v0, "disconnected"

    .line 1094
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "disconnected"

    const-string v4, "633"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1096
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    .line 1099
    :try_start_15
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanSession:Z

    if-eqz v1, :cond_1c

    .line 1100
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clearState()V

    .line 1103
    :cond_1c
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1104
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1105
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstandingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_29
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_15 .. :try_end_29} :catch_31

    .line 1107
    const/4 v1, 0x0

    :try_start_2a
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    .line 1105
    monitor-exit v2

    .line 1112
    :goto_2d
    return-void

    .line 1105
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_2e

    :try_start_30
    throw v1
    :try_end_31
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_30 .. :try_end_31} :catch_31

    .line 1109
    :catch_31
    move-exception v1

    goto :goto_2d
.end method

.method protected get()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 628
    const-string v1, "get"

    .line 629
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 631
    .local v2, "result":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 632
    :cond_6
    :goto_6
    if-eqz v2, :cond_a

    .line 631
    :try_start_8
    monitor-exit v4

    .line 699
    .end local v2    # "result":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :goto_9
    return-object v2

    .line 637
    .restart local v2    # "result":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_a
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    .line 638
    :cond_1a
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_a4

    if-lt v3, v5, :cond_43

    .line 641
    :cond_28
    :try_start_28
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "get"

    const-string v7, "644"

    invoke-interface {v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 646
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "get"

    const-string v7, "647"

    invoke-interface {v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_43} :catch_f3
    .catchall {:try_start_28 .. :try_end_43} :catchall_a4

    .line 654
    :cond_43
    :goto_43
    :try_start_43
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    if-nez v3, :cond_6a

    .line 655
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5c

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    instance-of v3, v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-nez v3, :cond_6a

    .line 657
    :cond_5c
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "get"

    const-string v7, "621"

    invoke-interface {v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    monitor-exit v4

    const/4 v2, 0x0

    goto :goto_9

    .line 669
    :cond_6a
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a7

    .line 671
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-object v2, v0

    .line 672
    instance-of v3, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v3, :cond_9f

    .line 673
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 676
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "get"

    const-string v7, "617"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    iget v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    :cond_9f
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    goto/16 :goto_6

    .line 631
    :catchall_a4
    move-exception v3

    monitor-exit v4
    :try_end_a6
    .catchall {:try_start_43 .. :try_end_a6} :catchall_a4

    throw v3

    .line 680
    :cond_a7
    :try_start_a7
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 683
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    if-ge v3, v5, :cond_e6

    .line 686
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-object v2, v0

    .line 687
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->removeElementAt(I)V

    .line 688
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 691
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "get"

    const-string v7, "623"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    iget v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 694
    :cond_e6
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "get"

    const-string v7, "622"

    invoke-interface {v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_a7 .. :try_end_f1} :catchall_a4

    goto/16 :goto_6

    .line 647
    :catch_f3
    move-exception v3

    goto/16 :goto_43
.end method

.method public getDebug()Ljava/util/Properties;
    .registers 7

    .prologue
    .line 1250
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1251
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "In use msgids"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string v1, "pendingMessages"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const-string v1, "pendingFlows"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const-string v1, "maxInflight"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string v1, "nextMsgID"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    const-string v1, "actualInFlight"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string v1, "inFlightPubRels"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v1, "quiescing"

    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string v1, "pingoutstanding"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const-string v1, "lastOutboundActivity"

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string v1, "lastInboundActivity"

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string v1, "outboundQoS2"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    const-string v1, "outboundQoS1"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const-string v1, "inboundQoS2"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-string v1, "tokens"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    return-object v0
.end method

.method protected getKeepAlive()J
    .registers 3

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    return-wide v0
.end method

.method protected notifyComplete(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 15
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 970
    const-string v2, "notifyComplete"

    .line 972
    .local v2, "methodName":Ljava/lang/String;
    iget-object v3, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v1

    .line 974
    .local v1, "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    if-eqz v1, :cond_76

    instance-of v3, v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v3, :cond_76

    .line 976
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "notifyComplete"

    const-string v6, "629"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 977
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    aput-object p1, v7, v11

    aput-object v1, v7, v12

    .line 976
    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 979
    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .line 981
    .local v0, "ack":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    if-eqz v3, :cond_77

    .line 983
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 984
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementInFlight()V

    .line 986
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->releaseMessageId(I)V

    .line 987
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 989
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "notifyComplete"

    const-string v6, "650"

    .line 990
    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    .line 989
    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    .line 1010
    .end local v0    # "ack":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    :cond_76
    return-void

    .line 991
    .restart local v0    # "ack":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    :cond_77
    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    if-eqz v3, :cond_73

    .line 993
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 994
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 995
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 998
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementInFlight()V

    .line 999
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->releaseMessageId(I)V

    .line 1000
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 1003
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "notifyComplete"

    const-string v6, "645"

    new-array v7, v12, [Ljava/lang/Object;

    .line 1004
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    .line 1005
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v11

    .line 1003
    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_73
.end method

.method public notifyQueueLock()V
    .registers 7

    .prologue
    .line 1205
    const-string v0, "notifyQueueLock"

    .line 1206
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1208
    :try_start_5
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "notifyQueueLock"

    const-string v5, "638"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1206
    monitor-exit v2

    .line 1211
    return-void

    .line 1206
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected notifyReceivedAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;)V
    .registers 16
    .param p1, "ack"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 836
    const-string v0, "notifyReceivedAck"

    .line 837
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    .line 840
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "notifyReceivedAck"

    const-string v8, "627"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 841
    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v12

    aput-object p1, v9, v13

    .line 840
    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v4

    .line 844
    .local v4, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    const/4 v1, 0x0

    .line 846
    .local v1, "mex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    instance-of v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    if-eqz v5, :cond_3e

    .line 851
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    .end local p1    # "ack":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    invoke-direct {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;)V

    .line 852
    .local v3, "rel":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    invoke-virtual {p0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 904
    .end local v3    # "rel":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    :goto_3a
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    .line 905
    return-void

    .line 853
    .restart local p1    # "ack":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    :cond_3e
    instance-of v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    if-nez v5, :cond_46

    instance-of v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    if-eqz v5, :cond_4a

    .line 856
    :cond_46
    invoke-virtual {p0, p1, v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyResult(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_3a

    .line 859
    :cond_4a
    instance-of v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingResp;

    if-eqz v5, :cond_83

    .line 860
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstandingLock:Ljava/lang/Object;

    monitor-enter v6

    .line 861
    const/4 v5, 0x0

    :try_start_52
    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    .line 862
    invoke-virtual {p0, p1, v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyResult(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 863
    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    if-nez v5, :cond_68

    .line 864
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 860
    :cond_68
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_52 .. :try_end_69} :catchall_80

    .line 868
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "notifyReceivedAck"

    const-string v8, "636"

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Integer;

    iget v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v12

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3a

    .line 860
    :catchall_80
    move-exception v5

    :try_start_81
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v5

    .line 869
    :cond_83
    instance-of v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v5, :cond_d2

    move-object v5, p1

    .line 870
    check-cast v5, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v2

    .line 871
    .local v2, "rc":I
    if-nez v2, :cond_cd

    .line 872
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 873
    :try_start_93
    iget-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanSession:Z

    if-eqz v5, :cond_9f

    .line 874
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clearState()V

    .line 877
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 879
    :cond_9f
    const/4 v5, 0x0

    iput v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 880
    const/4 v5, 0x0

    iput v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 881
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreInflightMessages()V

    .line 882
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected()V

    .line 872
    monitor-exit v6
    :try_end_ac
    .catchall {:try_start_93 .. :try_end_ac} :catchall_ca

    .line 889
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    move-object v5, p1

    check-cast v5, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    invoke-virtual {v6, v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connectComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 890
    invoke-virtual {p0, p1, v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyResult(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 891
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 894
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 895
    :try_start_bf
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 894
    monitor-exit v6

    goto/16 :goto_3a

    :catchall_c7
    move-exception v5

    monitor-exit v6
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_c7

    throw v5

    .line 872
    :catchall_ca
    move-exception v5

    :try_start_cb
    monitor-exit v6
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v5

    .line 885
    :cond_cd
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    .line 886
    throw v1

    .line 899
    .end local v2    # "rc":I
    :cond_d2
    invoke-virtual {p0, p1, v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyResult(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 900
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->releaseMessageId(I)V

    .line 901
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    goto/16 :goto_3a
.end method

.method public notifyReceivedBytes(I)V
    .registers 10
    .param p1, "receivedBytesCount"    # I

    .prologue
    .line 820
    const-string v0, "notifyReceivedBytes"

    .line 821
    .local v0, "methodName":Ljava/lang/String;
    if-lez p1, :cond_a

    .line 822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    .line 825
    :cond_a
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "notifyReceivedBytes"

    const-string v4, "630"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 826
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 825
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    return-void
.end method

.method protected notifyReceivedMsg(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .registers 15
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 915
    const-string v0, "notifyReceivedMsg"

    .line 916
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    .line 919
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "notifyReceivedMsg"

    const-string v7, "651"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 920
    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    .line 919
    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    if-nez v4, :cond_3c

    .line 923
    instance-of v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v4, :cond_69

    move-object v2, p1

    .line 924
    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 925
    .local v2, "send":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    packed-switch v4, :pswitch_data_98

    .line 957
    .end local v2    # "send":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    .end local p1    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_3c
    :goto_3c
    return-void

    .line 928
    .restart local v2    # "send":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    .restart local p1    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :pswitch_3d
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    if-eqz v4, :cond_3c

    .line 929
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageArrived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    goto :goto_3c

    .line 933
    :pswitch_47
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v5

    .line 934
    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 933
    .end local p1    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-interface {v4, v5, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    .line 935
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    invoke-direct {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    invoke-virtual {p0, v4, v12}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    goto :goto_3c

    .line 942
    .end local v2    # "send":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    .restart local p1    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_69
    instance-of v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v4, :cond_3c

    .line 943
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    .line 944
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 945
    .local v3, "sendMsg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    if-eqz v3, :cond_8a

    .line 946
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    if-eqz v4, :cond_3c

    .line 947
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageArrived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    goto :goto_3c

    .line 951
    :cond_8a
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    .line 952
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v4

    .line 951
    invoke-direct {v1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;-><init>(I)V

    .line 953
    .local v1, "pubComp":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;
    invoke-virtual {p0, v1, v12}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    goto :goto_3c

    .line 925
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_47
    .end packed-switch
.end method

.method protected notifyResult(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 14
    .param p1, "ack"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .param p2, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p3, "ex"    # Lorg/eclipse/paho/client/mqttv3/MqttException;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1013
    const-string v0, "notifyResult"

    .line 1015
    .local v0, "methodName":Ljava/lang/String;
    iget-object v1, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v1, p1, p3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 1018
    if-eqz p1, :cond_33

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v1, :cond_33

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    if-nez v1, :cond_33

    .line 1020
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "notifyResult"

    const-string v4, "648"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    aput-object p3, v5, v9

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->asyncOperationComplete(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 1025
    :cond_33
    if-nez p1, :cond_51

    .line 1027
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "notifyResult"

    const-string v4, "649"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->asyncOperationComplete(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 1030
    :cond_51
    return-void
.end method

.method protected notifySent(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .registers 15
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 758
    const-string v0, "notifySent"

    .line 760
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    .line 762
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "notifySent"

    const-string v7, "625"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v1

    .line 765
    .local v1, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notifySent()V

    .line 766
    instance-of v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    if-eqz v4, :cond_60

    .line 767
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstandingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 768
    :try_start_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 769
    .local v2, "time":J
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstandingLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_5d

    .line 770
    :try_start_37
    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastPing:J

    .line 771
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    .line 769
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_5a

    .line 774
    :try_start_40
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "notifySent"

    const-string v8, "635"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/Integer;

    iget v12, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v9, v10

    invoke-interface {v4, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    monitor-exit v5
    :try_end_59
    .catchall {:try_start_40 .. :try_end_59} :catchall_5d

    .line 789
    .end local v2    # "time":J
    :cond_59
    :goto_59
    return-void

    .line 769
    .restart local v2    # "time":J
    :catchall_5a
    move-exception v4

    :try_start_5b
    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v4

    .line 767
    .end local v2    # "time":J
    :catchall_5d
    move-exception v4

    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5d

    throw v4

    .line 777
    :cond_60
    instance-of v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v4, :cond_59

    move-object v4, p1

    .line 778
    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    if-nez v4, :cond_59

    .line 781
    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4, v11, v11}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 782
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->asyncOperationComplete(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 783
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementInFlight()V

    .line 784
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->releaseMessageId(I)V

    .line 785
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 786
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    goto :goto_59
.end method

.method public notifySentBytes(I)V
    .registers 10
    .param p1, "sentBytesCount"    # I

    .prologue
    .line 743
    const-string v0, "notifySentBytes"

    .line 744
    .local v0, "methodName":Ljava/lang/String;
    if-lez p1, :cond_a

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    .line 748
    :cond_a
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "notifySentBytes"

    const-string v4, "631"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 749
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 748
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    return-void
.end method

.method public quiesce(J)V
    .registers 14
    .param p1, "timeout"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1159
    const-string v0, "quiesce"

    .line 1161
    .local v0, "methodName":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_a5

    .line 1163
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "quiesce"

    const-string v5, "637"

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v6, v8

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1165
    const/4 v2, 0x1

    :try_start_22
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    .line 1164
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_a6

    .line 1168
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiesce()V

    .line 1169
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyQueueLock()V

    .line 1171
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1176
    :try_start_30
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->count()I

    move-result v1

    .line 1177
    .local v1, "tokc":I
    if-gtz v1, :cond_48

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_48

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->isQuiesced()Z

    move-result v2

    if-nez v2, :cond_85

    .line 1179
    :cond_48
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "quiesce"

    const-string v6, "639"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_85} :catch_af
    .catchall {:try_start_30 .. :try_end_85} :catchall_a9

    .line 1171
    .end local v1    # "tokc":I
    :cond_85
    :goto_85
    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_a9

    .line 1193
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1194
    :try_start_89
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1195
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    .line 1197
    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 1193
    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_89 .. :try_end_9a} :catchall_ac

    .line 1200
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "quiesce"

    const-string v5, "640"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :cond_a5
    return-void

    .line 1164
    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v3
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v2

    .line 1171
    :catchall_a9
    move-exception v2

    :try_start_aa
    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v2

    .line 1193
    :catchall_ac
    move-exception v2

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v2

    .line 1186
    :catch_af
    move-exception v2

    goto :goto_85
.end method

.method public resolveOldTokens(Lorg/eclipse/paho/client/mqttv3/MqttException;)Ljava/util/Vector;
    .registers 13
    .param p1, "reason"    # Lorg/eclipse/paho/client/mqttv3/MqttException;

    .prologue
    .line 1053
    const-string v0, "resolveOldTokens"

    .line 1055
    .local v0, "methodName":Ljava/lang/String;
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "resolveOldTokens"

    const-string v8, "632"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    move-object v3, p1

    .line 1061
    .local v3, "shutReason":Lorg/eclipse/paho/client/mqttv3/MqttException;
    if-nez p1, :cond_1d

    .line 1062
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .end local v3    # "shutReason":Lorg/eclipse/paho/client/mqttv3/MqttException;
    const/16 v5, 0x7d66

    invoke-direct {v3, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 1069
    .restart local v3    # "shutReason":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_1d
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getOutstandingTokens()Ljava/util/Vector;

    move-result-object v1

    .line 1070
    .local v1, "outT":Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 1071
    .local v2, "outTE":Ljava/util/Enumeration;
    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 1084
    return-object v1

    .line 1072
    :cond_2e
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 1073
    .local v4, "tok":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    monitor-enter v4

    .line 1074
    :try_start_35
    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v5

    if-nez v5, :cond_4e

    iget-object v5, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->isCompletePending()Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v5

    if-nez v5, :cond_4e

    .line 1075
    iget-object v5, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v5, v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 1073
    :cond_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_5f

    .line 1078
    instance-of v5, v4, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-nez v5, :cond_27

    .line 1081
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v6, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    goto :goto_27

    .line 1073
    :catchall_5f
    move-exception v5

    :try_start_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v5
.end method

.method protected restoreState()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 292
    const-string v6, "restoreState"

    .line 293
    .local v6, "methodName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v13}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 296
    .local v5, "messageKeys":Ljava/util/Enumeration;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 297
    .local v2, "highestMsgId":I
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 299
    .local v7, "orphanedPubRels":Ljava/util/Vector;
    sget-object v13, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "restoreState"

    const-string v16, "600"

    invoke-interface/range {v13 .. v16}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1e
    :goto_1e
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-nez v13, :cond_33

    .line 360
    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 361
    :goto_28
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-nez v13, :cond_1b8

    .line 369
    move-object/from16 v0, p0

    iput v2, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 370
    return-void

    .line 302
    :cond_33
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v13, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;

    move-result-object v8

    .line 304
    .local v8, "persistable":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreMessage(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v4

    .line 305
    .local v4, "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    if-eqz v4, :cond_1e

    .line 306
    const-string v13, "r-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 308
    sget-object v13, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "restoreState"

    const-string v16, "604"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    invoke-interface/range {v13 .. v17}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13, v14, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 312
    :cond_7d
    const-string v13, "s-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_198

    move-object v11, v4

    .line 313
    check-cast v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 314
    .local v11, "sendMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    invoke-virtual {v11}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v13

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12f

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;

    move-result-object v9

    .line 320
    .local v9, "persistedConfirm":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreMessage(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    .line 321
    .local v1, "confirmMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    if-eqz v1, :cond_113

    .line 324
    sget-object v13, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "restoreState"

    const-string v16, "605"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    invoke-interface/range {v13 .. v17}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;->getMessageId()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v1    # "confirmMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    .end local v9    # "persistedConfirm":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    :goto_e3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v13, v11}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->restoreToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v12

    .line 348
    .local v12, "tok":Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    iget-object v13, v12, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v14}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setClient(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Integer;

    invoke-virtual {v11}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    new-instance v15, Ljava/lang/Integer;

    invoke-virtual {v11}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e

    .line 329
    .end local v12    # "tok":Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .restart local v1    # "confirmMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    .restart local v9    # "persistedConfirm":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    :cond_113
    sget-object v13, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "restoreState"

    const-string v16, "606"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    invoke-interface/range {v13 .. v17}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e3

    .line 334
    .end local v1    # "confirmMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    .end local v9    # "persistedConfirm":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    :cond_12f
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->setDuplicate(Z)V

    .line 335
    invoke-virtual {v11}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v13

    invoke-virtual {v13}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16b

    .line 337
    sget-object v13, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "restoreState"

    const-string v16, "607"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    invoke-interface/range {v13 .. v17}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Integer;

    invoke-virtual {v11}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e3

    .line 342
    :cond_16b
    sget-object v13, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "restoreState"

    const-string v16, "608"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    invoke-interface/range {v13 .. v17}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Integer;

    invoke-virtual {v11}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e3

    .line 351
    .end local v11    # "sendMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    :cond_198
    const-string v13, "sc-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object v10, v4

    .line 352
    check-cast v10, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    .line 353
    .local v10, "pubRelMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1e

    .line 354
    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 362
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v8    # "persistable":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .end local v10    # "pubRelMessage":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    :cond_1b8
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    .restart local v3    # "key":Ljava/lang/String;
    sget-object v13, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "restoreState"

    const-string v16, "609"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    invoke-interface/range {v13 .. v17}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v13, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto/16 :goto_28
.end method

.method public send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 15
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .param p2, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 419
    const-string v2, "send"

    .line 420
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->isMessageIdRequired()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v3

    if-nez v3, :cond_18

    .line 421
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getNextMessageId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->setMessageId(I)V

    .line 423
    :cond_18
    if-eqz p2, :cond_23

    .line 425
    :try_start_1a
    iget-object v3, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setMessageID(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_159

    .line 430
    :cond_23
    :goto_23
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v3, :cond_d4

    .line 431
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 432
    :try_start_2a
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    if-lt v3, v5, :cond_53

    .line 434
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "send"

    const-string v7, "613"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    iget v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v5, 0x7dca

    invoke-direct {v3, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v3

    .line 431
    :catchall_50
    move-exception v3

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_2a .. :try_end_52} :catchall_50

    throw v3

    .line 439
    :cond_53
    :try_start_53
    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v1

    .line 441
    .local v1, "innerMessage":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "send"

    const-string v7, "628"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p1, v8, v9

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v3

    packed-switch v3, :pswitch_data_15c

    .line 453
    :goto_8b
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 454
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 455
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 431
    monitor-exit v4

    .line 490
    .end local v1    # "innerMessage":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :goto_9b
    return-void

    .line 445
    .restart local v1    # "innerMessage":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :pswitch_9c
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    move-object v3, v0

    invoke-interface {v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    goto :goto_8b

    .line 449
    :pswitch_b8
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    move-object v3, v0

    invoke-interface {v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V
    :try_end_d3
    .catchall {:try_start_53 .. :try_end_d3} :catchall_50

    goto :goto_8b

    .line 459
    .end local v1    # "innerMessage":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :cond_d4
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "send"

    const-string v6, "615"

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    aput-object p1, v7, v11

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v3, :cond_10a

    .line 462
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 465
    :try_start_f5
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 466
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 467
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit v4

    goto :goto_9b

    :catchall_107
    move-exception v3

    monitor-exit v4
    :try_end_109
    .catchall {:try_start_f5 .. :try_end_109} :catchall_107

    throw v3

    .line 470
    :cond_10a
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    if-eqz v3, :cond_12c

    .line 471
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 481
    :cond_110
    :goto_110
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 482
    :try_start_113
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-nez v3, :cond_11c

    .line 483
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, p2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 485
    :cond_11c
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 486
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 481
    monitor-exit v4

    goto/16 :goto_9b

    :catchall_129
    move-exception v3

    monitor-exit v4
    :try_end_12b
    .catchall {:try_start_113 .. :try_end_12b} :catchall_129

    throw v3

    .line 473
    :cond_12c
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v3, :cond_14b

    .line 474
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    invoke-interface {v4, v5, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    goto :goto_110

    .line 477
    :cond_14b
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    if-eqz v3, :cond_110

    .line 478
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto :goto_110

    .line 426
    :catch_159
    move-exception v3

    goto/16 :goto_23

    .line 443
    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_9c
    .end packed-switch
.end method

.method protected setCleanSession(Z)V
    .registers 2
    .param p1, "cleanSession"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanSession:Z

    .line 169
    return-void
.end method

.method public setKeepAliveInterval(J)V
    .registers 4
    .param p1, "interval"    # J

    .prologue
    .line 703
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    .line 704
    return-void
.end method

.method protected setKeepAliveSecs(J)V
    .registers 6
    .param p1, "keepAliveSecs"    # J

    .prologue
    .line 162
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    .line 163
    return-void
.end method

.method protected undo(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .registers 13
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 498
    const-string v0, "undo"

    .line 499
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 501
    :try_start_6
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "undo"

    const-string v5, "618"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v1

    if-ne v1, v10, :cond_60

    .line 504
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :goto_48
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 511
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    .line 499
    monitor-exit v2

    .line 513
    return-void

    .line 506
    :cond_60
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 499
    :catchall_6f
    move-exception v1

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_6f

    throw v1
.end method
