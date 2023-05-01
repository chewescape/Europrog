.class Lcom/idelan/MQTT/MQTTManager$4;
.super Ljava/lang/Object;
.source "MQTTManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/MQTT/MQTTManager;->connect()V
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
    iput-object p1, p0, Lcom/idelan/MQTT/MQTTManager$4;->this$0:Lcom/idelan/MQTT/MQTTManager;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager$4;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v1}, Lcom/idelan/MQTT/MQTTManager;->access$5(Lcom/idelan/MQTT/MQTTManager;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/MQTT/MQTTManager$4;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v2}, Lcom/idelan/MQTT/MQTTManager;->access$6(Lcom/idelan/MQTT/MQTTManager;)Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 231
    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager$4;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v1}, Lcom/idelan/MQTT/MQTTManager;->access$4(Lcom/idelan/MQTT/MQTTManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 235
    :goto_19
    return-void

    .line 232
    :catch_1a
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method
