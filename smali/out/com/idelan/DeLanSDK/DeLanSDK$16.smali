.class Lcom/idelan/DeLanSDK/DeLanSDK$16;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->queryWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$city:Ljava/lang/String;

.field private final synthetic val$district:Ljava/lang/String;

.field private final synthetic val$province:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 7
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$province:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$city:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$district:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 663
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 9

    .prologue
    .line 667
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v4, -0x1

    iput v4, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 668
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v4, -0xffff

    iput v4, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 669
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 670
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v4}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v4

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$province:Ljava/lang/String;

    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$city:Ljava/lang/String;

    .line 671
    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$district:Ljava/lang/String;

    .line 670
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_queryWeather(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 673
    .local v0, "iRet":I
    if-nez v0, :cond_79

    .line 676
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v3, :cond_6d

    .line 677
    new-instance v2, Lcom/idelan/bean/WeatherBean;

    invoke-direct {v2}, Lcom/idelan/bean/WeatherBean;-><init>()V

    .line 680
    .local v2, "weatherDict":Lcom/idelan/bean/WeatherBean;
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 679
    invoke-static {v3, v2}, Lcom/idelan/xml/parser/SDKFunctions;->parseWeather([BLcom/idelan/bean/WeatherBean;)I

    move-result v1

    .line 682
    .local v1, "iRetDev":I
    if-nez v1, :cond_67

    .line 683
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 685
    const-string v3, "liwenming"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "===="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idelan/bean/WeatherBean;->getH()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v1    # "iRetDev":I
    .end local v2    # "weatherDict":Lcom/idelan/bean/WeatherBean;
    :goto_66
    return-void

    .line 687
    .restart local v1    # "iRetDev":I
    .restart local v2    # "weatherDict":Lcom/idelan/bean/WeatherBean;
    :cond_67
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_66

    .line 690
    .end local v1    # "iRetDev":I
    .end local v2    # "weatherDict":Lcom/idelan/bean/WeatherBean;
    :cond_6d
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v4, v4, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v4, v4, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v3, v4}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_66

    .line 693
    :cond_79
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$16;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_66
.end method
