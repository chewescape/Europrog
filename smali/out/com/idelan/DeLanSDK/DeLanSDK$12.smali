.class Lcom/idelan/DeLanSDK/DeLanSDK$12;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->obtainMineShare(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$applianceSerial:Ljava/lang/String;

.field private final synthetic val$deviceSerial:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$deviceSerial:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$applianceSerial:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 492
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 496
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v3

    if-ne v3, v7, :cond_24

    .line 497
    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v3

    .line 498
    const-string v5, "userId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 497
    invoke-static {v3, v5, v6}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 499
    :cond_24
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput v7, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 500
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v4, -0xffff

    iput v4, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 501
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 502
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v4}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v4

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$deviceSerial:Ljava/lang/String;

    .line 503
    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$applianceSerial:Ljava/lang/String;

    .line 502
    invoke-virtual {v3, v4, v5, v6}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_obtainMineShare(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 505
    .local v0, "iRet":I
    if-nez v0, :cond_82

    .line 509
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v3, :cond_76

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v2, "shareUsers":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/ShareUserBean;>;"
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 512
    invoke-static {v3, v2}, Lcom/idelan/xml/parser/SDKFunctions;->parseMineShareList([BLjava/util/List;)I

    move-result v1

    .line 515
    .local v1, "iRetDev":I
    if-nez v1, :cond_70

    .line 516
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 527
    .end local v1    # "iRetDev":I
    .end local v2    # "shareUsers":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/ShareUserBean;>;"
    :goto_6f
    return-void

    .line 519
    .restart local v1    # "iRetDev":I
    .restart local v2    # "shareUsers":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/ShareUserBean;>;"
    :cond_70
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_6f

    .line 522
    .end local v1    # "iRetDev":I
    .end local v2    # "shareUsers":Ljava/util/List;, "Ljava/util/List<Lcom/idelan/bean/ShareUserBean;>;"
    :cond_76
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v4, v4, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v4, v4, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v3, v4}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_6f

    .line 525
    :cond_82
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$12;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_6f
.end method
