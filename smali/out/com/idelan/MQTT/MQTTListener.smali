.class public interface abstract Lcom/idelan/MQTT/MQTTListener;
.super Ljava/lang/Object;
.source "MQTTListener.java"


# virtual methods
.method public abstract mqttConnFailure(I)V
.end method

.method public abstract mqttConnSuccess()V
.end method

.method public abstract mqttMessageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
.end method
