.class Lcom/idelan/DeLanSDK/DeLanSDK$19;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->checkAppVersion(Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$packageName:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 5
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 768
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 7

    .prologue
    .line 772
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v4}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v4

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_checkAppVersion(ILjava/lang/String;)I

    move-result v1

    .line 773
    .local v1, "iRet":I
    if-nez v1, :cond_32

    .line 774
    new-instance v0, Lcom/idelan/bean/AppVersionBean;

    invoke-direct {v0}, Lcom/idelan/bean/AppVersionBean;-><init>()V

    .line 776
    .local v0, "bean":Lcom/idelan/bean/AppVersionBean;
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v3, v3, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 775
    invoke-static {v3, v0}, Lcom/idelan/xml/parser/SDKFunctions;->parseVersonInfo([BLcom/idelan/bean/AppVersionBean;)I

    move-result v2

    .line 777
    .local v2, "iRetDev":I
    if-nez v2, :cond_2c

    .line 778
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 785
    .end local v0    # "bean":Lcom/idelan/bean/AppVersionBean;
    .end local v2    # "iRetDev":I
    :goto_2b
    return-void

    .line 780
    .restart local v0    # "bean":Lcom/idelan/bean/AppVersionBean;
    .restart local v2    # "iRetDev":I
    :cond_2c
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_2b

    .line 783
    .end local v0    # "bean":Lcom/idelan/bean/AppVersionBean;
    .end local v2    # "iRetDev":I
    :cond_32
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$19;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v3, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_2b
.end method
