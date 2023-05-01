.class Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;
.super Lcom/idelan/task/Task;
.source "DeviceConfigSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/ConfigSDK/DeviceConfigSDK;->bsdk_asyncBindDeviceByKey(ILcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

.field private final synthetic val$optKey:I

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/ConfigSDK/DeviceConfigSDK;ILcom/idelan/DeLanSDK/ResponseMethod;I)V
    .registers 5
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iput-object p3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iput p4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->val$optKey:I

    .line 288
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 291
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$4(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Landroid/content/Context;

    move-result-object v2

    .line 292
    const-string v3, "userId"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 291
    invoke-static {v2, v3, v4}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 293
    .local v1, "userId":I
    if-ne v1, v5, :cond_21

    .line 294
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v3, -0x5

    invoke-interface {v2, v3}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    .line 312
    :goto_20
    return-void

    .line 297
    :cond_21
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v2, v2, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput v5, v2, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 298
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v2, v2, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v3, -0xffff

    iput v3, v2, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 299
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v2, v2, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput-object v6, v2, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 300
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$1(Lcom/idelan/ConfigSDK/DeviceConfigSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v2

    iget v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->val$optKey:I

    invoke-virtual {v2, v1, v3}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_asyncBindDeviceByKey(II)I

    move-result v0

    .line 301
    .local v0, "iRet":I
    if-eqz v0, :cond_4a

    .line 302
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v2, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_20

    .line 304
    :cond_4a
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v2, v2, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v2, v2, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v2, :cond_69

    .line 305
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    invoke-static {v2, v6}, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->access$3(Lcom/idelan/ConfigSDK/DeviceConfigSDK;Lcom/idelan/DeLanSDK/ScanningResponseDevice;)V

    .line 306
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v3, v3, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 307
    iget-object v4, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v4, v4, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v4, v4, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 306
    invoke-interface {v2, v3, v4}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    goto :goto_20

    .line 309
    :cond_69
    iget-object v2, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v3, p0, Lcom/idelan/ConfigSDK/DeviceConfigSDK$6;->this$0:Lcom/idelan/ConfigSDK/DeviceConfigSDK;

    iget-object v3, v3, Lcom/idelan/ConfigSDK/DeviceConfigSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v2, v3}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_20
.end method
