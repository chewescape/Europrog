.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;
.super Ljava/lang/Object;
.source "CommsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private lifecycle:Ljava/lang/Object;

.field private out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

.field private running:Z

.field private sendThread:Ljava/lang/Thread;

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.CommsSender"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    .line 33
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 32
    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "clientComms"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .param p2, "clientState"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
    .param p3, "tokenStore"    # Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;
    .param p4, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    .line 38
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 40
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 41
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 42
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    .line 45
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    .line 46
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 47
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 48
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 49
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private handleRunException(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Ljava/lang/Exception;)V
    .registers 11
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x0

    .line 146
    const-string v6, "handleRunException"

    .line 148
    .local v6, "methodName":Ljava/lang/String;
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 150
    instance-of v0, p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_23

    .line 151
    new-instance v7, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v0, 0x7d6d

    invoke-direct {v7, v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    .line 156
    .local v7, "mex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :goto_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 157
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, v4, v7}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 158
    return-void

    .end local v7    # "mex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_23
    move-object v7, p2

    .line 153
    check-cast v7, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .restart local v7    # "mex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    goto :goto_1a
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 94
    const-string v3, "run"

    .line 95
    .local v3, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 96
    .local v2, "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_3
    :goto_3
    iget-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    if-nez v5, :cond_17

    .line 141
    :cond_b
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "run"

    const-string v8, "805"

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 98
    :cond_17
    :try_start_17
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->get()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_73

    .line 101
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "run"

    const-string v8, "802"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    instance-of v5, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v5, :cond_4b

    .line 104
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->write(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 105
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->flush()V
    :try_end_45
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_17 .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_45} :catch_68

    goto :goto_3

    .line 133
    :catch_46
    move-exception v1

    .line 134
    .local v1, "me":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-direct {p0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->handleRunException(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Ljava/lang/Exception;)V

    goto :goto_3

    .line 107
    .end local v1    # "me":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_4b
    :try_start_4b
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v4

    .line 111
    .local v4, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    if-eqz v4, :cond_3

    .line 112
    monitor-enter v4
    :try_end_54
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_4b .. :try_end_54} :catch_46
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_68

    .line 113
    :try_start_54
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->write(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_65

    .line 115
    :try_start_59
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->flush()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_6d
    .catchall {:try_start_59 .. :try_end_5e} :catchall_65

    .line 123
    :cond_5e
    :try_start_5e
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifySent(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 112
    monitor-exit v4

    goto :goto_3

    :catchall_65
    move-exception v5

    monitor-exit v4
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_65

    :try_start_67
    throw v5
    :try_end_68
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_67 .. :try_end_68} :catch_46
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_68} :catch_68

    .line 135
    .end local v4    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :catch_68
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    invoke-direct {p0, v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->handleRunException(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Ljava/lang/Exception;)V

    goto :goto_3

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v4    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :catch_6d
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/io/IOException;
    :try_start_6e
    instance-of v5, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-nez v5, :cond_5e

    .line 120
    throw v0
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_65

    .line 129
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v4    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :cond_73
    :try_start_73
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "run"

    const-string v8, "803"

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z
    :try_end_81
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_73 .. :try_end_81} :catch_46
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_81} :catch_68

    goto :goto_3
.end method

.method public start(Ljava/lang/String;)V
    .registers 4
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_3
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    if-nez v0, :cond_16

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 59
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    .line 60
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    :cond_16
    monitor-exit v1

    .line 63
    return-void

    .line 56
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public stop()V
    .registers 7

    .prologue
    .line 69
    const-string v0, "stop"

    .line 71
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_5
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "800"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    if-eqz v1, :cond_2d

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_3d

    move-result v1

    if-nez v1, :cond_2d

    .line 79
    :try_start_23
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyQueueLock()V

    .line 81
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2d} :catch_40
    .catchall {:try_start_23 .. :try_end_2d} :catchall_3d

    .line 87
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    :try_start_2e
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    .line 89
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "801"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    monitor-exit v2

    .line 91
    return-void

    .line 71
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_3d

    throw v1

    .line 83
    :catch_40
    move-exception v1

    goto :goto_2d
.end method
