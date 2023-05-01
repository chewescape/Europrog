.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttUnsubscribe.java"


# instance fields
.field private count:I

.field private names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(B[B)V
    .registers 10
    .param p1, "info"    # B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 50
    invoke-direct {p0, v5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 51
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->msgId:I

    .line 55
    const/4 v4, 0x0

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->count:I

    .line 56
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "end":Z
    :goto_1d
    if-eqz v3, :cond_23

    .line 65
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 66
    return-void

    .line 60
    :cond_23
    :try_start_23
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->count:I

    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_1d

    .line 61
    :catch_2e
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_1d
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 38
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 39
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->duplicate:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    :goto_6
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPayload()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_15

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 105
    :cond_15
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method protected getVariableHeader()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->msgId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 94
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v3

    return-object v3

    .line 96
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_17
    move-exception v2

    .line 97
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isRetryable()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v2, " names:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->count:I

    if-lt v0, v2, :cond_20

    .line 81
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    :cond_20
    if-lez v0, :cond_27

    .line 77
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_27
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method
