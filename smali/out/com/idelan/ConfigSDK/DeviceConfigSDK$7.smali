.class Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;
.super Lcom/idelan/task/Task;
.source "DeviceConfigSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/ConfigSDK/DeviceConfigSDK;->apConfigWithSSID(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/bean/SmartDevice;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

.field private final synthetic val$device:Lcom/idelan/bean/SmartDevice;

.field private final synthetic val$devicePwd:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$ssid:Ljava/lang/String;

.field private final synthetic val$wifiPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;Lcom/idelan/bean/SmartDevice;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iput-object p3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$ssid:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iput-object p5, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$device:Lcom/idelan/bean/SmartDevice;

    iput-object p6, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$devicePwd:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$wifiPwd:Ljava/lang/String;

    .line 336
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 13

    .prologue
    const/4 v2, -0x3

    const/4 v11, 0x0

    .line 340
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$ssid:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 341
    :cond_e
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    .line 401
    :goto_13
    return-void

    .line 345
    :cond_14
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$device:Lcom/idelan/bean/SmartDevice;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$device:Lcom/idelan/bean/SmartDevice;

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->devSerial:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 346
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$device:Lcom/idelan/bean/SmartDevice;

    iget-object v0, v0, Lcom/idelan/bean/SmartDevice;->devIPAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    .line 347
    :cond_2c
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    .line 351
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tcp://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$device:Lcom/idelan/bean/SmartDevice;

    iget-object v2, v2, Lcom/idelan/bean/SmartDevice;->devIPAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$device:Lcom/idelan/bean/SmartDevice;

    iget v2, v2, Lcom/idelan/bean/SmartDevice;->devServicePort:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, "strAddr":Ljava/lang/String;
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v2

    const-string v4, "1000"

    .line 355
    const-string v5, "2f39d871a38a4841aab3be3837e39cf4"

    .line 354
    invoke-virtual {v0, v2, v9, v4, v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_connect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 356
    .local v6, "retErr":I
    if-eqz v6, :cond_71

    .line 357
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/16 v2, -0xa

    invoke-interface {v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_13

    .line 362
    :cond_71
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v2

    iget-object v4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$device:Lcom/idelan/bean/SmartDevice;

    iget-object v4, v4, Lcom/idelan/bean/SmartDevice;->devSerial:Ljava/lang/String;

    .line 363
    iget-object v5, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$devicePwd:Ljava/lang/String;

    .line 362
    invoke-virtual {v0, v2, v4, v5, v11}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_login(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 364
    .local v1, "usrid":I
    if-gez v1, :cond_90

    .line 365
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v2, -0x8

    invoke-interface {v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_13

    .line 370
    :cond_90
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/Charset/Hex;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v10

    .line 372
    .local v10, "wifiName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<request ver=\"2\" cmd=\"8\">\n    <item name=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string v2, "\" sec=\"\" pwd=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$wifiPwd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" pin=\"0\" />\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</request>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, "setWifiXml":Ljava/lang/String;
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v0, v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v2, -0x1

    iput v2, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 380
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v0, v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v2, -0xffff

    iput v2, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 381
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v0, v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput-object v11, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 383
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 384
    .local v3, "data":[B
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    const/4 v2, 0x1

    array-length v4, v3

    .line 385
    const-string v5, "bizId=1001"

    .line 384
    invoke-virtual/range {v0 .. v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_send(II[BILjava/lang/String;)I

    move-result v6

    .line 386
    if-eqz v6, :cond_f2

    .line 387
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto/16 :goto_13

    .line 390
    :cond_f2
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v0, v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v0, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-eqz v0, :cond_107

    .line 391
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v2, v2, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v2, v2, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto/16 :goto_13

    .line 397
    :cond_107
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_logout(I)I

    move-result v7

    .line 399
    .local v7, "retOErr":I
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_disconnect(I)I

    move-result v7

    .line 400
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6, v11}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    goto/16 :goto_13
.end method
