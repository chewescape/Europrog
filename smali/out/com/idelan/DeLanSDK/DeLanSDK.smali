.class public Lcom/idelan/DeLanSDK/DeLanSDK;
.super Ljava/lang/Object;
.source "DeLanSDK.java"


# instance fields
.field private basicObj:Lcom/idelan/BasicSDK/BasicSDK;

.field private hostContext:Landroid/content/Context;

.field public objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

.field private sdkfd:I

.field private taskManager:Lcom/idelan/task/TaskManager;

.field private userId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->sdkfd:I

    .line 35
    iput v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->userId:I

    .line 37
    iput-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    .line 43
    iput-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->hostContext:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->hostContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/idelan/DeLanSDK/DeLanSDK;->loadLibrary()V

    .line 50
    invoke-static {p0}, Lcom/idelan/BasicSDK/BasicSDK;->getInstance(Ljava/lang/Object;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    .line 51
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_init(I)I

    .line 52
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    invoke-virtual {v0}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_open()I

    move-result v0

    iput v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->sdkfd:I

    .line 53
    invoke-static {}, Lcom/idelan/task/TaskManager;->getInstance()Lcom/idelan/task/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    .line 55
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    iget v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->sdkfd:I

    const-string v2, "receive_callback"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_setDataCallback(ILjava/lang/String;J)I

    .line 58
    new-instance v0, Lcom/idelan/DeLanSDK/ResponseObject;

    const/16 v1, 0xff

    .line 59
    const v2, -0xffff

    invoke-direct {v0, v1, v2, v3}, Lcom/idelan/DeLanSDK/ResponseObject;-><init>(II[B)V

    .line 58
    iput-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    return-object v0
.end method

.method static synthetic access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->sdkfd:I

    return v0
.end method

.method static synthetic access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->userId:I

    return-void
.end method

.method static synthetic access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->userId:I

    return v0
.end method

.method static synthetic access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->hostContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadLibrary()V
    .registers 3

    .prologue
    .line 65
    :try_start_0
    const-string v1, "cares"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    const-string v1, "curl"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    const-string v1, "BasicSDK_share"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_f} :catch_10

    .line 72
    :goto_f
    return-void

    .line 68
    :catch_10
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_f
.end method


# virtual methods
.method public addShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 19
    .param p1, "toUser"    # Ljava/lang/String;
    .param p2, "deviceSerial"    # Ljava/lang/String;
    .param p3, "applianceSerial"    # Ljava/lang/String;
    .param p4, "shareType"    # I
    .param p5, "startTime"    # Ljava/lang/String;
    .param p6, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p7, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v10, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$14;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/idelan/DeLanSDK/DeLanSDK$14;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v10, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 622
    return-void
.end method

.method public bindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "deviceSerial"    # Ljava/lang/String;
    .param p3, "devicePasswd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$10;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$10;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 445
    return-void
.end method

.method public bsdkCheckDeviceNewVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "deviceSerial"    # Ljava/lang/String;
    .param p2, "deviceMode"    # Ljava/lang/String;
    .param p3, "deviceSoftVer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1307
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$32;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$32;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1328
    return-void
.end method

.method public bsdkTriggerDeviceUpgrade(Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p1, "deviceSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/DeLanSDK/ResponseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1341
    .local p2, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/DeLanSDK/ResponseObject;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$33;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/idelan/DeLanSDK/DeLanSDK$33;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1356
    return-void
.end method

.method public bsdkVerifySmsCode(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/DeLanSDK/ResponseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/DeLanSDK/ResponseObject;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$31;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$31;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1287
    return-void
.end method

.method public checkAppVersion(Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/bean/AppVersionBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p2, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/bean/AppVersionBean;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$19;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/idelan/DeLanSDK/DeLanSDK$19;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 788
    return-void
.end method

.method public checkUserInfoIntact()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 983
    iget v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->userId:I

    if-ne v0, v2, :cond_19

    .line 984
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->hostContext:Landroid/content/Context;

    const-string v1, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->userId:I

    .line 985
    :cond_19
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->basicObj:Lcom/idelan/BasicSDK/BasicSDK;

    iget v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->userId:I

    invoke-virtual {v0, v1}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_checkUserInfoIntact(I)I

    move-result v0

    return v0
.end method

.method public commonSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BLcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "uriParams"    # Ljava/lang/String;
    .param p5, "datas"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/DeLanSDK/ResponseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p4, "dataDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/DeLanSDK/ResponseObject;>;"
    iget-object v9, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$29;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/idelan/DeLanSDK/DeLanSDK$29;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;I[BLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v9, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1171
    return-void
.end method

.method public commonSendUnLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 15
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "uriParams"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/DeLanSDK/ResponseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1191
    .local p4, "dataDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/DeLanSDK/ResponseObject;>;"
    iget-object v8, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$30;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/idelan/DeLanSDK/DeLanSDK$30;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v8, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1230
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$1;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$1;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 105
    return-void
.end method

.method public delShare(Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p1, "shareId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p2, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$15;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/idelan/DeLanSDK/DeLanSDK$15;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 648
    return-void
.end method

.method public diconnect(Lcom/idelan/DeLanSDK/ResponseMethod;)V
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
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$2;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/DeLanSDK/DeLanSDK$2;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 127
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$3;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$3;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 159
    return-void
.end method

.method public loginWithThird(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 12
    .param p1, "loginAccountType"    # Ljava/lang/String;
    .param p2, "loginAuthID"    # Ljava/lang/String;
    .param p3, "loginAuthCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/DeLanSDK/ResponseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/DeLanSDK/ResponseObject;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$34;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$34;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1385
    return-void
.end method

.method public logout(Lcom/idelan/DeLanSDK/ResponseMethod;)V
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
    .line 167
    .local p1, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$4;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/DeLanSDK/DeLanSDK$4;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 183
    return-void
.end method

.method public modiPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 15
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p5, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$24;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/idelan/DeLanSDK/DeLanSDK$24;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v8, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 932
    return-void
.end method

.method public modiUserInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1008
    .local p2, "userInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$26;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$26;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/util/HashMap;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1026
    return-void
.end method

.method public modifyDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "newDeviceName"    # Ljava/lang/String;
    .param p2, "deviceSerial"    # Ljava/lang/String;
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
    .line 388
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$9;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$9;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 408
    return-void
.end method

.method public modifyUserPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$8;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$8;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 370
    return-void
.end method

.method public networkTest(Lcom/idelan/DeLanSDK/ResponseMethod;)V
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
    .line 796
    .local p1, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$20;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/DeLanSDK/DeLanSDK$20;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 810
    return-void
.end method

.method public obtainDeviceList(Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/idelan/bean/SmartDevice;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/util/List<Lcom/idelan/bean/SmartDevice;>;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$6;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/DeLanSDK/DeLanSDK$6;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 294
    return-void
.end method

.method public obtainImageAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "operType"    # Ljava/lang/String;
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
    .line 824
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$21;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$21;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 838
    return-void
.end method

.method public obtainMineShare(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "deviceSerial"    # Ljava/lang/String;
    .param p2, "applianceSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/idelan/bean/ShareUserBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/util/List<Lcom/idelan/bean/ShareUserBean;>;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$12;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$12;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 530
    return-void
.end method

.method public obtainOthersShare(Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/idelan/bean/ShareDeviceBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/util/List<Lcom/idelan/bean/ShareDeviceBean;>;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$13;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/DeLanSDK/DeLanSDK$13;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 576
    return-void
.end method

.method public obtainSMSAuthCode(ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "operType"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "imgCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$22;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$22;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;IILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 867
    return-void
.end method

.method public obtainUserInfo(Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p1, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/bean/UserBean;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$25;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1}, Lcom/idelan/DeLanSDK/DeLanSDK$25;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 974
    return-void
.end method

.method public parseCommonResult([BLjava/util/List;)I
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 1234
    .local p2, "retDict":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p1, p2}, Lcom/idelan/xml/parser/SDKFunctions;->parseCommonSend([BLjava/util/List;)I

    move-result v0

    return v0
.end method

.method public queryWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "district"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/bean/WeatherBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/bean/WeatherBean;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$16;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$16;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 699
    return-void
.end method

.method public reActiveByEmail(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
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
    .line 741
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$18;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$18;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 755
    return-void
.end method

.method public registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 19
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;
    .param p4, "authCode"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "invteCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p7, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v10, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$7;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/idelan/DeLanSDK/DeLanSDK$7;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v10, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 338
    return-void
.end method

.method public resetPasswordByEmail(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
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
    .line 714
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$17;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$17;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 728
    return-void
.end method

.method public resetPasswordByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 15
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "newPasswd"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p5, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$23;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/idelan/DeLanSDK/DeLanSDK$23;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v8, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 898
    return-void
.end method

.method public send(I[BLjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 13
    .param p1, "cmd"    # I
    .param p2, "data"    # [B
    .param p3, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/DeLanSDK/ResponseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p4, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/DeLanSDK/ResponseObject;>;"
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$5;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK$5;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;II[BLjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v7, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 239
    return-void
.end method

.method public submitAdvise(Ljava/util/HashMap;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Lcom/idelan/DeLanSDK/ResponseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1258
    .local p1, "adviseInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Lcom/idelan/DeLanSDK/ResponseObject;>;"
    const-string v1, "/service/general/advise"

    const-string v2, "submitOpinion"

    const-string v3, ""

    .line 1259
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    .line 1258
    invoke-virtual/range {v0 .. v6}, Lcom/idelan/DeLanSDK/DeLanSDK;->commonSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BLcom/idelan/DeLanSDK/ResponseMethod;)V

    .line 1260
    return-void
.end method

.method public unbindDevice(Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p1, "deviceSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v1, Lcom/idelan/DeLanSDK/DeLanSDK$11;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/idelan/DeLanSDK/DeLanSDK$11;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v0, v1}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 477
    return-void
.end method

.method public updateMemberAvatar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 17
    .param p1, "indexValue"    # I
    .param p2, "indexName"    # Ljava/lang/String;
    .param p3, "funName"    # Ljava/lang/String;
    .param p4, "picType"    # Ljava/lang/String;
    .param p5, "picBuf"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p6, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$28;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/idelan/DeLanSDK/DeLanSDK$28;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v9, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1101
    return-void
.end method

.method public updateUserAvatar(Ljava/lang/String;[BLcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 11
    .param p1, "picType"    # Ljava/lang/String;
    .param p2, "picBuf"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/idelan/DeLanSDK/ResponseMethod",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1042
    .local p3, "response":Lcom/idelan/DeLanSDK/ResponseMethod;, "Lcom/idelan/DeLanSDK/ResponseMethod<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK;->taskManager:Lcom/idelan/task/TaskManager;

    new-instance v0, Lcom/idelan/DeLanSDK/DeLanSDK$27;

    sget-byte v2, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idelan/DeLanSDK/DeLanSDK$27;-><init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;[BLcom/idelan/DeLanSDK/ResponseMethod;)V

    invoke-virtual {v6, v0}, Lcom/idelan/task/TaskManager;->submit(Lcom/idelan/task/Task;)V

    .line 1059
    return-void
.end method
