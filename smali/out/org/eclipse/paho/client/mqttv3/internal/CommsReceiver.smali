.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;
.super Ljava/lang/Object;
.source "CommsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

.field private lifecycle:Ljava/lang/Object;

.field private recThread:Ljava/lang/Thread;

.field private volatile receiving:Z

.field private running:Z

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.CommsReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 33
    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/InputStream;)V
    .registers 7
    .param p1, "clientComms"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .param p2, "clientState"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
    .param p3, "tokenStore"    # Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;
    .param p4, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 38
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 39
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 41
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 42
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    .line 46
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    .line 47
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 48
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 49
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 50
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public isReceiving()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    return v0
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 99
    const-string v8, "run"

    .line 100
    .local v8, "methodName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 102
    .local v9, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :goto_4
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    if-nez v0, :cond_18

    .line 155
    :cond_c
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "854"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 105
    :cond_18
    :try_start_18
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "852"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->available()I

    move-result v0

    if-lez v0, :cond_4f

    const/4 v0, 0x1

    :goto_2c
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    .line 107
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->readMqttWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v7

    .line 108
    .local v7, "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    .line 110
    instance-of v0, v7, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v0, :cond_9a

    .line 111
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0, v7}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v9

    .line 112
    if-eqz v9, :cond_6c

    .line 113
    monitor-enter v9
    :try_end_44
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_18 .. :try_end_44} :catch_54
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_44} :catch_73
    .catchall {:try_start_18 .. :try_end_44} :catchall_a0

    .line 118
    :try_start_44
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    check-cast v7, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .end local v7    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-virtual {v0, v7}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;)V

    .line 113
    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_51

    .line 150
    :goto_4c
    iput-boolean v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    goto :goto_4

    :cond_4f
    move v0, v10

    .line 106
    goto :goto_2c

    .line 113
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v9
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_53 .. :try_end_54} :catch_54
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_54} :catch_73
    .catchall {:try_start_53 .. :try_end_54} :catchall_a0

    .line 130
    :catch_54
    move-exception v5

    .line 132
    .local v5, "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_start_55
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "856"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 135
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, v9, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_a0

    .line 150
    iput-boolean v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    goto :goto_4

    .line 123
    .end local v5    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    .restart local v7    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_6c
    :try_start_6c
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0
    :try_end_73
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_6c .. :try_end_73} :catch_54
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_73} :catch_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_a0

    .line 137
    .end local v7    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :catch_73
    move-exception v6

    .line 139
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_74
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "853"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 145
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_96

    .line 146
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d6d

    invoke-direct {v1, v2, v6}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v0, v9, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_96
    .catchall {:try_start_74 .. :try_end_96} :catchall_a0

    .line 150
    :cond_96
    iput-boolean v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    goto/16 :goto_4

    .line 127
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v7    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_9a
    :try_start_9a
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, v7}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedMsg(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    :try_end_9f
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_9a .. :try_end_9f} :catch_54
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9f} :catch_73
    .catchall {:try_start_9a .. :try_end_9f} :catchall_a0

    goto :goto_4c

    .line 149
    .end local v7    # "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :catchall_a0
    move-exception v0

    .line 150
    iput-boolean v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    .line 151
    throw v0
.end method

.method public start(Ljava/lang/String;)V
    .registers 7
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "start"

    .line 59
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "start"

    const-string v4, "855"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_10
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    if-nez v1, :cond_23

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 63
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    .line 64
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 60
    :cond_23
    monitor-exit v2

    .line 67
    return-void

    .line 60
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public stop()V
    .registers 7

    .prologue
    .line 73
    const-string v0, "stop"

    .line 74
    .local v0, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_5
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "850"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    if-eqz v1, :cond_2b

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->receiving:Z

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_3b

    move-result v1

    if-nez v1, :cond_2b

    .line 83
    :try_start_26
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_3e
    .catchall {:try_start_26 .. :try_end_2b} :catchall_3b

    .line 74
    :cond_2b
    :goto_2b
    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_3b

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    .line 92
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "851"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 74
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1

    .line 85
    :catch_3e
    move-exception v1

    goto :goto_2b
.end method
