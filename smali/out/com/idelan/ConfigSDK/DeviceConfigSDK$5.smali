.class Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;
.super Lcom/idelan/task/Task;
.source "DeviceConfigSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/ConfigSDK/DeviceConfigSDK;->bsdk_obtainAsyncBindDeviceKey(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

.field private final synthetic val$location:Landroid/location/Location;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ResponseMethod;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iput-object p3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iput-object p4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$location:Landroid/location/Location;

    iput-object p5, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$ssid:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$password:Ljava/lang/String;

    .line 216
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 220
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v7}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$4(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Landroid/content/Context;

    move-result-object v7

    .line 221
    const-string v8, "userId"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 220
    invoke-static {v7, v8, v9}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 222
    .local v6, "userId":I
    if-ne v6, v10, :cond_20

    .line 223
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v8, -0x5

    invoke-interface {v7, v8}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    .line 272
    :goto_1f
    return-void

    .line 227
    :cond_20
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v7, v7, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput v10, v7, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 228
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v7, v7, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v8, -0xffff

    iput v8, v7, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 229
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v7, v7, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 238
    const-wide/16 v4, 0x0

    .local v4, "longitude":D
    const-wide/16 v2, 0x0

    .line 239
    .local v2, "latitude":D
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$location:Landroid/location/Location;

    if-eqz v7, :cond_4a

    .line 240
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$location:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 241
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$location:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 244
    :cond_4a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<request funName=\"getBindRandomKey\"><params ssid=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    iget-object v8, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$ssid:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/idelan/Charset/Hex;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 246
    const-string v8, "\" passwd=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 247
    iget-object v8, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$password:Ljava/lang/String;

    invoke-static {v8}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 248
    const-string v8, "\" ip=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 250
    iget-object v8, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v8}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$4(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/idelan/app/Util/NetUtil;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 249
    invoke-static {v8}, Lcom/idelan/Charset/Hex;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 251
    const-string v8, "\" port=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 252
    const-string v8, "20087"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/idelan/Charset/Hex;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    const-string v8, "\" longitude=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 254
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 255
    const-string v8, "\" latitude=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 256
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 257
    const-string v8, "\" gps_height=\"0\" areaCode=\"\"/></request>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "params":Ljava/lang/String;
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v7}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_obtainAsyncBindDeviceKey(ILjava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "iRet":I
    if-eqz v0, :cond_d0

    .line 261
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v7, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto/16 :goto_1f

    .line 263
    :cond_d0
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v7, v7, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v7, v7, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v7, :cond_e9

    .line 266
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 267
    iget-object v8, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v8, v8, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v8, v8, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    invoke-static {v8}, Lcom/idelan/xml/parser/SDKFunctions;->parseBindDeviceKey([B)Ljava/lang/String;

    move-result-object v8

    .line 266
    invoke-interface {v7, v0, v8}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    goto/16 :goto_1f

    .line 269
    :cond_e9
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v7, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto/16 :goto_1f
.end method
