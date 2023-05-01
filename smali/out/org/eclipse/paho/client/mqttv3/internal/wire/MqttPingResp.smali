.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingResp;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
.source "MqttPingResp.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "Ping"


# direct methods
.method public constructor <init>(B[B)V
    .registers 4
    .param p1, "info"    # B
    .param p2, "variableHeader"    # [B

    .prologue
    .line 28
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;-><init>(B)V

    .line 29
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string v0, "Ping"

    return-object v0
.end method

.method protected getVariableHeader()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public isMessageIdRequired()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
