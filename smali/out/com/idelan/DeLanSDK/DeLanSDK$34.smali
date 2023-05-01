.class Lcom/idelan/DeLanSDK/DeLanSDK$34;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->loginWithThird(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$loginAuthCode:Ljava/lang/String;

.field private final synthetic val$loginAuthID:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->val$loginAuthID:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->val$loginAuthCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1373
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 7

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->val$loginAuthID:Ljava/lang/String;

    .line 1377
    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->val$loginAuthCode:Ljava/lang/String;

    .line 1376
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_loginWithThird(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 1378
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ltz v0, :cond_2a

    .line 1379
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 1383
    :goto_29
    return-void

    .line 1381
    :cond_2a
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$34;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_29
.end method
