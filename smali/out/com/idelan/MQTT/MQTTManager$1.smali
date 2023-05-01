.class Lcom/idelan/MQTT/MQTTManager$1;
.super Landroid/os/Handler;
.source "MQTTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/MQTT/MQTTManager;
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
    iput-object p1, p0, Lcom/idelan/MQTT/MQTTManager$1;->this$0:Lcom/idelan/MQTT/MQTTManager;

    .line 162
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 175
    :cond_5
    :goto_5
    return-void

    .line 166
    :pswitch_6
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$1;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v0}, Lcom/idelan/MQTT/MQTTManager;->access$0(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/bean/MQTTBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$1;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v0}, Lcom/idelan/MQTT/MQTTManager;->access$1(Lcom/idelan/MQTT/MQTTManager;)V

    goto :goto_5

    .line 171
    :pswitch_14
    const-string v0, "MQTT"

    const-string v1, "mqtt\u8fde\u63a5\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$1;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v0}, Lcom/idelan/MQTT/MQTTManager;->access$2(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/MQTT/MQTTListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/idelan/MQTT/MQTTListener;->mqttConnSuccess()V

    goto :goto_5

    .line 164
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
    .end packed-switch
.end method
