.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;
.super Ljava/io/InputStream;
.source "MqttInputStream.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private in:Ljava/io/DataInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.wire.MqttInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->CLASS_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 36
    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "clientState"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 43
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 44
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 45
    return-void
.end method

.method private readFully([BII)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    if-gez p3, :cond_8

    .line 92
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 93
    :cond_8
    const/4 v1, 0x0

    .line 94
    .local v1, "n":I
    :goto_9
    if-lt v1, p3, :cond_c

    .line 102
    return-void

    .line 95
    :cond_c
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 96
    .local v0, "count":I
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedBytes(I)V

    .line 98
    if-gez v0, :cond_23

    .line 99
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 100
    :cond_23
    add-int/2addr v1, v0

    goto :goto_9
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 57
    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readMqttWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 63
    const-string v4, "readMqttWireMessage"

    .line 64
    .local v4, "methodName":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v0, "bais":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 66
    .local v1, "first":B
    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v9, v13}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceivedBytes(I)V

    .line 68
    ushr-int/lit8 v9, v1, 0x4

    and-int/lit8 v9, v9, 0xf

    int-to-byte v8, v9

    .line 69
    .local v8, "type":B
    if-lt v8, v13, :cond_1f

    .line 70
    const/16 v9, 0xe

    if-le v8, v9, :cond_26

    .line 72
    :cond_1f
    const/16 v9, 0x7d6c

    invoke-static {v9}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v9

    throw v9

    .line 74
    :cond_26
    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->getValue()J

    move-result-wide v6

    .line 75
    .local v6, "remLen":J
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    invoke-static {v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodeMBI(J)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    int-to-long v10, v9

    add-long/2addr v10, v6

    long-to-int v9, v10

    new-array v5, v9, [B

    .line 79
    .local v5, "packet":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    array-length v10, v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-direct {p0, v5, v9, v10}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->readFully([BII)V

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 82
    .local v2, "header":[B
    array-length v9, v2

    invoke-static {v2, v14, v5, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->createWireMessage([B)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v3

    .line 85
    .local v3, "message":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    sget-object v9, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v10, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "readMqttWireMessage"

    const-string v12, "501"

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v14

    invoke-interface {v9, v10, v11, v12, v13}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-object v3
.end method
