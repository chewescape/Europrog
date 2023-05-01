.class Lcom/idelan/DeLanSDK/DeLanSDK$6;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->obtainDeviceList(Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 4
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 258
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 262
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v3

    if-ne v3, v7, :cond_24

    .line 263
    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v3

    .line 264
    const-string v5, "userId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 263
    invoke-static {v3, v5, v6}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 265
    :cond_24
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput v7, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 266
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v4, -0xffff

    iput v4, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 267
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 268
    const-string v3, "obtainDeviceList"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v5}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":userId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v4}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_obtainDeviceList(I)I

    move-result v1

    .line 270
    .local v1, "iRet":I
    if-nez v1, :cond_9c

    .line 274
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v3, :cond_90

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "devList":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/SmartDevice;>;"
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 277
    invoke-static {v3, v0}, Lcom/idelan/xml/parser/SDKFunctions;->parseDeviceList([BLjava/util/List;)I

    move-result v2

    .line 280
    .local v2, "iRetDev":I
    if-nez v2, :cond_8a

    .line 281
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 292
    .end local v0    # "devList":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/SmartDevice;>;"
    .end local v2    # "iRetDev":I
    :goto_89
    return-void

    .line 284
    .restart local v0    # "devList":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/SmartDevice;>;"
    .restart local v2    # "iRetDev":I
    :cond_8a
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_89

    .line 287
    .end local v0    # "devList":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/SmartDevice;>;"
    .end local v2    # "iRetDev":I
    :cond_90
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v4, v4, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v4, v4, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v3, v4}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_89

    .line 290
    :cond_9c
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$6;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_89
.end method
