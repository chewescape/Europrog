.class Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;
.super Lcom/idelan/task/Task;
.source "DeviceConfigSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/ConfigSDK/DeviceConfigSDK;->link_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/idelan/DeLanSDK/ResponseMethod;Lcom/idelan/DeLanSDK/ConfigResponseDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

.field private final synthetic val$devResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

.field private final synthetic val$devSN:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$waitTimeMS:I

.field private final synthetic val$wifiName:Ljava/lang/String;

.field private final synthetic val$wifiPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ConfigResponseDevice;Lcom/idelan/DeLanSDK/ResponseMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iput-object p3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$devResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

    iput-object p4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iput-object p5, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$wifiName:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$wifiPwd:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$devSN:Ljava/lang/String;

    iput p8, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$waitTimeMS:I

    .line 82
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 8

    .prologue
    .line 86
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$devResponse:Lcom/idelan/DeLanSDK/ConfigResponseDevice;

    invoke-static {v0, v1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$0(Lcom/idelan/ConfigSDK/DeviceConfigSDK;Lcom/idelan/DeLanSDK/ConfigResponseDevice;)V

    .line 87
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_link_open(I)I

    move-result v6

    .line 88
    .local v6, "iRet":I
    if-eqz v6, :cond_1f

    .line 89
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    .line 99
    :goto_1e
    return-void

    .line 91
    :cond_1f
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v0}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$wifiName:Ljava/lang/String;

    iget-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$wifiPwd:Ljava/lang/String;

    .line 92
    iget-object v4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$devSN:Ljava/lang/String;

    iget v5, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$waitTimeMS:I

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_link_start(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 93
    if-nez v6, :cond_40

    .line 94
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    goto :goto_1e

    .line 96
    :cond_40
    iget-object v0, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$1;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_1e
.end method
