.class Lcom/idelan/DeLanSDK/DeLanSDK$20;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->networkTest(Lcom/idelan/DeLanSDK/ResponseMethod;)V
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
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$20;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$20;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 796
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 4

    .prologue
    .line 800
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$20;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$20;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_networkTest(I)I

    move-result v0

    .line 801
    .local v0, "iRet":I
    if-nez v0, :cond_19

    .line 802
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$20;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 806
    :goto_18
    return-void

    .line 804
    :cond_19
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$20;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_18
.end method
