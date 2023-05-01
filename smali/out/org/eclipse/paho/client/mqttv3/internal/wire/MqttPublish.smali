.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;
.source "MqttPublish.java"


# instance fields
.field private encodedPayload:[B

.field private message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private topicName:Ljava/lang/String;


# direct methods
.method public constructor <init>(B[B)V
    .registers 10
    .param p1, "info"    # B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 49
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;-><init>(B)V

    .line 35
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    .line 50
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;-><init>()V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 51
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    shr-int/lit8 v5, p1, 0x1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 52
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v6, :cond_21

    .line 53
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4, v6}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    .line 55
    :cond_21
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2e

    .line 56
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    invoke-virtual {v4, v6}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;->setDuplicate(Z)V

    .line 59
    :cond_2e
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 60
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v1, "counter":Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    .line 63
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    if-lez v4, :cond_51

    .line 64
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->msgId:I

    .line 66
    :cond_51
    array-length v4, p2

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;->getCounter()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v3, v4, [B

    .line 67
    .local v3, "payload":[B
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 68
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 69
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setPayload([B)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .prologue
    .line 38
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;-><init>(B)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    .line 39
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 41
    return-void
.end method

.method protected static encodePayload(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)[B
    .registers 2
    .param p0, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method protected getMessageInfo()B
    .registers 3

    .prologue
    .line 114
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v0, v1

    .line 115
    .local v0, "info":B
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 116
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 118
    :cond_14
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isDuplicate()Z

    move-result v1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->duplicate:Z

    if-eqz v1, :cond_23

    .line 119
    :cond_20
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 122
    :cond_23
    return v0
.end method

.method public getPayload()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    if-nez v0, :cond_c

    .line 139
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodePayload(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    .line 141
    :cond_c
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    return-object v0
.end method

.method public getPayloadLength()I
    .registers 3

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "length":I
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getPayload()[B

    move-result-object v1

    array-length v0, v1
    :try_end_6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_6} :catch_7

    .line 150
    :goto_6
    return v0

    .line 148
    :catch_7
    move-exception v1

    goto :goto_6
.end method

.method public getTopicName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method protected getVariableHeader()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v3

    if-lez v3, :cond_1c

    .line 166
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->msgId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 168
    :cond_1c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 169
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v3

    return-object v3

    .line 170
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_24
    move-exception v2

    .line 171
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isMessageIdRequired()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public setMessageId(I)V
    .registers 3
    .param p1, "msgId"    # I

    .prologue
    .line 154
    invoke-super {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;->setMessageId(I)V

    .line 155
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    instance-of v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    if-eqz v0, :cond_10

    .line 156
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;->setMessageId(I)V

    .line 158
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    .line 75
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, "hex":Ljava/lang/StringBuffer;
    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v6

    .line 77
    .local v6, "payload":[B
    array-length v9, v6

    const/16 v10, 0x14

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 78
    .local v5, "limit":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-lt v4, v5, :cond_a4

    .line 90
    const/4 v8, 0x0

    .line 92
    .local v8, "string":Ljava/lang/String;
    :try_start_16
    new-instance v8, Ljava/lang/String;

    .end local v8    # "string":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v8, v6, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_c7

    .line 97
    .restart local v8    # "string":Ljava/lang/String;
    :goto_1e
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v9, " qos:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v10}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v9

    if-lez v9, :cond_4c

    .line 101
    const-string v9, " msgId:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->msgId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    :cond_4c
    const-string v9, " retained:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v10}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 104
    const-string v9, " dup:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-boolean v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->duplicate:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 105
    const-string v9, " topic:\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v9, " payload:[hex:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 107
    const-string v9, " utf8:\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v9, " length:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 79
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "string":Ljava/lang/String;
    :cond_a4
    aget-byte v0, v6, v4

    .line 80
    .local v0, "b":B
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "ch":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c0

    .line 82
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_c0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    .line 93
    .end local v0    # "b":B
    .end local v1    # "ch":Ljava/lang/String;
    :catch_c7
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "?"

    .restart local v8    # "string":Ljava/lang/String;
    goto/16 :goto_1e
.end method
