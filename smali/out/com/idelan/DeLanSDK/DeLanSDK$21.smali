.class Lcom/idelan/DeLanSDK/DeLanSDK$21;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->obtainImageAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$corpId:Ljava/lang/String;

.field private final synthetic val$operType:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->val$corpId:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->val$operType:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 824
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 6

    .prologue
    .line 828
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->val$corpId:Ljava/lang/String;

    .line 829
    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->val$operType:Ljava/lang/String;

    .line 828
    invoke-virtual {v1, v2, v3, v4}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_obtainImageAuthCode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 830
    .local v0, "iRet":I
    if-nez v0, :cond_1d

    .line 831
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 835
    :goto_1c
    return-void

    .line 833
    :cond_1d
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$21;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_1c
.end method
