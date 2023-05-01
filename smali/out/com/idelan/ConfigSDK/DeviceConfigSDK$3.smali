.class Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;
.super Lcom/idelan/task/Task;
.source "DeviceConfigSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/ConfigSDK/DeviceConfigSDK;->scan_start(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;Lcom/idelan/DeLanSDK/ScanningResponseDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

.field private final synthetic val$brandID:Ljava/lang/String;

.field private final synthetic val$devResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

.field private final synthetic val$devType:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ScanningResponseDevice;Lcom/idelan/DeLanSDK/ResponseMethod;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iput-object p3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$devResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

    iput-object p4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iput-object p5, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$brandID:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$devType:Ljava/lang/String;

    .line 152
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 6

    .prologue
    .line 156
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$devResponse:Lcom/idelan/DeLanSDK/ScanningResponseDevice;

    invoke-static {v1, v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$3(Lcom/idelan/ConfigSDK/DeviceConfigSDK;Lcom/idelan/DeLanSDK/ScanningResponseDevice;)V

    .line 157
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_scan_open(I)I

    move-result v0

    .line 159
    .local v0, "iRet":I
    if-eqz v0, :cond_1f

    .line 160
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    .line 169
    :goto_1e
    return-void

    .line 162
    :cond_1f
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v2

    iget-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$brandID:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$devType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_scan_start(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 163
    if-nez v0, :cond_3c

    .line 164
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    goto :goto_1e

    .line 166
    :cond_3c
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$3;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_1e
.end method
