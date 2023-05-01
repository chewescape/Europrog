.class Lcom/idelan/MQTT/MQTTManager$3;
.super Ljava/lang/Object;
.source "MQTTManager.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/MQTT/MQTTManager;->initMQTT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/MQTT/MQTTManager;


# direct methods
.method constructor <init>(Lcom/idelan/MQTT/MQTTManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/MQTT/MQTTManager$3;->this$0:Lcom/idelan/MQTT/MQTTManager;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionLost(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    const-string v0, "MQTT"

    const-string v1, "connectionLost----------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
    .registers 5
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    .prologue
    .line 207
    const-string v0, "MQTT"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deliveryComplete---------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;->isComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .registers 5
    .param p1, "topicName"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "MQTT"

    const-string v1, "messageArrived----------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$3;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v0}, Lcom/idelan/MQTT/MQTTManager;->access$2(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/MQTT/MQTTListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/idelan/MQTT/MQTTListener;->mqttMessageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 217
    return-void
.end method
