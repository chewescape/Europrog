.class public Lcom/idelan/ConfigSDK/DeviceConfigSDK;
.super Ljava/lang/Object;
.source "DeviceConfigSDK.java"


# instance fields
.field private basicObj:Lcom/idelan/BasicSDK/BasicSDK;

.field private configResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

.field private hostContext:Landroid/content/Context;

.field public objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

.field private scanningResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

.field private sdkfd:I

.field private taskManager:Lcom/idelan/task/TaskManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->sdkfd:I

    .line 26
    iput-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    .line 30
    iput-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->configResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

    .line 31
    iput-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->scanningResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

    .line 34
    iput-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->hostContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->hostContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->loadLibrary()V

    .line 41
    invoke-static {p0}, Lcom/idelan/BasicSDK/BasicSDK;->getInstance(Ljava/lang/Object;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    .line 42
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_init(I)I

    .line 43
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    invoke-virtual {v0}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_open()I

    move-result v0

    iput v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->sdkfd:I

    .line 45
    new-instance v0, Lcom/idelan/DeLanSDK/ResponseObject;

    const/16 v1, 0xff

    .line 46
    const v2, -0xffff

    invoke-direct {v0, v1, v2, v3}, Lcom/idelan/DeLanSDK/ResponseObject;-><init>(II[B)V

    .line 45
    iput-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    .line 47
    invoke-static {}, Lcom/idelan/task/TaskManager;->getInstance()Lcom/idelan/task/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/ConfigSDK/DeviceConfigSDK;Lcom/idelan/DeLanSDK/ConfigResponseDevice;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->configResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

    return-void
.end method

.method static synthetic access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    return-object v0
.end method

.method static synthetic access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->sdkfd:I

    return v0
.end method

.method static synthetic access$3(Lcom/idelan/ConfigSDK/DeviceConfigSDK;Lcom/idelan/DeLanSDK/ScanningResponseDevice;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->scanningResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

    return-void
.end method

.method static synthetic access$4(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->hostContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadLibrary()V
    .registers 3

    .prologue
    .line 53
    :try_start_0
    const-string v1, "cares"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    const-string v1, "curl"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    const-string v1, "BasicSDK_share"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_f} :catch_10

    .line 60
    :goto_f
    return-void

    .line 56
    :catch_10
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_f
.end method


# virtual methods
.method public apConfigWithSSID(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/bean/SmartDevice;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 15
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "wifiPwd"    # Ljava/lang/String;
    .param p3, "device"    # Lcom/idelan/bean/SmartDevice;
    .param p4, "devicePwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/bean/SmartDevice;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p5, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/idelan/ConfigSDK/DeviceConfigSDK$7;-><init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;Lcom/idelan/bean/SmartDevice;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 404
    return-void
.end method

.method public bsdk_asyncBindDeviceByKey(ILcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p1, "optKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;-><init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ResponseMethod;I)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 316
    return-void
.end method

.method public bsdk_obtainAsyncBindDeviceKey(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 12
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    new-instance v0, Lcom/idelan/ConfigSDK/DeviceLocation;

    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->hostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idelan/ConfigSDK/DeviceLocation;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/idelan/ConfigSDK/DeviceLocation;->lastKnownLocation:Landroid/location/Location;

    .line 216
    .local v4, "location":Landroid/location/Location;
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/idelan/ConfigSDK/DeviceConfigSDK$5;-><init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ResponseMethod;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 276
    return-void
.end method

.method public conf_callback(Ljava/lang/String;[BJ)I
    .registers 8
    .param p1, "remoteIP"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "userData"    # J

    .prologue
    .line 421
    const-string v1, "liwenming===conf_callback"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->configResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

    if-eqz v1, :cond_1b

    .line 423
    new-instance v0, Lcom/idelan/bean/SmartDevice;

    invoke-direct {v0}, Lcom/idelan/bean/SmartDevice;-><init>()V

    .line 424
    .local v0, "device":Lcom/idelan/bean/SmartDevice;
    invoke-static {p2, v0, p1}, Lcom/idelan/xml/parser/SDKFunctions;->parseDevice([BLcom/idelan/bean/SmartDevice;Ljava/lang/String;)I

    .line 425
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->configResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ConfigResponseDevice;->onConfiging(Lcom/idelan/bean/SmartDevice;)V

    .line 427
    .end local v0    # "device":Lcom/idelan/bean/SmartDevice;
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public link_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/idelan/DeLanSDK/ResponseMethod;Lcom/idelan/DeLanSDK/ConfigResponseDevice;)V
    .registers 17
    .param p1, "wifiName"    # Ljava/lang/String;
    .param p2, "wifiPwd"    # Ljava/lang/String;
    .param p3, "devSN"    # Ljava/lang/String;
    .param p4, "waitTimeMS"    # I
    .param p6, "devResponse"    # Lcom/idelan/DeLanSDK/ConfigResponseDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/idelan/DeLanSDK/ConfigResponseDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p5, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;-><init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ConfigResponseDevice;Lcom/idelan/DeLanSDK/ResponseMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 103
    return-void
.end method

.method public link_stop(Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/ConfigSDK/DeviceConfigSDK$2;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK$2;-><init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 133
    return-void
.end method

.method public scan_callback(Ljava/lang/String;[BJ)I
    .registers 8
    .param p1, "remoteIP"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "userData"    # J

    .prologue
    .line 409
    const-string v1, "liwenming===scan_callback"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->scanningResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

    if-eqz v1, :cond_1b

    .line 411
    new-instance v0, Lcom/idelan/bean/SmartDevice;

    invoke-direct {v0}, Lcom/idelan/bean/SmartDevice;-><init>()V

    .line 412
    .local v0, "device":Lcom/idelan/bean/SmartDevice;
    invoke-static {p2, v0, p1}, Lcom/idelan/xml/parser/SDKFunctions;->parseDevice([BLcom/idelan/bean/SmartDevice;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->scanningResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ScanningResponseDevice;->onScanning(Lcom/idelan/bean/SmartDevice;)V

    .line 415
    .end local v0    # "device":Lcom/idelan/bean/SmartDevice;
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public scan_start(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;Lcom/idelan/DeLanSDK/ScanningResponseDevice;)V
    .registers 13
    .param p1, "brandID"    # Ljava/lang/String;
    .param p2, "devType"    # Ljava/lang/String;
    .param p4, "devResponse"    # Lcom/idelan/DeLanSDK/ScanningResponseDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/idelan/DeLanSDK/ScanningResponseDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;-><init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ScanningResponseDevice;Lcom/idelan/DeLanSDK/ResponseMethod;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 173
    return-void
.end method

.method public scan_stop(Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;-><init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 204
    return-void
.end method
