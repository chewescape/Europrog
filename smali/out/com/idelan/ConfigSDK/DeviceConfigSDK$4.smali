.class Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;
.super Lcom/idelan/task/Task;
.source "DeviceConfigSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/ConfigSDK/DeviceConfigSDK;->scan_stop(Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 4
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iput-object p3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 184
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_scan_stop(I)I

    move-result v0

    .line 189
    .local v0, "iRet":I
    if-eqz v0, :cond_19

    .line 190
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    .line 200
    :goto_18
    return-void

    .line 192
    :cond_19
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v1}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$2(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_scan_close(I)I

    move-result v0

    .line 193
    if-nez v0, :cond_36

    .line 194
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v1, v3}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$3(Lcom/idelan/ConfigSDK/DeviceConfigSDK;Lcom/idelan/DeLanSDK/ScanningResponseDevice;)V

    .line 195
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0, v3}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    goto :goto_18

    .line 197
    :cond_36
    iget-object v1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$4;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_18
.end method
