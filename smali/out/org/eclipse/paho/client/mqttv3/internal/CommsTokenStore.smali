.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;
.super Ljava/lang/Object;
.source "CommsTokenStore.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private closedResponse:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private logContext:Ljava/lang/String;

.field private tokens:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.CommsTokenStore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    .line 48
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 47
    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "logContext"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->closedResponse:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 56
    const-string v0, "<Init>"

    .line 58
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v1, p1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    .line 60
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->logContext:Ljava/lang/String;

    .line 62
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "<Init>"

    const-string v4, "308"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 10

    .prologue
    .line 226
    const-string v0, "clear"

    .line 228
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "clear"

    const-string v4, "305"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v2

    .line 230
    :try_start_21
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 229
    monitor-exit v2

    .line 232
    return-void

    .line 229
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public count()I
    .registers 3

    .prologue
    .line 235
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v1

    .line 236
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 235
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getOutstandingDelTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .registers 11

    .prologue
    .line 178
    const-string v2, "getOutstandingDelTokens"

    .line 180
    .local v2, "methodName":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v6

    .line 182
    :try_start_5
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "getOutstandingDelTokens"

    const-string v9, "311"

    invoke-interface {v5, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 185
    .local v1, "list":Ljava/util/Vector;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 187
    .local v0, "enumeration":Ljava/util/Enumeration;
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 197
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v3, v5, [Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    .line 198
    .local v3, "result":[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    monitor-exit v6

    return-object v5

    .line 188
    .end local v3    # "result":[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :cond_2f
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 189
    .local v4, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    if-eqz v4, :cond_1b

    .line 190
    instance-of v5, v4, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-eqz v5, :cond_1b

    .line 191
    iget-object v5, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->isNotified()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 193
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1b

    .line 180
    .end local v0    # "enumeration":Ljava/util/Enumeration;
    .end local v1    # "list":Ljava/util/Vector;
    .end local v4    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :catchall_47
    move-exception v5

    monitor-exit v6
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_47

    throw v5
.end method

.method public getOutstandingTokens()Ljava/util/Vector;
    .registers 10

    .prologue
    .line 203
    const-string v2, "getOutstandingTokens"

    .line 205
    .local v2, "methodName":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v5

    .line 207
    :try_start_5
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "getOutstandingTokens"

    const-string v8, "312"

    invoke-interface {v4, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 210
    .local v1, "list":Ljava/util/Vector;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 212
    .local v0, "enumeration":Ljava/util/Enumeration;
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_23

    .line 218
    monitor-exit v5

    return-object v1

    .line 213
    :cond_23
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 214
    .local v3, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    if-eqz v3, :cond_1b

    .line 215
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1b

    .line 205
    .end local v0    # "enumeration":Ljava/util/Enumeration;
    .end local v1    # "list":Ljava/util/Vector;
    .end local v3    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :catchall_2f
    move-exception v4

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    throw v4
.end method

.method public getToken(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    return-object v0
.end method

.method public getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 4
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    return-object v1
.end method

.method public open()V
    .registers 7

    .prologue
    .line 167
    const-string v0, "open"

    .line 169
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v2

    .line 171
    :try_start_5
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "open"

    const-string v5, "310"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->closedResponse:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 169
    monitor-exit v2

    .line 175
    return-void

    .line 169
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected quiesce(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 10
    .param p1, "quiesceResponse"    # Lorg/eclipse/paho/client/mqttv3/MqttException;

    .prologue
    .line 156
    const-string v0, "quiesce"

    .line 158
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v2

    .line 160
    :try_start_5
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "quiesce"

    const-string v5, "309"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->closedResponse:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 158
    monitor-exit v2

    .line 164
    return-void

    .line 158
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public removeToken(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "removeToken"

    .line 92
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "removeToken"

    const-string v4, "306"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    if-eqz p1, :cond_1e

    .line 95
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 98
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 3
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .prologue
    .line 83
    if-eqz p1, :cond_b

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v0

    .line 86
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected restoreToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .registers 12
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .prologue
    .line 107
    const-string v1, "restoreToken"

    .line 109
    .local v1, "methodName":Ljava/lang/String;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v4

    .line 110
    :try_start_5
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 112
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    .line 114
    .local v2, "token":Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "restoreToken"

    const-string v7, "302"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object v2, v8, v9

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_39
    monitor-exit v4

    .line 123
    return-object v2

    .line 116
    .end local v2    # "token":Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :cond_3b
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->logContext:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v2    # "token":Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    iget-object v3, v2, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setKey(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "restoreToken"

    const-string v7, "303"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object v2, v8, v9

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_39

    .line 109
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "token":Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :catchall_64
    move-exception v3

    monitor-exit v4
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_64

    throw v3
.end method

.method protected saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/String;)V
    .registers 12
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "saveToken"

    .line 147
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v2

    .line 149
    :try_start_5
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "saveToken"

    const-string v5, "307"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setKey(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit v2

    .line 153
    return-void

    .line 147
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method protected saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .registers 12
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "saveToken"

    .line 131
    .local v1, "methodName":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v3

    .line 132
    :try_start_5
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->closedResponse:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v2, :cond_26

    .line 133
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "saveToken"

    const-string v6, "300"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/String;)V

    .line 131
    monitor-exit v3

    .line 142
    return-void

    .line 139
    .end local v0    # "key":Ljava/lang/String;
    :cond_26
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->closedResponse:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v2

    .line 131
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 240
    const-string v4, "line.separator"

    const-string v5, "\n"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "lineSep":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .local v3, "toks":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    monitor-enter v5

    .line 243
    :try_start_10
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 245
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_16
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_22

    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 246
    :cond_22
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 247
    .local v2, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, "{"

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 242
    .end local v0    # "enumeration":Ljava/util/Enumeration;
    .end local v2    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :catchall_47
    move-exception v4

    monitor-exit v5
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_47

    throw v4
.end method
