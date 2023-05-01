.class Lcom/idelan/MQTT/MQTTManager$2;
.super Ljava/lang/Object;
.source "MQTTManager.java"

# interfaces
.implements Lcom/idelan/DeLanSDK/ResponseMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/MQTT/MQTTManager;->openMQTT(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/MQTT/MQTTListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/idelan/DeLanSDK/ResponseMethod",
        "<",
        "Lcom/idelan/DeLanSDK/ResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/MQTT/MQTTManager;


# direct methods
.method constructor <init>(Lcom/idelan/MQTT/MQTTManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/MQTT/MQTTManager$2;->this$0:Lcom/idelan/MQTT/MQTTManager;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .registers 3
    .param p1, "retCode"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$2;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v0}, Lcom/idelan/MQTT/MQTTManager;->access$2(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/MQTT/MQTTListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/idelan/MQTT/MQTTListener;->mqttConnFailure(I)V

    .line 79
    return-void
.end method

.method public success(ILcom/idelan/DeLanSDK/ResponseObject;)V
    .registers 6
    .param p1, "retCode"    # I
    .param p2, "retObject"    # Lcom/idelan/DeLanSDK/ResponseObject;

    .prologue
    .line 65
    if-nez p1, :cond_2e

    .line 66
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$2;->this$0:Lcom/idelan/MQTT/MQTTManager;

    new-instance v1, Lcom/idelan/bean/MQTTBean;

    invoke-direct {v1}, Lcom/idelan/bean/MQTTBean;-><init>()V

    invoke-static {v0, v1}, Lcom/idelan/MQTT/MQTTManager;->access$3(Lcom/idelan/MQTT/MQTTManager;Lcom/idelan/bean/MQTTBean;)V

    .line 67
    const-string v0, "mqttparam"

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p2, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    iget-object v1, p0, Lcom/idelan/MQTT/MQTTManager$2;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v1}, Lcom/idelan/MQTT/MQTTManager;->access$0(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/bean/MQTTBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idelan/xml/parser/SDKFunctions;->parseMQTT([BLcom/idelan/bean/MQTTBean;)V

    .line 69
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$2;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v0}, Lcom/idelan/MQTT/MQTTManager;->access$4(Lcom/idelan/MQTT/MQTTManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    :goto_2d
    return-void

    .line 71
    :cond_2e
    iget-object v0, p0, Lcom/idelan/MQTT/MQTTManager$2;->this$0:Lcom/idelan/MQTT/MQTTManager;

    invoke-static {v0}, Lcom/idelan/MQTT/MQTTManager;->access$2(Lcom/idelan/MQTT/MQTTManager;)Lcom/idelan/MQTT/MQTTListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/idelan/MQTT/MQTTListener;->mqttConnFailure(I)V

    goto :goto_2d
.end method

.method public bridge synthetic success(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p2, Lcom/idelan/DeLanSDK/ResponseObject;

    invoke-virtual {p0, p1, p2}, Lcom/idelan/MQTT/MQTTManager$2;->success(ILcom/idelan/DeLanSDK/ResponseObject;)V

    return-void
.end method
